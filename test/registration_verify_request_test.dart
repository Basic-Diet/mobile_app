import 'package:basic_diet/data/data_source/remote_data_source_impl.dart';
import 'package:basic_diet/data/network/app_api.dart';
import 'package:basic_diet/data/response/auth_response.dart';
import 'package:basic_diet/data/response/base_response/base_response.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('registration verification request', () {
    test('register sends fullName with the existing password payload', () async {
      final appServiceClient = _CapturingAppServiceClient();
      final dataSource = RemoteDataSourceImpl(appServiceClient);

      await dataSource.register(
        '  Ibrahim Mohamed  ',
        '  +966500000001  ',
        'Password123',
        'Password123',
      );

      expect(appServiceClient.registerBody, {
        'fullName': 'Ibrahim Mohamed',
        'phone': '+966500000001',
        'password': 'Password123',
        'confirmPassword': 'Password123',
      });
      expect(appServiceClient.registerBody, isNot(contains('name')));
      expect(appServiceClient.registerBody, isNot(contains('full_name')));
      expect(appServiceClient.registerBody, isNot(contains('username')));
      expect(appServiceClient.registerBody, isNot(contains('displayName')));
    });

    test('requests registration OTP with phoneE164 only', () async {
      final appServiceClient = _CapturingAppServiceClient();
      final dataSource = RemoteDataSourceImpl(appServiceClient);

      await dataSource.requestRegistrationOtp('+966500000001');

      expect(appServiceClient.requestRegistrationOtpBody, {
        'phoneE164': '+966500000001',
      });
    });

    test('does not send skip_otp in the mobile payload', () async {
      final appServiceClient = _CapturingAppServiceClient();
      final dataSource = RemoteDataSourceImpl(appServiceClient);

      await dataSource.verifyRegistrationOtp(
        '+201234567890',
        '123456',
        'password123',
        'device-id',
        'iPhone',
      );

      expect(appServiceClient.verifyRegistrationOtpBody, {
        'phoneE164': '+201234567890',
        'otp': '123456',
        'password': 'password123',
        'deviceId': 'device-id',
        'deviceName': 'iPhone',
      });
      expect(
        appServiceClient.verifyRegistrationOtpBody,
        isNot(contains('skip_otp')),
      );
    });
  });
}

class _CapturingAppServiceClient implements AppServiceClient {
  late Map<String, dynamic> registerBody;
  late Map<String, dynamic> requestRegistrationOtpBody;
  late Map<String, dynamic> verifyRegistrationOtpBody;

  @override
  Future<AuthenticationResponse> register(Map<String, dynamic> body) async {
    registerBody = body;
    return const AuthenticationResponse(ok: true, status: 'registered');
  }

  @override
  Future<BaseResponse> requestRegistrationOtp(Map<String, dynamic> body) async {
    requestRegistrationOtpBody = body;
    return BaseResponse(ok: true, status: 'success');
  }

  @override
  Future<AuthenticationResponse> verifyRegistrationOtp(
    Map<String, dynamic> body,
  ) async {
    verifyRegistrationOtpBody = body;
    return const AuthenticationResponse(ok: true, status: 'success');
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
