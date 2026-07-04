class Constants {
  static const String empty = "";
  static const int zero = 0;
  static const double decimalZero = 0.0;
  static const bool falseValue = false;
  static const bool isDebug = bool.fromEnvironment('dart.vm.product') == false;
  static const int timeout = 60 * 1000;
  static const String merchantDisplayName = 'Basic Diet';
  static const String baseUrl = String.fromEnvironment(
    'BASE_URL',
    defaultValue: 'https://basicdiet145.onrender.com',
  );
  static const String privacyPolicyUrl =
      'https://basicdiet145.onrender.com/privacy-policy';
  static const String refoundPolicyUrl =
      'https://basicdiet145.onrender.com/refund-policy';
  static const String accountDeletionUrl =
      'https://basicdiet145.onrender.com/account-deletion';
}
