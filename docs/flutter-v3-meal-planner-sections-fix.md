# Flutter V3 Meal Planner Sections Fix

## A. Verdict
PASS WITH RISKS

## B. Root Cause
FLUTTER_USING_LEGACY_V2_BUILDER_FIELDS

## C. Backend Evidence
- backend endpoint used: `GET /api/subscriptions/meal-planner-menu?lang=en`
- Railway API base: `https://basicdiet145-production-51e9.up.railway.app/api`
- products found: `moussaka_with_minced_meat`, `lasagna_with_minced_meat`
- selectionType/action fields confirmed: `selectionType=full_meal_product`, `action.type=direct_add`, `action.requiresBuilder=false`, `action.treatAsFullMeal=true`
- backend changes required: No

## D. Flutter Changes Applied
- response models: `lib/data/response/meal_planner_menu_response.dart`, `lib/data/response/meal_planner_menu_response.g.dart`
- domain models: `lib/domain/model/meal_planner_menu_model.dart`
- mappers: `lib/data/mappers/meal_planner_menu_mapper.dart`
- bloc/UI: `lib/presentation/plans/timeline/meal_planner/bloc/meal_planner_bloc.dart`, `lib/presentation/plans/timeline/meal_planner/bloc/meal_planner_state.dart`, `lib/presentation/plans/timeline/meal_planner/meal_planner_screen.dart`, `lib/presentation/plans/timeline/meal_planner/widgets/protein_picker_sheet.dart`
- tests: `test/menu_contract_parsing_test.dart`

## E. Legacy Usage Removed
| Pattern | Before | After |
|---|---|---|
| builderCatalog.sandwiches | used as meal planner direct-item source | replaced by V3 `sections` derived direct full-meal items |
| builderCatalogV2 | used as raw compatibility model | retained only as compatibility raw domain, not planner UI source |
| /api/categories-with-meals | not used by meal planner flow | unchanged; not used by meal planner flow |
| category name matching | used for some legacy protein/carb compatibility derivation | direct full-meal behavior uses `selectionType` and `action` flags |

## F. Behavior After Fix
- full_meal_product appears: Yes, V3 direct items from dynamic sections are mapped into planner direct full-meal items.
- direct_add works: Yes, direct items are selected without builder flow.
- requiresBuilder=false skips builder: Yes, direct selection uses `action.type=direct_add` and `requiresBuilder=false`.
- standard_meal opens builder: Existing builder/protein/carb flow remains in place.
- add-ons separate: Yes, add-ons mapping and selection were not merged into meal slots.
- premium separate: Yes, premium protein/large salad handling remains separate from add-ons.

## G. Validation
- build_runner result: PASS, `flutter pub run build_runner build --delete-conflicting-outputs` completed; generated 4 outputs. Warning only: existing `json_annotation` constraint allows versions before 4.9.0.
- flutter analyze result: PASS, no issues found.
- flutter test result: PASS, all tests passed including the new V3 direct full-meal parser test.
- manual QA result: Not run in this environment; no Flutter device/session was provided.

## H. Remaining Risks
- Manual Railway/device QA is still required to visually confirm the two dashboard-created products appear in the live Subscription Meal Planner.
- The request payload continues to use the existing direct-item field `sandwichId` with the backend-provided `selectionType` for direct full-meal products to preserve compatibility.
- Some legacy protein/carb compatibility derivation remains for builder options, but direct full-meal product visibility no longer depends on legacy root arrays.

## I. Final Recommendation
- Flutter ready for Railway QA: Yes
- Backend changes required: No
- Can continue subscription meal planner QA: Yes
