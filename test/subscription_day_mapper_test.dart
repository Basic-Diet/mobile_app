import 'package:basic_diet/data/mappers/subscription_day_mapper.dart';
import 'package:basic_diet/data/response/subscription_day_response.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SubscriptionDayResponse mapper', () {
    test('maps addonBalance from day detail response', () {
      final response = SubscriptionDayResponse.fromJson({
        'status': true,
        'data': {
          'date': '2026-07-11',
          'status': 'open',
          'mealSlots': [],
          'addonSelections': [],
          'addonBalance': [
            {
              'addonPlanId': 'juice-plan',
              'addonId': 'juice',
              'name': 'Juice',
              'category': 'juice',
              'purchasedDailyQty': 0,
              'includedTotalQty': 20,
              'purchasedQty': 20,
              'consumedQty': 0,
              'reservedQty': 0,
              'remainingQty': 20,
              'currency': 'SAR',
            },
          ],
        },
      });

      final day = response.toDomain();

      expect(day.addonBalance, hasLength(1));
      expect(day.addonBalance.first.category, 'juice');
      expect(day.addonBalance.first.remainingQty, 20);
      expect(day.addonBalance.first.toPlannerEntitlement().includedCount, 20);
    });

    test('maps legacy addonBalances field from day detail response', () {
      final response = SubscriptionDayResponse.fromJson({
        'status': true,
        'data': {
          'date': '2026-07-11',
          'status': 'open',
          'mealSlots': [],
          'addonSelections': [],
          'addonBalances': {
            'addonPlanId': 'juice-plan',
            'addonId': 'juice',
            'category': 'juice',
            'includedTotalQty': 20,
            'remainingQty': 8,
            'currency': 'SAR',
          },
        },
      });

      final day = response.toDomain();

      expect(day.addonBalance, hasLength(1));
      expect(day.addonBalance.first.remainingQty, 8);
    });

    test('maps day allowance arrays and add-on pricing fields', () {
      final response = SubscriptionDayResponse.fromJson({
        'status': true,
        'data': {
          'date': '2026-07-11',
          'status': 'draft',
          'mealSlots': [],
          'addonSelections': [
            {
              'addonId': 'berry-product',
              'source': 'pending_payment',
              'coveredQty': 0,
              'paidQty': 1,
              'payableTotalHalala': 1100,
              'pricingMode': 'paid_no_entitlement',
              'currency': 'SAR',
            },
          ],
          'addonSubscriptionAllowances': [
            {
              'entitlementKey': 'juice:juice-plan',
              'addonPlanId': 'juice-plan',
              'displayCategory': 'juice',
              'allowanceCategory': 'juice',
              'includedTotalQty': 7,
              'remainingIncludedQty': 6,
            },
          ],
          'addonCategoryAllowances': [
            {
              'category': 'juice',
              'includedTotalQty': 7,
              'remainingIncludedQty': 6,
            },
          ],
        },
      });

      final day = response.toDomain();

      expect(day.addonSelections.single.isPendingPayment, isTrue);
      expect(day.addonSelections.single.payableTotalHalala, 1100);
      expect(day.addonSubscriptionAllowances.single.addonPlanId, 'juice-plan');
      expect(day.addonCategoryAllowances.single.remainingIncludedQty, 6);
    });
  });
}
