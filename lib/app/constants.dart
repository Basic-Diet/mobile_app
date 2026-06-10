import 'package:flutter_dotenv/flutter_dotenv.dart';

class Constants {
  static const String empty = "";
  static const int zero = 0;
  static const double decimalZero = 0.0;
  static const bool falseValue = false;
  static const bool isDebug = bool.fromEnvironment('dart.vm.product') == false;
  static const int timeout = 60 * 1000;
  static const String merchantDisplayName = 'Basic Diet';
  static String get baseUrl => dotenv.env['BASE_URL']!;
  static const String privacyPolicyUrl =
      'https://basicdiet145.onrender.com/privacy-policy';
  static const String accountDeletionUrl =
      'https://basicdiet145.onrender.com/account-deletion';
}
