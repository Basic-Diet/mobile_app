import 'package:basic_diet/data/mappers/order_menu_mapper.dart';
import 'package:basic_diet/data/mappers/meal_planner_menu_mapper.dart';
import 'package:basic_diet/data/response/meal_planner_menu_response.dart';
import 'package:basic_diet/data/response/order_menu_response.dart';
import 'package:basic_diet/domain/model/order_menu_model.dart';
import 'package:basic_diet/presentation/main/cart/checkout_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('builderCatalogV2 parsing', () {
    test('preserves localized names, calories, and option sections', () {
      final response = MealPlannerMenuResponse.fromJson({
        'status': true,
        'data': {
          'currency': 'SAR',
          'builderCatalogV2': {
            'catalogVersion': 'v2',
            'currency': 'SAR',
            'sections': [
              {
                'id': 'section-1',
                'key': 'standard_meal',
                'type': 'category',
                'selectionType': 'standard_meal',
                'name': 'Main',
                'nameI18n': {'ar': 'الرئيسية', 'en': 'Main'},
                'ui': {'cardVariant': 'meal_builder'},
                'products': [
                  {
                    'id': 'prod-1',
                    'key': 'sandwich-1',
                    'type': 'product',
                    'isVirtual': false,
                    'selectionType': 'builder',
                    'name': 'Chicken',
                    'nameI18n': {'ar': 'دجاج', 'en': 'Chicken'},
                    'descriptionI18n': {'ar': 'وصف عربي', 'en': 'English desc'},
                    'imageUrl': 'https://example.com/chicken.png',
                    'itemType': 'sandwich',
                    'pricingModel': 'fixed',
                    'priceHalala': 1250,
                    'currency': 'SAR',
                    'calories': null,
                    'proteinFamilyKey': 'chicken',
                    'ui': {
                      'cardVariant': 'standard',
                      'badge': 'Popular',
                      'ctaLabel': 'startCustomization',
                      'imageRatio': '1/1',
                    },
                    'optionSections': [
                      {
                        'key': 'sides',
                        'name': 'Sides',
                        'optionIds': ['opt-1'],
                        'sortOrder': 1,
                      },
                    ],
                    'optionGroups': [
                      {
                        'id': 'group-1',
                        'groupId': 'group-1',
                        'key': 'protein',
                        'sourceKey': 'protein',
                        'name': 'Protein',
                        'nameI18n': {'ar': 'البروتين', 'en': 'Protein'},
                        'minSelections': 1,
                        'maxSelections': null,
                        'isRequired': true,
                        'sortOrder': 1,
                        'ui': {'displayStyle': 'chips'},
                        'optionSections': [
                          {
                            'key': 'protein-section',
                            'name': 'Protein Section',
                            'optionIds': ['opt-1'],
                            'sortOrder': 1,
                          },
                        ],
                        'options': [
                          {
                            'id': 'opt-1',
                            'optionId': 'opt-1',
                            'key': 'opt-key',
                            'name': 'White Rice',
                            'nameI18n': {'ar': 'رز أبيض', 'en': 'White Rice'},
                            'descriptionI18n': {'ar': 'خيار عربي', 'en': 'English option'},
                            'displayCategoryKey': 'protein',
                            'proteinFamilyKey': 'rice',
                            'proteinFamilyNameI18n': {
                              'ar': 'رز',
                              'en': 'Rice',
                            },
                            'premiumKey': 'premium-1',
                            'selectionType': 'choice',
                            'isPremium': false,
                            'extraFeeHalala': 0,
                            'extraPriceHalala': 0,
                            'calories': 180,
                            'ui': {'badge': 'New'},
                            'sortOrder': 1,
                          },
                        ],
                      },
                    ],
                  },
                ],
              },
            ],
            'rules': {
              'version': '1',
              'beef': {'proteinFamilyKey': 'beef', 'maxSlotsPerDay': 1},
            },
          },
        },
      });

      final raw = response.data?.builderCatalogV2?.toRawDomain();

      expect(raw?.catalogVersion, 'v2');
      expect(raw?.sections.first.nameI18n['ar'], 'الرئيسية');
      expect(raw?.sections.first.products.first.nameI18n['ar'], 'دجاج');
      expect(raw?.sections.first.products.first.descriptionI18n['ar'], 'وصف عربي');
      expect(raw?.sections.first.products.first.calories, isNull);
      expect(raw?.sections.first.products.first.optionSections, isNotEmpty);
      expect(raw?.sections.first.products.first.optionGroups.first.optionSections, isNotEmpty);
      expect(raw?.sections.first.products.first.optionGroups.first.options.first.calories, 180);
      expect(raw?.sections.first.products.first.optionGroups.first.options.first.nameI18n['ar'], 'رز أبيض');
      expect(
        raw?.sections.first.products.first.optionGroups.first.options.first
            .proteinFamilyNameI18n['ar'],
        'رز',
      );
    });
  });

  group('order menu parsing', () {
    test('preserves backend localized metadata and pricing fields', () {
      final response = OrderMenuProductResponse.fromJson({
        'id': 'product-1',
        'key': 'sandwich-1',
        'categoryId': 'category-1',
        'name': 'Chicken',
        'nameI18n': {'ar': 'دجاج', 'en': 'Chicken'},
        'descriptionI18n': {'ar': 'وصف عربي', 'en': 'English desc'},
        'imageUrl': 'https://example.com/chicken.png',
        'itemType': 'sandwich',
        'pricingModel': 'fixed',
        'priceHalala': 1250,
        'calories': 420,
        'proteinFamilyKey': 'chicken',
        'sortOrder': 1,
        'requiresBuilder': true,
        'canAddDirectly': false,
        'ui': {
          'cardVariant': 'standard',
          'badge': 'Popular',
          'ctaLabel': 'startCustomization',
          'imageRatio': '1/1',
        },
        'optionSections': [],
        'optionGroups': [],
      });

      final product = response.toDomain();

      expect(product.displayName('ar'), 'دجاج');
      expect(product.displayDescription('ar'), 'وصف عربي');
      expect(product.calories, 420);
      expect(product.resolvedRequiresBuilder, isTrue);
      expect(product.resolvedCanAddDirectly, isFalse);
      expect(product.ctaLabel, 'startCustomization');
    });

    test('uses backend description before generic fallback', () {
      const product = OrderMenuProductModel(
        id: 'product-2',
        key: 'new-key',
        categoryId: 'category-1',
        name: 'Fallback name',
        nameI18n: {'ar': 'اسم عربي', 'en': 'English name'},
        description: '',
        descriptionI18n: {'ar': 'وصف عربي', 'en': 'English desc'},
        imageUrl: null,
        itemType: 'sandwich',
        pricingModel: 'fixed',
        priceHalala: 1000,
        calories: null,
        baseUnitGrams: 0,
        defaultWeightGrams: 0,
        minWeightGrams: 0,
        maxWeightGrams: 0,
        weightStepGrams: 0,
        sortOrder: 0,
        optionGroups: [],
      );

      expect(product.displayDescription('ar'), 'وصف عربي');
      expect(product.displayName('ar'), 'اسم عربي');
    });
  });

  group('checkout helpers', () {
    test('detects catalog unavailable codes', () {
      expect(isCatalogItemUnavailableCode('CATALOG_ITEM_UNAVAILABLE'), isTrue);
      expect(isCatalogItemUnavailableCode('something-else'), isFalse);
    });

    test('returns a non-fallback message for unavailable items', () {
      final message = checkoutErrorMessage(
        code: 'CATALOG_ITEM_UNAVAILABLE',
        fallback: 'fallback',
      );

      expect(message, isNot('fallback'));
      expect(message, isNotEmpty);
    });
  });
}
