# Flutter Implementation Guide — Subscription Fulfillment, Branch Pickup Meal Wallet, Append Meals, and Home Delivery

## 1. Purpose

This document is for the Flutter team.

The backend is now ready for the final subscription fulfillment contract. Flutter must update the subscription UI and API integration to support:

- Branch Pickup as multiple pickup requests per day.
- Slot-based pickup request creation using `selectedMealSlotIds`.
- Pickup availability per date.
- Append meals to an existing day when no available planned meals remain.
- Premium/add-on payment safety for appended and selected meals.
- Home Delivery as one scheduled delivery per day.
- Clear Arabic UI/UX.

Backend repo implemented and verified the flow. Flutter should now consume the backend as the source of truth.

---

## 2. Core Business Model

The subscription is a global meal wallet.

Example:

- 7 days
- 2 meals per day
- Total entitlement = 14 meals

The customer owns 14 meals in the subscription wallet and can use them flexibly during the active subscription period, as long as they do not exceed the available balance.

Important:

- Subscription days are planning/grouping only.
- Meal Planner slots are planned meals only.
- Planned meals do not consume balance by themselves.
- A Branch Pickup request reserves meal credits.
- A fulfilled Branch Pickup request consumes the reserved credits.
- Canceled pickup requests release reserved credits.
- No-show consumes reserved credits according to backend policy.

Flutter must not assume that a planned meal is consumed just because it exists in the Meal Planner.

---

## 3. Final Difference Between Home Delivery and Branch Pickup

### Home Delivery

Home Delivery is one scheduled fulfillment per subscription day.

Operational entity:

```txt
subscription_day
```

Lifecycle:

```txt
open -> in_preparation -> out_for_delivery -> fulfilled
```

Home Delivery does not use:

- pickup request
- pickup code
- multiple same-day requests

Home Delivery can show Chef Choice if backend returns it.

### Branch Pickup

Branch Pickup is flexible and can have multiple pickup requests on the same date.

Operational entity:

```txt
subscription_pickup_request
```

Lifecycle:

```txt
locked -> in_preparation -> ready_for_pickup -> fulfilled
```

Branch Pickup can have:

- multiple pickup requests on the same day
- each request has its own selected meals
- each request has its own status
- each ready request has its own pickup code

Flutter must never treat `subscription_day` as the operational pickup order.

---

## 4. Backend Endpoints Flutter Must Use

### 4.1 Pickup Availability for a Date

Use this endpoint before creating a Branch Pickup request.

```http
GET /api/subscriptions/:subscriptionId/pickup-availability?date=YYYY-MM-DD
```

Purpose:

- Show available planned meal slots.
- Show unavailable slots and why.
- Show wallet summary.
- Show whether the user can append more meals.
- Show append limit.

Expected response shape conceptually:

```json
{
  "status": true,
  "data": {
    "subscriptionId": "...",
    "date": "2026-06-14",
    "subscriptionDayId": "...",
    "wallet": {
      "totalEntitlement": 14,
      "consumedMeals": 4,
      "reservedMeals": 2,
      "availableMeals": 8
    },
    "plannedSlots": [
      {
        "slotId": "slot_1",
        "slotIndex": 1,
        "title": { "ar": "وجبة دجاج", "en": "Chicken Meal" },
        "productId": "...",
        "isAvailableForPickup": true,
        "pickupRequestId": null,
        "status": "available",
        "paymentRequired": false,
        "paymentStatus": "paid_or_not_required",
        "display": {
          "titleAr": "وجبة دجاج",
          "subtitleAr": "متاحة للاستلام",
          "badgesAr": []
        }
      }
    ],
    "unavailableSlots": [
      {
        "slotId": "slot_2",
        "slotIndex": 2,
        "isAvailableForPickup": false,
        "pickupRequestId": "...",
        "status": "reserved",
        "unavailableReason": "SLOT_ALREADY_RESERVED",
        "paymentRequired": false,
        "display": {
          "titleAr": "وجبة لحم",
          "badgesAr": ["تم طلب استلامها"]
        }
      }
    ],
    "canAppendMeals": true,
    "appendLimit": 8
  }
}
```

Flutter should render the backend-provided display fields when available.

---

### 4.2 Create Branch Pickup Request

Use this endpoint when the customer confirms selected available slots.

```http
POST /api/subscriptions/:subscriptionId/pickup-requests
```

Preferred body:

```json
{
  "date": "2026-06-14",
  "subscriptionDayId": "optional_day_id",
  "selectedMealSlotIds": ["slot_1", "slot_3"],
  "idempotencyKey": "stable-per-confirmation-intent"
}
```

Rules:

- `selectedMealSlotIds` is the main Flutter flow.
- Do not use `mealCount` as the main flow anymore.
- Generate one stable `idempotencyKey` for the same confirmation attempt.
- Reuse the same key for retry of the same attempt.
- Generate a new key only when the user intentionally creates a new pickup request.

Expected response conceptually:

```json
{
  "status": true,
  "data": {
    "requestId": "...",
    "subscriptionId": "...",
    "subscriptionDayId": "...",
    "date": "2026-06-14",
    "mealCount": 2,
    "selectedMealSlotIds": ["slot_1", "slot_3"],
    "status": "locked",
    "currentStep": 2,
    "creditsReserved": true,
    "pickupCode": null,
    "meals": [
      {
        "slotId": "slot_1",
        "display": { "titleAr": "وجبة دجاج" }
      }
    ]
  }
}
```

---

### 4.3 List Pickup Requests

Use this endpoint to render all customer pickup requests, including multiple requests on the same date.

```http
GET /api/subscriptions/:subscriptionId/pickup-requests
```

Flutter must support multiple requests for the same date.

Each request card should render independently:

- request id or short number
- date
- meal count
- selected meal names
- status
- pickup code only when ready
- completed state after fulfilled

---

### 4.4 Append Meals to an Existing Day

Use this endpoint when the customer wants more meals on the same date and no available planned slots remain.

```http
POST /api/subscriptions/:subscriptionId/days/:date/meals/append
```

Body uses canonical planner payload shape. Example:

```json
{
  "mealSlots": [
    {
      "selectionType": "standard_meal",
      "productId": "...",
      "selectedOptions": [],
      "addons": []
    }
  ],
  "idempotencyKey": "stable-append-intent"
}
```

Important:

- Append only.
- Do not replace old slots.
- Do not edit old slots.
- Do not delete old slots.
- Backend assigns final slot indexes.
- Old requested/fulfilled slots remain locked.
- Appended premium/add-on meals must go through the same payment lifecycle.

After append success, Flutter should refresh pickup availability for the same date.

---

## 5. Branch Pickup UX Flow

### 5.1 Customer Opens a Day

Example: Day 14 has four planned meals:

```txt
1. Chicken Meal
2. Beef Meal
3. Salad
4. Protein Box
```

Flutter should show the planned meals and their status:

- available
- requested
- in preparation
- ready
- fulfilled
- payment required

### 5.2 Customer Taps “Create Pickup Request”

Arabic label:

```txt
إنشاء طلب استلام
```

Flutter should call:

```http
GET /api/subscriptions/:subscriptionId/pickup-availability?date=YYYY-MM-DD
```

Then show a bottom sheet with available slots only selectable.

Example:

```txt
اختر الوجبات التي تريد استلامها الآن

[ ] Chicken Meal
[ ] Beef Meal
[ ] Salad
[ ] Protein Box

الرصيد المتاح: 8 وجبات

[إلغاء] [تأكيد طلب الاستلام]
```

The confirm button must be disabled until at least one slot is selected.

### 5.3 Create the Request

Flutter sends selected slots:

```json
{
  "date": "2026-06-14",
  "selectedMealSlotIds": ["slot_1", "slot_2"],
  "idempotencyKey": "..."
}
```

After success:

- refresh pickup request list
- refresh pickup availability
- refresh subscription overview / remaining meals if available
- clear active confirmation intent

### 5.4 Render Pickup Request Cards

Example card:

```txt
طلب استلام #1
عدد الوجبات: 2
الوجبات:
- Chicken Meal
- Beef Meal
الحالة: تم إرسال طلب الاستلام
```

If status is `ready_for_pickup` and `pickupCode` exists:

```txt
طلبك جاهز للاستلام
كود الاستلام: 145359
```

Before ready:

```txt
كود الاستلام يظهر عندما يصبح الطلب جاهزًا
```

After fulfilled:

```txt
تم الاستلام
```

Do not show an active pickup code after fulfilled.

---

## 6. Multiple Pickup Requests Same Day

If the customer creates one request at 1 PM and another at 3 PM, Flutter should render two separate cards.

Example:

```txt
طلبات الاستلام ليوم 14

طلب استلام #1
2 وجبات
الحالة: قيد التحضير

طلب استلام #2
1 وجبة
الحالة: جاهز للاستلام
كود الاستلام: 145359
```

Rules:

- Do not overwrite request #1 with request #2.
- Do not show only a single day-scoped pickup status.
- Each request has its own lifecycle.
- Each request may have its own pickup code.

---

## 7. No Available Planned Meals Case

If the customer already requested/fulfilled all planned meals for the day, the availability response will not have selectable slots.

Flutter should show:

```txt
لا توجد وجبات متاحة للاستلام الآن.
كل وجبات هذا اليوم تم طلبها أو استلامها.
يمكنك إضافة وجبات جديدة لهذا اليوم من رصيد اشتراكك.
```

If `canAppendMeals = true`, show:

```txt
إضافة وجبات ليوم 14
```

If `canAppendMeals = false`, show:

```txt
لا يوجد رصيد كافٍ لإضافة وجبات جديدة.
```

---

## 8. Append Meals UX

Append meals should open the Meal Planner experience in “append mode”.

This means:

- existing old slots are visible but locked/read-only
- requested/fulfilled slots cannot be edited
- customer can only add new meals
- old slots are not replaced

Arabic title:

```txt
إضافة وجبات ليوم 14
```

After selecting new meals, call:

```http
POST /api/subscriptions/:subscriptionId/days/:date/meals/append
```

Then:

- if no payment required: refresh availability and show new slots selectable
- if payment required: show payment required flow
- after payment succeeds: refresh availability and allow creating pickup request

---

## 9. Premium and Add-on Payment Rules

This is critical.

Appending meals is not a free bypass.

If the customer adds:

- premium meal
- upgraded meal
- add-ons

Flutter must follow the same payment behavior as the existing Meal Planner.

Rules:

- unpaid premium/add-on slots must not be selectable for pickup
- if user attempts to create pickup request with unpaid slot, backend returns canonical error
- Flutter should map the error to readable UI

Possible errors:

```txt
PREMIUM_PAYMENT_REQUIRED
ADDON_PAYMENT_REQUIRED
PENDING_ADDON_PAYMENT
```

Suggested Arabic messages:

```txt
يجب إتمام دفع ترقية الوجبة قبل طلب الاستلام.
```

```txt
يجب إتمام دفع الإضافات قبل طلب الاستلام.
```

If backend returns `paymentRequired` or `amountDue`, show payment CTA.

Suggested CTA:

```txt
إتمام الدفع
```

After payment success, refresh:

```http
GET /api/subscriptions/:subscriptionId/pickup-availability?date=YYYY-MM-DD
```

Then allow selection.

---

## 10. Idempotency and Double Tap Protection

Flutter must protect against duplicate pickup request creation.

Rules:

- disable confirm button while API is loading
- create one idempotency key per confirmation intent
- same retry uses same key
- new explicit request uses new key

Same intent:

```txt
same idempotencyKey -> same pickup request
```

New request:

```txt
new idempotencyKey -> new pickup request
```

Do not generate a new key on every retry of the same dialog.

Generate a new key only when:

- user cancels and starts again
- user successfully creates request and then taps “Create another pickup request”

---

## 11. Flutter Must Stop Using These As Main Flow

Do not use this as the main Branch Pickup flow:

```http
POST /api/subscriptions/:subscriptionId/days/:date/pickup/prepare
```

Flutter must not call dashboard-style actions:

- prepare
- ready_for_pickup
- fulfill
- dispatch

These are dashboard/staff operations.

Flutter customer app should create pickup requests and display status only.

---

## 12. Home Delivery Flutter Requirements

Home Delivery remains day-based.

Use existing delivery status endpoint:

```http
GET /api/subscriptions/:subscriptionId/days/:date/fulfillment/status
```

Home Delivery UI should show:

- delivery date
- delivery window
- address
- status
- meal count
- selected meals or Chef Choice

If backend returns Chef Choice:

```txt
اختيار الشيف
```

Do not call pickup availability or pickup request endpoints for Home Delivery.

---

## 13. Recommended Flutter Files to Inspect/Update

These are likely areas based on the previous audit:

API / Network:

- `lib/data/network/app_api.dart`
- generated Retrofit file if applicable
- `lib/data/data_source/remote_data_source.dart`
- `lib/data/data_source/remote_data_source_impl.dart`
- `lib/domain/repository/repository.dart`
- `lib/data/repository/repository.dart`

Requests / Responses / Models:

- create pickup request request DTO
- pickup availability response DTO
- pickup request list response DTO
- append meals request/response DTO
- domain models and mappers

Use cases:

- `CreatePickupRequestUseCase`
- `GetPickupRequestsUseCase`
- `GetPickupAvailabilityUseCase`
- `AppendMealsToDayUseCase`

State:

- Plans Bloc/Cubit
- Pickup request Cubit/Bloc
- Meal Planner Bloc for append mode

UI:

- pickup fulfillment card
- pickup preparation section
- pickup ready/completed cards
- meal planner day screen
- delivery fulfillment card
- payment banners
- translation files

---

## 14. UI Copy Suggestions

Arabic:

```txt
إنشاء طلب استلام
إنشاء طلب استلام آخر
اختر الوجبات التي تريد استلامها الآن
تأكيد طلب الاستلام
إضافة وجبات ليوم 14
لا توجد وجبات متاحة للاستلام الآن
تم طلب استلامها
قيد التحضير
جاهز للاستلام
تم الاستلام
كود الاستلام
إتمام الدفع
يجب إتمام الدفع قبل طلب الاستلام
```

English:

```txt
Create pickup request
Create another pickup request
Choose meals to pick up now
Confirm pickup request
Add meals to this day
No meals available for pickup now
Already requested
In preparation
Ready for pickup
Picked up
Pickup code
Complete payment
Payment is required before pickup request
```

---

## 15. Tests Flutter Must Add

### Branch Pickup

1. Pickup availability parses available/unavailable slots.
2. Unavailable slots render disabled with reason.
3. Create pickup request sends `selectedMealSlotIds`.
4. Double tap sends only one request.
5. Same retry reuses idempotency key.
6. New request generates new idempotency key.
7. Multiple same-date pickup requests render separately.
8. Pickup code hidden before `ready_for_pickup`.
9. Pickup code shown only when ready and code exists.
10. Fulfilled request renders completed and hides active code.
11. Payment-required slots show payment CTA and are not selectable.
12. Append meals opens append mode and does not replace old slots.
13. After append success, new slots appear in pickup availability.
14. Home Delivery does not call pickup endpoints.

### Home Delivery

15. Home Delivery selected meals render correctly.
16. Home Delivery Chef Choice renders `اختيار الشيف`.
17. Delivery status flow renders scheduled/open, in preparation, out for delivery, fulfilled.

---

## 16. Manual QA Checklist

### Branch Pickup — Selected Planned Slots

1. Login as Branch Pickup customer.
2. Open subscription day with planned meals.
3. Tap Create Pickup Request.
4. Select two meals.
5. Confirm.
6. Verify request card appears.
7. Verify dashboard receives `subscription_pickup_request` with selected meals only.

### Branch Pickup — Multiple Same-Day Requests

1. Create first request with two slots.
2. Create second request with different slots on same date.
3. Verify both cards render separately.
4. Verify each request status changes independently.

### Branch Pickup — Append Meals

1. Use all available planned slots.
2. Tap Create Pickup Request again.
3. See no available meals message.
4. Tap Add Meals to this day.
5. Add basic meals.
6. Refresh availability.
7. Create pickup request with new slots.

### Branch Pickup — Premium/Add-on Payment

1. Append premium/add-on meal.
2. Verify payment required appears.
3. Verify slot is not selectable before payment.
4. Complete payment.
5. Refresh availability.
6. Verify slot becomes selectable.
7. Create pickup request.

### Pickup Code

1. Create pickup request.
2. Verify no code while locked/in preparation.
3. Staff marks ready.
4. Verify code appears.
5. Staff fulfills.
6. Verify completed state and no active code.

### Home Delivery

1. Open Home Delivery subscription day.
2. Verify no pickup request UI.
3. Verify delivery status, address, window, meal count.
4. Verify Chef Choice if backend returns it.

---

## 17. Final Non-Negotiable Rules

- Subscription is a global meal wallet.
- Planned slots do not consume balance.
- Branch Pickup request creation reserves balance.
- Fulfilled pickup consumes reserved credits only once.
- Canceled pickup releases credits.
- No-show consumes reserved credits.
- Branch Pickup can have multiple requests on the same date.
- Same slot cannot be used twice.
- Flutter must use `selectedMealSlotIds` as the main flow.
- Flutter must not call prepare/ready/fulfill.
- Append meals must reuse Meal Planner payment logic.
- Premium/add-on unpaid meals cannot be picked up.
- Home Delivery remains one fulfillment per day.
