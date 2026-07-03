import 'package:basic_diet/data/mappers/addon_subscription_options_mapper.dart';
import 'package:basic_diet/data/mappers/subscription_quote_mapper.dart';
import 'package:basic_diet/data/response/addon_subscription_options_response.dart';
import 'package:basic_diet/domain/model/subscription_quote_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('add-on subscription pricing contract', () {
    test('maps backend matrix price without applying duration math', () {
      final response = AddonSubscriptionOptionsResponse.fromJson({
        'status': true,
        'data': {
          'planId': 'plan-7-days',
          'addons': [
            {
              'id': 'juice-addon',
              'addonPlanId': 'juice-addon',
              'name': {'ar': 'اشتراك العصير', 'en': 'Juice Subscription'},
              'category': 'juice',
              'maxPerDay': 1,
              'pricingMode': 'base_plan_matrix',
              'priceHalala': 10000,
              'priceSar': 100,
              'priceLabel': '100 SAR',
              'currency': 'SAR',
              'isAvailable': true,
              'menuProductIds': ['apple-juice'],
              'menuProductsCount': 1,
              'menuProducts': [
                {
                  'id': 'apple-juice',
                  'name': {'ar': 'عصير تفاح', 'en': 'Apple Juice'},
                  'image': '',
                  'category': 'juices',
                  'isActive': true,
                },
              ],
            },
          ],
        },
      });

      final option = response.toDomain().addons.single;

      expect(option.priceHalala, 10000);
      expect(option.priceSar, 100);
      expect(option.priceLabel, '100 SAR');
      expect(option.localizedName('en'), 'Juice Subscription');
      expect(option.menuProducts.single.localizedName('ar'), 'عصير تفاح');
    });

    test('serializes selected add-on IDs for quote requests', () {
      const request = SubscriptionQuoteRequestModel(
        planId: 'plan-7-days',
        grams: 150,
        mealsPerDay: 2,
        startDate: '2026-06-20',
        premiumItems: [],
        addons: ['juice-addon'],
        delivery: SubscriptionQuoteDeliveryRequestModel(type: 'pickup'),
      );

      final json = request.toRequest().toJson();

      expect(json['addons'], ['juice-addon']);
    });
  });
}
