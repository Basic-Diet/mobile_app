import 'package:basic_diet/data/mappers/subscription_checkout_mapper.dart';
import 'package:basic_diet/data/mappers/subscription_quote_mapper.dart';
import 'package:basic_diet/data/mappers/timeline_mapper.dart';
import 'package:basic_diet/data/response/subscription_checkout_response.dart';
import 'package:basic_diet/data/response/timeline_response.dart';
import 'package:basic_diet/domain/model/subscription_checkout_model.dart';
import 'package:basic_diet/domain/model/subscription_quote_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('delivery fulfillment contract', () {
    test('serializes first-day pickup override for quote and checkout', () {
      const override = SubscriptionFirstDayFulfillmentOverrideModel(
        type: 'pickup',
        pickupLocationId: 'branch-1',
      );
      const quoteRequest = SubscriptionQuoteRequestModel(
        planId: 'plan-7-days',
        grams: 150,
        mealsPerDay: 2,
        startDate: '2026-07-04',
        premiumItems: [],
        addons: [],
        delivery: SubscriptionQuoteDeliveryRequestModel(
          type: 'delivery',
          zoneId: 'zone-1',
          firstDayFulfillmentOverride: override,
        ),
      );

      final quoteJson = quoteRequest.toRequest().toJson();
      final checkoutJson =
          quoteRequest
              .toCheckoutRequest(
                idempotencyKey: 'checkout-1',
                successUrl: 'https://app.example.com/success',
                backUrl: 'https://app.example.com/cancel',
              )
              .toRequest()
              .toJson();

      expect(quoteJson['delivery']['type'], 'delivery');
      expect(quoteJson['delivery']['firstDayFulfillmentOverride'], {
        'type': 'pickup',
        'pickupLocationId': 'branch-1',
      });
      expect(checkoutJson['delivery']['type'], 'delivery');
      expect(checkoutJson['delivery']['firstDayFulfillmentOverride'], {
        'type': 'pickup',
        'pickupLocationId': 'branch-1',
      });
    });

    test('maps checkout fulfillment options', () {
      final response = SubscriptionCheckoutResponse.fromJson({
        'status': true,
        'data': {
          'subscriptionId': 'sub-1',
          'draftId': 'draft-1',
          'paymentId': 'payment-1',
          'payment_url': 'https://payments.example.com/1',
          'reused': false,
          'fulfillmentOptions': {
            'sameDayDeliveryAllowed': false,
            'sameDayPickupAllowed': true,
            'firstDayPickupOverrideAvailable': true,
            'deliveryStartDateIfNoPickup': '2026-07-05',
            'requestedStartDate': '2026-07-04',
            'resolvedStartDate': '2026-07-04',
            'startDateShifted': false,
            'reason': 'same_day_pickup_available',
          },
        },
      });

      final options = response.toDomain().fulfillmentOptions;

      expect(options.sameDayDeliveryAllowed, isFalse);
      expect(options.sameDayPickupAllowed, isTrue);
      expect(options.firstDayPickupOverrideAvailable, isTrue);
      expect(options.deliveryStartDateIfNoPickup, '2026-07-05');
      expect(options.requestedStartDate, '2026-07-04');
      expect(options.resolvedStartDate, '2026-07-04');
      expect(options.startDateShifted, isFalse);
      expect(options.reason, 'same_day_pickup_available');
    });

    test('maps timeline status, dayStatus, canEdit, and physical mode', () {
      final response = TimelineDayResponse.fromJson({
        'date': '2026-07-04',
        'day': 'Sat',
        'month': 'July',
        'dayNumber': 1,
        'status': 'locked',
        'timelineStatus': 'quantity_only',
        'dayStatus': 'in_preparation',
        'fulfillmentMode': 'pickup',
        'effectiveFulfillmentMode': 'pickup',
        'fulfillmentModeOverride': 'pickup',
        'pickupLocationIdOverride': 'branch-1',
        'firstDayFulfillmentOverride': true,
        'canEdit': false,
        'lockedReason': 'DELIVERY_SELECTION_CUTOFF_PASSED',
        'lockedMessage': 'Selection is locked',
      });

      final day = response.toDomain();

      expect(day.normalizedStatus, 'locked');
      expect(day.normalizedDayStatus, 'in_preparation');
      expect(day.normalizedFulfillmentMode, 'pickup');
      expect(day.timelineStatus, 'quantity_only');
      expect(day.firstDayFulfillmentOverride, isTrue);
      expect(day.canEdit, isFalse);
      expect(day.lockedReason, 'DELIVERY_SELECTION_CUTOFF_PASSED');
      expect(day.lockedMessage, 'Selection is locked');
    });
  });
}
