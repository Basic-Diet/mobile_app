import 'package:basic_diet/data/response/premium_payment_response.dart';
import 'package:basic_diet/domain/model/premium_payment_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PremiumPaymentVerificationResponse', () {
    test('parses successful paid response', () {
      final response = PremiumPaymentVerificationResponse.fromJson({
        'status': true,
        'data': {
          'paymentStatus': 'paid',
          'applied': true,
          'isFinal': true,
          'commercialState': 'confirmed',
        },
      });

      final model = PremiumPaymentVerificationModel(
        paymentStatus: response.data?.paymentStatus ?? '',
        message: response.data?.message ?? '',
        applied: response.data?.applied ?? false,
        isFinal: response.data?.isFinal ?? false,
        commercialState: response.data?.commercialState ?? '',
      );

      expect(response.status, isTrue);
      expect(model.resolvedPaymentStatus, 'paid');
      expect(model.isVerificationSuccessful, isTrue);
      expect(model.isVerificationPending, isFalse);
      expect(model.commercialState, 'confirmed');
    });

    test('parses pending response', () {
      final response = PremiumPaymentVerificationResponse.fromJson({
        'status': true,
        'data': {
          'paymentStatus': 'initiated',
          'applied': false,
          'isFinal': false,
        },
      });

      final model = PremiumPaymentVerificationModel(
        paymentStatus: response.data?.paymentStatus ?? '',
        message: response.data?.message ?? '',
        applied: response.data?.applied ?? false,
        isFinal: response.data?.isFinal ?? false,
      );

      expect(response.status, isTrue);
      expect(model.resolvedPaymentStatus, 'initiated');
      expect(model.isVerificationSuccessful, isFalse);
      expect(model.isVerificationPending, isTrue);
    });

    test(
      'falls back to nested payment status when paymentStatus is absent',
      () {
        final response = PremiumPaymentVerificationResponse.fromJson({
          'status': true,
          'data': {
            'applied': true,
            'isFinal': true,
            'payment': {'status': 'paid', 'applied': true},
          },
        });

        final model = PremiumPaymentVerificationModel(
          paymentStatus: response.data?.paymentStatus ?? '',
          message: response.data?.message ?? '',
          applied: response.data?.applied ?? false,
          isFinal: response.data?.isFinal ?? false,
          payment: response.data?.payment ?? const {},
        );

        expect(model.resolvedPaymentStatus, 'paid');
        expect(model.isVerificationSuccessful, isTrue);
      },
    );
  });
}
