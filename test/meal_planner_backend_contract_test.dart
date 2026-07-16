import 'package:basic_diet/data/mappers/addon_choices_mapper.dart';
import 'package:basic_diet/data/mappers/current_subscription_overview_mapper.dart';
import 'package:basic_diet/data/response/addon_choices_response.dart';
import 'package:basic_diet/data/response/current_subscription_overview_response.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('meal planner backend contract', () {
    test('keeps add-on subscription allowance rows separate by plan', () {
      final response = CurrentSubscriptionOverviewResponse.fromJson({
        'status': true,
        'data': {
          '_id': 'sub-1',
          'status': 'active',
          'startDate': '2026-07-01',
          'endDate': '2026-07-07',
          'addonSubscriptionAllowances': [
            {
              'entitlementKey': 'snack:ice-cream-plan',
              'addonPlanId': 'ice-cream-plan',
              'addonPlanName': 'Ice Cream',
              'displayCategory': 'ice_cream',
              'allowanceCategory': 'snack',
              'includedTotalQty': 7,
              'remainingIncludedQty': 7,
              'source': 'subscription',
            },
            {
              'entitlementKey': 'snack:snack-plan',
              'addonPlanId': 'snack-plan',
              'addonPlanName': 'Snack',
              'displayCategory': 'snack',
              'allowanceCategory': 'snack',
              'includedTotalQty': 7,
              'remainingIncludedQty': 7,
              'source': 'subscription',
            },
          ],
          'addonCategoryAllowances': [
            {
              'category': 'snack',
              'includedTotalQty': 14,
              'remainingIncludedQty': 14,
            },
          ],
        },
      });

      final overview = response.toDomain().data!;

      expect(overview.addonSubscriptionAllowances, hasLength(2));
      expect(overview.addonCategoryAllowances.single.includedTotalQty, 14);
      expect(
        overview.displayAddonEntitlements.map((item) => item.category),
        ['ice_cream', 'snack'],
      );
    });

    test('maps add-on choice selection id from product identity', () {
      final response = AddonChoicesResponse.fromJson({
        'ok': true,
        'data': {
          'addonSubscriptionAllowances': [],
          'commercialState': 'ready',
          'juice': {
            'category': 'juice',
            'choices': [
              {
                'id': 'choice-row-id',
                'productId': 'orange-product-id',
                'menuProductId': 'orange-menu-product-id',
                'addonPlanId': 'juice-plan-id',
                'name': 'Orange Juice',
                'category': 'juice',
                'source': 'subscription',
                'coveredQty': 1,
                'paidQty': 0,
                'payableTotalHalala': 0,
                'unitPriceHalala': 1000,
                'pricingMode': 'allowance_covered',
                'availableForNewSale': false,
              },
            ],
          },
        },
      });

      final choices = response.toDomain();
      final choice = choices.categories.single.choices.single;

      expect(choices.categories, hasLength(1));
      expect(choice.id, 'orange-product-id');
      expect(choice.rawId, 'choice-row-id');
      expect(choice.addonPlanId, 'juice-plan-id');
      expect(choice.isSelectable, isTrue);
      expect(choice.isIncludedByBackend, isTrue);
    });
  });
}
