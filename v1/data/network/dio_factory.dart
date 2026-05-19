import 'package:basic_diet/app/app_pref.dart';
import 'package:basic_diet/app/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const String applicationJson = "application/json";
const String contentType = "content-type";
const String accept = "accept";
const String authorization = "authorization";
const String language = "Accept-Language";

class DioFactory {
  final AppPreferences _appPreferences;
  final String _baseUrl;

  DioFactory(this._appPreferences, this._baseUrl);

  Future<Dio> createConfiguredDio() async {
    // Base configuration for Dio
    final baseDioOptions = BaseOptions(
      baseUrl: _baseUrl,
      headers: {accept: applicationJson, contentType: applicationJson},
      receiveDataWhenStatusError: true,
      sendTimeout: const Duration(seconds: Constants.timeout),
      receiveTimeout: const Duration(seconds: Constants.timeout),
      validateStatus:
          (status) => status != null && status >= 200 && status < 400,
    );

    final dioInstance = Dio(baseDioOptions);

    dioInstance.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          await _addAuthorizationHeaderIfLoggedIn(options);
          await _addLanguageHeader(options);
          handler.next(options);
        },
        onError: (DioException error, ErrorInterceptorHandler handler) async {
          if (_shouldRefresh(error)) {
            final response = await _refreshAndRetry(dioInstance, error);
            if (response != null) {
              handler.resolve(response);
              return;
            }
          }
          handler.next(error);
        },
      ),
    );

    // Add pretty logging for development
    if (!kReleaseMode) {
      dioInstance.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
          responseBody: true,
        ),
      );
    }

    return dioInstance;
  }

  Future<void> _addAuthorizationHeaderIfLoggedIn(RequestOptions options) async {
    try {
      final accessToken = await _appPreferences.getAccessToken();

      if (_isUserLoggedIn(accessToken)) {
        options.headers[authorization] = "Bearer $accessToken";
        // options.headers["Authorization"] = "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2OWRjMjI2NThhZDc5N2U2MGVlYjRmNjMiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc3NjAzNDQyMiwiZXhwIjoxNzc4NzEyODIyfQ.ulgPpaLhSMHKpDiRXRE6_F4OGVzrzVUkYHuRD3tLbEw";
      } else {
        options.headers.remove(authorization);
      }
    } catch (error) {
      debugPrint("⚠️ Failed to attach authorization header: $error");
    }
  }

  bool _isUserLoggedIn(String token) => token.isNotEmpty;

  bool _shouldRefresh(DioException error) {
    if (error.requestOptions.path == '/api/auth/refresh') {
      return false;
    }

    final data = error.response?.data;
    final code = data is Map<String, dynamic>
        ? (data['error'] is Map<String, dynamic>
              ? data['error']['code']
              : data['code'])
        : null;

    return error.response?.statusCode == 401 && code == 'TOKEN_EXPIRED';
  }

  Future<Response<dynamic>?> _refreshAndRetry(
    Dio dioInstance,
    DioException error,
  ) async {
    final refreshToken = await _appPreferences.getRefreshToken();
    if (refreshToken.isEmpty) {
      await _appPreferences.clearSession();
      return null;
    }

    try {
      final response = await dioInstance.post<Map<String, dynamic>>(
        '/api/auth/refresh',
        data: {'refreshToken': refreshToken},
        options: Options(headers: {authorization: null}),
      );

      final data = response.data;
      final accessToken = data?['accessToken'] as String?;
      final newRefreshToken = data?['refreshToken'] as String?;
      final expiresIn = data?['expiresIn'] as int?;

      if (accessToken == null ||
          accessToken.isEmpty ||
          newRefreshToken == null ||
          newRefreshToken.isEmpty) {
        await _appPreferences.clearSession();
        return null;
      }

      await _appPreferences.saveSession(
        accessToken: accessToken,
        refreshToken: newRefreshToken,
        expiresIn: expiresIn,
      );

      final requestOptions = error.requestOptions;
      requestOptions.headers[authorization] = 'Bearer $accessToken';
      return dioInstance.fetch<dynamic>(requestOptions);
    } catch (_) {
      await _appPreferences.clearSession();
      return null;
    }
  }

  Future<void> _addLanguageHeader(RequestOptions options) async {
    final selectedLanguage = await _appPreferences.getAppLanguage();
    options.headers[language] = selectedLanguage;
  }
}
