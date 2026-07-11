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
  });
}

MealPlannerLoaded _loadedState(List<String> juiceAddonIds) {
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
          choices: juiceAddonIds.map(_juiceChoice).toList(),
        ),
      ],
    ),
    addonEntitlements: [
      AddonSubscriptionModel('', 'juice', 20, 'active'),
    ],
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

AddonChoiceModel _juiceChoice(String id) {
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
    categoryKey: 'juice',
    itemType: 'addon',
    type: 'flat_once',
    available: true,
    active: true,
    ui: const {},
  );
}
