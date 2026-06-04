# CatalogItem Backend Integration - Flutter Implementation Guide

## 1. Purpose
This guide documents Flutter work needed to stay compatible with the verified backend CatalogItem and dynamic menu architecture.

Flutter consumes public customer contracts. Flutter must not manage CatalogItems.

## 2. Backend Contract Relevant to Flutter
- Public one-time menu endpoint: `GET /api/orders/menu`.
- Subscription meal planner endpoint: `GET /api/subscriptions/meal-planner-menu?includeLegacy=true`.
- Subscription add-on choices endpoint: `GET /api/subscriptions/addon-choices`.
- Day selection save/validate payload supports `addonsOneTime`.
- Backend filters globally inactive/unavailable linked CatalogItems before new public usage.
- Backend rejects stale quote/selection IDs linked to unavailable CatalogItems with `CATALOG_ITEM_UNAVAILABLE`.
- CatalogItem availability filtering applies only to backend rows linked through `catalogItemId`.
- Legacy unlinked products and options may continue to appear until backend migration or manual linking is completed.

## 3. Flutter Must Not Know CatalogItem
- Flutter does not send `catalogItemId`.
- Flutter does not manage CatalogItem.
- Flutter does not need CatalogItem IDs in public menu flows.
- Flutter renders what the backend returns.
- Flutter must not infer shared identity from category name, category key, product name, or product key.

## 4. Current Flutter Findings
- API endpoints exist in `lib/data/network/app_api.dart`.
- Public menu response/model/mapper exist in:
  - `lib/data/response/order_menu_response.dart`
  - `lib/domain/model/order_menu_model.dart`
  - `lib/data/mappers/order_menu_mapper.dart`
- One-time menu UI is concentrated in `lib/presentation/main/menu/menu_screen.dart`.
- Meal planner response/model/mapper exist in:
  - `lib/data/response/meal_planner_menu_response.dart`
  - `lib/domain/model/meal_planner_menu_model.dart`
  - `lib/data/mappers/meal_planner_menu_mapper.dart`
- Add-on choices are implemented in:
  - `lib/data/response/addon_choices_response.dart`
  - `lib/domain/model/addon_choices_model.dart`
  - `lib/data/mappers/addon_choices_mapper.dart`
  - `lib/domain/usecase/get_addon_choices_usecase.dart`
- `DaySelectionRequest` already serializes `addonsOneTime`.

## 5. Dynamic Public Menu Requirements
- Render returned categories dynamically.
- Do not skip `light_collection`; backend preserves this category card variant when products exist.
- Category `ui.cardVariant` controls presentation only.
- Product behavior must come from `requiresBuilder`, `canAddDirectly`, `pricingModel`, and `optionGroups`.
- `product.ui.cardVariant` controls product-card presentation only.
- `pricingModel == "per_100g"` requires weight entry.
- Fixed products with `canAddDirectly=true` can add directly.
- Products with `requiresBuilder=true` must open the builder in any category.
- Public menu should not fall back to legacy menu sections when `categories` exists.
- If no categories exist, show an empty/error state; do not synthesize products by key/name.

## 6. Product and Group Metadata
- Extend public menu domain support for product `badge`, `ctaLabel`, and `imageRatio`.
- Use `badge` as display-only label.
- Use `ctaLabel` for button text with localization fallback.
- Use `imageRatio` to size product media.
- Preserve nullable `maxSelections`; backend `null` means unlimited.
- Enforce max only when `maxSelections != null`.
- Support `optionSections` from public order menu option groups.
- Use `proteinFamilyKey` only as visual grouping/badging metadata.
- Do not use protein family or option key to decide purchasability; backend already filtered availability.

## 7. Option Group displayStyle
- Backend returns sanitized `optionGroup.ui.displayStyle`.
- Recommended widgets:
  - `chips`: compact chips.
  - `radio_cards`: single-select cards.
  - `checkbox_grid`: multi-select grid.
  - `dropdown`: select menu.
  - `stepper`: safe visual fallback only unless backend payloads explicitly support per-option quantity.
- Do not implement per-option quantity behavior for `displayStyle=stepper` unless quote, order, and selection payloads explicitly support it.

## 8. Subscription builderCatalogV2
- Backend returns and prefers `builderCatalogV2`.
- Backend V2 sections use keys such as `standard_meal`, `premium_meal`, `sandwich`, and `premium_large_salad`.
- Option group keys inside V2 may be normalized for UI, while `sourceKey` preserves backend group origin such as `proteins` and `carbs`.
- Verify the exact builderCatalogV2 group keys returned by the backend contract before changing the mapper.
- Do not hard-code singular or plural keys without confirmed backend evidence.
- Do not fall back to legacy `builderCatalog` when V2 is present but partially parsed; fix parsing.

## 9. Subscription Add-on Choices and addonsOneTime
- `GET /api/subscriptions/addon-choices` returns daily MenuProduct choices.
- Selected `addonsOneTime` IDs must be MenuProduct IDs from add-on choices.
- If `GET /api/subscriptions/addon-choices` succeeds and returns an empty list, the empty list is the correct source of truth. Do not fall back to legacy add-ons.
- Fallback can be considered only if the endpoint is unavailable for backward compatibility, and only after proving fallback items use valid MenuProduct IDs.
- Subscription entitlement selections are saved with `source=subscription` and `priceHalala=0`.
- If no entitlement exists but one-time purchase is allowed, selection is saved as `source=pending_payment` with the MenuProduct price.
- Keep `addonsOneTime` as `List<String>` in save/validate payloads.

## 10. Error Handling
When quote or day selection is rejected with `CATALOG_ITEM_UNAVAILABLE`:
- Show a clear user-facing message.
- Refresh the menu or add-on choices.
- Ask the user to remove or reselect the unavailable item.

## 11. Historical Reads
- Previously created orders and subscription day history must continue displaying saved snapshots even when a related CatalogItem is later disabled.
- Do not refresh historical display by inferring current menu identity from key/name.

## 12. Exact Files Expected to Change in Flutter
- `lib/data/response/order_menu_response.dart`
- `lib/domain/model/order_menu_model.dart`
- `lib/data/mappers/order_menu_mapper.dart`
- `lib/presentation/main/menu/menu_screen.dart`
- `lib/presentation/main/cart/bloc/cart_event.dart` only if cart display needs UI metadata.
- `lib/data/request/order_quote_request.dart` only if backend payload support changes.
- `lib/data/request/create_order_request.dart` only if backend payload support changes.
- `lib/data/response/meal_planner_menu_response.dart`
- `lib/domain/model/meal_planner_menu_model.dart`
- `lib/data/mappers/meal_planner_menu_mapper.dart`
- `lib/presentation/plans/timeline/meal_planner/bloc/meal_planner_bloc.dart`
- `lib/presentation/plans/timeline/meal_planner/widgets/addon_selection_bottom_sheet.dart`
- `lib/presentation/plans/timeline/meal_planner/widgets/daily_addon_selection_card.dart`

## 13. Flutter QA Checklist
- `light_collection` category renders when backend returns products.
- Category card variant changes visual layout only.
- Product with `requiresBuilder=true` opens builder in any category.
- Product with `canAddDirectly=true` adds directly in any category.
- Fixed product without options adds direct with correct price.
- `per_100g` product requires weight and quotes correctly.
- Option group with `maxSelections=null` allows unlimited selections subject to backend validation.
- `displayStyle` changes the option group widget without inventing unsupported payload behavior.
- `badge`, `ctaLabel`, and `imageRatio` are visible when returned.
- `optionSections` groups proteins visually when returned.
- Disabled linked CatalogItems do not appear after menu refresh.
- Stale cart quote for disabled linked product/option shows backend error handling.
- `builderCatalogV2` is used when present.
- Successful empty add-on choices response renders empty choices, not fallback choices.
- `addonsOneTime` saves selected add-on choice MenuProduct IDs.
- Previously created order and subscription day history still display saved snapshots after CatalogItem disable.

## 14. Backend Verification Result
Backend decision from this audit: `BACKEND VERIFIED WITH NON-BLOCKING WARNINGS`.

Verified tests include:
- `NODE_ENV=test node tests/catalogItemArchitecture.test.js` passed: 8 tests.
- `NODE_ENV=test node tests/subscription_addon_choices.test.js` passed.
- `NODE_ENV=test node tests/oneTimeMenuCatalog.test.js` passed: 24 tests.
- `NODE_ENV=test node tests/meal_planner_types.test.js` passed: 64 tests.
- `NODE_ENV=test node tests/mealPlannerCanonicalContract.test.js` passed.
- `NODE_ENV=test node tests/subscription_addon_selection_contract.test.js` passed.
- `NODE_ENV=test node tests/subscription_addon_selection_readback.integration.test.js` passed: 9 tests.
- `NODE_ENV=test node tests/addonPublicContract.test.js` passed.

Non-blocking warning: `tests/mealPlannerPaymentContract.test.js` was not run because its safety guard requires `MONGODB_URI` to point at a `_test` database. No external DB was used.

## 15. Definition of Done
- Flutter does not send, store, or manage CatalogItem IDs.
- Flutter renders only backend-returned available items.
- Dynamic categories render without key/name-based behavior.
- Product behavior comes from backend flags and option groups.
- UI metadata is displayed.
- Nullable `maxSelections` is preserved.
- `builderCatalogV2` is the preferred subscription builder source.
- Subscription add-on choices save via `addonsOneTime`.
