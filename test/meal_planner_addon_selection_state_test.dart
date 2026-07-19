import 'package:basic_diet/domain/model/addon_choices_model.dart';
import 'package:basic_diet/domain/model/current_subscription_overview_model.dart';
import 'package:basic_diet/domain/model/meal_planner_menu_model.dart';
import 'package:basic_diet/domain/model/timeline_model.dart';
import 'package:basic_diet/presentation/plans/timeline/meal_planner/bloc/meal_planner_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MealPlannerLoaded addon selection state', () {
    test('returns every selected addon id for the same category', () {
      final juiceAddonIds = List.generate(8, (index) => 'juice-addon-$index');
      final state = _loadedState(juiceAddonIds);

      expect(state.selectedAddOnIdsForCategory('juice'), juiceAddonIds);
      expect(state.selectedAddonsForCategory('juice'), hasLength(8));
      expect(state.selectedAddOnIdForCategory('juice'), juiceAddonIds.first);
    });

    test('uses backend add-on pricing status before local allowance math', () {
      final state = _loadedState(
        const ['berry-product'],
        choices: const [
          AddonChoiceModel(
            id: 'berry-product',
            rawId: 'choice-row',
            productId: 'berry-product',
            key: 'berry',
            name: 'Berry',
            nameAr: '',
            nameI18n: {},
            priceHalala: 0,
            priceSar: 0,
            currency: 'SAR',
            calories: null,
            prepTimeMinutes: null,
            categoryKey: 'juice',
            itemType: 'addon',
            type: 'flat_once',
            available: true,
            active: true,
            source: 'pending_payment',
            paidQty: 1,
            payableTotalHalala: 1100,
            pricingMode: 'paid_no_entitlement',
            ui: {},
          ),
        ],
      );

      expect(state.addonSelectionStatusFor('berry-product'), 'pending_payment');
      expect(state.localAddonPendingAmountHalala, 1100);
    });

    test(
      'marks locally selected add-ons over the allowance as pending payment',
      () {
        final juiceAddonIds = List.generate(8, (index) => 'juice-addon-$index');
        final state = _loadedState(
          juiceAddonIds,
          includedCount: 7,
          choices:
              juiceAddonIds
                  .map(
                    (id) => _juiceChoice(
                      id,
                      pricingMode: 'allowance_covered',
                      unitPriceHalala: 1000,
                    ),
                  )
                  .toList(),
        );

        expect(
          state.addonSelectionStatusFor(
            'juice-addon-7',
            selectedAddonIdsOverride: juiceAddonIds,
          ),
          'pending_payment',
        );
        expect(state.localAddonPendingCount, 1);
        expect(state.localAddonPendingAmountHalala, 1000);
      },
    );

    test('does not combine balances from different plans in one category', () {
      final snackAddonIds = List.generate(8, (index) => 'snack-addon-$index');
      final state = _loadedState(
        snackAddonIds,
        choices: [
          ...snackAddonIds.map(
            (id) => _juiceChoice(
              id,
              category: 'snack',
              addonPlanId: 'snack-plan',
              entitlementKey: 'snack:snack-plan',
            ),
          ),
          _juiceChoice(
            'ice-cream-addon',
            category: 'snack',
            addonPlanId: 'ice-cream-plan',
            entitlementKey: 'snack:ice-cream-plan',
          ),
        ],
        entitlements: [
          AddonSubscriptionModel('snack:snack-plan', 'snack', 7, 'active'),
          AddonSubscriptionModel('snack:ice-cream-plan', 'snack', 7, 'active'),
        ],
      );

      expect(
        state.addonSelectionStatusFor(
          'snack-addon-6',
          selectedAddonIdsOverride: snackAddonIds,
        ),
        'subscription',
      );
      expect(
        state.addonSelectionStatusFor(
          'snack-addon-7',
          selectedAddonIdsOverride: snackAddonIds,
        ),
        'pending_payment',
      );
    });
  });
}

MealPlannerLoaded _loadedState(
  List<String> juiceAddonIds, {
  List<AddonChoiceModel>? choices,
  int includedCount = 20,
  List<AddonSubscriptionModel>? entitlements,
}) {
  return MealPlannerLoaded(
    timelineDays: [
      TimelineDayModel(
        date: '2026-07-11',
        day: 'Saturday',
        month: 'Jul',
        dayNumber: 11,
        status: 'open',
        canBePrepared: true,
        fulfillmentReady: true,
        consumptionState: 'open',
        selectedMeals: 0,
        requiredMeals: 0,
        selections: const [],
        premiumSelections: const [],
      ),
    ],
    menu: MealPlannerMenuModel(
      currency: 'SAR',
      builderCatalog: BuilderCatalogModel(
        categories: const [],
        proteins: const [],
        premiumProteins: const [],
        carbs: const [],
        sandwiches: const [],
        rules: BuilderRulesModel(
          version: 'test',
          beef: BeefRuleModel(proteinFamilyKey: '', maxSlotsPerDay: 0),
        ),
      ),
    ),
    addonChoices: AddonChoicesModel(
      categories: [
        AddonChoiceCategoryModel(
          category: 'juice',
          choices: choices ?? juiceAddonIds.map(_juiceChoice).toList(),
        ),
      ],
    ),
    addonEntitlements:
        entitlements ??
        [AddonSubscriptionModel('', 'juice', includedCount, 'active')],
    premiumSummaries: const [],
    selectedDayIndex: 0,
    selectedSlotsPerDay: const {0: []},
    savedSlotsPerDay: const {0: []},
    selectedAddOnIdsByDay: {0: juiceAddonIds},
    savedAddOnIdsByDay: const {0: []},
    dayDetailsByIndex: const {},
    premiumMealsRemaining: 0,
  );
}

AddonChoiceModel _juiceChoice(
  String id, {
  String pricingMode = '',
  int unitPriceHalala = 0,
  String category = 'juice',
  String addonPlanId = '',
  String entitlementKey = '',
}) {
  return AddonChoiceModel(
    id: id,
    key: id,
    name: id,
    nameAr: '',
    nameI18n: const {},
    priceHalala: 500,
    priceSar: 5,
    currency: 'SAR',
    calories: null,
    prepTimeMinutes: null,
    categoryKey: category,
    category: category,
    itemType: 'addon',
    type: 'flat_once',
    available: true,
    active: true,
    pricingMode: pricingMode,
    unitPriceHalala: unitPriceHalala,
    addonPlanId: addonPlanId,
    entitlementKey: entitlementKey,
    ui: const {},
  );
}
