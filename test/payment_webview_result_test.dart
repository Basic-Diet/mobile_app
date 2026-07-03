import 'package:basic_diet/presentation/main/cart/payment_webview_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('paymentCallbackMatches', () {
    const successUrl = 'https://basicdiet145.onrender.com/payment-success';
    const cancelUrl = 'https://basicdiet145.onrender.com/payment-cancel';

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
          'https://basicdiet145.onrender.com/other/payment-success',
          successUrl,
        ),
        isFalse,
      );
    });
  });
}
