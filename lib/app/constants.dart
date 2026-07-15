class Constants {
  static const String empty = "";
  static const int zero = 0;
  static const double decimalZero = 0.0;
  static const bool falseValue = false;
  static const bool isDebug = bool.fromEnvironment('dart.vm.product') == false;
  static const int timeout = 60 * 1000;
  static const String merchantDisplayName = 'Basic Diet';
  static const String debugBaseUrl = 'https://basicdiet145-production-51e9.up.railway.app';
  static const String releaseBaseUrl =
      'https://basicdiet145-production-51e9.up.railway.app';
  static const String baseUrl =
      isDebug
          ? String.fromEnvironment('BASE_URL', defaultValue: debugBaseUrl)
          : releaseBaseUrl;
  static const String paymentSuccessUrl = '$baseUrl/payment-success';
  static const String paymentCancelUrl = '$baseUrl/payment-cancel';
  static const String unifiedDayPaymentSuccessUrl =
      '$baseUrl/payments/day-planning/success';
  static const String unifiedDayPaymentCancelUrl =
      '$baseUrl/payments/day-planning/cancel';
  static const String privacyPolicyUrl = '$baseUrl/privacy-policy';
  static const String refoundPolicyUrl = '$baseUrl/refund-policy';
  static const String accountDeletionUrl = '$baseUrl/account-deletion';
}
