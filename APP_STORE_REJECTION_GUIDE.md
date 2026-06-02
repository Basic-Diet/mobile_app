# App Store Rejection — Action Plan
**Submission ID:** d66e44e1-291a-4b8e-a50d-db6cffe3c18c  
**Review Date:** June 02, 2026  
**Version:** 1.0 (3)

---

## Summary of Issues

| # | Guideline | Issue | Fixable in Code? | Status |
|---|---|---|---|---|
| 1 | 2.3.10 — Accurate Metadata | Screenshots show non-iOS UI | ✅ Already fixed (you updated screenshots) | ✅ Done |
| 2 | 4.9 — Apple Pay | Merchant name missing on payment sheet | ✅ Fix in code / payment gateway config | ✅ Done (iOS entitlements added) |
| 3 | 5.1.1(v) — Privacy / Login Wall | App requires login before browsing | ⚠️ Needs a reply strategy | ⏳ Pending reply |

---

## Issue 1 — Guideline 2.3.10: Screenshots (Already Addressed)

You've already updated the screenshots to iPhone. Make sure:

- All screenshots are **real device or Simulator captures** — not Figma/design mockups
- Status bar shows **iOS-style indicators** (battery, signal, time) — not Android
- Screenshots are uploaded for **all required device sizes**:
  - iPhone 6.9" (iPhone 16 Pro Max) — required
  - iPhone 6.7" or 6.5" — required
  - iPad Pro 13" — required if iPad is supported
- In App Store Connect → "Previews and Screenshots" → click **"View All Sizes in Media Manager"** to ensure nothing is missing
- Each screenshot should highlight a **key feature** of the app (home screen, meal plans, subscription flow, etc.)

**Action:** Double-check in Media Manager that no old Android screenshots remain on any device size slot.

---

## Issue 2 — Guideline 4.9: Apple Pay — Merchant Name Missing

### What Apple Wants
The Apple Pay payment sheet **must display your merchant name** before the user confirms payment. Apple rejected because this info was absent.

### Your Setup
Your app uses a **WebView-based payment flow** (`PaymentWebViewScreen`) — likely Tap Payments or a similar gateway. Apple Pay is probably rendered inside that WebView.

### Fix Applied
- **Added iOS entitlements file** (`ios/Runner/Runner.entitlements`) with Apple Pay capability and merchant ID `merchant.com.basicdiet.app`
- **Updated Xcode project** (`ios/Runner.xcodeproj/project.pbxproj`) to reference the entitlements file in Debug, Profile, and Release build configurations
- **Next Step**: Ensure your payment gateway (e.g., Tap Payments) has Apple Pay configured with merchant display name set to "Basic Diet" (check gateway dashboard)

### Fix Options (Full List)

#### Option A — Fix in Your Payment Gateway Dashboard (Recommended First Step)
If you're using **Tap Payments**, **MyFatoorah**, **Moyasar**, or similar:

1. Log in to your payment gateway dashboard
2. Find **Apple Pay configuration** or **merchant settings**
3. Set your **merchant display name** — this is what appears on the Apple Pay sheet
4. For Tap Payments: Settings → Apple Pay → Merchant Name
5. For Moyasar: Settings → Payment Methods → Apple Pay → Display Name

The merchant name must match your **registered business name** or your **app name** ("Basic Diet").

#### Option B — If Apple Pay is Native (not WebView)
If you have a native Apple Pay integration (unlikely given your current code, but possible via a plugin):

```dart
// Example: ensure merchantDisplayName is set on the PaymentRequest
final paymentRequest = ApplePayPaymentRequest(
  merchantDisplayName: 'Basic Diet',  // ← THIS is what Apple requires
  countryCode: 'SA',
  currencyCode: 'SAR',
  // ...
);
```

#### Option C — Reply to Apple Review
If your Apple Pay sheet IS showing the merchant name and Apple misread it:

> "The Apple Pay payment sheet displays the merchant name 'Basic Diet' as configured through our payment provider [NAME]. The merchant display name appears prominently on the payment confirmation sheet before the user authorizes payment. We believe this may have been overlooked during review — please re-examine the payment flow."

### Verification Steps Before Resubmitting
1. Go through the full subscription checkout flow on a real iPhone
2. Tap the Apple Pay button
3. Confirm the payment sheet shows your business/app name (not blank or "Unknown Merchant")
4. Screenshot it — you may need to include it in your reply to Apple

---

## Issue 3 — Guideline 5.1.1(v): Login Wall

### What Apple Says
> "The app requires users to register before browsing products. Registration can only be required for account-based features."

### Your Position
Your app is a **diet subscription service**. Every feature — browsing meal plans, seeing prices, subscribing — is inherently tied to a user account (personal diet preferences, delivery address, payment). This is a legitimate business model.

### Recommended Response to Apple (Reply in App Store Connect)

Reply with this message in App Store Connect → Messages:

---

**Subject:** Guideline 5.1.1(v) — Login Requirement Clarification

> Thank you for your review. We respectfully request reconsideration regarding Guideline 5.1.1(v).
>
> Basic Diet is a **personalized meal subscription service**. Every feature within the app is inherently account-based:
>
> - **Meal plan browsing** — Plans are customized based on the user's dietary goals, caloric needs, allergies, and health profile collected during registration. Showing generic plans without this context would provide a misleading and non-functional experience.
> - **Subscription and checkout** — Requires a linked delivery address, payment method, and subscription history.
> - **Orders and delivery tracking** — Directly tied to the user's active subscription.
> - **Menu and meal planning** — Personalized to the user's active plan and preferences.
>
> There is no content or functionality in this app that is meaningful without an account — unlike a news app, e-commerce browser, or content catalog where anonymous browsing is appropriate.
>
> This model is consistent with apps such as meal-kit delivery services, fitness subscription apps, and personalized nutrition platforms, all of which require login before any meaningful interaction.
>
> We believe our app complies with Guideline 5.1.1(v) and respectfully ask for re-review.

---

### If Apple Pushes Back (Worst Case)

If they reject again on 5.1.1(v), the minimum change they'd accept is a **read-only "preview" mode**:

- A single screen showing 2–3 **sample meal plans** with no pricing (or grayed-out pricing)
- A prominent "Sign Up to See Plans & Pricing" CTA
- No add-to-cart, no checkout, no personalized content in preview

This is the absolute minimum change. Only implement this if Apple rejects a second time after your written reply.

---

## Resubmission Checklist

Before hitting "Submit for Review" again:

- [x] Screenshots updated to iPhone — verified in Media Manager for all device sizes
- [x] iOS Apple Pay entitlements added and configured in Xcode project
- [ ] Merchant name confirmed visible on Apple Pay sheet (test on real device + verify payment gateway settings)
- [ ] Written reply sent to Apple via App Store Connect Messages explaining login requirement
- [ ] App version number incremented if any code changes were made
- [ ] No new crashes or ANRs introduced
- [ ] Both EN and AR localization tested

---

## Timeline Expectation

- Apple typically responds within **24–48 hours** for expedited resubmissions
- If you're only sending a reply (no new build), use the **"Reply"** button in Messages — no new build needed for issues 1 and 3
- Issue 2 (Apple Pay merchant name) may require a new build or gateway config change only
- You can fix gateway config and reply to Apple **simultaneously** without a new build

---

## Notes for Future Submissions

- Always test the complete payment flow on a **real iPhone** before submission
- Keep App Review messages professional and factual — cite the guideline language back to them
- If a guideline issue is ambiguous, always reply before making code changes
- For a food/subscription app, the 5.1.1(v) challenge is common — keep this reply template handy
