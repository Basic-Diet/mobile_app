[checkout] Sending checkout request with idempotencyKey: checkout-eecdb9a3-dbcd-4105-a40c-634a432193fa
I/flutter (28580):
I/flutter (28580): ╔╣ Request ║ POST
I/flutter (28580): ║  https://basicdiet145.onrender.com/api/subscriptions/checkout
I/flutter (28580): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter (28580): Selected: 2
I/flutter (28580):
I/flutter (28580): ╔╣ Response ║ POST ║ Status: 201 Created  ║ Time: 2131 ms
I/flutter (28580): ║  https://basicdiet145.onrender.com/api/subscriptions/checkout
I/flutter (28580): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter (28580): ╔ Headers
I/flutter (28580): ╟ x-render-origin-server: [Render]
I/flutter (28580): ╟ ratelimit-limit: [20]
I/flutter (28580): ╟ x-dns-prefetch-control: [off]
I/flutter (28580): ╟ date: [Sun, 05 Jul 2026 18:33:06 GMT]
I/flutter (28580): ╟ transfer-encoding: [chunked]
I/flutter (28580): ╟ origin-agent-cluster: [?1]
I/flutter (28580): ╟ vary: [Origin, Accept-Encoding]
I/flutter (28580): ╟ ratelimit-remaining: [19]
I/flutter (28580): ╟ ratelimit-policy: [20;w=300]
I/flutter (28580): ╟ server: [cloudflare]
I/flutter (28580): ╟ x-request-id: [61af9051-27fe-4507-8ffc-7106a72ebb55]
I/flutter (28580): ╟ cross-origin-resource-policy: [same-origin]
I/flutter (28580): ╟ cf-ray: [a16874b98db1a55f-MRS]
I/flutter (28580): ╟ etag: [W/"8a6-LUeUQJBVnOXPMks+O8s0dBkVC/U"]
I/flutter (28580): ╟ x-frame-options: [SAMEORIGIN]
I/flutter (28580): ╟ content-security-policy:
I/flutter (28580): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter (28580): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter (28580): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter (28580): ╟ connection: [keep-alive]
I/flutter (28580): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter (28580): ╟ referrer-policy: [no-referrer]
I/flutter (28580): ╟ cf-cache-status: [DYNAMIC]
I/flutter (28580): ╟ x-permitted-cross-domain-policies: [none]
I/flutter (28580): ╟ cross-origin-opener-policy: [same-origin]
I/flutter (28580): ╟ content-type: [application/json; charset=utf-8]
I/flutter (28580): ╟ x-xss-protection: [0]
I/flutter (28580): ╟ rndr-id: [8796c06e-b08c-412f]
I/flutter (28580): ╟ access-control-allow-credentials: [true]
I/flutter (28580): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter (28580): ╟ x-download-options: [noopen]
I/flutter (28580): ╟ x-content-type-options: [nosniff]
I/flutter (28580): ╟ ratelimit-reset: [300]
I/flutter (28580): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter (28580): ╔ Body
I/flutter (28580): ║
I/flutter (28580): ║    {
I/flutter (28580): ║         "status": true,
I/flutter (28580): ║         "data": {
I/flutter (28580): ║             "subscriptionId": null,
I/flutter (28580): ║             "draftId": "6a4aa36124247683acd5d17f",
I/flutter (28580): ║             "paymentId": "6a4aa36124247683acd5d184",
I/flutter (28580): ║             "payment_url": "https://checkout.moyasar.com/invoices/75540039-fd1d-4b5b-97fc-26f7eea7effe?la
I/flutter (28580): ║              ng=en"
I/flutter (28580): ║             "verify_url": "/api/payments/verify?payment_type=subscription_activation&token=5a97cc625a5ea
I/flutter (28580): ║              aba4d612130c589b1d7ad66&draft_id=6a4aa36124247683acd5d17f"
I/flutter (28580): ║             "invoice_id": "75540039-fd1d-4b5b-97fc-26f7eea7effe",
I/flutter (28580): ║             "totals": {
I/flutter (28580): ║                 "basePlanPriceHalala": 27600,
I/flutter (28580): ║                 "basePlanGrossHalala": 27600,
I/flutter (28580): ║                 "basePlanNetHalala": 23793,
I/flutter (28580): ║                 "premiumTotalHalala": 8700,
I/flutter (28580): ║                 "addonsTotalHalala": 2300,
I/flutter (28580): ║                 "deliveryFeeHalala": 2345,
I/flutter (28580): ║                 "grossTotalHalala": 40945,
I/flutter (28580): ║                 "discountHalala": 0,
I/flutter (28580): ║                 "subtotalHalala": 35297,
I/flutter (28580): ║                 "subtotalBeforeVatHalala": 35297,
I/flutter (28580): ║                 "vatPercentage": 16,
I/flutter (28580): ║                 "vatHalala": 5648,
I/flutter (28580): ║                 "totalPriceHalala": 40945,
I/flutter (28580): ║                 "totalHalala": 40945,
I/flutter (28580): ║                 "currency": "SAR"
I/flutter (28580): ║            }
I/flutter (28580): ║             "pricingSummary": {
I/flutter (28580): ║                 "basePlanPriceHalala": 27600,
I/flutter (28580): ║                 "basePlanPriceSar": 276,
I/flutter (28580): ║                 "basePlanGrossHalala": 27600,
I/flutter (28580): ║                 "basePlanGrossSar": 276,
I/flutter (28580): ║                 "basePlanNetHalala": 23793,
I/flutter (28580): ║                 "basePlanNetSar": 237.93,
I/flutter (28580): ║                 "subtotalHalala": 35297,
I/flutter (28580): ║                 "subtotalSar": 352.97,
I/flutter (28580): ║                 "vatPercentage": 16,
I/flutter (28580): ║                 "vatHalala": 5648,
I/flutter (28580): ║                 "vatSar": 56.48,
I/flutter (28580): ║                 "totalPriceHalala": 40945,
I/flutter (28580): ║                 "totalPriceSar": 409.45,
I/flutter (28580): ║                 "currency": "SAR",
I/flutter (28580): ║                 "basePriceHalala": 27600,
I/flutter (28580): ║                 "basePriceSar": 276
I/flutter (28580): ║            }
I/flutter (28580): ║             "promoCode": null,
I/flutter (28580): ║             "summary": {
I/flutter (28580): ║                 "lineItems": [
I/flutter (28580): ║                  {kind: plan, label: Plan, amountHalala: 27600, amountSar: 276, amountLabel: 276 SAR},
I/flutter (28580): ║                    {
I/flutter (28580): ║                         "kind": "premium",
I/flutter (28580): ║                         "label": "Premium meals",
I/flutter (28580): ║                         "amountHalala": 8700,
I/flutter (28580): ║                         "amountSar": 87,
I/flutter (28580): ║                         "amountLabel": "87 SAR"
I/flutter (28580): ║                    },
I/flutter (28580): ║                  {kind: addons, label: Add-ons, amountHalala: 2300, amountSar: 23, amountLabel: 23 SAR},
I/flutter (28580): ║                    {
I/flutter (28580): ║                         "kind": "delivery",
I/flutter (28580): ║                         "label": "Delivery",
I/flutter (28580): ║                         "amountHalala": 2345,
I/flutter (28580): ║                         "amountSar": 23.45,
I/flutter (28580): ║                         "amountLabel": "23.45 SAR"
I/flutter (28580): ║                    },
I/flutter (28580): ║                  {kind: vat, label: VAT, amountHalala: 5648, amountSar: 56.48, amountLabel: 56.48 SAR},
I/flutter (28580): ║                    {
I/flutter (28580): ║                         "kind": "total",
I/flutter (28580): ║                         "label": "Total",
I/flutter (28580): ║                         "amountHalala": 40945,
I/flutter (28580): ║                         "amountSar": 409.45,
I/flutter (28580): ║                         "amountLabel": "409.45 SAR"
I/flutter (28580): ║                    }
I/flutter (28580): ║                 ]
I/flutter (28580): ║            }
I/flutter (28580): ║             "premiumItemCount": 1,
I/flutter (28580): ║             "premiumUpgradeLimit": {maxPremiumUpgrades: 14, selectedPremiumUpgrades: 3, remainingPremiumUpgrades: 11},
I/flutter (28580): ║             "fulfillmentOptions": {
I/flutter (28580): ║                 "sameDayDeliveryAllowed": false,
I/flutter (28580): ║                 "sameDayPickupAllowed": true,
I/flutter (28580): ║                 "firstDayPickupOverrideAvailable": true,
I/flutter (28580): ║                 "deliveryStartDateIfNoPickup": "2026-07-06",
I/flutter (28580): ║                 "reason": "SAME_DAY_DELIVERY_NOT_AVAILABLE",
I/flutter (28580): ║                 "requestedStartDate": "2026-07-05",
I/flutter (28580): ║                 "resolvedStartDate": "2026-07-06",
I/flutter (28580): ║                 "startDateShifted": true
I/flutter (28580): ║            }
I/flutter (28580): ║        }
I/flutter (28580): ║    }
I/flutter (28580): ║
I/flutter (28580): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter (28580): onChange -- SubscriptionBloc, Change { currentState: SubscriptionSuccess(PlansModel([PlanModel(6a3e87a23a3b9944089f911c, 7-Day Meal Subscription includes meals (Fish - Beef - Chicken), 7, SAR, true, [GramOptionModel(100, [MealOptionModel(1, 138.0, 138.0), MealOptionModel(2, 276.0, 276.0), MealOptionModel(3, 414.0, 414.0), MealOptionModel(4, 552.0, 552.0), MealOptionModel(5, 690.0, 690.0)]), GramOptionModel(150, [MealOptionModel(1, 174.0, 174.0), MealOptionModel(2, 348.0, 348.0), MealOptionModel(3, 522.0, 522.0), MealOptionModel(4, 696.0, 696.0), MealOptionModel(5, 870.0, 870.0)]), GramOptionModel(200, [MealOptionModel(1, 210.0, 210.0), MealOptionModel(2, 420.0, 420.0), MealOptionModel(3, 630.0, 630.0), MealOptionModel(4, 840.0, 840.0), MealOptionModel(5, 1050.0, 1050.0)])]), PlanModel(6a3e87a23a3b9944089f911f, 26-Day Meal Subscription includes meals (Fish - Beef - Chicken), 26, SAR, true, [GramOptionModel(100, [MealOptionModel(1, 516.0, 516.0), MealOptionModel(2, 935.0, 935.0), MealOptionModel(3, 1355.0, 135
E/libEGL  (28580): called unimplemented OpenGL ES API
