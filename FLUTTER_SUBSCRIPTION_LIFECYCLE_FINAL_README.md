# Flutter README — Subscription Lifecycle Final Integration Guide

> Target team: Flutter / Mobile App  
> Scope: Subscription meal planner, premium meals, add-ons, payment flow, delivery/pickup behavior, date/lock/error handling.  
> Backend status at the time of this document:
>
> - Phase 1 completed: Global meal planning balance.
> - Phase 2 completed: Premium/add-on pricing safety.
> - Phase 3 completed: Pending payment lifecycle and superseded stale payments.
> - Phase 4 completed: Fulfillment policy for Home Delivery and Branch Pickup.
> - Phase 5 completed: Date, lock, permissions, and status hardening.
> - Phase 5B completed: Payment guard integration with real DB-backed services.
> - Phase 6 completed: Final backend source-of-truth docs and regression checklist.
>
> Backend is ready for Flutter integration, with the caveats listed in section 18.

---

## 1. Main Principle

Flutter must treat the Backend as the source of truth for:

- Allowed meal count.
- Used/planned meal count.
- Remaining meal balance.
- Premium/add-on pricing.
- Payment requirement.
- Payment attempt validity.
- Day editability / lock state.
- Delivery and pickup rules.
- Subscription status.
- Date range validation.

Flutter may help the user avoid invalid actions in the UI, but Backend validation is final.

Do not rely on client-only calculations for final limits, final prices, payment status, or fulfillment eligibility.

---

## 2. Backend Phases Completed

### Phase 1 — Global Meal Balance

Backend now prevents planning more meals than the subscription allows across all days.

Core formula:

```txt
totalAfterSave =
  existingCompleteSlotsOutsideAffectedDates
  + incomingCompleteSlotsForAffectedDates
```

If `totalAfterSave > totalMeals`, Backend rejects the request.

Protected flows:

- Single day save/update.
- Validate-only endpoint.
- Bulk day selection.
- Premium meal slots count as one meal.
- Add-ons do not increase meal count.

### Phase 2 — Premium / Add-on Pricing Safety

Backend now enforces:

- Premium meal is an upgrade inside an existing meal slot.
- Premium meal is not an extra meal.
- Premium slot counts as one meal.
- Add-ons do not increase planned meal count.
- Premium/add-on prices are backend-owned.
- Client-sent prices/amounts are ignored or rejected.
- `premium_large_salad` must be matched by exact key only.
- `basic_salad` must never be treated as `premium_large_salad`.

### Phase 3 — Pending Payment Lifecycle

Backend now handles unpaid/stale payment attempts safely.

Rules:

- Pending/unpaid payment does not lock the day.
- User can edit or remove unpaid premium/add-on selections.
- Every edit recalculates payment requirement from the latest backend state.
- Old unpaid payment attempts are superseded using payment metadata.
- Old stale payment verification is rejected.
- Paid payments are not superseded by this phase.
- No refund/post-paid adjustment logic was added.

### Phase 4 — Fulfillment Rules

Backend now enforces delivery/pickup rules.

Home Delivery:

- Multiple meals can be selected on the same day.
- `mealsPerDay` is not a hard daily meal cap.
- Only one delivery visit per subscription/date.
- Day 1 can be Branch Pickup through the existing pickup request path.
- Day 2+ pickup is rejected for Home Delivery subscriptions.

Branch Pickup:

- User can pick up any positive number of meals up to remaining balance.
- User can pick up all remaining meals in one day.
- `mealsPerDay` is not a hard daily pickup cap.
- Date must be inside subscription validity range.

### Phase 5 — Date / Lock / Permissions Hardening

Backend now has centralized guards for:

- Subscription ownership.
- Subscription status.
- Date range.
- Day lock/editability.
- Admin/client access separation.

Rules:

- Wrong user is rejected.
- Inactive/cancelled/expired subscription is rejected.
- Date outside subscription range is rejected.
- Delivered/fulfilled/locked day rejects client planner edit.
- Pending unpaid payment does not lock day edit.
- Superseded unpaid payment does not lock day edit.
- Admin overrides are explicit and constrained.

### Phase 5B — Payment Guard Integration

Backend adapted Phase 5 throw-based guards into real result-based payment services.

Important:

- Real DB-backed models are used: `Payment`, `Subscription`, `SubscriptionDay`.
- No mock/in-memory payment implementation.
- No public payment result-shape change.
- Payment creation/verification/application now respect Phase 5 guards.
- Superseded/stale payment attempts are rejected.
- Existing Phase 3 behavior is preserved.

### Phase 6 — Final Backend Docs / Regression Checklist

Backend final docs and targeted subscription tests were completed.

Relevant test groups passed:

- `subscriptionPlannerGlobalMealBalance.test.js`
- `subscriptionPremiumAddonPricingSafety.test.js`
- `subscriptionPlannerPaymentLifecycle.test.js`
- `subscriptionFulfillmentPolicy.test.js`
- `subscriptionDateLockPermissionsHardening.test.js`
- `npm run test:subscriptions`

---

## 3. Flutter Rule: Backend Is the Source of Truth

Flutter should not make final decisions using only local state.

Backend owns:

```txt
meal limits
payment amount
premium/add-on price
payment validity
day lock state
delivery/pickup eligibility
subscription active/expired/cancelled state
```

Flutter should:

1. Render backend data.
2. Keep local draft state for UX only.
3. Submit selections to backend.
4. Refresh backend state after save/payment/pickup actions.
5. Handle backend errors gracefully.

---

## 4. Problem: User Can Select More Meals Than Allowed

Example:

```txt
Subscription totalMeals = 10
Day 9 selected meals = 5
Day 10 user tries to select 10 more meals
Total would become 15
```

This must be rejected.

Backend rejects over-planning with a meal limit error, usually:

```txt
MEAL_PLANNING_LIMIT_EXCEEDED
```

Flutter should:

- Show available/remaining meals from backend when available.
- Use backend balance fields as UI guidance.
- Prevent obvious over-selection in the UI.
- Still submit to backend because backend is final.
- On backend rejection, show error and refresh balance/day state.

Possible backend fields:

```txt
totalAllowedMeals
usedMealsCount
remainingMealsCount
plannedMealsCount
remainingPlannableMealsCount
totalAfterSave
exceededBy
```

Flutter must tolerate missing optional fields.

Suggested Arabic message:

```txt
لقد تجاوزت عدد الوجبات المتاحة في اشتراكك. برجاء تقليل عدد الوجبات المختارة.
```

Suggested English message:

```txt
You have exceeded the available meals in your subscription. Please reduce your selections.
```

---

## 5. Updating a Day Must Replace, Not Append

Saving/editing a day replaces that day’s selection.

```txt
Old Day 9 selections -> replaced by new Day 9 selections
```

Sending the same payload twice must not duplicate UI state.

Flutter required behavior:

1. Load latest day state from backend.
2. Build the full final day selection draft.
3. Submit the full final day selection.
4. On success, replace local cached day with backend response.
5. Do not append saved slots to old local slots.

Wrong local behavior:

```txt
oldSlots + savedSlots
```

Correct local behavior:

```txt
day.slots = response.day.slots
```

---

## 6. Premium Meals Are Upgrades, Not Extra Meals

Premium meal is an upgrade inside an existing meal slot.

Correct:

```txt
Subscription totalMeals = 14
10 normal meals + 4 premium meals = 14 meals total
```

Wrong:

```txt
14 normal meals + 4 premium meals = 18 meals total
```

Flutter should show premium as a selected meal upgrade, not as an extra meal slot.

When user upgrades a meal:

- Keep the same slot.
- Mark the slot as premium.
- Do not create a new extra meal slot.

---

## 7. Exact Premium Keys

Use exact canonical keys only:

```txt
premium_meal
premium_large_salad
```

Do not infer premium by name or loose matching.

Wrong:

```dart
if (product.name.contains('salad')) {
  // treat as premium salad
}
```

Wrong:

```dart
if (product.key.contains('salad')) {
  // treat as premium salad
}
```

Correct:

```dart
if (product.key == 'premium_large_salad') {
  // premium large salad
}
```

Rules:

- `premium_large_salad` must be exact.
- `basic_salad` must never fallback as premium.
- `green_salad`, `small_salad`, or any salad-like key must not be treated as `premium_large_salad`.

---

## 8. Add-ons and Pricing

Backend calculates premium/add-on prices from catalog/rules.

Backend does not trust client-sent pricing fields such as:

```txt
price
amount
amountHalala
fee
premiumExtraFee
premiumExtraFeeHalala
total
unitPrice
discount
```

Flutter may display prices received from catalog/menu APIs, but those are for display only.

When saving selections, send:

- Meal/product ids.
- Option ids.
- Add-on ids.
- Canonical keys.
- Slot key/index.
- Date.
- Selection type.

Do not treat these as trusted/final:

- Local total amount.
- Local premium fee.
- Local add-on unit price.
- Local discount.
- Local payment amount.

The amount shown before payment must come from backend payment requirement response.

---

## 9. Payment Required Flow

If selection needs payment, backend returns a payment requirement based on the latest persisted/normalized day state.

Flutter must use the backend amount only.

After save/update:

1. Read backend response.
2. If `requiresPayment = true`, show payment CTA.
3. Use backend amount.
4. Do not reuse old local amount.
5. If amount is 0 or `requiresPayment = false`, hide payment CTA.

Possible fields:

```txt
paymentRequirement.requiresPayment
paymentRequirement.amount
paymentRequirement.amountHalala
paymentRequirement.currency
paymentRequirement.reason
```

Field names may differ; use the actual API contract.

---

## 10. Pending Payment Must Not Freeze the Day

Old broken behavior:

```txt
User selects premium/add-on
Payment required = 30 SAR
User opens payment page
User leaves without paying
Day becomes frozen or cannot be edited
```

Correct behavior:

Pending/unpaid payment is editable.

Flutter must allow the user to:

- Remove premium items.
- Remove add-ons.
- Switch to normal meals.
- Add more paid items.
- Reduce paid items.
- Save again.
- Generate a new payment requirement if needed.

When user returns from payment screen without successful backend verification:

1. Refresh day details.
2. Refresh payment requirement.
3. Keep day editable unless backend says it is locked.
4. Do not rely on old payment amount.
5. Do not show old pending payment as final state.

---

## 11. Payment Recalculation Scenarios

### 30 SAR -> 0 SAR

User removes all paid items.

Flutter should show:

```txt
No payment required
```

Only after backend confirms.

### 30 SAR -> 50 SAR

User adds more paid items.

Flutter should show latest backend amount:

```txt
50 SAR
```

### 30 SAR -> 15 SAR

User removes some paid items.

Flutter should show latest backend amount:

```txt
15 SAR
```

### Old payment link after edit

Backend may reject with:

```txt
DAY_PAYMENT_REVISION_MISMATCH
```

Flutter should:

1. Show friendly message.
2. Refresh day/payment state.
3. Ask user to continue with latest payment amount.

Suggested Arabic message:

```txt
تم تغيير اختياراتك، لذلك رابط الدفع القديم لم يعد صالحًا. برجاء المتابعة بآخر مبلغ مطلوب.
```

Suggested English message:

```txt
Your selections changed, so the old payment link is no longer valid. Please continue with the latest payment amount.
```

---

## 12. Superseded / Stale Payments

After editing paid-required selections, old unpaid payment attempts may become stale.

Flutter must not assume:

```txt
old payment link = still valid
old amount = still valid
old invoice = still payable
```

Flutter should:

- Refresh state after every payment return.
- Handle revision mismatch.
- Create a new payment attempt only from latest backend state.
- Avoid caching payment links for long-lived reuse.

---

## 13. Home Delivery Rules

For Home Delivery subscriptions:

- User can select multiple meals on the same day.
- `mealsPerDay` is not a hard UI cap.
- Total subscription balance is the real meal count limit.
- Backend enforces one delivery visit per subscription/date.
- Day 1 can be Branch Pickup through pickup request path.
- Day 2+ pickup is rejected for Home Delivery subscriptions.

Flutter should:

- Allow selecting multiple meals on one day.
- Not block based on `mealsPerDay`.
- Use total remaining/plannable meal balance.
- Not create multiple delivery requests for the same date.
- Hide Day 2+ pickup option for Home Delivery subscriptions.
- For Day 1 pickup, use existing pickup request flow.

There is currently no durable public `SubscriptionDay.fulfillmentMethod` field.

Do not invent one in Flutter.

Use backend-supported pickup request flow for Day 1 pickup.

---

## 14. Branch Pickup Rules

For Branch Pickup subscriptions:

- User can pick up any positive count up to remaining balance.
- User can pick up all remaining meals in one day.
- `mealsPerDay` is not a hard daily cap.
- Date must be inside subscription validity range.

Flutter should:

- Let user request many meals in one day.
- Use `remainingMeals` or backend balance as maximum.
- Handle backend `INSUFFICIENT_CREDITS`.
- Not enforce `mealsPerDay` as maximum.

Suggested Arabic message:

```txt
عدد الوجبات المطلوب أكبر من الرصيد المتاح في اشتراكك.
```

Suggested English message:

```txt
The requested meal count is greater than your available subscription balance.
```

---

## 15. Date / Lock / Permissions Rules

Flutter should disable or block actions when backend indicates:

- Subscription is cancelled.
- Subscription is expired.
- Subscription is inactive.
- Date is outside subscription range.
- Day is delivered.
- Day is fulfilled.
- Day is locked.
- User does not own the subscription.

Flutter must NOT lock day only because:

- Payment is pending.
- User opened payment and returned without paying.
- Old payment attempt was superseded.

Pending/superseded unpaid payment is editable.

If backend returns a lock/status error:

1. Stop action loading.
2. Refresh subscription/day state.
3. Show clear message.
4. Disable edit only if backend state confirms real lock.

---

## 16. Recommended Data Refresh Flow

### Opening subscription planner

Fetch:

- Subscription details/balance.
- Timeline/days.
- Meal planner menu/catalog.
- Current day commercial/payment state if separate.

### Saving a day

1. Submit final day selection.
2. If success:
   - Replace local day with backend response.
   - Refresh balance if not included.
   - Show payment CTA if backend requires payment.
3. If `MEAL_PLANNING_LIMIT_EXCEEDED`:
   - Show limit error.
   - Keep draft visible.
   - Refresh balance.
4. If lock/status/date error:
   - Refresh state.
   - Disable invalid action.

### Returning from payment screen

Always refresh:

- Day details.
- Payment requirement.
- Subscription balance/timeline.

Do not rely on old local payment state.

### Payment success

1. Verify payment with backend.
2. If backend verification succeeds:
   - Refresh day.
   - Refresh balance/timeline.
   - Show success.
3. If backend rejects with revision mismatch:
   - Refresh day/payment state.
   - Ask user to retry latest payment.

### Payment cancelled/abandoned

1. Refresh day details.
2. Keep day editable unless backend says locked.
3. Show latest payment requirement if still required.
4. Hide payment CTA if backend says no payment required.

---

## 17. Error Handling Map

| Backend error/code | Meaning | Flutter action |
|---|---|---|
| `MEAL_PLANNING_LIMIT_EXCEEDED` | User selected more meals than subscription allows | Show limit message, refresh balance |
| `DAY_PAYMENT_REVISION_MISMATCH` | Old payment/invoice no longer matches latest selections | Refresh day/payment state, ask user to use latest payment |
| `INVALID_DELIVERY_MODE` | Fulfillment method not allowed for this subscription/date | Show delivery/pickup rule message |
| `INSUFFICIENT_CREDITS` | Requested pickup/fulfillment exceeds remaining meals | Show remaining balance message |
| `SUBSCRIPTION_DATE_OUT_OF_RANGE` | Date outside subscription range | Disable date/show date error |
| `SUBSCRIPTION_DAY_LOCKED` | Day cannot be edited | Disable editing and refresh state |
| `LOCKED` | Existing legacy lock error | Treat as day locked |
| `FORBIDDEN` | User does not own subscription or action is forbidden | Refresh/session handling |
| `SUBSCRIPTION_ACCESS_DENIED` | User does not own subscription | Refresh/session handling |
| `SUBSCRIPTION_NOT_ACTIVE` | Subscription is not active | Disable actions and show status |
| `SUBSCRIPTION_EXPIRED` | Subscription expired | Disable actions and show status |
| `SUBSCRIPTION_CANCELED` | Subscription cancelled | Disable actions and show status |
| `ADDON_PAYMENT_REQUIRED` | Backend requires extra payment | Show payment CTA using backend amount |

Use actual backend error payload fields from the current API client. Error names may appear as `code`, `errorCode`, `reason`, or nested response data depending on endpoint.

---

## 18. Known Backend Caveats Flutter Should Be Aware Of

Backend is ready for Flutter integration, but these caveats remain:

1. Concurrent saves across different requests/dates can still race if there is no persisted planner counter or per-subscription planning lock.
2. No refund/post-paid adjustment logic was added.
3. Legacy delivery rows without `date` are not backfilled.
4. Some admin/manual deduction behavior may require transaction-capable environments for full coverage.
5. No durable public per-day fulfillment method field exists yet.
6. Legacy split payment/custom day surfaces may still exist and should not be expanded from Flutter unless confirmed.

Flutter should always refresh state after important actions to reduce stale UI risk.

---

## 19. Flutter Implementation Checklist

### Meal count

- [ ] Use backend `totalMeals`, `remainingMeals`, and any balance fields returned.
- [ ] Do not enforce `mealsPerDay` as hard daily cap.
- [ ] Use total remaining/plannable meals as UI guidance.
- [ ] Handle `MEAL_PLANNING_LIMIT_EXCEEDED`.
- [ ] Refresh balance after save/payment/pickup.

### Day save

- [ ] Treat day save as replace, not append.
- [ ] Submit full final day selection.
- [ ] Replace local day from backend response.
- [ ] Same payload retry must not duplicate UI state.

### Premium

- [ ] Premium is an upgrade on same meal slot.
- [ ] Premium slot counts as one meal.
- [ ] Use exact keys only.
- [ ] `premium_large_salad` must not fallback to `basic_salad`.
- [ ] No loose name/key matching.

### Add-ons / pricing

- [ ] Display catalog prices for UI only.
- [ ] Backend payment requirement amount is final.
- [ ] Do not send trusted final amount.
- [ ] Do not rely on local amount after edits.

### Payment

- [ ] Pending unpaid payment does not freeze day.
- [ ] Return from payment always refreshes day/payment state.
- [ ] Old payment mismatch shows friendly message.
- [ ] Payment CTA amount uses latest backend amount.
- [ ] Stale/superseded payment link is not reused.

### Delivery / pickup

- [ ] Home Delivery allows multiple meals on same day.
- [ ] Home Delivery uses one delivery visit per date.
- [ ] Home Delivery Day 1 pickup uses pickup request path.
- [ ] Home Delivery Day 2+ hides/rejects pickup option.
- [ ] Branch Pickup allows any count up to remaining balance.
- [ ] Do not use `mealsPerDay` as hard daily cap.

### Date / status

- [ ] Disable actions for cancelled/expired/inactive subscriptions.
- [ ] Disable editing for delivered/fulfilled/locked days.
- [ ] Do not disable editing for pending payment alone.
- [ ] Dates outside subscription range should not be selectable.
- [ ] Wrong-user/access errors should trigger refresh/session handling.

---

## 20. Suggested QA Scenarios

1. Subscription has 10 meals. Select 5 meals on Day 9, then try 6 on Day 10. UI/backend must prevent it.
2. Subscription has 10 meals. Select all 10 on one day. UI should allow if backend allows.
3. Save Day 9 twice with same 5 meals. UI must not show 10 meals.
4. Edit Day 9 from 5 meals to 3 meals. Remaining balance should increase.
5. Upgrade one selected meal to premium. Total meal count remains 1.
6. Select 10 normal + 4 premium on a 14-meal subscription. Total remains 14.
7. Try premium large salad when only basic salad exists. It must not be selected as premium.
8. Tamper local price to 0 for premium/add-on. Backend amount should remain correct.
9. Select premium requiring 30 SAR, open payment, leave without paying, return and remove premium. Day becomes free/editable.
10. Select premium requiring 30 SAR, then add more paid items. New backend amount appears.
11. Try to use old payment link after editing selections. Flutter shows stale payment message and refreshes.
12. Pending payment day can still be edited.
13. Paid/fulfilled day cannot be edited.
14. Home Delivery: select 5 meals on same day. Allowed if total balance allows.
15. Home Delivery: repeated same-day delivery action should not create duplicate UI state.
16. Home Delivery: Day 1 pickup request allowed.
17. Home Delivery: Day 2 pickup request rejected/hidden.
18. Branch Pickup: pick up all remaining meals in one day. Allowed.
19. Branch Pickup: request more than remaining meals. Rejected with clear message.
20. Date before start date is not selectable.
21. Date after end date is not selectable.
22. Cancelled subscription disables planner actions.
23. Expired subscription disables planner actions.
24. Wrong user/access error refreshes session or exits subscription details.

---

## 21. Backend Contract Notes

No breaking Flutter contract change was intended during Backend Phases 1–6.

Flutter should safely ignore unknown fields and use optional helpful fields when available.

Potential optional fields that may appear later:

```txt
mealBalance.plannedMealsCount
mealBalance.remainingPlannableMealsCount
paymentRequirement.paymentAttemptStatus
paymentRequirement.supersededPaymentId
fulfillmentPolicy.allowedMethodsForDate
```

Possible future contract addition:

```txt
per-day fulfillment method
```

This would allow Flutter to explicitly choose pickup/home delivery for a specific day.

Currently, Day 1 pickup for Home Delivery is supported through the existing pickup request path.

---

## 22. Summary

Final Flutter rules:

```txt
Backend is source of truth.
Do not use mealsPerDay as hard daily cap.
Use total meal balance.
Day save is replace-style.
Premium is upgrade, not extra meal.
Add-ons do not increase meal count.
Prices come from Backend.
Pending payment does not lock the day.
Old payment links become invalid after selection changes.
Home Delivery allows multiple meals but one delivery visit per day.
Branch Pickup allows any count up to remaining balance.
Date/status/lock errors must refresh state.
```

Flutter should now integrate against the hardened Backend behavior and add regression coverage around planner count, premium exact keys, pending payment editability, stale payment refresh, and delivery/pickup rules.
