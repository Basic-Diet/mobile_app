import 'dart:async';
import 'dart:ui';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../presentation/resources/language_manager.dart';

const String pressKeyLanguage = "PRESS_KEY_LANGUAGE";
const String accessTokenKey = "accessToken";
const String refreshTokenKey = "refreshToken";

class AppPreferences {
  static const Duration _legacyReadTimeout = Duration(milliseconds: 500);

  final FlutterSecureStorage _secureStorage;
  final SharedPreferences _preferences;

  // Expose _preferences so it can be accessed directly if needed
  SharedPreferences get preferences => _preferences;

  // Add a synchronous method to get the language
  String getAppLanguageSync() {
    final language = _preferences.getString(pressKeyLanguage);
    if (language != null && language.isNotEmpty) {
      return language;
    }
    // Default to Arabic like the async method
    return LanguageType.arabic.getValue();
  }

  AppPreferences(this._preferences)
    : _secureStorage = const FlutterSecureStorage(
        iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
      );

  Future<String> getAppLanguage() async {
    final language = _preferences.getString(pressKeyLanguage);
    if (language != null && language.isNotEmpty) {
      return language;
    }

    final legacyLanguage = await _readLegacyString(pressKeyLanguage);
    if (legacyLanguage != null && legacyLanguage.isNotEmpty) {
      await _preferences.setString(pressKeyLanguage, legacyLanguage);
      return legacyLanguage;
    }

    final defaultLanguage = LanguageType.arabic.getValue();
    await _preferences.setString(pressKeyLanguage, defaultLanguage);
    return defaultLanguage;
  }

  Future<void> changeAppLanguage() async {
    final currentLanguage = await getAppLanguage();
    if (currentLanguage == LanguageType.arabic.getValue()) {
      await _preferences.setString(
        pressKeyLanguage,
        LanguageType.english.getValue(),
      );
    } else {
      await _preferences.setString(
        pressKeyLanguage,
        LanguageType.arabic.getValue(),
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
    // Only delete auth-related keys; preserve language/onboarding prefs
    await _secureStorage.delete(key: accessTokenKey);
    await _secureStorage.delete(key: refreshTokenKey);
    await _secureStorage.delete(key: "login");
    await _secureStorage.delete(key: 'expiresAt');
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
      final expiresAt =
          DateTime.now()
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
    await _preferences.setBool('PREFS_KEY_ONBOARDING_SCREEN_VIEWED', true);
  }

  Future<bool> isOnboardingScreenViewed() async {
    return _getBoolPreferenceWithLegacyFallback(
      'PREFS_KEY_ONBOARDING_SCREEN_VIEWED',
    );
  }

  Future<void> setLanguageSelected() async {
    await _preferences.setBool('PREFS_KEY_LANGUAGE_SELECTED', true);
  }

  Future<bool> isLanguageSelected() async {
    return _getBoolPreferenceWithLegacyFallback('PREFS_KEY_LANGUAGE_SELECTED');
  }

  Future<void> setAppLanguage(String languageCode) async {
    await _preferences.setString(pressKeyLanguage, languageCode);
  }

  Future<bool> _getBoolPreferenceWithLegacyFallback(String key) async {
    final value = _preferences.getBool(key);
    if (value != null) {
      return value;
    }

    final legacyValue = await _readLegacyString(key);
    final boolValue = legacyValue == 'true';
    await _preferences.setBool(key, boolValue);
    return boolValue;
  }

  Future<String?> _readLegacyString(String key) {
    return _secureStorage
        .read(key: key)
        .timeout(_legacyReadTimeout, onTimeout: () => null);
  }
}
