# Flutter Handoff: Add-on Subscription Options and Matrix Pricing

## Purpose

This document explains how Flutter should display add-on subscription options and prices after the customer selects a base subscription plan.

The backend now resolves add-on subscription prices using a pricing matrix:

```txt
basePlanId + addonPlanId = priceHalala
```

Flutter must not calculate add-on subscription prices locally.

---

## Key Rule

Add-on subscription pricing is not based on the menu item price, the old add-on price, or a daily multiplication formula.

Do not calculate:

```txt
legacy addon price × days
menu product price × days
menu product price × meals
matrix price × days
```

Use the backend-resolved price exactly as returned.

Example for the 7-Day Plan:

```txt
Juice Subscription = 100 SAR
Small Salad Subscription = 90 SAR
Snack Subscription = 80 SAR
```

---

## Customer Flow

The Flutter flow should be:

```txt
1. Customer selects a base subscription plan.
2. Flutter calls the add-on options endpoint using the selected planId.
3. Flutter displays available add-on subscriptions with backend-resolved prices.
4. Customer selects one or more add-on subscriptions.
5. Flutter sends selected add-on IDs to the quote endpoint.
6. Flutter displays the final invoice using the quote response.
```

---

## Endpoint 1: Add-on Options for Selected Plan

Use this endpoint immediately after the customer selects a base plan and before the quote screen.

```http
GET /api/subscriptions/addons/options?planId=<selectedPlanId>
```

### Auth

This endpoint requires the customer app token.

```http
Authorization: Bearer <customer_access_token>
Accept-Language: en
```

### Example Request

```http
GET /api/subscriptions/addons/options?planId=6a2454c04a2465a2f7a07800
```

The example `planId` above is the 7-Day Meal Subscription.

---

## Response Shape

```json
{
  "status": true,
  "data": {
    "planId": "6a2454c04a2465a2f7a07800",
    "addons": [
      {
        "id": "6a2454b24a2465a2f7a0778e",
        "addonPlanId": "6a2454b24a2465a2f7a0778e",
        "name": {
          "ar": "اشتراك العصير",
          "en": "Juice Subscription"
        },
        "category": "juice",
        "maxPerDay": 1,
        "pricingMode": "base_plan_matrix",
        "priceHalala": 10000,
        "priceSar": 100,
        "priceLabel": "100 SAR",
        "currency": "SAR",
        "isAvailable": true,
        "menuProductIds": ["..."],
        "menuProductsCount": 3,
        "menuProducts": [
          {
            "id": "...",
            "_id": "...",
            "name": {
              "ar": "عصير تفاح",
              "en": "Apple Juice"
            },
            "image": "",
            "category": "juices",
            "isActive": true
          }
        ]
      }
    ]
  }
}
```

---

## Fields Flutter Should Use

### Add-on ID

Use `id` or `addonPlanId` as the selected add-on ID.

When sending quote, use:

```json
{
  "id": "6a2454b24a2465a2f7a0778e"
}
```

### Display Name

Use:

```txt
name.ar
name.en
```

based on the current app language.

### Display Price

Use one of these backend fields:

```txt
priceLabel
priceSar
priceHalala
```

Recommended display field:

```txt
priceLabel
```

Example:

```txt
100 SAR
```

### Included / Allowed Products

Use:

```txt
menuProducts
menuProductsCount
```

These products come from the menu catalog and represent the available product choices linked to this add-on subscription.

Example:

```txt
Juice Subscription includes:
- Apple Juice
- Mango Juice
- Orange Juice
```

Flutter can show these as chips, small images, or a short “Includes” list under the add-on card.

### Selection State

Flutter should maintain a list of selected add-on IDs.

Example:

```dart
final selectedAddonIds = <String>{};
```

When the user selects Juice Subscription:

```dart
selectedAddonIds.add(addon.id);
```

---

## Suggested UI Behavior

### Add-on Selection Screen

After the base plan is selected, call:

```http
GET /api/subscriptions/addons/options?planId=<selectedPlanId>
```

Render add-ons as selectable cards.

Each card should show:

```txt
- Add-on name
- Price label
- Category
- Max per day
- Included menu products count
- Included products preview
- Checkbox or selected state
```

Example card:

```txt
Juice Subscription
100 SAR
1 per day
Includes: Apple Juice, Mango Juice, Orange Juice
[Select]
```

### Empty State

If the response returns:

```json
"addons": []
```

show:

```txt
No add-ons are available for this plan.
```

Do not create fallback prices in Flutter.

---

## Endpoint 2: Quote / Final Invoice

After the customer selects add-ons, call the quote endpoint.

```http
POST /api/subscriptions/quote
```

### Example Body

```json
{
  "planId": "6a2454c04a2465a2f7a07800",
  "grams": 150,
  "mealsPerDay": 2,
  "startDate": "2026-06-20",
  "addons": [
    { "id": "6a2454b24a2465a2f7a0778e" }
  ],
  "delivery": {
    "type": "pickup"
  }
}
```

Use the selected add-on IDs from the add-on options endpoint.

---

## Quote Response Fields for Invoice Screen

Flutter should use the quote response as the source of truth for the final invoice.

Use:

```txt
data.summary.lineItems
```

or:

```txt
data.breakdown
```

### Recommended Invoice Source

Prefer:

```txt
data.summary.lineItems
```

because it is already prepared for invoice display.

Example line items:

```txt
kind = plan      -> Base plan amount
kind = premium   -> Premium meals amount
kind = addons    -> Add-ons amount
kind = delivery  -> Delivery fee
kind = vat       -> VAT
kind = total     -> Final total
```

### Add-on Total

Use:

```txt
data.breakdown.addonsTotalHalala
```

or the add-on line item:

```txt
data.summary.lineItems[].kind == "addons"
```

### Individual Add-on Lines

Use:

```txt
data.summary.addons
```

Important fields:

```txt
unitPriceHalala
totalHalala
totalLabel
```

Example correct values for Juice Subscription + 7-Day Plan:

```json
{
  "unitPriceHalala": 10000,
  "unitPriceSar": 100,
  "unitPriceLabel": "100 SAR",
  "formulaLabel": "100 SAR",
  "totalHalala": 10000,
  "totalSar": 100,
  "totalLabel": "100 SAR"
}
```

---

## Important Compatibility Note

The quote response may still include legacy-looking fields such as:

```txt
billingMode = per_day
pricingModel = daily_recurring
durationDays = 7
```

Do not use these fields to calculate the price.

The correct price is already resolved by the backend.

Use:

```txt
unitPriceHalala
totalHalala
totalLabel
```

---

## Validation Example

For this request:

```txt
planId = 6a2454c04a2465a2f7a07800
addonPlanId = 6a2454b24a2465a2f7a0778e
```

Correct result:

```txt
addonsTotalHalala = 10000
```

Wrong legacy result:

```txt
1100 × 7 = 7700
```

If Flutter displays `77 SAR` for Juice Subscription, the UI is using the old calculation and must be corrected.

---

## Suggested Flutter Data Model

```dart
class AddonSubscriptionOption {
  final String id;
  final String addonPlanId;
  final Map<String, dynamic> name;
  final String category;
  final int maxPerDay;
  final String pricingMode;
  final int priceHalala;
  final num priceSar;
  final String priceLabel;
  final String currency;
  final bool isAvailable;
  final List<String> menuProductIds;
  final int menuProductsCount;
  final List<MenuProductPreview> menuProducts;

  AddonSubscriptionOption({
    required this.id,
    required this.addonPlanId,
    required this.name,
    required this.category,
    required this.maxPerDay,
    required this.pricingMode,
    required this.priceHalala,
    required this.priceSar,
    required this.priceLabel,
    required this.currency,
    required this.isAvailable,
    required this.menuProductIds,
    required this.menuProductsCount,
    required this.menuProducts,
  });
}
```

---

## Error Handling

### Missing or invalid `planId`

Expected response:

```txt
400 VALIDATION_ERROR
```

Flutter should show a generic error and ask the user to select a valid plan again.

### Plan not found or inactive

Expected response:

```txt
404 NOT_FOUND
```

Flutter should return the user to plan selection or refresh plans.

### No add-ons available

Expected response:

```json
{
  "status": true,
  "data": {
    "planId": "...",
    "addons": []
  }
}
```

Flutter should show an empty state and allow the customer to continue without add-ons.

---

## Implementation Checklist

Flutter should update the subscription flow as follows:

```txt
[ ] Store selected base plan ID.
[ ] After base plan selection, call GET /api/subscriptions/addons/options?planId=<selectedPlanId>.
[ ] Display returned add-ons using backend priceLabel / priceSar.
[ ] Do not calculate add-on price in Flutter.
[ ] Store selected add-on IDs.
[ ] Send selected add-ons to POST /api/subscriptions/quote.
[ ] Render final invoice using quote lineItems or breakdown.
[ ] Do not use billingMode/durationDays for pricing calculations.
[ ] Handle empty add-ons list.
[ ] Handle 400/404 error states.
```

---

## Final Rule

Flutter is responsible for selection and display only.

Backend is responsible for all pricing.

