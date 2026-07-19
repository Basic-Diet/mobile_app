import 'package:basic_diet/data/mappers/order_menu_mapper.dart';
import 'package:basic_diet/data/mappers/meal_planner_menu_mapper.dart';
import 'package:basic_diet/data/mappers/order_quote_request_mapper.dart';
import 'package:basic_diet/data/response/meal_planner_menu_response.dart';
import 'package:basic_diet/data/response/order_menu_response.dart';
import 'package:basic_diet/domain/model/order_menu_model.dart';
import 'package:basic_diet/domain/model/order_quote_request_model.dart';
import 'package:basic_diet/presentation/main/cart/checkout_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('meal planner menu v3 parsing', () {
    test('preserves localized names, calories, and option sections', () {
      final response = MealPlannerMenuResponse.fromJson({
        'status': true,
        'data': {
          'currency': 'SAR',
          'builderCatalog': {
            'contractVersion': 'meal_planner_menu.v3',
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
                            'descriptionI18n': {
                              'ar': 'خيار عربي',
                              'en': 'English option',
                            },
                            'displayCategoryKey': 'protein',
                            'proteinFamilyKey': 'rice',
                            'proteinFamilyNameI18n': {'ar': 'رز', 'en': 'Rice'},
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

      final raw = response.data?.builderCatalog.toRawDomain();

      expect(raw?.catalogVersion, 'meal_planner_menu.v3');
      expect(raw?.sections.first.nameI18n['ar'], 'الرئيسية');
      expect(raw?.sections.first.products.first.nameI18n['ar'], 'دجاج');
      expect(
        raw?.sections.first.products.first.descriptionI18n['ar'],
        'وصف عربي',
      );
      expect(raw?.sections.first.products.first.calories, isNull);
      expect(raw?.sections.first.products.first.optionSections, isNotEmpty);
      expect(
        raw?.sections.first.products.first.optionGroups.first.optionSections,
        isNotEmpty,
      );
      expect(
        raw
            ?.sections
            .first
            .products
            .first
            .optionGroups
            .first
            .options
            .first
            .calories,
        180,
      );
      expect(
        raw
            ?.sections
            .first
            .products
            .first
            .optionGroups
            .first
            .options
            .first
            .nameI18n['ar'],
        'رز أبيض',
      );
      expect(
        raw
            ?.sections
            .first
            .products
            .first
            .optionGroups
            .first
            .options
            .first
            .proteinFamilyNameI18n['ar'],
        'رز',
      );
    });

    test('maps section option groups to protein and carb choices', () {
      final response = MealPlannerMenuResponse.fromJson({
        'status': true,
        'data': {
          'builderCatalog': {
            'contractVersion': 'meal_planner_menu.v3',
            'currency': 'SAR',
            'sections': [
              {
                'id': 'section:chicken',
                'key': 'chicken',
                'type': 'configurable_product',
                'name': 'دجاج',
                'sortOrder': 30,
                'products': [
                  {
                    'id': 'product-basic-meal',
                    'key': 'basic_meal',
                    'name': 'وجبة بيسك',
                    'selectionType': 'standard_meal',
                    'optionGroups': [
                      {
                        'id': 'group-proteins',
                        'key': 'proteins',
                        'sourceKey': 'proteins',
                        'name': 'دجاج',
                        'options': [
                          {
                            'id': 'option-chicken',
                            'key': 'chicken',
                            'name': 'دجاج',
                            'isPremium': false,
                            'sortOrder': 10,
                          },
                          {
                            'id': 'option-fajita',
                            'key': 'chicken_fajita',
                            'name': 'فاهيتا',
                            'isPremium': false,
                            'sortOrder': 100,
                          },
                        ],
                      },
                    ],
                  },
                ],
              },
              {
                'id': 'section:carbs',
                'key': 'carbs',
                'type': 'configurable_product',
                'name': 'نشويات',
                'sortOrder': 70,
                'products': [
                  {
                    'id': 'product-basic-meal',
                    'key': 'basic_meal',
                    'name': 'وجبة بيسك',
                    'selectionType': 'standard_meal',
                    'optionGroups': [
                      {
                        'id': 'group-carbs',
                        'key': 'carbs',
                        'sourceKey': 'carbs',
                        'name': 'نشويات',
                        'options': [
                          {
                            'id': 'option-white-rice',
                            'key': 'white_rice',
                            'name': 'رز أبيض',
                            'sortOrder': 10,
                          },
                          {
                            'id': 'option-pasta',
                            'key': 'alfredo_pasta',
                            'name': 'باستا الفريدو',
                            'sortOrder': 30,
                          },
                        ],
                      },
                    ],
                  },
                ],
              },
            ],
            'rules': {},
          },
        },
      });

      final menu = response.toDomain();

      expect(menu.builderCatalog.categories.single.name, 'دجاج');
      expect(menu.builderCatalog.proteins.map((protein) => protein.id), [
        'option-chicken',
        'option-fajita',
      ]);
      expect(menu.builderCatalog.proteins.map((protein) => protein.name), [
        'دجاج',
        'فاهيتا',
      ]);
      expect(menu.builderCatalog.carbs.map((carb) => carb.id), [
        'option-white-rice',
        'option-pasta',
      ]);
      expect(menu.builderCatalog.carbs.map((carb) => carb.name), [
        'رز أبيض',
        'باستا الفريدو',
      ]);
      expect(
        menu.builderCatalog.allProteins.any(
          (protein) => protein.id == 'product-basic-meal',
        ),
        isFalse,
      );
      expect(
        menu.builderCatalog.carbs.any(
          (carb) => carb.id == 'product-basic-meal',
        ),
        isFalse,
      );
    });

    test('derives premium large salad from exact product key only', () {
      final response = MealPlannerMenuResponse.fromJson({
        'status': true,
        'data': {
          'builderCatalog': {
            'contractVersion': 'meal_planner_menu.v3',
            'currency': 'SAR',
            'sections': [
              {
                'id': 'section:premium-large-salad',
                'key': 'premium_large_salad',
                'type': 'configurable_product',
                'selectionType': 'premium_large_salad',
                'name': 'Premium Large Salad',
                'products': [
                  {
                    'id': 'product-basic-salad',
                    'key': 'basic_salad',
                    'name': 'Basic Salad',
                    'selectionType': 'premium_large_salad',
                    'priceHalala': 1000,
                    'currency': 'SAR',
                    'sortOrder': 1,
                  },
                  {
                    'id': 'product-premium-large-salad',
                    'key': 'premium_large_salad',
                    'name': 'Premium Large Salad',
                    'selectionType': 'premium_large_salad',
                    'priceHalala': 2500,
                    'currency': 'SAR',
                    'sortOrder': 2,
                  },
                ],
              },
            ],
            'rules': {},
          },
        },
      });

      final menu = response.toDomain();
      final salad = menu.builderCatalog.premiumLargeSalad;

      expect(salad, isNotNull);
      expect(salad?.id, 'product-premium-large-salad');
      expect(salad?.premiumKey, 'premium_large_salad');
      expect(salad?.preset.key, 'premium_large_salad');
    });

    test('does not derive premium large salad from other salad-like keys', () {
      final response = MealPlannerMenuResponse.fromJson({
        'status': true,
        'data': {
          'builderCatalog': {
            'contractVersion': 'meal_planner_menu.v3',
            'currency': 'SAR',
            'sections': [
              {
                'id': 'section:premium-large-salad',
                'key': 'premium_large_salad',
                'type': 'configurable_product',
                'selectionType': 'premium_large_salad',
                'name': 'Premium Large Salad',
                'products': [
                  {
                    'id': 'product-basic-salad',
                    'key': 'basic_salad',
                    'name': 'Basic Salad',
                    'selectionType': 'premium_large_salad',
                    'priceHalala': 1000,
                    'currency': 'SAR',
                    'sortOrder': 1,
                  },
                  {
                    'id': 'product-side-salad',
                    'key': 'side_salad',
                    'name': 'Side Salad',
                    'selectionType': 'premium_large_salad',
                    'priceHalala': 1200,
                    'currency': 'SAR',
                    'sortOrder': 2,
                  },
                ],
              },
            ],
            'rules': {},
          },
        },
      });

      final menu = response.toDomain();

      expect(menu.builderCatalog.premiumLargeSalad, isNull);
    });

    test('maps V3 direct full meal products from dynamic sections', () {
      final response = MealPlannerMenuResponse.fromJson({
        'status': true,
        'data': {
          'plannerCatalog': {
            'contractVersion': 'meal_planner_menu.v3',
            'currency': 'SAR',
            'sections': [
              {
                'id': 'section:ready-meals',
                'key': 'ready_meals',
                'type': 'product_section',
                'selectionType': 'full_meal_product',
                'name': 'Ready meals',
                'products': [
                  {
                    'id': 'moussaka_with_minced_meat',
                    'key': 'moussaka_with_minced_meat',
                    'name': 'Moussaka with minced meat',
                    'selectionType': 'full_meal_product',
                    'sortOrder': 10,
                    'action': {
                      'type': 'direct_add',
                      'requiresBuilder': false,
                      'treatAsFullMeal': true,
                    },
                  },
                  {
                    'id': 'lasagna_with_minced_meat',
                    'key': 'lasagna_with_minced_meat',
                    'name': 'Lasagna with minced meat',
                    'selectionType': 'full_meal_product',
                    'sortOrder': 20,
                    'action': {
                      'type': 'direct_add',
                      'requiresBuilder': false,
                      'treatAsFullMeal': true,
                    },
                  },
                ],
              },
            ],
            'rules': {},
          },
        },
      });

      final menu = response.toDomain();
      final directItems = menu.builderCatalog.directFullMealItems;

      expect(menu.builderCatalog.sections.single.key, 'ready_meals');
      expect(directItems.map((item) => item.id), [
        'moussaka_with_minced_meat',
        'lasagna_with_minced_meat',
      ]);
      expect(
        directItems.every((item) => item.selectionType == 'full_meal_product'),
        isTrue,
      );
      expect(
        directItems.every((item) => item.action.type == 'direct_add'),
        isTrue,
      );
      expect(
        directItems.every((item) => item.action.requiresBuilder == false),
        isTrue,
      );
      expect(directItems.every((item) => item.action.treatAsFullMeal), isTrue);
      expect(directItems.every((item) => item.isDirectFullMeal), isTrue);
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
          'cardSize': 'big',
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
      expect(product.cardSize, ProductCardSize.large);
      expect(product.resolvedRequiresBuilder, isTrue);
      expect(product.resolvedCanAddDirectly, isFalse);
      expect(product.ctaLabel, 'startCustomization');
    });

    test('parses backend weight pricing choices and step price', () {
      final response = OrderMenuProductResponse.fromJson({
        'id': 'product-1',
        'key': 'custom_salad_100g',
        'categoryId': 'category-1',
        'name': 'Custom Salad',
        'itemType': 'product',
        'pricingModel': 'per_100g',
        'priceHalala': 2900,
        'baseUnitGrams': 100,
        'defaultWeightGrams': 100,
        'minWeightGrams': 100,
        'maxWeightGrams': 600,
        'weightStepGrams': 50,
        'weightStepPriceHalala': 500,
        'weightPricing': {
          'contractVersion': 'weight_pricing.v1',
          'strategy': 'base_plus_steps',
          'requiresWeightSelection': true,
          'basePriceHalala': 2900,
          'baseWeightGrams': 100,
          'defaultWeightGrams': 100,
          'minWeightGrams': 100,
          'maxWeightGrams': 600,
          'stepGrams': 50,
          'stepPriceHalala': 500,
          'choices': [
            {'weightGrams': 100, 'priceHalala': 2900},
            {'weightGrams': 150, 'priceHalala': 3400},
            {'weightGrams': 200, 'priceHalala': 3900},
            {'weightGrams': 250, 'priceHalala': 4400},
            {'weightGrams': 300, 'priceHalala': 4900},
          ],
        },
      });

      final product = response.toDomain();

      expect(product.weightStepPriceHalala, 500);
      expect(product.requiresWeightSelection, isTrue);
      expect(product.hasBackendWeightChoices, isTrue);
      expect(product.weightPricing?.contractVersion, 'weight_pricing.v1');
      expect(product.weightPricing?.strategy, 'base_plus_steps');
      expect(product.weightPricing?.stepPriceHalala, 500);
      expect(product.weightPricing?.initialChoice?.weightGrams, 100);
      expect(
        product.weightPricing?.choices.map((choice) => choice.weightGrams),
        [100, 150, 200, 250, 300],
      );
      expect(product.weightPricing?.choiceForWeight(150)?.priceHalala, 3400);
      expect(product.weightPricing?.choiceForWeight(300)?.priceHalala, 4900);
      expect(
        product.weightPricing?.choiceForWeight(150)?.priceHalala,
        isNot(4350),
      );
    });

    test('supports public V2 pricing names without inventing local prices', () {
      final response = OrderMenuProductResponse.fromJson({
        'id': 'product-2',
        'key': 'spicy_chicken_meal_100g',
        'name': 'Spicy chicken',
        'pricingModel': 'per_100g',
        'priceHalala': 1900,
        'weightPricing': {
          'weightPricingContractVersion': 'weight_pricing.v1',
          'strategy': 'base_plus_steps',
          'requiresWeightSelection': true,
          'baseUnitGrams': 100,
          'defaultWeightGrams': 100,
          'weightStepGrams': 50,
          'weightStepPriceHalala': 500,
          'weightChoices': [
            {'weightGrams': 100, 'priceHalala': 1900},
            {'weightGrams': 150, 'priceHalala': 2400},
            {'weightGrams': 200, 'priceHalala': 2900},
            {'weightGrams': 250, 'priceHalala': 3400},
            {'weightGrams': 300, 'priceHalala': 3900},
          ],
        },
      });

      final product = response.toDomain();

      expect(product.weightPricing?.contractVersion, 'weight_pricing.v1');
      expect(
        product.weightPricing?.choices.map((choice) => choice.priceHalala),
        [1900, 2400, 2900, 3400, 3900],
      );
      expect(product.weightPricing?.choiceForWeight(150)?.priceHalala, 2400);
      expect(product.weightPricing?.choiceForWeight(200)?.priceHalala, 2900);
      expect(product.weightPricing?.choiceForWeight(300)?.priceHalala, 3900);
    });

    test(
      'falls back to first backend choice when default weight is unavailable',
      () {
        final product =
            OrderMenuProductResponse.fromJson({
              'id': 'product-3',
              'key': 'custom_salad_100g',
              'name': 'Custom Salad',
              'pricingModel': 'per_100g',
              'defaultWeightGrams': 175,
              'weightPricing': {
                'requiresWeightSelection': true,
                'defaultWeightGrams': 175,
                'choices': [
                  {'weightGrams': 100, 'priceHalala': 2900},
                  {'weightGrams': 150, 'priceHalala': 3400},
                ],
              },
            }).toDomain();

        expect(product.weightPricing?.initialChoice?.weightGrams, 100);
        expect(product.weightPricing?.choiceForWeight(175), isNull);
      },
    );

    test('preserves legacy per-unit behavior when choices are absent', () {
      final product =
          OrderMenuProductResponse.fromJson({
            'id': 'product-4',
            'key': 'legacy',
            'name': 'Legacy',
            'pricingModel': 'per_100g',
            'priceHalala': 1000,
            'baseUnitGrams': 100,
            'defaultWeightGrams': 100,
            'minWeightGrams': 100,
            'maxWeightGrams': 300,
            'weightStepGrams': 50,
          }).toDomain();

      expect(product.weightPricing, isNull);
      expect(product.requiresWeightSelection, isTrue);
      expect(product.hasBackendWeightChoices, isFalse);
      expect(product.hasInvalidWeightPricingContract, isFalse);
    });

    test(
      'treats required weight pricing with empty choices as invalid contract',
      () {
        final product =
            OrderMenuProductResponse.fromJson({
              'id': 'product-5',
              'key': 'invalid',
              'name': 'Invalid',
              'pricingModel': 'per_100g',
              'weightPricing': {
                'requiresWeightSelection': true,
                'strategy': 'base_plus_steps',
                'choices': [],
              },
            }).toDomain();

        expect(product.requiresWeightSelection, isTrue);
        expect(product.hasBackendWeightChoices, isFalse);
        expect(product.hasInvalidWeightPricingContract, isTrue);
        expect(product.resolvedRequiresBuilder, isTrue);
      },
    );

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
        cardSize: ProductCardSize.medium,
        optionGroups: [],
      );

      expect(product.displayDescription('ar'), 'وصف عربي');
      expect(product.displayName('ar'), 'اسم عربي');
    });
  });

  group('checkout helpers', () {
    test('serializes selected weight and options into order quote payload', () {
      const request = OrderQuoteRequestModel(
        fulfillmentMethod: 'pickup',
        pickup: OrderQuotePickupRequestModel(
          branchId: 'main',
          pickupWindow: '12:00-13:00',
        ),
        items: [
          OrderQuoteItemRequestModel(
            productId: 'product-1',
            qty: 1,
            weightGrams: 250,
            selectedOptions: [
              OrderQuoteSelectedOptionRequestModel(
                groupId: 'group-1',
                optionId: 'option-1',
                extraWeightGrams: 50,
              ),
            ],
          ),
        ],
      );

      expect(request.toRequest().toJson()['items'], [
        {
          'productId': 'product-1',
          'qty': 1,
          'weightGrams': 250,
          'selectedOptions': [
            {
              'groupId': 'group-1',
              'optionId': 'option-1',
              'extraWeightGrams': 50,
            },
          ],
        },
      ]);
    });

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
