import 'package:basic_diet/presentation/resources/routes_manager.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('resetPasswordPhoneFromExtra', () {
    test('reads phone from string extra', () {
      expect(
        GoRouterConfig.resetPasswordPhoneFromExtra('+966500000001'),
        '+966500000001',
      );
    });

    test('reads phone from map extra', () {
      expect(
        GoRouterConfig.resetPasswordPhoneFromExtra({
          'phone': '+966500000001',
        }),
        '+966500000001',
      );
    });

    test('returns null when phone extra is missing', () {
      expect(GoRouterConfig.resetPasswordPhoneFromExtra(null), isNull);
      expect(
        GoRouterConfig.resetPasswordPhoneFromExtra({
          'email': 'user@example.com',
        }),
        isNull,
      );
    });
  });
}
