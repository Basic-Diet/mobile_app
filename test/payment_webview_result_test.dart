import 'package:basic_diet/app/constants.dart';
import 'package:basic_diet/presentation/main/cart/payment_webview_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('paymentCallbackMatches', () {
    const successUrl = Constants.paymentSuccessUrl;
    const cancelUrl = Constants.paymentCancelUrl;

    test('matches configured success callback with query parameters', () {
      expect(
        paymentCallbackMatches('$successUrl?paymentId=pay_123', successUrl),
        isTrue,
      );
    });

    test('matches configured cancel callback with trailing slash', () {
      expect(paymentCallbackMatches('$cancelUrl/', cancelUrl), isTrue);
    });

    test('does not match unrelated hosts or same last path segment', () {
      expect(
        paymentCallbackMatches(
          'https://evil.example.com/payment-success',
          successUrl,
        ),
        isFalse,
      );
      expect(
        paymentCallbackMatches(
          '${Constants.debugBaseUrl}/other/payment-success',
          successUrl,
        ),
        isFalse,
      );
    });
  });
}
