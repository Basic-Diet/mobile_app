import 'dart:ui';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../presentation/resources/language_manager.dart';

const String pressKeyLanguage = "PRESS_KEY_LANGUAGE";
const String accessTokenKey = "accessToken";
const String refreshTokenKey = "refreshToken";

class AppPreferences {
  final FlutterSecureStorage _secureStorage;

  AppPreferences()
    : _secureStorage = const FlutterSecureStorage(
        iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
      );

  Future<String> getAppLanguage() async {
    final language = await _secureStorage.read(key: pressKeyLanguage);
    if (language != null && language.isNotEmpty) {
      return language;
    }
    return LanguageType.arabic.getValue();
  }

  Future<void> changeAppLanguage() async {
    final currentLanguage = await getAppLanguage();
    if (currentLanguage == LanguageType.arabic.getValue()) {
      await _secureStorage.write(
        key: pressKeyLanguage,
        value: LanguageType.english.getValue(),
      );
    } else {
      await _secureStorage.write(
        key: pressKeyLanguage,
        value: LanguageType.arabic.getValue(),
      );
    }
  }

  Future<Locale> getLocalLanguage() async {
    final currentLanguage = await getAppLanguage();
    if (currentLanguage == LanguageType.arabic.getValue()) {
      return arabicLocale;
    } else {
      return englishLocale;
    }
  }

  Future<void> setUserToken(String key, String token) async {
    await _secureStorage.write(key: key, value: token);
  }

  Future<String> getUserToken(String key) async {
    return await _secureStorage.read(key: key) ?? "";
  }

  Future<bool> isUserLoggedIn(String key) async {
    return hasSessionTokens();
  }

  Future<void> logOut() async {
    await _secureStorage.deleteAll();
  }

  Future<void> saveSession({
    required String accessToken,
    required String refreshToken,
    int? expiresIn,
  }) async {
    await _secureStorage.write(key: accessTokenKey, value: accessToken);
    await _secureStorage.write(key: refreshTokenKey, value: refreshToken);
    await _secureStorage.write(key: "login", value: accessToken);

    if (expiresIn != null && expiresIn > 0) {
      final expiresAt = DateTime.now()
          .add(Duration(seconds: expiresIn))
          .millisecondsSinceEpoch
          .toString();
      await setTokenExpiry(expiresAt);
    }
  }

  Future<String> getAccessToken() async {
    final accessToken = await _secureStorage.read(key: accessTokenKey);
    if (accessToken != null && accessToken.isNotEmpty) {
      return accessToken;
    }
    return await _secureStorage.read(key: "login") ?? "";
  }

  Future<String> getRefreshToken() async {
    return await _secureStorage.read(key: refreshTokenKey) ?? "";
  }

  Future<bool> hasSessionTokens() async {
    final accessToken = await getAccessToken();
    final refreshToken = await getRefreshToken();
    return accessToken.isNotEmpty && refreshToken.isNotEmpty;
  }

  Future<void> clearSession() async {
    await _secureStorage.delete(key: accessTokenKey);
    await _secureStorage.delete(key: refreshTokenKey);
    await _secureStorage.delete(key: "login");
    await _secureStorage.delete(key: 'expiresAt');
  }

  // Store the token expiration timestamp (milliseconds since epoch)
  Future<void> setTokenExpiry(String epochMillis) async {
    await _secureStorage.write(key: 'expiresAt', value: epochMillis);
  }

  Future<String> getTokenExpiry() async {
    return await _secureStorage.read(key: 'expiresAt') ?? "";
  }

  Future<void> setOnboardingScreenViewed() async {
    await _secureStorage.write(
      key: 'PREFS_KEY_ONBOARDING_SCREEN_VIEWED',
      value: 'true',
    );
  }

  Future<bool> isOnboardingScreenViewed() async {
    return (await _secureStorage.read(
          key: 'PREFS_KEY_ONBOARDING_SCREEN_VIEWED',
        )) ==
        'true';
  }

  Future<void> setLanguageSelected() async {
    await _secureStorage.write(
      key: 'PREFS_KEY_LANGUAGE_SELECTED',
      value: 'true',
    );
  }

  Future<bool> isLanguageSelected() async {
    return (await _secureStorage.read(key: 'PREFS_KEY_LANGUAGE_SELECTED')) ==
        'true';
  }

  Future<void> setAppLanguage(String languageCode) async {
    await _secureStorage.write(key: pressKeyLanguage, value: languageCode);
  }
}
