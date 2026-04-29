# Meal Planner Screen — API Flow & UX Guide

A plain-language walkthrough of how the Meal Planner screen works: what the user sees, what happens behind the scenes, and which API calls fire at each step.

---

## 1. Screen Entry

The screen is opened from the Timeline screen. The caller passes in:

- The list of timeline days (already loaded)
- Addon entitlements and premium meal summaries
- The day index to open on
- How many premium meals the user has remaining
- The subscription ID

The screen creates a `MealPlannerBloc` and immediately fires `GetMealPlannerDataEvent`.

---

## 2. Initial Load

**What the user sees:** A loading spinner.

**What happens:**

1. **API call → `GET /meal-planner/menu`** (`GetMealPlannerMenuUseCase`)
   - Fetches the full menu catalog: proteins, carbs, sandwiches, add-ons, builder rules.
   - If this fails → screen shows an error message with a "Try Again" button.

2. The BLoC builds the initial slot selections from the timeline days that were already passed in (no extra API call needed here).

3. **API call → `GET /subscriptions/{id}/days/{date}`** (`GetSubscriptionDayUseCase`)
   - Loads the detailed state of the initially selected day: payment requirements, planner metadata, confirmed selections.
   - A thin progress bar appears under the date selector while this loads.

After both calls succeed, the screen renders fully.

---

## 3. Changing the Selected Day

**What the user does:** Taps a different date in the horizontal date selector.

**What happens:**

- The BLoC fires `ChangeDateEvent`.
- The thin progress bar reappears.
- **API call → `GET /subscriptions/{id}/days/{date}`** for the newly selected day.
- The slot cards and add-on section update to reflect that day's saved state.

---

## 4. Selecting Meals (Protein + Carbs)

**What the user does:** Taps a meal slot card → a bottom sheet opens showing available proteins. They pick one, then choose carb sides.

**What happens (local only — no API call):**

- `SetMealSlotProteinEvent` updates the slot in memory.
- `SetMealSlotCarbEvent` updates carb selections in memory.
- The progress indicator at the top updates to show how many meals are complete.
- If the selected protein is premium, the premium credit counter updates immediately.

> No API call fires until the user taps **Save**.

---

## 5. Selecting Add-Ons

**What the user does:** Taps add-on chips in the daily add-on card.

**What happens (local only — no API call):**

- `ToggleAddOnSelectionEvent` or `SelectAddonForCategoryEvent` updates the in-memory selection.
- The UI immediately reflects whether each add-on is covered by the subscription or requires extra payment.

---

## 6. Saving Changes

**What the user does:** Taps the **Save** button at the bottom.

This is the most complex flow. It goes through up to 5 sequential API calls depending on what was selected.

### Step 1 — Validate
**API call → `POST /subscriptions/{id}/days/{date}/validate`** (`ValidateDaySelectionUseCase`)

- Sends the current slot selections to the server for validation.
- If invalid → shows an error message, stays on screen.

### Step 2 — Save
**API call → `POST /subscriptions/{id}/days/{date}/selections`** (`SaveDaySelectionUseCase`)

- Persists the selections as a draft on the server.
- The server responds with the updated day detail, including a `paymentRequirement` object.

### Step 3a — No payment needed → Confirm
**API call → `POST /subscriptions/{id}/days/{date}/confirm`** (`ConfirmDaySelectionUseCase`)

- Locks in the selections.
- Followed immediately by a refresh: **`GET /subscriptions/{id}/days/{date}`**
- Screen closes and returns `MealPlannerScreenResult.saved()` to the caller.

### Step 3b — Premium payment needed
**API call → `POST /subscriptions/{id}/days/{date}/premium-payment`** (`CreatePremiumPaymentUseCase`)

- Creates a payment session for the extra premium meal cost.
- Returns a `paymentUrl` and `paymentId`.
- The screen opens `PaymentWebViewScreen` with the payment URL.

### Step 3c — Add-on payment needed
**API call → `POST /subscriptions/{id}/days/{date}/addon-payment`** (`CreateOneTimeAddonPaymentUseCase`)

- Same as above but for paid add-ons.

---

## 7. Payment WebView

**What the user sees:** A full-screen web view with the payment gateway.

**Outcomes:**

| User action | What happens |
|---|---|
| Completes payment | WebView closes, BLoC fires `VerifyPremiumPaymentEvent` or `VerifyAddonPaymentEvent` |
| Cancels / goes back | Snackbar: "Payment cancelled". Screen stays open. |
| Invalid URL | Snackbar: "Payment not completed". Screen stays open. |

---

## 8. Payment Verification

After the WebView closes with a success result:

**API call → `POST /subscriptions/{id}/days/{date}/verify-premium-payment`** or **`verify-addon-payment`**

- Checks with the server that the payment went through.
- If `paymentStatus != 'paid'` → shows error, stays on screen.
- If paid → refreshes the day detail.

**After verification, the server may still require another payment** (e.g., premium was paid but add-ons are still pending). In that case the BLoC automatically creates the next payment session without user interaction.

Once all payments are settled → goes to **Confirm** (Step 3a above).

---

## 9. Read-Only Mode

If the screen is opened with `readOnly: true`, or the selected day's `commercialState` is `confirmed`, or the day is locked:

- No Save button is shown.
- All interaction callbacks are `null` — tapping does nothing.
- No save/payment API calls can fire.

---

## Summary: All API Calls

| # | Trigger | Endpoint | Use Case |
|---|---|---|---|
| 1 | Screen opens | `GET /meal-planner/menu` | `GetMealPlannerMenuUseCase` |
| 2 | Screen opens / day changes | `GET /subscriptions/{id}/days/{date}` | `GetSubscriptionDayUseCase` |
| 3 | Save tapped | `POST /subscriptions/{id}/days/{date}/validate` | `ValidateDaySelectionUseCase` |
| 4 | After validation passes | `POST /subscriptions/{id}/days/{date}/selections` | `SaveDaySelectionUseCase` |
| 5 | No payment needed | `POST /subscriptions/{id}/days/{date}/confirm` | `ConfirmDaySelectionUseCase` |
| 6 | Premium payment needed | `POST /subscriptions/{id}/days/{date}/premium-payment` | `CreatePremiumPaymentUseCase` |
| 7 | Add-on payment needed | `POST /subscriptions/{id}/days/{date}/addon-payment` | `CreateOneTimeAddonPaymentUseCase` |
| 8 | After WebView success | `POST /subscriptions/{id}/days/{date}/verify-premium-payment` | `VerifyPremiumPaymentUseCase` |
| 9 | After WebView success | `POST /subscriptions/{id}/days/{date}/verify-addon-payment` | `VerifyOneTimeAddonPaymentUseCase` |
| 10 | After confirm / after verify | `GET /subscriptions/{id}/days/{date}` | `GetSubscriptionDayUseCase` |

---

## State Flow Diagram

```
Screen opens
    │
    ▼
[Loading spinner]
    │
    ├─ GET menu ──────────────────────────────► Error screen (retry button)
    │
    ├─ GET day detail (initial day) ──────────► Error snackbar
    │
    ▼
[Meal planner rendered]
    │
    ├─ User taps date ──► GET day detail ──► Update UI
    │
    ├─ User picks protein/carbs/addons ──► Local state only
    │
    └─ User taps Save
            │
            ▼
        POST validate
            │ fail ──► show error
            ▼
        POST save
            │ fail ──► show error
            ▼
        requiresPayment?
            │
            ├─ No ──► POST confirm ──► GET day ──► Close screen ✓
            │
            ├─ premium_pending_payment
            │       └──► POST create-premium-payment
            │                   └──► Open WebView
            │                           └──► POST verify-premium-payment
            │                                       └──► still needs addons? ──► POST create-addon-payment ...
            │                                       └──► No ──► POST confirm ──► Close screen ✓
            │
            └─ addons_pending_payment
                    └──► POST create-addon-payment
                                └──► Open WebView
                                        └──► POST verify-addon-payment
                                                    └──► still needs premium? ──► POST create-premium-payment ...
                                                    └──► No ──► POST confirm ──► Close screen ✓
```
