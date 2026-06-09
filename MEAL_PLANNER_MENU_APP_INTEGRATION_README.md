# Meal Planner Menu API Integration Guide

## Purpose

This document explains how the application team should integrate the subscription Meal Planner menu endpoint:

```http
GET /api/subscriptions/meal-planner-menu?lang=ar
```

This endpoint is the app-facing source of truth for the subscription meal planner menu.

The current production contract exposes the canonical Meal Planner v3 catalog under the response key:

```text
data.builderCatalog
```

Important: `builderCatalog` is now only a compatibility key name. Its internal structure is the new canonical `meal_planner_menu.v3` structure.

---

## Endpoint

### Request

```http
GET {{baseUrl}}/api/subscriptions/meal-planner-menu?lang=ar
```

### Authentication

Use the same subscription/client authentication flow already used by the mobile app.

### Language

Use:

```http
?lang=ar
```

The response also includes `nameI18n.ar` and `nameI18n.en`, so the app should prefer localized values from `nameI18n` when available.

---

## Final Normal Response Shape

```json
{
  "status": true,
  "data": {
    "builderCatalog": {
      "contractVersion": "meal_planner_menu.v3",
      "currency": "SAR",
      "sections": [],
      "rules": {},
      "catalogHash": "sha256:...",
      "publishedVersionId": null,
      "builderRevisionHash": "sha256:..."
    },
    "addonCatalog": {
      "items": [],
      "byCategory": {},
      "totalCount": 0
    }
  }
}
```

---

## Required App Source of Truth

The app must read only:

```text
data.builderCatalog
```

Then validate:

```text
data.builderCatalog.contractVersion == "meal_planner_menu.v3"
```

Then parse:

```text
data.builderCatalog.sections[]
```

---

## Do Not Use Old Paths

The normal response no longer exposes the old catalog paths.

Do not read or depend on:

```text
data.plannerCatalog
data.builderCatalogV2
data.builderCatalog.categories
data.builderCatalog.proteins
data.builderCatalog.carbs
data.builderCatalog.premiumProteins
data.builderCatalog.premiumLargeSalad
```

If older Flutter code still expects these fields, update the parser to read the v3 shape from `data.builderCatalog.sections[]`.

---

## High-Level Data Model

### Builder Catalog

```ts
BuilderCatalogV3 {
  contractVersion: "meal_planner_menu.v3";
  currency: "SAR";
  sections: PlannerSection[];
  rules?: PlannerRules;
  catalogHash?: string;
  publishedVersionId?: string | null;
  builderRevisionHash?: string;
}
```

### Section

```ts
PlannerSection {
  id: string;
  key: string;
  type: "configurable_product" | "product_list";
  builderSectionType?: string;
  source?: object;
  name: string;
  nameI18n?: { ar?: string; en?: string };
  sortOrder: number;
  ui?: object;
  rules?: object;
  products: PlannerProduct[];
}
```

### Product

```ts
PlannerProduct {
  id: string;
  productId?: string;
  key: string;
  name: string;
  nameI18n?: { ar?: string; en?: string };
  imageUrl?: string;
  itemType?: string;
  selectionType?: string;
  premiumKey?: string;
  premiumKind?: string;
  pricing?: PlannerPricing;
  action?: PlannerAction;
  optionGroups: PlannerOptionGroup[];
  sortOrder?: number;
}
```

### Product Action

```ts
PlannerAction {
  type: "open_builder" | "direct_add";
  requiresBuilder: boolean;
  treatAsFullMeal?: boolean;
}
```

### Option Group

```ts
PlannerOptionGroup {
  id: string;
  groupId?: string;
  key: string;
  sourceKey?: string;
  name: string;
  nameI18n?: { ar?: string; en?: string };
  minSelections: number;
  maxSelections: number;
  required?: boolean;
  isRequired?: boolean;
  sortOrder?: number;
  options: PlannerOption[];
  optionSections?: PlannerOptionSection[];
}
```

### Option

```ts
PlannerOption {
  id: string;
  optionId?: string;
  key: string;
  name: string;
  nameI18n?: { ar?: string; en?: string };
  imageUrl?: string;
  selectionType?: string;
  isPremium?: boolean;
  premiumKey?: string | null;
  premiumKind?: string;
  extraPriceHalala?: number;
  extraFeeHalala?: number;
  sortOrder?: number;
}
```

### Option Section

```ts
PlannerOptionSection {
  key: string;
  name: string;
  nameI18n?: { ar?: string; en?: string };
  optionKeys: string[];
  optionIds: string[];
}
```

---

## Current Sections

The current production response contains these main sections:

```text
premium
sandwich
chicken
beef
fish
eggs
carbs
```

The app should render sections dynamically from:

```text
builderCatalog.sections
```

Sort by:

```text
section.sortOrder
```

Do not hardcode the section list in the app.

---

## Section Rendering Rules

### 1. Premium Section

Section key:

```text
premium
```

Type:

```text
configurable_product
```

The premium section includes:

- Premium meal product: `basic_meal` with `selectionType=premium_meal`
- Premium large salad product: `premium_large_salad` with `selectionType=premium_large_salad`

Premium meal options include:

```text
beef_steak
shrimp
salmon
```

The premium meal product has:

```text
action.type = open_builder
action.requiresBuilder = true
```

The app should open a builder flow for this product.

---

### 2. Premium Large Salad

Product key:

```text
premium_large_salad
```

Selection type:

```text
premium_large_salad
```

Action:

```text
action.type = open_builder
action.requiresBuilder = true
```

This product must open a configurable builder screen.

Current option groups include:

```text
leafy_greens
vegetables_legumes
fruits
proteins
cheese_nuts
sauces
```

Important required groups:

```text
proteins: minSelections=1, maxSelections=1
sauces: minSelections=1, maxSelections=1
```

Premium large salad protein options currently include:

```text
boiled_eggs
tuna
chicken_fajita
spicy_chicken
italian_spiced_chicken
chicken_tikka
asian_chicken
chicken_strips
grilled_chicken
mexican_chicken
fish_fillet
```

The app should read these options from the product's own `optionGroups`, not from any old legacy field.

---

### 3. Sandwich Section

Section key:

```text
sandwich
```

Type:

```text
product_list
```

Sandwich products have:

```text
action.type = direct_add
action.requiresBuilder = false
action.treatAsFullMeal = true
```

The app should add sandwiches directly without opening a builder.

Sandwiches do not require carbs.

---

### 4. Protein Family Sections

The standard meal proteins are separated into visual family sections:

```text
chicken
beef
fish
eggs
```

Each section is a configurable product section for `basic_meal` with a filtered `proteins` option group.

#### Chicken

Expected options:

```text
chicken
chicken_fajita
spicy_chicken
italian_spiced_chicken
chicken_tikka
asian_chicken
chicken_strips
grilled_chicken
mexican_chicken
```

#### Beef

Expected options:

```text
beef
meatballs
beef_stroganoff
```

Business rule:

```text
beef maxSlotsPerDay = 1
```

#### Fish

Expected options:

```text
fish
tuna
fish_fillet
```

#### Eggs

Expected options:

```text
eggs
boiled_eggs
```

Each of these products has:

```text
action.type = open_builder
action.requiresBuilder = true
```

The app should open the builder flow for standard meal selection.

---

### 5. Carbs Section

Section key:

```text
carbs
```

This section applies to configurable plate meals only.

Rules:

```text
maxTypes = 2
maxTotalGrams = 300
unit = grams
onlyForSelectionTypes = standard_meal, premium_meal
```

Expected carb options:

```text
white_rice
turmeric_rice
alfredo_pasta
red_sauce_pasta
roasted_potato
sweet_potato
grilled_mixed_vegetables
```

Do not apply carbs to sandwiches.

---

## Action Handling

Use `product.action` to decide UI behavior.

### Open Builder

```json
{
  "type": "open_builder",
  "requiresBuilder": true
}
```

Behavior:

- Open configurable builder screen.
- Render product `optionGroups`.
- Enforce each group `minSelections` and `maxSelections`.
- Submit selected option IDs/keys according to the subscription quote/checkout contract.

### Direct Add

```json
{
  "type": "direct_add",
  "requiresBuilder": false,
  "treatAsFullMeal": true
}
```

Behavior:

- Add item directly.
- No builder screen.
- No carbs required.

---

## Localization

Use this fallback order:

```text
nameI18n[activeLanguage] -> nameI18n.ar -> nameI18n.en -> name
```

For Arabic UI, prefer:

```text
nameI18n.ar
```

---

## Pricing

Prices are in halala.

Examples:

```text
1900 = 19.00 SAR
2900 = 29.00 SAR
```

Use `pricing.currency` for display. Current value is:

```text
SAR
```

Do not calculate VAT in the app from this endpoint. VAT logic is backend-owned.

---

## Add-ons Status

The response includes:

```json
"addonCatalog": {
  "items": [],
  "byCategory": {},
  "totalCount": 0
}
```

This means subscription add-ons are currently empty in this endpoint.

The following are not currently returned as subscription add-ons from this endpoint:

```text
juices
small salad
desserts
drinks
```

If these items are required in the subscription flow, they must be added through the backend subscription add-on source before the app can render them from `addonCatalog`.

---

## Parser Guard

The app must validate the contract version before rendering:

```dart
final catalog = response.data.builderCatalog;

if (catalog.contractVersion != 'meal_planner_menu.v3') {
  throw UnsupportedError('Unsupported meal planner contract version');
}
```

Do not silently fallback to legacy structures.

---

## Flutter Parsing Notes

The app should map:

```text
response.data.builderCatalog.sections
```

into UI sections.

Suggested model names:

```text
MealPlannerMenuResponse
MealPlannerData
BuilderCatalogV3
PlannerSection
PlannerProduct
PlannerAction
PlannerPricing
PlannerOptionGroup
PlannerOption
PlannerOptionSection
AddonCatalog
```

---

## Integration Checklist

- [ ] Call `GET /api/subscriptions/meal-planner-menu?lang=ar`.
- [ ] Read `data.builderCatalog`.
- [ ] Validate `contractVersion == meal_planner_menu.v3`.
- [ ] Render `builderCatalog.sections[]` sorted by `sortOrder`.
- [ ] Render premium section from `section.key=premium`.
- [ ] Render premium large salad from product key `premium_large_salad`.
- [ ] Open builder for products where `action.type=open_builder`.
- [ ] Direct-add products where `action.type=direct_add`.
- [ ] Render sandwich section as direct-add full meal products.
- [ ] Render protein families: chicken, beef, fish, eggs.
- [ ] Enforce option group min/max selection rules.
- [ ] Do not use old `builderCatalog.proteins/carbs/premiumLargeSalad` paths.
- [ ] Do not use `plannerCatalog` or `builderCatalogV2`.
- [ ] Treat empty `addonCatalog` as “no subscription add-ons available”.

---

## Acceptance Criteria

The app integration is complete when:

1. The app successfully loads `data.builderCatalog.contractVersion = meal_planner_menu.v3`.
2. The app renders sections from `data.builderCatalog.sections[]`.
3. Premium section shows premium meal and premium large salad.
4. Premium large salad opens a builder and renders its own option groups.
5. Standard meal proteins are grouped/rendered as chicken, beef, fish, eggs.
6. Carbs are available for standard/premium configurable meals only.
7. Sandwiches are direct-add and do not require carbs.
8. The app does not read legacy paths.
9. Empty `addonCatalog` does not break the UI.

---

## Important Notes

- `builderCatalog` is the correct app-facing key.
- Internally, `builderCatalog` contains the new v3 contract.
- Do not expect old arrays under `builderCatalog`.
- Subscription add-ons are currently empty.
- Product images may be empty strings, so the app should use placeholders.
- Backend controls pricing, VAT, and validation.
