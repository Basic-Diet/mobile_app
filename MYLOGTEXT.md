E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/flutter ( 9202): onChange -- MainBloc, Change { currentState: MainIndexChangedState(3), nextState: MainIndexChangedState(2) }
I/flutter ( 9202): onCreate -- FulfillmentStatusCubit
I/flutter ( 9202): onCreate -- PlansBloc
I/flutter ( 9202): onChange -- PlansBloc, Change { currentState: PlansInitial(null, null), nextState: PlansLoading(null, null) }
I/flutter ( 9202): onClose -- OrdersBloc
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ GET
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/current/overview
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 896 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/current/overview
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:02:20 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef6681bf2e1d8-MRS]
I/flutter ( 9202): ╟ etag: [W/"269c-u4JMbA32UcoLX0OH43kCUSFA7hY"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ rndr-id: [1c2dfb8c-cc0f-427f]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "_id": "6a19c41387785860771917e7",
I/flutter ( 9202): ║             "userId": "6a19c170bbc7454af9576f1c",
I/flutter ( 9202): ║             "planId": "6a19c03a6864369ee0a8c1fc",
I/flutter ( 9202): ║             "status": "active",
I/flutter ( 9202): ║             "startDate": "2026-05-28T21:00:00.000Z",
I/flutter ( 9202): ║             "endDate": "2026-06-03T21:00:00.000Z",
I/flutter ( 9202): ║             "validityEndDate": "2026-06-03T21:00:00.000Z",
I/flutter ( 9202): ║             "canceledAt": null,
I/flutter ( 9202): ║             "totalMeals": 7,
I/flutter ( 9202): ║             "remainingMeals": 7,
I/flutter ( 9202): ║             "addonSubscriptions": [{addonId: 6a19c03c6864369ee0a8c204, name: اشتراك العصير, category: juice, maxPerDay: 1}]
I/flutter ( 9202): ║             "selectedGrams": 100,
I/flutter ( 9202): ║             "selectedMealsPerDay": 1,
I/flutter ( 9202): ║             "basePlanPriceHalala": 11500,
I/flutter ( 9202): ║             "basePlanGrossHalala": 11500,
I/flutter ( 9202): ║             "basePlanNetHalala": 9914,
I/flutter ( 9202): ║             "discountHalala": 0,
I/flutter ( 9202): ║             "subtotalHalala": 20776,
I/flutter ( 9202): ║             "subtotalBeforeVatHalala": 20776,
I/flutter ( 9202): ║             "vatPercentage": 16,
I/flutter ( 9202): ║             "vatHalala": 3324,
I/flutter ( 9202): ║             "totalPriceHalala": 24100,
I/flutter ( 9202): ║             "checkoutCurrency": "SAR",
I/flutter ( 9202): ║             "appliedPromo": null,
I/flutter ( 9202): ║             "premiumBalance": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "premiumKey": "salmon",
I/flutter ( 9202): ║                     "proteinId": "6a19c0186864369ee0a8c0bc",
I/flutter ( 9202): ║                     "purchasedQty": 1,
I/flutter ( 9202): ║                     "remainingQty": 1,
I/flutter ( 9202): ║                     "unitExtraFeeHalala": 2000,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "purchasedAt": "2026-05-29T16:51:31.580Z",
I/flutter ( 9202): ║                     "_id": "6a19c41387785860771917e8",
I/flutter ( 9202): ║                     "name": "سالمون"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                     "proteinId": null,
I/flutter ( 9202): ║                     "purchasedQty": 1,
I/flutter ( 9202): ║                     "remainingQty": 0,
I/flutter ( 9202): ║                     "unitExtraFeeHalala": 2900,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "purchasedAt": "2026-05-29T16:51:31.647Z",
I/flutter ( 9202): ║                     "_id": "6a19c41387785860771917e9",
I/flutter ( 9202): ║                     "name": "سلطة كبيرة مميزة"
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "contractVersion": "subscription_contract.v1",
I/flutter ( 9202): ║             "contractMode": "canonical",
I/flutter ( 9202): ║             "contractCompleteness": "authoritative",
I/flutter ( 9202): ║             "contractSource": "customer_checkout",
I/flutter ( 9202): ║             "contractHash": "2d7e354aa0df77ee9c49a50b1f6fb56d5dcece4ba62ff4f5b052622b7472f779",
I/flutter ( 9202): ║             "contractSnapshot": {
I/flutter ( 9202): ║                 "meta": {
I/flutter ( 9202): ║                     "version": "subscription_contract.v1",
I/flutter ( 9202): ║                     "capturedAt": "2026-05-29T16:51:08.132Z",
I/flutter ( 9202): ║                     "source": "customer_checkout",
I/flutter ( 9202): ║                     "mode": "canonical",
I/flutter ( 9202): ║                     "completeness": "authoritative"
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║                 "origin": {
I/flutter ( 9202): ║                     "actorRole": "client",
I/flutter ( 9202): ║                     "actorUserId": "6a19c170bbc7454af9576f1c",
I/flutter ( 9202): ║                     "renewedFromSubscriptionId": null,
I/flutter ( 9202): ║                     "adminOverrideMeta": null,
I/flutter ( 9202): ║                     "deliveryPreferenceSeeded": false
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║                 "plan": {
I/flutter ( 9202): ║                     "planId": "6a19c03a6864369ee0a8c1fc",
I/flutter ( 9202): ║                     "planName": {ar: اشتراك 7 أيام, en: 7-Day Subscription},
I/flutter ( 9202): ║                     "daysCount": 7,
I/flutter ( 9202): ║                     "selectedGrams": 100,
I/flutter ( 9202): ║                     "mealsPerDay": 1,
I/flutter ( 9202): ║                     "totalMeals": 7,
I/flutter ( 9202): ║                     "currency": "SAR"
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║                 "start": {
I/flutter ( 9202): ║                     "requestedStartDate": "2026-05-29",
I/flutter ( 9202): ║                     "resolvedStartDate": "2026-05-28T21:00:00.000Z",
I/flutter ( 9202): ║                     "defaultedToTomorrow": false,
I/flutter ( 9202): ║                     "timezone": "Asia/Riyadh"
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║                 "pricing": {
I/flutter ( 9202): ║                     "basePlanPriceHalala": 11500,
I/flutter ( 9202): ║                     "basePlanGrossHalala": 11500,
I/flutter ( 9202): ║                     "basePlanNetHalala": 9914,
I/flutter ( 9202): ║                     "premiumTotalHalala": 4900,
I/flutter ( 9202): ║                     "addonsTotalHalala": 7700,
I/flutter ( 9202): ║                     "deliveryFeeHalala": 0,
I/flutter ( 9202): ║                     "grossTotalHalala": 24100,
I/flutter ( 9202): ║                     "discountHalala": 0,
I/flutter ( 9202): ║                     "totalPriceHalala": 24100,
I/flutter ( 9202): ║                     "subtotalHalala": 20776,
I/flutter ( 9202): ║                     "subtotalBeforeVatHalala": 20776,
I/flutter ( 9202): ║                     "vatPercentage": 16,
I/flutter ( 9202): ║                     "vatHalala": 3324,
I/flutter ( 9202): ║                     "totalHalala": 24100,
I/flutter ( 9202): ║                     "currency": "SAR"
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║                 "promo": null,
I/flutter ( 9202): ║                 "premiumSelections": [
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "proteinId": "6a19c0186864369ee0a8c0bc",
I/flutter ( 9202): ║                         "premiumKey": "salmon",
I/flutter ( 9202): ║                         "qty": 1,
I/flutter ( 9202): ║                         "unitExtraFeeHalala": 2000,
I/flutter ( 9202): ║                         "currency": "SAR",
I/flutter ( 9202): ║                         "priceSource": "inputPremiumKey"
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "proteinId": null,
I/flutter ( 9202): ║                         "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                         "qty": 1,
I/flutter ( 9202): ║                         "unitExtraFeeHalala": 2900,
I/flutter ( 9202): ║                         "currency": "SAR",
I/flutter ( 9202): ║                         "priceSource": "menu_product_premium_large_salad"
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                 ],
I/flutter ( 9202): ║                 "delivery": {
I/flutter ( 9202): ║                     "mode": "pickup",
I/flutter ( 9202): ║                     "pricingMode": "pickup_legacy",
I/flutter ( 9202): ║                     "seedOnlyFromPreviousPreference": false,
I/flutter ( 9202): ║                     "slot": {type: pickup, window: , slotId: , label: },
I/flutter ( 9202): ║                     "address": {
I/flutter ( 9202): ║                         "line1": "[object Object]",
I/flutter ( 9202): ║                         "line2": "",
I/flutter ( 9202): ║                         "city": "",
I/flutter ( 9202): ║                         "district": "",
I/flutter ( 9202): ║                         "street": "",
I/flutter ( 9202): ║                         "building": "",
I/flutter ( 9202): ║                         "apartment": "",
I/flutter ( 9202): ║                         "notes": ""
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "zoneId": null,
I/flutter ( 9202): ║                     "zoneName": "",
I/flutter ( 9202): ║                     "pickupLocationId": "main"
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║                 "policySnapshot": {
I/flutter ( 9202): ║                     "freezePolicy": {enabled: true, maxDays: 7, maxTimes: 1},
I/flutter ( 9202): ║                     "skipPolicy": {enabled: true, maxDays: 1},
I/flutter ( 9202): ║                     "fallbackMode": "current",
I/flutter ( 9202): ║                     "directPremiumPricing": true,
I/flutter ( 9202): ║                     "oneTimeAddonRequiresPaymentBeforeConfirmation": true
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║                 "entitlementContract": {
I/flutter ( 9202): ║                     "premiumItems": [
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "proteinId": "6a19c0186864369ee0a8c0bc",
I/flutter ( 9202): ║                             "premiumKey": "salmon",
I/flutter ( 9202): ║                             "qty": 1,
I/flutter ( 9202): ║                             "unitExtraFeeHalala": 2000,
I/flutter ( 9202): ║                             "currency": "SAR",
I/flutter ( 9202): ║                             "priceSource": "inputPremiumKey"
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "proteinId": null,
I/flutter ( 9202): ║                             "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                             "qty": 1,
I/flutter ( 9202): ║                             "unitExtraFeeHalala": 2900,
I/flutter ( 9202): ║                             "currency": "SAR",
I/flutter ( 9202): ║                             "priceSource": "menu_product_premium_large_salad"
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                     ],
I/flutter ( 9202): ║                     "addonSubscriptions": []
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║                 "compatibility": {
I/flutter ( 9202): ║                     "directPremiumPricingOnly": true,
I/flutter ( 9202): ║                     "usesCategoryAddons": true,
I/flutter ( 9202): ║                     "usesLegacyDeliveryRuntime": true,
I/flutter ( 9202): ║                     "usesLegacySkipRuntime": false
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "renewedFromSubscriptionId": null,
I/flutter ( 9202): ║             "deliveryMode": "pickup",
I/flutter ( 9202): ║             "deliveryAddress": null,
I/flutter ( 9202): ║             "deliveryZoneId": null,
I/flutter ( 9202): ║             "deliveryZoneName": "",
I/flutter ( 9202): ║             "deliveryFeeHalala": 0,
I/flutter ( 9202): ║             "pickupLocationId": "main",
I/flutter ( 9202): ║             "deliverySlot": {type: pickup, slotId: , window: , label: },
I/flutter ( 9202): ║             "skippedCount": 0,
I/flutter ( 9202): ║             "skipDaysUsed": 0,
I/flutter ( 9202): ║             "expiryReminder3dSentAt": null,
I/flutter ( 9202): ║             "expiryReminder24hSentAt": null,
I/flutter ( 9202): ║             "addonBalance": []
I/flutter ( 9202): ║             "addonSelections": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "dayId": "6a19c41387785860771917ee",
I/flutter ( 9202): ║                     "date": "2026-05-29",
I/flutter ( 9202): ║                     "addonId": "6a19c03c6864369ee0a8c202",
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 1100,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "_id": "6a19c48687785860771918b5",
I/flutter ( 9202): ║                     "consumedAt": "2026-05-29T16:53:26.529Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "dayId": "6a19c41387785860771917ef",
I/flutter ( 9202): ║                     "date": "2026-05-30",
I/flutter ( 9202): ║                     "addonId": "6a19c03c6864369ee0a8c202",
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 1100,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "_id": "6a19c9c18778586077191b24",
I/flutter ( 9202): ║                     "consumedAt": "2026-05-29T17:15:45.382Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "dayId": "6a19c41387785860771917f0",
I/flutter ( 9202): ║                     "date": "2026-05-31",
I/flutter ( 9202): ║                     "addonId": "6a19c03c6864369ee0a8c203",
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 1100,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "_id": "6a19ca508778586077191c26",
I/flutter ( 9202): ║                     "consumedAt": "2026-05-29T17:18:08.215Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "dayId": "6a19c41387785860771917f0",
I/flutter ( 9202): ║                     "date": "2026-05-31",
I/flutter ( 9202): ║                     "addonId": "6a19c03b6864369ee0a8c200",
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 1900,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "_id": "6a19ca508778586077191c27",
I/flutter ( 9202): ║                     "consumedAt": "2026-05-29T17:18:08.215Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "dayId": "6a19c41387785860771917f1",
I/flutter ( 9202): ║                     "date": "2026-06-01",
I/flutter ( 9202): ║                     "addonId": "6a19c03c6864369ee0a8c202",
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 1100,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "_id": "6a19cab88778586077191db7",
I/flutter ( 9202): ║                     "consumedAt": "2026-05-29T17:19:52.354Z"
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "premiumSelections": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "dayId": "6a19c41387785860771917ee",
I/flutter ( 9202): ║                     "date": "2026-05-29",
I/flutter ( 9202): ║                     "baseSlotKey": "slot_1",
I/flutter ( 9202): ║                     "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                     "proteinId": "6a19c0176864369ee0a8c0b9",
I/flutter ( 9202): ║                     "unitExtraFeeHalala": 0,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "premiumWalletRowId": null,
I/flutter ( 9202): ║                     "_id": "6a19c48687785860771918b6",
I/flutter ( 9202): ║                     "consumedAt": "2026-05-29T16:53:26.530Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "dayId": "6a19c41387785860771917ee",
I/flutter ( 9202): ║                     "date": "2026-05-29",
I/flutter ( 9202): ║                     "baseSlotKey": "slot_2",
I/flutter ( 9202): ║                     "premiumKey": "shrimp",
I/flutter ( 9202): ║                     "proteinId": "6a19bd7b0f6ac4f0db96ecc6",
I/flutter ( 9202): ║                     "unitExtraFeeHalala": 2000,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "premiumWalletRowId": null,
I/flutter ( 9202): ║                     "_id": "6a19c48687785860771918b7",
I/flutter ( 9202): ║                     "consumedAt": "2026-05-29T16:53:26.531Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "dayId": "6a19c41387785860771917ef",
I/flutter ( 9202): ║                     "date": "2026-05-30",
I/flutter ( 9202): ║                     "baseSlotKey": "slot_1",
I/flutter ( 9202): ║                     "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                     "proteinId": "6a19c0176864369ee0a8c0b7",
I/flutter ( 9202): ║                     "unitExtraFeeHalala": 2900,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "premiumWalletRowId": null,
I/flutter ( 9202): ║                     "_id": "6a19c9c18778586077191b25",
I/flutter ( 9202): ║                     "consumedAt": "2026-05-29T17:15:45.383Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "dayId": "6a19c41387785860771917f0",
I/flutter ( 9202): ║                     "date": "2026-05-31",
I/flutter ( 9202): ║                     "baseSlotKey": "slot_2",
I/flutter ( 9202): ║                     "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                     "proteinId": "6a19c0186864369ee0a8c0bc",
I/flutter ( 9202): ║                     "unitExtraFeeHalala": 2900,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "premiumWalletRowId": null,
I/flutter ( 9202): ║                     "_id": "6a19ca508778586077191c28",
I/flutter ( 9202): ║                     "consumedAt": "2026-05-29T17:18:08.215Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "dayId": "6a19c41387785860771917f1",
I/flutter ( 9202): ║                     "date": "2026-06-01",
I/flutter ( 9202): ║                     "baseSlotKey": "slot_1",
I/flutter ( 9202): ║                     "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                     "proteinId": "6a19c0186864369ee0a8c0bc",
I/flutter ( 9202): ║                     "unitExtraFeeHalala": 2900,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "premiumWalletRowId": null,
I/flutter ( 9202): ║                     "_id": "6a19cab88778586077191db8",
I/flutter ( 9202): ║                     "consumedAt": "2026-05-29T17:19:52.355Z"
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "createdAt": "2026-05-29T16:51:31.654Z",
I/flutter ( 9202): ║             "updatedAt": "2026-05-29T17:19:52.379Z",
I/flutter ( 9202): ║             "mealBalance": {
I/flutter ( 9202): ║                 "totalMeals": 7,
I/flutter ( 9202): ║                 "remainingMeals": 7,
I/flutter ( 9202): ║                 "consumedMeals": 0,
I/flutter ( 9202): ║                 "canConsumeNow": true,
I/flutter ( 9202): ║                 "maxConsumableMealsNow": 7,
I/flutter ( 9202): ║                 "mealBalancePolicy": "TOTAL_BALANCE_WITHIN_VALIDITY",
I/flutter ( 9202): ║                 "dailyMealLimitEnforced": false,
I/flutter ( 9202): ║                 "dailyMealsDefault": 1
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "pricingSummary": {
I/flutter ( 9202): ║                 "basePlanPriceHalala": 11500,
I/flutter ( 9202): ║                 "basePlanPriceSar": 115,
I/flutter ( 9202): ║                 "basePlanGrossHalala": 11500,
I/flutter ( 9202): ║                 "basePlanGrossSar": 115,
I/flutter ( 9202): ║                 "basePlanNetHalala": 9914,
I/flutter ( 9202): ║                 "basePlanNetSar": 99.14,
I/flutter ( 9202): ║                 "subtotalHalala": 20776,
I/flutter ( 9202): ║                 "subtotalSar": 207.76,
I/flutter ( 9202): ║                 "vatPercentage": 16,
I/flutter ( 9202): ║                 "vatHalala": 3324,
I/flutter ( 9202): ║                 "vatSar": 33.24,
I/flutter ( 9202): ║                 "totalPriceHalala": 24100,
I/flutter ( 9202): ║                 "totalPriceSar": 241,
I/flutter ( 9202): ║                 "currency": "SAR",
I/flutter ( 9202): ║                 "basePriceHalala": 11500,
I/flutter ( 9202): ║                 "basePriceSar": 115
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "contract": {isCanonical: true, isGrandfathered: false, version: subscription_contract.v1},
I/flutter ( 9202): ║             "statusLabel": "نشط",
I/flutter ( 9202): ║             "statusLabelAr": "نشط",
I/flutter ( 9202): ║             "statusLabelEn": "Active",
I/flutter ( 9202): ║             "deliveryModeLabel": "استلام",
I/flutter ( 9202): ║             "deliveryModeLabelAr": "استلام",
I/flutter ( 9202): ║             "deliveryModeLabelEn": "Pickup",
I/flutter ( 9202): ║             "planName": "اشتراك 7 أيام",
I/flutter ( 9202): ║             "premiumSummary": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "premiumMealId": "6a19c0186864369ee0a8c0bc",
I/flutter ( 9202): ║                     "premiumKey": "salmon",
I/flutter ( 9202): ║                     "name": "سالمون",
I/flutter ( 9202): ║                     "purchasedQtyTotal": 1,
I/flutter ( 9202): ║                     "remainingQtyTotal": 1,
I/flutter ( 9202): ║                     "consumedQtyTotal": 0
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "premiumMealId": "premium_large_salad",
I/flutter ( 9202): ║                     "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                     "name": "سلطة كبيرة مميزة",
I/flutter ( 9202): ║                     "purchasedQtyTotal": 1,
I/flutter ( 9202): ║                     "remainingQtyTotal": 0,
I/flutter ( 9202): ║                     "consumedQtyTotal": 1
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "addonsSummary": []
I/flutter ( 9202): ║             "pickupLocation": {
I/flutter ( 9202): ║                 "id": "main",
I/flutter ( 9202): ║                 "name": "[object Object]",
I/flutter ( 9202): ║                 "address": "[object Object]",
I/flutter ( 9202): ║                 "phone": "",
I/flutter ( 9202): ║                 "city": "",
I/flutter ( 9202): ║                 "district": "",
I/flutter ( 9202): ║                 "workingHours": "",
I/flutter ( 9202): ║                 "latitude": null,
I/flutter ( 9202): ║                 "longitude": null,
I/flutter ( 9202): ║                 "mapUrl": null
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "deliveryWindow": null,
I/flutter ( 9202): ║             "fulfillmentSummary": {
I/flutter ( 9202): ║                 "mode": "pickup",
I/flutter ( 9202): ║                 "title": "الاستلام من الفرع",
I/flutter ( 9202): ║                 "status": "active",
I/flutter ( 9202): ║                 "statusLabel": "نشط",
I/flutter ( 9202): ║                 "message": "راجع اختيارات اليوم واطلب التجهيز عندما تكون جاهزا",
I/flutter ( 9202): ║                 "nextAction": "",
I/flutter ( 9202): ║                 "isEditable": true,
I/flutter ( 9202): ║                 "isFulfillable": false,
I/flutter ( 9202): ║                 "planningReady": false,
I/flutter ( 9202): ║                 "fulfillmentReady": false,
I/flutter ( 9202): ║                 "lockedReason": null,
I/flutter ( 9202): ║                 "lockedMessage": null
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "lockedReason": null,
I/flutter ( 9202): ║             "lockedMessage": null,
I/flutter ( 9202): ║             "skipDaysLimit": 1,
I/flutter ( 9202): ║             "remainingSkipDays": 1,
I/flutter ( 9202): ║             "businessDate": "2026-05-30",
I/flutter ( 9202): ║             "pickupPreparation": {
I/flutter ( 9202): ║                 "flowStatus": "disabled",
I/flutter ( 9202): ║                 "reason": "PAYMENT_REQUIRED",
I/flutter ( 9202): ║                 "canRequestPrepare": false,
I/flutter ( 9202): ║                 "canBePrepared": false,
I/flutter ( 9202): ║                 "planningReady": false,
I/flutter ( 9202): ║                 "showMealPlannerCta": false,
I/flutter ( 9202): ║                 "mealPlannerCtaLabelAr": null,
I/flutter ( 9202): ║                 "mealPlannerCtaLabelEn": null,
I/flutter ( 9202): ║                 "pickupPreparationFlowStatus": "waiting_for_prepare",
I/flutter ( 9202): ║                 "buttonLabel": "تجهيز الطلب",
I/flutter ( 9202): ║                 "buttonLabelAr": "تجهيز الطلب",
I/flutter ( 9202): ║                 "buttonLabelEn": "Prepare Request",
I/flutter ( 9202): ║                 "messageAr": "يوجد مبالغ معلقة، يرجى إتمام الدفع",
I/flutter ( 9202): ║                 "messageEn": "There are pending payments, please complete payment",
I/flutter ( 9202): ║                 "message": "يوجد مبالغ معلقة، يرجى إتمام الدفع",
I/flutter ( 9202): ║                 "pickupRequested": false,
I/flutter ( 9202): ║                 "pickupPrepared": false,
I/flutter ( 9202): ║                 "consumptionState": "consumable_today",
I/flutter ( 9202): ║                 "fulfillmentMode": "customer_selected",
I/flutter ( 9202): ║                 "dayEndConsumptionReason": null,
I/flutter ( 9202): ║                 "mode": "multi_request",
I/flutter ( 9202): ║                 "canCreatePickupRequest": false,
I/flutter ( 9202): ║                 "availableMealBalance": 7,
I/flutter ( 9202): ║                 "activePickupRequestCount": 0,
I/flutter ( 9202): ║                 "latestPickupRequest": null,
I/flutter ( 9202): ║                 "restaurantHours": {openTime: 00:00, closeTime: 23:59, isOpenNow: true}
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ GET
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/6a19c41387785860771917e7/timeline
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 693 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/6a19c41387785860771917e7/timeline
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:02:20 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef66d28d1e1d8-MRS]
I/flutter ( 9202): ╟ etag: [W/"3d76-JebfD9wH+c17Gq5YEJu8fbblA9E"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ rndr-id: [a03f89e4-2edb-4a4f]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "subscriptionId": "6a19c41387785860771917e7",
I/flutter ( 9202): ║             "dailyMealsRequired": 1,
I/flutter ( 9202): ║             "premiumMealsRemaining": 1,
I/flutter ( 9202): ║             "premiumMealsSelected": 5,
I/flutter ( 9202): ║             "premiumBalanceBreakdown": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "proteinId": "6a19c0186864369ee0a8c0bc",
I/flutter ( 9202): ║                     "premiumKey": "salmon",
I/flutter ( 9202): ║                     "purchasedQty": 1,
I/flutter ( 9202): ║                     "remainingQty": 1,
I/flutter ( 9202): ║                     "unitExtraFeeHalala": 2000,
I/flutter ( 9202): ║                     "currency": "SAR"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "proteinId": null,
I/flutter ( 9202): ║                     "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                     "purchasedQty": 1,
I/flutter ( 9202): ║                     "remainingQty": 0,
I/flutter ( 9202): ║                     "unitExtraFeeHalala": 2900,
I/flutter ( 9202): ║                     "currency": "SAR"
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "days": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "date": "2026-05-29",
I/flutter ( 9202): ║                     "day": "الجمعة",
I/flutter ( 9202): ║                     "month": "مايو",
I/flutter ( 9202): ║                     "dayNumber": 29,
I/flutter ( 9202): ║                     "deliveryMode": "pickup",
I/flutter ( 9202): ║                     "status": "planned",
I/flutter ( 9202): ║                     "statusLabel": "مخطط له",
I/flutter ( 9202): ║                     "isPast": true,
I/flutter ( 9202): ║                     "autoSettled": false,
I/flutter ( 9202): ║                     "settledAt": null,
I/flutter ( 9202): ║                     "settlementReason": null,
I/flutter ( 9202): ║                     "consumedByPolicy": false,
I/flutter ( 9202): ║                     "selectedMeals": 2,
I/flutter ( 9202): ║                     "requiredMeals": 1,
I/flutter ( 9202): ║                     "commercialState": "confirmed",
I/flutter ( 9202): ║                     "commercialStateLabel": "مؤكد",
I/flutter ( 9202): ║                     "isFulfillable": true,
I/flutter ( 9202): ║                     "canBePrepared": true,
I/flutter ( 9202): ║                     "paymentRequirement": {
I/flutter ( 9202): ║                         "status": "satisfied",
I/flutter ( 9202): ║                         "requiresPayment": false,
I/flutter ( 9202): ║                         "pricingStatus": "not_required",
I/flutter ( 9202): ║                         "blockingReason": null,
I/flutter ( 9202): ║                         "canCreatePayment": false,
I/flutter ( 9202): ║                         "premiumSelectedCount": 2,
I/flutter ( 9202): ║                         "premiumPendingPaymentCount": 0,
I/flutter ( 9202): ║                         "addonSelectedCount": 2,
I/flutter ( 9202): ║                         "addonPendingPaymentCount": 0,
I/flutter ( 9202): ║                         "pendingAmountHalala": 0,
I/flutter ( 9202): ║                         "amountHalala": 0,
I/flutter ( 9202): ║                         "currency": "SAR",
I/flutter ( 9202): ║                         "pricingStatusLabel": "غير مطلوب",
I/flutter ( 9202): ║                         "blockingReasonLabel": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "fulfillmentMode": "customer_selected",
I/flutter ( 9202): ║                     "consumptionState": "pending_day",
I/flutter ( 9202): ║                     "requiredMealCount": 1,
I/flutter ( 9202): ║                     "specifiedMealCount": 1,
I/flutter ( 9202): ║                     "unspecifiedMealCount": 0,
I/flutter ( 9202): ║                     "hasCustomerSelections": true,
I/flutter ( 9202): ║                     "requiresMealTypeKnowledge": true,
I/flutter ( 9202): ║                     "planningReady": true,
I/flutter ( 9202): ║                     "fulfillmentReady": false,
I/flutter ( 9202): ║                     "deliveryWindow": null,
I/flutter ( 9202): ║                     "deliveryAddress": null,
I/flutter ( 9202): ║                     "pickupLocation": {
I/flutter ( 9202): ║                         "id": "main",
I/flutter ( 9202): ║                         "name": "[object Object]",
I/flutter ( 9202): ║                         "address": "[object Object]",
I/flutter ( 9202): ║                         "phone": "",
I/flutter ( 9202): ║                         "city": "",
I/flutter ( 9202): ║                         "district": "",
I/flutter ( 9202): ║                         "workingHours": "",
I/flutter ( 9202): ║                         "latitude": null,
I/flutter ( 9202): ║                         "longitude": null,
I/flutter ( 9202): ║                         "mapUrl": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "fulfillmentSummary": {
I/flutter ( 9202): ║                         "mode": "pickup",
I/flutter ( 9202): ║                         "title": "الاستلام من الفرع",
I/flutter ( 9202): ║                         "status": "open",
I/flutter ( 9202): ║                         "statusLabel": "مخطط له",
I/flutter ( 9202): ║                         "message": "راجع اختيارات اليوم واطلب التجهيز عندما تكون جاهزا"
I/flutter ( 9202): ║                         "nextAction": "",
I/flutter ( 9202): ║                         "isEditable": true,
I/flutter ( 9202): ║                         "isFulfillable": true,
I/flutter ( 9202): ║                         "planningReady": true,
I/flutter ( 9202): ║                         "fulfillmentReady": false,
I/flutter ( 9202): ║                         "lockedReason": null,
I/flutter ( 9202): ║                         "lockedMessage": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "lockedReason": null,
I/flutter ( 9202): ║                     "lockedMessage": null,
I/flutter ( 9202): ║                     "selectedMealIds": [6a19c0176864369ee0a8c0b9, 6a19bd7b0f6ac4f0db96ecc6]
I/flutter ( 9202): ║                     "mealSlots": [
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "slotIndex": 1,
I/flutter ( 9202): ║                             "slotKey": "slot_1",
I/flutter ( 9202): ║                             "status": "complete",
I/flutter ( 9202): ║                             "selectionType": "premium_large_salad",
I/flutter ( 9202): ║                             "proteinId": "6a19c0176864369ee0a8c0b9",
I/flutter ( 9202): ║                             "carbs": []
I/flutter ( 9202): ║                             "sandwichId": null,
I/flutter ( 9202): ║                             "salad": {
I/flutter ( 9202): ║                                 "presetKey": "premium_large_salad",
I/flutter ( 9202): ║                                 "groups": {
I/flutter ( 9202): ║                                     "leafy_greens": []
I/flutter ( 9202): ║                                     "vegetables": []
I/flutter ( 9202): ║                                     "protein": [6a19c0176864369ee0a8c0b9]
I/flutter ( 9202): ║                                     "cheese_nuts": []
I/flutter ( 9202): ║                                     "fruits": []
I/flutter ( 9202): ║                                     "sauce": [6a19c01c6864369ee0a8c0da]
I/flutter ( 9202): ║                                }
I/flutter ( 9202): ║                            }
I/flutter ( 9202): ║                             "isPremium": true,
I/flutter ( 9202): ║                             "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                             "premiumSource": "balance",
I/flutter ( 9202): ║                             "premiumExtraFeeHalala": 0
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "slotIndex": 2,
I/flutter ( 9202): ║                             "slotKey": "slot_2",
I/flutter ( 9202): ║                             "status": "complete",
I/flutter ( 9202): ║                             "selectionType": "premium_meal",
I/flutter ( 9202): ║                             "proteinId": "6a19bd7b0f6ac4f0db96ecc6",
I/flutter ( 9202): ║                             "carbs": [{carbId: 6a19c0196864369ee0a8c0c2, grams: 150}]
I/flutter ( 9202): ║                             "sandwichId": null,
I/flutter ( 9202): ║                             "salad": null,
I/flutter ( 9202): ║                             "isPremium": true,
I/flutter ( 9202): ║                             "premiumKey": "shrimp",
I/flutter ( 9202): ║                             "premiumSource": "paid_extra",
I/flutter ( 9202): ║                             "premiumExtraFeeHalala": 2000
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                     ]
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "date": "2026-05-30",
I/flutter ( 9202): ║                     "day": "السبت",
I/flutter ( 9202): ║                     "month": "مايو",
I/flutter ( 9202): ║                     "dayNumber": 30,
I/flutter ( 9202): ║                     "deliveryMode": "pickup",
I/flutter ( 9202): ║                     "status": "planned",
I/flutter ( 9202): ║                     "statusLabel": "مخطط له",
I/flutter ( 9202): ║                     "isPast": false,
I/flutter ( 9202): ║                     "autoSettled": false,
I/flutter ( 9202): ║                     "settledAt": null,
I/flutter ( 9202): ║                     "settlementReason": null,
I/flutter ( 9202): ║                     "consumedByPolicy": false,
I/flutter ( 9202): ║                     "selectedMeals": 2,
I/flutter ( 9202): ║                     "requiredMeals": 1,
I/flutter ( 9202): ║                     "commercialState": "payment_required",
I/flutter ( 9202): ║                     "commercialStateLabel": "الدفع مطلوب",
I/flutter ( 9202): ║                     "isFulfillable": false,
I/flutter ( 9202): ║                     "canBePrepared": false,
I/flutter ( 9202): ║                     "paymentRequirement": {
I/flutter ( 9202): ║                         "status": "priced",
I/flutter ( 9202): ║                         "requiresPayment": true,
I/flutter ( 9202): ║                         "pricingStatus": "priced",
I/flutter ( 9202): ║                         "blockingReason": "PREMIUM_PAYMENT_REQUIRED",
I/flutter ( 9202): ║                         "canCreatePayment": true,
I/flutter ( 9202): ║                         "premiumSelectedCount": 1,
I/flutter ( 9202): ║                         "premiumPendingPaymentCount": 1,
I/flutter ( 9202): ║                         "addonSelectedCount": 2,
I/flutter ( 9202): ║                         "addonPendingPaymentCount": 1,
I/flutter ( 9202): ║                         "pendingAmountHalala": 4000,
I/flutter ( 9202): ║                         "amountHalala": 4000,
I/flutter ( 9202): ║                         "currency": "SAR",
I/flutter ( 9202): ║                         "pricingStatusLabel": "مسعر",
I/flutter ( 9202): ║                         "blockingReasonLabel": ""
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "fulfillmentMode": "customer_selected",
I/flutter ( 9202): ║                     "consumptionState": "consumable_today",
I/flutter ( 9202): ║                     "requiredMealCount": 1,
I/flutter ( 9202): ║                     "specifiedMealCount": 1,
I/flutter ( 9202): ║                     "unspecifiedMealCount": 0,
I/flutter ( 9202): ║                     "hasCustomerSelections": true,
I/flutter ( 9202): ║                     "requiresMealTypeKnowledge": true,
I/flutter ( 9202): ║                     "planningReady": false,
I/flutter ( 9202): ║                     "fulfillmentReady": false,
I/flutter ( 9202): ║                     "deliveryWindow": null,
I/flutter ( 9202): ║                     "deliveryAddress": null,
I/flutter ( 9202): ║                     "pickupLocation": {
I/flutter ( 9202): ║                         "id": "main",
I/flutter ( 9202): ║                         "name": "[object Object]",
I/flutter ( 9202): ║                         "address": "[object Object]",
I/flutter ( 9202): ║                         "phone": "",
I/flutter ( 9202): ║                         "city": "",
I/flutter ( 9202): ║                         "district": "",
I/flutter ( 9202): ║                         "workingHours": "",
I/flutter ( 9202): ║                         "latitude": null,
I/flutter ( 9202): ║                         "longitude": null,
I/flutter ( 9202): ║                         "mapUrl": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "fulfillmentSummary": {
I/flutter ( 9202): ║                         "mode": "pickup",
I/flutter ( 9202): ║                         "title": "الاستلام من الفرع",
I/flutter ( 9202): ║                         "status": "open",
I/flutter ( 9202): ║                         "statusLabel": "مخطط له",
I/flutter ( 9202): ║                         "message": "راجع اختيارات اليوم واطلب التجهيز عندما تكون جاهزا"
I/flutter ( 9202): ║                         "nextAction": "",
I/flutter ( 9202): ║                         "isEditable": true,
I/flutter ( 9202): ║                         "isFulfillable": false,
I/flutter ( 9202): ║                         "planningReady": false,
I/flutter ( 9202): ║                         "fulfillmentReady": false,
I/flutter ( 9202): ║                         "lockedReason": null,
I/flutter ( 9202): ║                         "lockedMessage": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "lockedReason": null,
I/flutter ( 9202): ║                     "lockedMessage": null,
I/flutter ( 9202): ║                     "selectedMealIds": [6a19c0176864369ee0a8c0b7, 6a19c0176864369ee0a8c0ba]
I/flutter ( 9202): ║                     "mealSlots": [
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "slotIndex": 1,
I/flutter ( 9202): ║                             "slotKey": "slot_1",
I/flutter ( 9202): ║                             "status": "complete",
I/flutter ( 9202): ║                             "selectionType": "premium_large_salad",
I/flutter ( 9202): ║                             "proteinId": "6a19c0176864369ee0a8c0b7",
I/flutter ( 9202): ║                             "carbs": []
I/flutter ( 9202): ║                             "sandwichId": null,
I/flutter ( 9202): ║                             "salad": {
I/flutter ( 9202): ║                                 "presetKey": "premium_large_salad",
I/flutter ( 9202): ║                                 "groups": {
I/flutter ( 9202): ║                                     "leafy_greens": []
I/flutter ( 9202): ║                                     "vegetables": []
I/flutter ( 9202): ║                                     "protein": [6a19c0176864369ee0a8c0b7]
I/flutter ( 9202): ║                                     "cheese_nuts": []
I/flutter ( 9202): ║                                     "fruits": []
I/flutter ( 9202): ║                                     "sauce": [6a19c01c6864369ee0a8c0da]
I/flutter ( 9202): ║                                }
I/flutter ( 9202): ║                            }
I/flutter ( 9202): ║                             "isPremium": true,
I/flutter ( 9202): ║                             "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                             "premiumSource": "pending_payment",
I/flutter ( 9202): ║                             "premiumExtraFeeHalala": 2900
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "slotIndex": 2,
I/flutter ( 9202): ║                             "slotKey": "slot_2",
I/flutter ( 9202): ║                             "status": "complete",
I/flutter ( 9202): ║                             "selectionType": "premium_meal",
I/flutter ( 9202): ║                             "proteinId": "6a19c0176864369ee0a8c0ba",
I/flutter ( 9202): ║                             "carbs": [{carbId: 6a19c0196864369ee0a8c0c2, grams: 150}]
I/flutter ( 9202): ║                             "sandwichId": null,
I/flutter ( 9202): ║                             "salad": null,
I/flutter ( 9202): ║                             "isPremium": false,
I/flutter ( 9202): ║                             "premiumKey": "beef_steak",
I/flutter ( 9202): ║                             "premiumSource": "none",
I/flutter ( 9202): ║                             "premiumExtraFeeHalala": 0
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                     ]
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "date": "2026-05-31",
I/flutter ( 9202): ║                     "day": "الأحد",
I/flutter ( 9202): ║                     "month": "مايو",
I/flutter ( 9202): ║                     "dayNumber": 31,
I/flutter ( 9202): ║                     "deliveryMode": "pickup",
I/flutter ( 9202): ║                     "status": "planned",
I/flutter ( 9202): ║                     "statusLabel": "مخطط له",
I/flutter ( 9202): ║                     "isPast": false,
I/flutter ( 9202): ║                     "autoSettled": false,
I/flutter ( 9202): ║                     "settledAt": null,
I/flutter ( 9202): ║                     "settlementReason": null,
I/flutter ( 9202): ║                     "consumedByPolicy": false,
I/flutter ( 9202): ║                     "selectedMeals": 2,
I/flutter ( 9202): ║                     "requiredMeals": 1,
I/flutter ( 9202): ║                     "commercialState": "confirmed",
I/flutter ( 9202): ║                     "commercialStateLabel": "مؤكد",
I/flutter ( 9202): ║                     "isFulfillable": true,
I/flutter ( 9202): ║                     "canBePrepared": true,
I/flutter ( 9202): ║                     "paymentRequirement": {
I/flutter ( 9202): ║                         "status": "satisfied",
I/flutter ( 9202): ║                         "requiresPayment": false,
I/flutter ( 9202): ║                         "pricingStatus": "not_required",
I/flutter ( 9202): ║                         "blockingReason": null,
I/flutter ( 9202): ║                         "canCreatePayment": false,
I/flutter ( 9202): ║                         "premiumSelectedCount": 1,
I/flutter ( 9202): ║                         "premiumPendingPaymentCount": 0,
I/flutter ( 9202): ║                         "addonSelectedCount": 3,
I/flutter ( 9202): ║                         "addonPendingPaymentCount": 0,
I/flutter ( 9202): ║                         "pendingAmountHalala": 0,
I/flutter ( 9202): ║                         "amountHalala": 0,
I/flutter ( 9202): ║                         "currency": "SAR",
I/flutter ( 9202): ║                         "pricingStatusLabel": "غير مطلوب",
I/flutter ( 9202): ║                         "blockingReasonLabel": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "fulfillmentMode": "customer_selected",
I/flutter ( 9202): ║                     "consumptionState": "pending_day",
I/flutter ( 9202): ║                     "requiredMealCount": 1,
I/flutter ( 9202): ║                     "specifiedMealCount": 1,
I/flutter ( 9202): ║                     "unspecifiedMealCount": 0,
I/flutter ( 9202): ║                     "hasCustomerSelections": true,
I/flutter ( 9202): ║                     "requiresMealTypeKnowledge": true,
I/flutter ( 9202): ║                     "planningReady": true,
I/flutter ( 9202): ║                     "fulfillmentReady": false,
I/flutter ( 9202): ║                     "deliveryWindow": null,
I/flutter ( 9202): ║                     "deliveryAddress": null,
I/flutter ( 9202): ║                     "pickupLocation": {
I/flutter ( 9202): ║                         "id": "main",
I/flutter ( 9202): ║                         "name": "[object Object]",
I/flutter ( 9202): ║                         "address": "[object Object]",
I/flutter ( 9202): ║                         "phone": "",
I/flutter ( 9202): ║                         "city": "",
I/flutter ( 9202): ║                         "district": "",
I/flutter ( 9202): ║                         "workingHours": "",
I/flutter ( 9202): ║                         "latitude": null,
I/flutter ( 9202): ║                         "longitude": null,
I/flutter ( 9202): ║                         "mapUrl": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "fulfillmentSummary": {
I/flutter ( 9202): ║                         "mode": "pickup",
I/flutter ( 9202): ║                         "title": "الاستلام من الفرع",
I/flutter ( 9202): ║                         "status": "open",
I/flutter ( 9202): ║                         "statusLabel": "مخطط له",
I/flutter ( 9202): ║                         "message": "راجع اختيارات اليوم واطلب التجهيز عندما تكون جاهزا"
I/flutter ( 9202): ║                         "nextAction": "",
I/flutter ( 9202): ║                         "isEditable": true,
I/flutter ( 9202): ║                         "isFulfillable": true,
I/flutter ( 9202): ║                         "planningReady": true,
I/flutter ( 9202): ║                         "fulfillmentReady": false,
I/flutter ( 9202): ║                         "lockedReason": null,
I/flutter ( 9202): ║                         "lockedMessage": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "lockedReason": null,
I/flutter ( 9202): ║                     "lockedMessage": null,
I/flutter ( 9202): ║                     "selectedMealIds": [6a19c0186864369ee0a8c0bc, 6a19c0186864369ee0a8c0bc]
I/flutter ( 9202): ║                     "mealSlots": [
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "slotIndex": 1,
I/flutter ( 9202): ║                             "slotKey": "slot_1",
I/flutter ( 9202): ║                             "status": "complete",
I/flutter ( 9202): ║                             "selectionType": "premium_meal",
I/flutter ( 9202): ║                             "proteinId": "6a19c0186864369ee0a8c0bc",
I/flutter ( 9202): ║                             "carbs": [{carbId: 6a19c0196864369ee0a8c0c3, grams: 150}]
I/flutter ( 9202): ║                             "sandwichId": null,
I/flutter ( 9202): ║                             "salad": null,
I/flutter ( 9202): ║                             "isPremium": false,
I/flutter ( 9202): ║                             "premiumKey": "salmon",
I/flutter ( 9202): ║                             "premiumSource": "none",
I/flutter ( 9202): ║                             "premiumExtraFeeHalala": 0
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "slotIndex": 2,
I/flutter ( 9202): ║                             "slotKey": "slot_2",
I/flutter ( 9202): ║                             "status": "complete",
I/flutter ( 9202): ║                             "selectionType": "premium_large_salad",
I/flutter ( 9202): ║                             "proteinId": "6a19c0186864369ee0a8c0bc",
I/flutter ( 9202): ║                             "carbs": []
I/flutter ( 9202): ║                             "sandwichId": null,
I/flutter ( 9202): ║                             "salad": {
I/flutter ( 9202): ║                                 "presetKey": "premium_large_salad",
I/flutter ( 9202): ║                                 "groups": {
I/flutter ( 9202): ║                                     "leafy_greens": []
I/flutter ( 9202): ║                                     "vegetables": []
I/flutter ( 9202): ║                                     "protein": [6a19c0186864369ee0a8c0bc]
I/flutter ( 9202): ║                                     "cheese_nuts": []
I/flutter ( 9202): ║                                     "fruits": []
I/flutter ( 9202): ║                                     "sauce": [6a19c01c6864369ee0a8c0da]
I/flutter ( 9202): ║                                }
I/flutter ( 9202): ║                            }
I/flutter ( 9202): ║                             "isPremium": true,
I/flutter ( 9202): ║                             "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                             "premiumSource": "paid_extra",
I/flutter ( 9202): ║                             "premiumExtraFeeHalala": 2900
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                     ]
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "date": "2026-06-01",
I/flutter ( 9202): ║                     "day": "الاثنين",
I/flutter ( 9202): ║                     "month": "يونيو",
I/flutter ( 9202): ║                     "dayNumber": 1,
I/flutter ( 9202): ║                     "deliveryMode": "pickup",
I/flutter ( 9202): ║                     "status": "planned",
I/flutter ( 9202): ║                     "statusLabel": "مخطط له",
I/flutter ( 9202): ║                     "isPast": false,
I/flutter ( 9202): ║                     "autoSettled": false,
I/flutter ( 9202): ║                     "settledAt": null,
I/flutter ( 9202): ║                     "settlementReason": null,
I/flutter ( 9202): ║                     "consumedByPolicy": false,
I/flutter ( 9202): ║                     "selectedMeals": 2,
I/flutter ( 9202): ║                     "requiredMeals": 1,
I/flutter ( 9202): ║                     "commercialState": "confirmed",
I/flutter ( 9202): ║                     "commercialStateLabel": "مؤكد",
I/flutter ( 9202): ║                     "isFulfillable": true,
I/flutter ( 9202): ║                     "canBePrepared": true,
I/flutter ( 9202): ║                     "paymentRequirement": {
I/flutter ( 9202): ║                         "status": "satisfied",
I/flutter ( 9202): ║                         "requiresPayment": false,
I/flutter ( 9202): ║                         "pricingStatus": "not_required",
I/flutter ( 9202): ║                         "blockingReason": null,
I/flutter ( 9202): ║                         "canCreatePayment": false,
I/flutter ( 9202): ║                         "premiumSelectedCount": 1,
I/flutter ( 9202): ║                         "premiumPendingPaymentCount": 0,
I/flutter ( 9202): ║                         "addonSelectedCount": 2,
I/flutter ( 9202): ║                         "addonPendingPaymentCount": 0,
I/flutter ( 9202): ║                         "pendingAmountHalala": 0,
I/flutter ( 9202): ║                         "amountHalala": 0,
I/flutter ( 9202): ║                         "currency": "SAR",
I/flutter ( 9202): ║                         "pricingStatusLabel": "غير مطلوب",
I/flutter ( 9202): ║                         "blockingReasonLabel": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "fulfillmentMode": "customer_selected",
I/flutter ( 9202): ║                     "consumptionState": "pending_day",
I/flutter ( 9202): ║                     "requiredMealCount": 1,
I/flutter ( 9202): ║                     "specifiedMealCount": 1,
I/flutter ( 9202): ║                     "unspecifiedMealCount": 0,
I/flutter ( 9202): ║                     "hasCustomerSelections": true,
I/flutter ( 9202): ║                     "requiresMealTypeKnowledge": true,
I/flutter ( 9202): ║                     "planningReady": true,
I/flutter ( 9202): ║                     "fulfillmentReady": false,
I/flutter ( 9202): ║                     "deliveryWindow": null,
I/flutter ( 9202): ║                     "deliveryAddress": null,
I/flutter ( 9202): ║                     "pickupLocation": {
I/flutter ( 9202): ║                         "id": "main",
I/flutter ( 9202): ║                         "name": "[object Object]",
I/flutter ( 9202): ║                         "address": "[object Object]",
I/flutter ( 9202): ║                         "phone": "",
I/flutter ( 9202): ║                         "city": "",
I/flutter ( 9202): ║                         "district": "",
I/flutter ( 9202): ║                         "workingHours": "",
I/flutter ( 9202): ║                         "latitude": null,
I/flutter ( 9202): ║                         "longitude": null,
I/flutter ( 9202): ║                         "mapUrl": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "fulfillmentSummary": {
I/flutter ( 9202): ║                         "mode": "pickup",
I/flutter ( 9202): ║                         "title": "الاستلام من الفرع",
I/flutter ( 9202): ║                         "status": "open",
I/flutter ( 9202): ║                         "statusLabel": "مخطط له",
I/flutter ( 9202): ║                         "message": "راجع اختيارات اليوم واطلب التجهيز عندما تكون جاهزا"
I/flutter ( 9202): ║                         "nextAction": "",
I/flutter ( 9202): ║                         "isEditable": true,
I/flutter ( 9202): ║                         "isFulfillable": true,
I/flutter ( 9202): ║                         "planningReady": true,
I/flutter ( 9202): ║                         "fulfillmentReady": false,
I/flutter ( 9202): ║                         "lockedReason": null,
I/flutter ( 9202): ║                         "lockedMessage": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "lockedReason": null,
I/flutter ( 9202): ║                     "lockedMessage": null,
I/flutter ( 9202): ║                     "selectedMealIds": [6a19c0186864369ee0a8c0bc, 6a19c0186864369ee0a8c0bc]
I/flutter ( 9202): ║                     "mealSlots": [
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "slotIndex": 1,
I/flutter ( 9202): ║                             "slotKey": "slot_1",
I/flutter ( 9202): ║                             "status": "complete",
I/flutter ( 9202): ║                             "selectionType": "premium_large_salad",
I/flutter ( 9202): ║                             "proteinId": "6a19c0186864369ee0a8c0bc",
I/flutter ( 9202): ║                             "carbs": []
I/flutter ( 9202): ║                             "sandwichId": null,
I/flutter ( 9202): ║                             "salad": {
I/flutter ( 9202): ║                                 "presetKey": "premium_large_salad",
I/flutter ( 9202): ║                                 "groups": {
I/flutter ( 9202): ║                                     "leafy_greens": []
I/flutter ( 9202): ║                                     "vegetables": []
I/flutter ( 9202): ║                                     "protein": [6a19c0186864369ee0a8c0bc]
I/flutter ( 9202): ║                                     "cheese_nuts": []
I/flutter ( 9202): ║                                     "fruits": []
I/flutter ( 9202): ║                                     "sauce": [6a19c01c6864369ee0a8c0da]
I/flutter ( 9202): ║                                }
I/flutter ( 9202): ║                            }
I/flutter ( 9202): ║                             "isPremium": true,
I/flutter ( 9202): ║                             "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                             "premiumSource": "paid_extra",
I/flutter ( 9202): ║                             "premiumExtraFeeHalala": 2900
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "slotIndex": 2,
I/flutter ( 9202): ║                             "slotKey": "slot_2",
I/flutter ( 9202): ║                             "status": "complete",
I/flutter ( 9202): ║                             "selectionType": "premium_meal",
I/flutter ( 9202): ║                             "proteinId": "6a19c0186864369ee0a8c0bc",
I/flutter ( 9202): ║                             "carbs": [{carbId: 6a19c0196864369ee0a8c0c3, grams: 150}]
I/flutter ( 9202): ║                             "sandwichId": null,
I/flutter ( 9202): ║                             "salad": null,
I/flutter ( 9202): ║                             "isPremium": false,
I/flutter ( 9202): ║                             "premiumKey": "salmon",
I/flutter ( 9202): ║                             "premiumSource": "none",
I/flutter ( 9202): ║                             "premiumExtraFeeHalala": 0
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                     ]
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "date": "2026-06-02",
I/flutter ( 9202): ║                     "day": "الثلاثاء",
I/flutter ( 9202): ║                     "month": "يونيو",
I/flutter ( 9202): ║                     "dayNumber": 2,
I/flutter ( 9202): ║                     "deliveryMode": "pickup",
I/flutter ( 9202): ║                     "status": "open",
I/flutter ( 9202): ║                     "statusLabel": "مفتوح",
I/flutter ( 9202): ║                     "isPast": false,
I/flutter ( 9202): ║                     "autoSettled": false,
I/flutter ( 9202): ║                     "settledAt": null,
I/flutter ( 9202): ║                     "settlementReason": null,
I/flutter ( 9202): ║                     "consumedByPolicy": false,
I/flutter ( 9202): ║                     "selectedMeals": 0,
I/flutter ( 9202): ║                     "requiredMeals": 1,
I/flutter ( 9202): ║                     "commercialState": "draft",
I/flutter ( 9202): ║                     "commercialStateLabel": "مسودة",
I/flutter ( 9202): ║                     "isFulfillable": false,
I/flutter ( 9202): ║                     "canBePrepared": false,
I/flutter ( 9202): ║                     "paymentRequirement": {
I/flutter ( 9202): ║                         "status": "satisfied",
I/flutter ( 9202): ║                         "requiresPayment": false,
I/flutter ( 9202): ║                         "pricingStatus": "not_required",
I/flutter ( 9202): ║                         "blockingReason": "PLANNING_INCOMPLETE",
I/flutter ( 9202): ║                         "canCreatePayment": false,
I/flutter ( 9202): ║                         "premiumSelectedCount": 0,
I/flutter ( 9202): ║                         "premiumPendingPaymentCount": 0,
I/flutter ( 9202): ║                         "addonSelectedCount": 0,
I/flutter ( 9202): ║                         "addonPendingPaymentCount": 0,
I/flutter ( 9202): ║                         "pendingAmountHalala": 0,
I/flutter ( 9202): ║                         "amountHalala": 0,
I/flutter ( 9202): ║                         "currency": "SAR",
I/flutter ( 9202): ║                         "pricingStatusLabel": "غير مطلوب",
I/flutter ( 9202): ║                         "blockingReasonLabel": ""
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "fulfillmentMode": "no_service",
I/flutter ( 9202): ║                     "consumptionState": "pending_day",
I/flutter ( 9202): ║                     "requiredMealCount": 1,
I/flutter ( 9202): ║                     "specifiedMealCount": 0,
I/flutter ( 9202): ║                     "unspecifiedMealCount": 1,
I/flutter ( 9202): ║                     "hasCustomerSelections": false,
I/flutter ( 9202): ║                     "requiresMealTypeKnowledge": false,
I/flutter ( 9202): ║                     "planningReady": false,
I/flutter ( 9202): ║                     "fulfillmentReady": false,
I/flutter ( 9202): ║                     "deliveryWindow": null,
I/flutter ( 9202): ║                     "deliveryAddress": null,
I/flutter ( 9202): ║                     "pickupLocation": {
I/flutter ( 9202): ║                         "id": "main",
I/flutter ( 9202): ║                         "name": "[object Object]",
I/flutter ( 9202): ║                         "address": "[object Object]",
I/flutter ( 9202): ║                         "phone": "",
I/flutter ( 9202): ║                         "city": "",
I/flutter ( 9202): ║                         "district": "",
I/flutter ( 9202): ║                         "workingHours": "",
I/flutter ( 9202): ║                         "latitude": null,
I/flutter ( 9202): ║                         "longitude": null,
I/flutter ( 9202): ║                         "mapUrl": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "fulfillmentSummary": {
I/flutter ( 9202): ║                         "mode": "pickup",
I/flutter ( 9202): ║                         "title": "الاستلام من الفرع",
I/flutter ( 9202): ║                         "status": "open",
I/flutter ( 9202): ║                         "statusLabel": "مفتوح",
I/flutter ( 9202): ║                         "message": "راجع اختيارات اليوم واطلب التجهيز عندما تكون جاهزا"
I/flutter ( 9202): ║                         "nextAction": "",
I/flutter ( 9202): ║                         "isEditable": true,
I/flutter ( 9202): ║                         "isFulfillable": false,
I/flutter ( 9202): ║                         "planningReady": false,
I/flutter ( 9202): ║                         "fulfillmentReady": false,
I/flutter ( 9202): ║                         "lockedReason": null,
I/flutter ( 9202): ║                         "lockedMessage": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "lockedReason": null,
I/flutter ( 9202): ║                     "lockedMessage": null,
I/flutter ( 9202): ║                     "selectedMealIds": []
I/flutter ( 9202): ║                     "mealSlots": []
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "date": "2026-06-03",
I/flutter ( 9202): ║                     "day": "الأربعاء",
I/flutter ( 9202): ║                     "month": "يونيو",
I/flutter ( 9202): ║                     "dayNumber": 3,
I/flutter ( 9202): ║                     "deliveryMode": "pickup",
I/flutter ( 9202): ║                     "status": "open",
I/flutter ( 9202): ║                     "statusLabel": "مفتوح",
I/flutter ( 9202): ║                     "isPast": false,
I/flutter ( 9202): ║                     "autoSettled": false,
I/flutter ( 9202): ║                     "settledAt": null,
I/flutter ( 9202): ║                     "settlementReason": null,
I/flutter ( 9202): ║                     "consumedByPolicy": false,
I/flutter ( 9202): ║                     "selectedMeals": 0,
I/flutter ( 9202): ║                     "requiredMeals": 1,
I/flutter ( 9202): ║                     "commercialState": "draft",
I/flutter ( 9202): ║                     "commercialStateLabel": "مسودة",
I/flutter ( 9202): ║                     "isFulfillable": false,
I/flutter ( 9202): ║                     "canBePrepared": false,
I/flutter ( 9202): ║                     "paymentRequirement": {
I/flutter ( 9202): ║                         "status": "satisfied",
I/flutter ( 9202): ║                         "requiresPayment": false,
I/flutter ( 9202): ║                         "pricingStatus": "not_required",
I/flutter ( 9202): ║                         "blockingReason": "PLANNING_INCOMPLETE",
I/flutter ( 9202): ║                         "canCreatePayment": false,
I/flutter ( 9202): ║                         "premiumSelectedCount": 0,
I/flutter ( 9202): ║                         "premiumPendingPaymentCount": 0,
I/flutter ( 9202): ║                         "addonSelectedCount": 0,
I/flutter ( 9202): ║                         "addonPendingPaymentCount": 0,
I/flutter ( 9202): ║                         "pendingAmountHalala": 0,
I/flutter ( 9202): ║                         "amountHalala": 0,
I/flutter ( 9202): ║                         "currency": "SAR",
I/flutter ( 9202): ║                         "pricingStatusLabel": "غير مطلوب",
I/flutter ( 9202): ║                         "blockingReasonLabel": ""
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "fulfillmentMode": "no_service",
I/flutter ( 9202): ║                     "consumptionState": "pending_day",
I/flutter ( 9202): ║                     "requiredMealCount": 1,
I/flutter ( 9202): ║                     "specifiedMealCount": 0,
I/flutter ( 9202): ║                     "unspecifiedMealCount": 1,
I/flutter ( 9202): ║                     "hasCustomerSelections": false,
I/flutter ( 9202): ║                     "requiresMealTypeKnowledge": false,
I/flutter ( 9202): ║                     "planningReady": false,
I/flutter ( 9202): ║                     "fulfillmentReady": false,
I/flutter ( 9202): ║                     "deliveryWindow": null,
I/flutter ( 9202): ║                     "deliveryAddress": null,
I/flutter ( 9202): ║                     "pickupLocation": {
I/flutter ( 9202): ║                         "id": "main",
I/flutter ( 9202): ║                         "name": "[object Object]",
I/flutter ( 9202): ║                         "address": "[object Object]",
I/flutter ( 9202): ║                         "phone": "",
I/flutter ( 9202): ║                         "city": "",
I/flutter ( 9202): ║                         "district": "",
I/flutter ( 9202): ║                         "workingHours": "",
I/flutter ( 9202): ║                         "latitude": null,
I/flutter ( 9202): ║                         "longitude": null,
I/flutter ( 9202): ║                         "mapUrl": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "fulfillmentSummary": {
I/flutter ( 9202): ║                         "mode": "pickup",
I/flutter ( 9202): ║                         "title": "الاستلام من الفرع",
I/flutter ( 9202): ║                         "status": "open",
I/flutter ( 9202): ║                         "statusLabel": "مفتوح",
I/flutter ( 9202): ║                         "message": "راجع اختيارات اليوم واطلب التجهيز عندما تكون جاهزا"
I/flutter ( 9202): ║                         "nextAction": "",
I/flutter ( 9202): ║                         "isEditable": true,
I/flutter ( 9202): ║                         "isFulfillable": false,
I/flutter ( 9202): ║                         "planningReady": false,
I/flutter ( 9202): ║                         "fulfillmentReady": false,
I/flutter ( 9202): ║                         "lockedReason": null,
I/flutter ( 9202): ║                         "lockedMessage": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "lockedReason": null,
I/flutter ( 9202): ║                     "lockedMessage": null,
I/flutter ( 9202): ║                     "selectedMealIds": []
I/flutter ( 9202): ║                     "mealSlots": []
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "date": "2026-06-04",
I/flutter ( 9202): ║                     "day": "الخميس",
I/flutter ( 9202): ║                     "month": "يونيو",
I/flutter ( 9202): ║                     "dayNumber": 4,
I/flutter ( 9202): ║                     "deliveryMode": "pickup",
I/flutter ( 9202): ║                     "status": "open",
I/flutter ( 9202): ║                     "statusLabel": "مفتوح",
I/flutter ( 9202): ║                     "isPast": false,
I/flutter ( 9202): ║                     "autoSettled": false,
I/flutter ( 9202): ║                     "settledAt": null,
I/flutter ( 9202): ║                     "settlementReason": null,
I/flutter ( 9202): ║                     "consumedByPolicy": false,
I/flutter ( 9202): ║                     "selectedMeals": 0,
I/flutter ( 9202): ║                     "requiredMeals": 1,
I/flutter ( 9202): ║                     "commercialState": "draft",
I/flutter ( 9202): ║                     "commercialStateLabel": "مسودة",
I/flutter ( 9202): ║                     "isFulfillable": false,
I/flutter ( 9202): ║                     "canBePrepared": false,
I/flutter ( 9202): ║                     "paymentRequirement": {
I/flutter ( 9202): ║                         "status": "satisfied",
I/flutter ( 9202): ║                         "requiresPayment": false,
I/flutter ( 9202): ║                         "pricingStatus": "not_required",
I/flutter ( 9202): ║                         "blockingReason": "PLANNING_INCOMPLETE",
I/flutter ( 9202): ║                         "canCreatePayment": false,
I/flutter ( 9202): ║                         "premiumSelectedCount": 0,
I/flutter ( 9202): ║                         "premiumPendingPaymentCount": 0,
I/flutter ( 9202): ║                         "addonSelectedCount": 0,
I/flutter ( 9202): ║                         "addonPendingPaymentCount": 0,
I/flutter ( 9202): ║                         "pendingAmountHalala": 0,
I/flutter ( 9202): ║                         "amountHalala": 0,
I/flutter ( 9202): ║                         "currency": "SAR",
I/flutter ( 9202): ║                         "pricingStatusLabel": "غير مطلوب",
I/flutter ( 9202): ║                         "blockingReasonLabel": ""
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "fulfillmentMode": "no_service",
I/flutter ( 9202): ║                     "consumptionState": "pending_day",
I/flutter ( 9202): ║                     "requiredMealCount": 1,
I/flutter ( 9202): ║                     "specifiedMealCount": 0,
I/flutter ( 9202): ║                     "unspecifiedMealCount": 1,
I/flutter ( 9202): ║                     "hasCustomerSelections": false,
I/flutter ( 9202): ║                     "requiresMealTypeKnowledge": false,
I/flutter ( 9202): ║                     "planningReady": false,
I/flutter ( 9202): ║                     "fulfillmentReady": false,
I/flutter ( 9202): ║                     "deliveryWindow": null,
I/flutter ( 9202): ║                     "deliveryAddress": null,
I/flutter ( 9202): ║                     "pickupLocation": {
I/flutter ( 9202): ║                         "id": "main",
I/flutter ( 9202): ║                         "name": "[object Object]",
I/flutter ( 9202): ║                         "address": "[object Object]",
I/flutter ( 9202): ║                         "phone": "",
I/flutter ( 9202): ║                         "city": "",
I/flutter ( 9202): ║                         "district": "",
I/flutter ( 9202): ║                         "workingHours": "",
I/flutter ( 9202): ║                         "latitude": null,
I/flutter ( 9202): ║                         "longitude": null,
I/flutter ( 9202): ║                         "mapUrl": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "fulfillmentSummary": {
I/flutter ( 9202): ║                         "mode": "pickup",
I/flutter ( 9202): ║                         "title": "الاستلام من الفرع",
I/flutter ( 9202): ║                         "status": "open",
I/flutter ( 9202): ║                         "statusLabel": "مفتوح",
I/flutter ( 9202): ║                         "message": "راجع اختيارات اليوم واطلب التجهيز عندما تكون جاهزا"
I/flutter ( 9202): ║                         "nextAction": "",
I/flutter ( 9202): ║                         "isEditable": true,
I/flutter ( 9202): ║                         "isFulfillable": false,
I/flutter ( 9202): ║                         "planningReady": false,
I/flutter ( 9202): ║                         "fulfillmentReady": false,
I/flutter ( 9202): ║                         "lockedReason": null,
I/flutter ( 9202): ║                         "lockedMessage": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "lockedReason": null,
I/flutter ( 9202): ║                     "lockedMessage": null,
I/flutter ( 9202): ║                     "selectedMealIds": []
I/flutter ( 9202): ║                     "mealSlots": []
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ]
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): onChange -- PlansBloc, Change { currentState: PlansLoading(null, null), nextState: CurrentSubscriptionOverviewLoaded(Instance of 'CurrentSubscriptionOverviewModel', Instance of 'TimelineDayModel') }
I/flutter ( 9202): onChange -- FulfillmentStatusCubit, Change { currentState: FulfillmentStatusState(FulfillmentStatusStateStatus.initial, null, null, false), nextState: FulfillmentStatusState(FulfillmentStatusStateStatus.loading, null, null, false) }
I/flutter ( 9202): onCreate -- PickupStatusCubit
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ GET
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/6a19c41387785860771917e7/days/2026-05-30/fulfillment/status
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ GET
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/6a19c41387785860771917e7/days/2026-05-30/pickup/status
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 568 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/6a19c41387785860771917e7/days/2026-05-30/fulfillment/status
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:02:21 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef671ce14e1d8-MRS]
I/flutter ( 9202): ╟ etag: [W/"4bf-wqiNrVN97CM+Xsv3MKlbkwAhCk0"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ rndr-id: [d8faac6b-3db8-42df]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "subscriptionId": "6a19c41387785860771917e7",
I/flutter ( 9202): ║             "date": "2026-05-30",
I/flutter ( 9202): ║             "deliveryMode": "pickup",
I/flutter ( 9202): ║             "status": "open",
I/flutter ( 9202): ║             "statusLabel": "مفتوح",
I/flutter ( 9202): ║             "message": "راجع اختيارات اليوم واطلب التجهيز عندما تكون جاهزا",
I/flutter ( 9202): ║             "nextAction": "",
I/flutter ( 9202): ║             "isTerminal": false,
I/flutter ( 9202): ║             "pollingIntervalSeconds": 60,
I/flutter ( 9202): ║             "lastUpdatedAt": "2026-05-29T17:15:47.184Z",
I/flutter ( 9202): ║             "fulfillmentSummary": {
I/flutter ( 9202): ║                 "mode": "pickup",
I/flutter ( 9202): ║                 "title": "الاستلام من الفرع",
I/flutter ( 9202): ║                 "status": "open",
I/flutter ( 9202): ║                 "statusLabel": "مفتوح",
I/flutter ( 9202): ║                 "message": "راجع اختيارات اليوم واطلب التجهيز عندما تكون جاهزا",
I/flutter ( 9202): ║                 "nextAction": "",
I/flutter ( 9202): ║                 "isEditable": true,
I/flutter ( 9202): ║                 "isFulfillable": false,
I/flutter ( 9202): ║                 "planningReady": false,
I/flutter ( 9202): ║                 "fulfillmentReady": false,
I/flutter ( 9202): ║                 "lockedReason": null,
I/flutter ( 9202): ║                 "lockedMessage": null
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "deliveryAddress": null,
I/flutter ( 9202): ║             "deliveryWindow": null,
I/flutter ( 9202): ║             "deliverySlot": {type: pickup, slotId: , window: , label: },
I/flutter ( 9202): ║             "pickupLocation": {
I/flutter ( 9202): ║                 "id": "main",
I/flutter ( 9202): ║                 "name": "[object Object]",
I/flutter ( 9202): ║                 "address": "[object Object]",
I/flutter ( 9202): ║                 "phone": "",
I/flutter ( 9202): ║                 "city": "",
I/flutter ( 9202): ║                 "district": "",
I/flutter ( 9202): ║                 "workingHours": "",
I/flutter ( 9202): ║                 "latitude": null,
I/flutter ( 9202): ║                 "longitude": null,
I/flutter ( 9202): ║                 "mapUrl": null
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "lockedReason": null,
I/flutter ( 9202): ║             "lockedMessage": null,
I/flutter ( 9202): ║             "pickupCode": null,
I/flutter ( 9202): ║             "pickupCodeIssuedAt": null,
I/flutter ( 9202): ║             "planningReady": false,
I/flutter ( 9202): ║             "fulfillmentReady": false,
I/flutter ( 9202): ║             "isFulfillable": false,
I/flutter ( 9202): ║             "canBePrepared": false
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): onChange -- FulfillmentStatusCubit, Change { currentState: FulfillmentStatusState(FulfillmentStatusStateStatus.loading, null, null, false), nextState: FulfillmentStatusState(FulfillmentStatusStateStatus.success, FulfillmentStatusModel(6a19c41387785860771917e7, 2026-05-30, pickup, open, مفتوح, , , , , Instance of 'FulfillmentSummaryModel', Instance of 'PickupLocationSummaryModel', null, null, null, false, 2026-05-29 20:15:47.184, 60), null, false) }
I/flutter ( 9202): onChange -- FulfillmentStatusCubit, Change { currentState: FulfillmentStatusState(FulfillmentStatusStateStatus.success, FulfillmentStatusModel(6a19c41387785860771917e7, 2026-05-30, pickup, open, مفتوح, , , , , Instance of 'FulfillmentSummaryModel', Instance of 'PickupLocationSummaryModel', null, null, null, false, 2026-05-29 20:15:47.184, 60), null, false), nextState: FulfillmentStatusState(FulfillmentStatusStateStatus.success, FulfillmentStatusModel(6a19c41387785860771917e7, 2026-05-30, pickup, open, مفتوح, , , , , Instance of 'FulfillmentSummaryModel', Instance of 'PickupLocationSummaryModel', null, null, null, false, 2026-05-29 20:15:47.184, 60), null, true) }
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 699 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/6a19c41387785860771917e7/days/2026-05-30/pickup/status
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:02:21 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef6727fc3e208-MRS]
I/flutter ( 9202): ╟ etag: [W/"560-NOvfX5W8FGykmDO03MH/dAOVuXE"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ rndr-id: [0ff4ac8f-a37f-4942]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "subscriptionId": "6a19c41387785860771917e7",
I/flutter ( 9202): ║             "date": "2026-05-30",
I/flutter ( 9202): ║             "currentStep": 1,
I/flutter ( 9202): ║             "status": "open",
I/flutter ( 9202): ║             "statusLabel": "وجباتك غير مجهزة بعد",
I/flutter ( 9202): ║             "statusLabelAr": "وجباتك غير مجهزة بعد",
I/flutter ( 9202): ║             "statusLabelEn": "Your meals are not prepared yet",
I/flutter ( 9202): ║             "message": "راجع اختياراتك لبدء التجهيز.",
I/flutter ( 9202): ║             "messageAr": "راجع اختياراتك لبدء التجهيز.",
I/flutter ( 9202): ║             "messageEn": "Review your selection to start preparation.",
I/flutter ( 9202): ║             "canModify": true,
I/flutter ( 9202): ║             "isReady": false,
I/flutter ( 9202): ║             "isCompleted": false,
I/flutter ( 9202): ║             "pickupRequested": false,
I/flutter ( 9202): ║             "pickupPrepared": false,
I/flutter ( 9202): ║             "pickupPreparationFlowStatus": "waiting_for_prepare",
I/flutter ( 9202): ║             "consumptionState": "consumable_today",
I/flutter ( 9202): ║             "fulfillmentMode": "customer_selected",
I/flutter ( 9202): ║             "dayEndConsumptionReason": null,
I/flutter ( 9202): ║             "canRequestPrepare": false,
I/flutter ( 9202): ║             "requestBlockedReason": "INVALID_STATE",
I/flutter ( 9202): ║             "requestBlockedMessage": "تجهيز الاستلام غير متاح لهذا اليوم",
I/flutter ( 9202): ║             "requestBlockedMessageAr": "تجهيز الاستلام غير متاح لهذا اليوم",
I/flutter ( 9202): ║             "requestBlockedMessageEn": "Pickup preparation is not available for this day",
I/flutter ( 9202): ║             "pickupLocation": {
I/flutter ( 9202): ║                 "id": "main",
I/flutter ( 9202): ║                 "name": "[object Object]",
I/flutter ( 9202): ║                 "address": "[object Object]",
I/flutter ( 9202): ║                 "phone": "",
I/flutter ( 9202): ║                 "city": "",
I/flutter ( 9202): ║                 "district": "",
I/flutter ( 9202): ║                 "workingHours": "",
I/flutter ( 9202): ║                 "latitude": null,
I/flutter ( 9202): ║                 "longitude": null,
I/flutter ( 9202): ║                 "mapUrl": null
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "restaurantHours": {openTime: 00:00, closeTime: 23:59, isOpenNow: true},
I/flutter ( 9202): ║             "pickupCode": null,
I/flutter ( 9202): ║             "pickupCodeIssuedAt": null,
I/flutter ( 9202): ║             "fulfilledAt": null
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): onChange -- PickupStatusCubit, Change { currentState: PickupStatusInitial(), nextState: PickupStatusLoaded(open, null) }
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/flutter ( 9202): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingSuccess(Instance of 'OrderModel', Instance of 'OrderTimelineModel'), nextState: OrderTrackingRefreshing(Instance of 'OrderModel', Instance of 'OrderTimelineModel') }
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ GET
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 559 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:02:24 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef6851caee208-MRS]
I/flutter ( 9202): ╟ etag: [W/"1036-VS3kx2U23+609sfingsdoMMMtSk"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ rndr-id: [074334cc-14b3-45d5]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "id": "6a1b09cd8e060b5e369a8f61",
I/flutter ( 9202): ║             "orderId": "6a1b09cd8e060b5e369a8f61",
I/flutter ( 9202): ║             "orderNumber": "ORD-369A8F60",
I/flutter ( 9202): ║             "source": "one_time_order",
I/flutter ( 9202): ║             "status": "confirmed",
I/flutter ( 9202): ║             "paymentStatus": "paid",
I/flutter ( 9202): ║             "allowedActions": []
I/flutter ( 9202): ║             "timeline_endpoint": "/api/orders/6a1b09cd8e060b5e369a8f61/timeline",
I/flutter ( 9202): ║             "cancelled_by": null,
I/flutter ( 9202): ║             "cancellation_reason": null,
I/flutter ( 9202): ║             "cancellation_source": null,
I/flutter ( 9202): ║             "cancelled_at": null,
I/flutter ( 9202): ║             "expiresAt": null,
I/flutter ( 9202): ║             "fulfillmentMethod": "pickup",
I/flutter ( 9202): ║             "fulfillmentDate": "2026-05-30",
I/flutter ( 9202): ║             "requestedFulfillmentDate": "2026-05-30",
I/flutter ( 9202): ║             "items": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "itemType": "basic_salad",
I/flutter ( 9202): ║                     "catalogRef": {model: MenuProduct, id: 6a19c0226864369ee0a8c0de},
I/flutter ( 9202): ║                     "name": {ar: سلطة بيسك, en: Basic Salad},
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 8700,
I/flutter ( 9202): ║                     "lineTotalHalala": 8700,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "selections": {
I/flutter ( 9202): ║                         "salad": {
I/flutter ( 9202): ║                             "ingredients": []
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                         "proteinName": {ar: , en: },
I/flutter ( 9202): ║                         "carbs": []
I/flutter ( 9202): ║                         "selectedOptions": [
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c0196864369ee0a8c0c4",
I/flutter ( 9202): ║                                 "groupName": {ar: ورقيات, en: Leafy Greens},
I/flutter ( 9202): ║                                 "optionId": "6a19c0196864369ee0a8c0c8",
I/flutter ( 9202): ║                                 "name": {ar: سبانخ, en: Spinach},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            },
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c0196864369ee0a8c0c4",
I/flutter ( 9202): ║                                 "groupName": {ar: ورقيات, en: Leafy Greens},
I/flutter ( 9202): ║                                 "optionId": "6a19c0196864369ee0a8c0c7",
I/flutter ( 9202): ║                                 "name": {ar: جرجير, en: Arugula},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            },
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c0166864369ee0a8c0b3",
I/flutter ( 9202): ║                                 "groupName": {ar: بروتينات, en: Proteins},
I/flutter ( 9202): ║                                 "optionId": "6a19c0176864369ee0a8c0b7",
I/flutter ( 9202): ║                                 "name": {ar: سمك, en: Fish},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            },
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c01c6864369ee0a8c0d7",
I/flutter ( 9202): ║                                 "groupName": {ar: الصوصات, en: Sauces},
I/flutter ( 9202): ║                                 "optionId": "6a19c01c6864369ee0a8c0da",
I/flutter ( 9202): ║                                 "name": {ar: ليمون وخردل, en: Lemon Mustard},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            }
I/flutter ( 9202): ║                         ]
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "nutrition": {},
I/flutter ( 9202): ║                     "productSnapshot": {
I/flutter ( 9202): ║                         "productId": "6a19c0226864369ee0a8c0de",
I/flutter ( 9202): ║                         "categoryId": "6a19c0156864369ee0a8c0ab",
I/flutter ( 9202): ║                         "categoryName": {ar: اطلب على مزاجك, en: Custom Order},
I/flutter ( 9202): ║                         "key": "basic_salad",
I/flutter ( 9202): ║                         "name": {ar: سلطة بيسك, en: Basic Salad},
I/flutter ( 9202): ║                         "itemType": "basic_salad",
I/flutter ( 9202): ║                         "pricingModel": "per_100g",
I/flutter ( 9202): ║                         "priceHalala": 2900,
I/flutter ( 9202): ║                         "baseUnitGrams": 100,
I/flutter ( 9202): ║                         "weightGrams": 300
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "itemType": "dessert",
I/flutter ( 9202): ║                     "catalogRef": {model: MenuProduct, id: 6a19c0386864369ee0a8c1f3},
I/flutter ( 9202): ║                     "name": {ar: تشيز كيك بالتوت, en: Berry Cheesecake},
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 1900,
I/flutter ( 9202): ║                     "lineTotalHalala": 1900,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "selections": {
I/flutter ( 9202): ║                         "salad": {
I/flutter ( 9202): ║                             "ingredients": []
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                         "proteinName": {ar: , en: },
I/flutter ( 9202): ║                         "carbs": []
I/flutter ( 9202): ║                         "selectedOptions": []
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "nutrition": {},
I/flutter ( 9202): ║                     "productSnapshot": {
I/flutter ( 9202): ║                         "productId": "6a19c0386864369ee0a8c1f3",
I/flutter ( 9202): ║                         "categoryId": "6a19c0166864369ee0a8c0af",
I/flutter ( 9202): ║                         "categoryName": {ar: الحلويات, en: Desserts},
I/flutter ( 9202): ║                         "key": "berry_cheesecake",
I/flutter ( 9202): ║                         "name": {ar: تشيز كيك بالتوت, en: Berry Cheesecake},
I/flutter ( 9202): ║                         "itemType": "dessert",
I/flutter ( 9202): ║                         "pricingModel": "fixed",
I/flutter ( 9202): ║                         "priceHalala": 1900,
I/flutter ( 9202): ║                         "baseUnitGrams": 100,
I/flutter ( 9202): ║                         "weightGrams": 0
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "itemType": "dessert",
I/flutter ( 9202): ║                     "catalogRef": {model: MenuProduct, id: 6a19c0386864369ee0a8c1f4},
I/flutter ( 9202): ║                     "name": {ar: براونيز داكن, en: Dark Brownies},
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 1300,
I/flutter ( 9202): ║                     "lineTotalHalala": 1300,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "selections": {
I/flutter ( 9202): ║                         "salad": {
I/flutter ( 9202): ║                             "ingredients": []
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                         "proteinName": {ar: , en: },
I/flutter ( 9202): ║                         "carbs": []
I/flutter ( 9202): ║                         "selectedOptions": []
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "nutrition": {},
I/flutter ( 9202): ║                     "productSnapshot": {
I/flutter ( 9202): ║                         "productId": "6a19c0386864369ee0a8c1f4",
I/flutter ( 9202): ║                         "categoryId": "6a19c0166864369ee0a8c0af",
I/flutter ( 9202): ║                         "categoryName": {ar: الحلويات, en: Desserts},
I/flutter ( 9202): ║                         "key": "dark_brownies",
I/flutter ( 9202): ║                         "name": {ar: براونيز داكن, en: Dark Brownies},
I/flutter ( 9202): ║                         "itemType": "dessert",
I/flutter ( 9202): ║                         "pricingModel": "fixed",
I/flutter ( 9202): ║                         "priceHalala": 1300,
I/flutter ( 9202): ║                         "baseUnitGrams": 100,
I/flutter ( 9202): ║                         "weightGrams": 0
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "pricing": {
I/flutter ( 9202): ║                 "subtotalHalala": 11900,
I/flutter ( 9202): ║                 "deliveryFeeHalala": 0,
I/flutter ( 9202): ║                 "discountHalala": 0,
I/flutter ( 9202): ║                 "totalHalala": 11900,
I/flutter ( 9202): ║                 "vatPercentage": 16,
I/flutter ( 9202): ║                 "vatHalala": 1641,
I/flutter ( 9202): ║                 "vatIncluded": true,
I/flutter ( 9202): ║                 "currency": "SAR"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "pickup": {
I/flutter ( 9202): ║                 "branchId": "main",
I/flutter ( 9202): ║                 "pickupWindow": "18:00-20:00",
I/flutter ( 9202): ║                 "branchName": {ar: , en: },
I/flutter ( 9202): ║                 "pickupCode": null,
I/flutter ( 9202): ║                 "pickupCodeIssuedAt": null,
I/flutter ( 9202): ║                 "pickupVerifiedAt": null
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "createdAt": "2026-05-30T16:01:18.052Z",
I/flutter ( 9202): ║             "updatedAt": "2026-05-30T16:01:43.056Z"
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ GET
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61/timeline
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 368 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61/timeline
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:02:24 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef6877a61e208-MRS]
I/flutter ( 9202): ╟ etag: [W/"300-s0mUrNnipiNw5O9miV03dPeMkfU"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ rndr-id: [e04acaeb-cf29-48bb]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "order_id": "6a1b09cd8e060b5e369a8f61",
I/flutter ( 9202): ║             "current_status": "confirmed",
I/flutter ( 9202): ║             "timeline": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "order_created",
I/flutter ( 9202): ║                     "label_ar": "تم إنشاء الطلب",
I/flutter ( 9202): ║                     "label_en": "Order Created",
I/flutter ( 9202): ║                     "state": "completed",
I/flutter ( 9202): ║                     "time": "2026-05-30T16:01:18.052Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "payment_confirmed",
I/flutter ( 9202): ║                     "label_ar": "تم تأكيد الطلب",
I/flutter ( 9202): ║                     "label_en": "Payment Confirmed",
I/flutter ( 9202): ║                     "state": "active",
I/flutter ( 9202): ║                     "time": "2026-05-30T16:01:42.857Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "preparing",
I/flutter ( 9202): ║                     "label_ar": "جاري تجهيز الطلب",
I/flutter ( 9202): ║                     "label_en": "Preparing",
I/flutter ( 9202): ║                     "state": "pending",
I/flutter ( 9202): ║                     "time": null
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "ready_for_pickup",
I/flutter ( 9202): ║                     "label_ar": "الطلب جاهز للاستلام",
I/flutter ( 9202): ║                     "label_en": "Ready for Pickup",
I/flutter ( 9202): ║                     "state": "pending",
I/flutter ( 9202): ║                     "time": null
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "fulfilled",
I/flutter ( 9202): ║                     "label_ar": "تم استلام الطلب",
I/flutter ( 9202): ║                     "label_en": "Picked Up",
I/flutter ( 9202): ║                     "state": "pending",
I/flutter ( 9202): ║                     "time": null
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ]
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingRefreshing(Instance of 'OrderModel', Instance of 'OrderTimelineModel'), nextState: OrderTrackingSuccess(Instance of 'OrderModel', Instance of 'OrderTimelineModel') }
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/flutter ( 9202): onCreate -- TimelineBloc
I/flutter ( 9202): onChange -- TimelineBloc, Change { currentState: TimelineInitial(), nextState: TimelineLoading() }
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ GET
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/6a19c41387785860771917e7/timeline
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 687 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/6a19c41387785860771917e7/timeline
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:02:26 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef68d28c2e208-MRS]
I/flutter ( 9202): ╟ etag: [W/"3d76-JebfD9wH+c17Gq5YEJu8fbblA9E"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ rndr-id: [aa08ca89-bb12-43e0]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "subscriptionId": "6a19c41387785860771917e7",
I/flutter ( 9202): ║             "dailyMealsRequired": 1,
I/flutter ( 9202): ║             "premiumMealsRemaining": 1,
I/flutter ( 9202): ║             "premiumMealsSelected": 5,
I/flutter ( 9202): ║             "premiumBalanceBreakdown": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "proteinId": "6a19c0186864369ee0a8c0bc",
I/flutter ( 9202): ║                     "premiumKey": "salmon",
I/flutter ( 9202): ║                     "purchasedQty": 1,
I/flutter ( 9202): ║                     "remainingQty": 1,
I/flutter ( 9202): ║                     "unitExtraFeeHalala": 2000,
I/flutter ( 9202): ║                     "currency": "SAR"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "proteinId": null,
I/flutter ( 9202): ║                     "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                     "purchasedQty": 1,
I/flutter ( 9202): ║                     "remainingQty": 0,
I/flutter ( 9202): ║                     "unitExtraFeeHalala": 2900,
I/flutter ( 9202): ║                     "currency": "SAR"
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "days": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "date": "2026-05-29",
I/flutter ( 9202): ║                     "day": "الجمعة",
I/flutter ( 9202): ║                     "month": "مايو",
I/flutter ( 9202): ║                     "dayNumber": 29,
I/flutter ( 9202): ║                     "deliveryMode": "pickup",
I/flutter ( 9202): ║                     "status": "planned",
I/flutter ( 9202): ║                     "statusLabel": "مخطط له",
I/flutter ( 9202): ║                     "isPast": true,
I/flutter ( 9202): ║                     "autoSettled": false,
I/flutter ( 9202): ║                     "settledAt": null,
I/flutter ( 9202): ║                     "settlementReason": null,
I/flutter ( 9202): ║                     "consumedByPolicy": false,
I/flutter ( 9202): ║                     "selectedMeals": 2,
I/flutter ( 9202): ║                     "requiredMeals": 1,
I/flutter ( 9202): ║                     "commercialState": "confirmed",
I/flutter ( 9202): ║                     "commercialStateLabel": "مؤكد",
I/flutter ( 9202): ║                     "isFulfillable": true,
I/flutter ( 9202): ║                     "canBePrepared": true,
I/flutter ( 9202): ║                     "paymentRequirement": {
I/flutter ( 9202): ║                         "status": "satisfied",
I/flutter ( 9202): ║                         "requiresPayment": false,
I/flutter ( 9202): ║                         "pricingStatus": "not_required",
I/flutter ( 9202): ║                         "blockingReason": null,
I/flutter ( 9202): ║                         "canCreatePayment": false,
I/flutter ( 9202): ║                         "premiumSelectedCount": 2,
I/flutter ( 9202): ║                         "premiumPendingPaymentCount": 0,
I/flutter ( 9202): ║                         "addonSelectedCount": 2,
I/flutter ( 9202): ║                         "addonPendingPaymentCount": 0,
I/flutter ( 9202): ║                         "pendingAmountHalala": 0,
I/flutter ( 9202): ║                         "amountHalala": 0,
I/flutter ( 9202): ║                         "currency": "SAR",
I/flutter ( 9202): ║                         "pricingStatusLabel": "غير مطلوب",
I/flutter ( 9202): ║                         "blockingReasonLabel": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "fulfillmentMode": "customer_selected",
I/flutter ( 9202): ║                     "consumptionState": "pending_day",
I/flutter ( 9202): ║                     "requiredMealCount": 1,
I/flutter ( 9202): ║                     "specifiedMealCount": 1,
I/flutter ( 9202): ║                     "unspecifiedMealCount": 0,
I/flutter ( 9202): ║                     "hasCustomerSelections": true,
I/flutter ( 9202): ║                     "requiresMealTypeKnowledge": true,
I/flutter ( 9202): ║                     "planningReady": true,
I/flutter ( 9202): ║                     "fulfillmentReady": false,
I/flutter ( 9202): ║                     "deliveryWindow": null,
I/flutter ( 9202): ║                     "deliveryAddress": null,
I/flutter ( 9202): ║                     "pickupLocation": {
I/flutter ( 9202): ║                         "id": "main",
I/flutter ( 9202): ║                         "name": "[object Object]",
I/flutter ( 9202): ║                         "address": "[object Object]",
I/flutter ( 9202): ║                         "phone": "",
I/flutter ( 9202): ║                         "city": "",
I/flutter ( 9202): ║                         "district": "",
I/flutter ( 9202): ║                         "workingHours": "",
I/flutter ( 9202): ║                         "latitude": null,
I/flutter ( 9202): ║                         "longitude": null,
I/flutter ( 9202): ║                         "mapUrl": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "fulfillmentSummary": {
I/flutter ( 9202): ║                         "mode": "pickup",
I/flutter ( 9202): ║                         "title": "الاستلام من الفرع",
I/flutter ( 9202): ║                         "status": "open",
I/flutter ( 9202): ║                         "statusLabel": "مخطط له",
I/flutter ( 9202): ║                         "message": "راجع اختيارات اليوم واطلب التجهيز عندما تكون جاهزا"
I/flutter ( 9202): ║                         "nextAction": "",
I/flutter ( 9202): ║                         "isEditable": true,
I/flutter ( 9202): ║                         "isFulfillable": true,
I/flutter ( 9202): ║                         "planningReady": true,
I/flutter ( 9202): ║                         "fulfillmentReady": false,
I/flutter ( 9202): ║                         "lockedReason": null,
I/flutter ( 9202): ║                         "lockedMessage": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "lockedReason": null,
I/flutter ( 9202): ║                     "lockedMessage": null,
I/flutter ( 9202): ║                     "selectedMealIds": [6a19c0176864369ee0a8c0b9, 6a19bd7b0f6ac4f0db96ecc6]
I/flutter ( 9202): ║                     "mealSlots": [
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "slotIndex": 1,
I/flutter ( 9202): ║                             "slotKey": "slot_1",
I/flutter ( 9202): ║                             "status": "complete",
I/flutter ( 9202): ║                             "selectionType": "premium_large_salad",
I/flutter ( 9202): ║                             "proteinId": "6a19c0176864369ee0a8c0b9",
I/flutter ( 9202): ║                             "carbs": []
I/flutter ( 9202): ║                             "sandwichId": null,
I/flutter ( 9202): ║                             "salad": {
I/flutter ( 9202): ║                                 "presetKey": "premium_large_salad",
I/flutter ( 9202): ║                                 "groups": {
I/flutter ( 9202): ║                                     "leafy_greens": []
I/flutter ( 9202): ║                                     "vegetables": []
I/flutter ( 9202): ║                                     "protein": [6a19c0176864369ee0a8c0b9]
I/flutter ( 9202): ║                                     "cheese_nuts": []
I/flutter ( 9202): ║                                     "fruits": []
I/flutter ( 9202): ║                                     "sauce": [6a19c01c6864369ee0a8c0da]
I/flutter ( 9202): ║                                }
I/flutter ( 9202): ║                            }
I/flutter ( 9202): ║                             "isPremium": true,
I/flutter ( 9202): ║                             "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                             "premiumSource": "balance",
I/flutter ( 9202): ║                             "premiumExtraFeeHalala": 0
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "slotIndex": 2,
I/flutter ( 9202): ║                             "slotKey": "slot_2",
I/flutter ( 9202): ║                             "status": "complete",
I/flutter ( 9202): ║                             "selectionType": "premium_meal",
I/flutter ( 9202): ║                             "proteinId": "6a19bd7b0f6ac4f0db96ecc6",
I/flutter ( 9202): ║                             "carbs": [{carbId: 6a19c0196864369ee0a8c0c2, grams: 150}]
I/flutter ( 9202): ║                             "sandwichId": null,
I/flutter ( 9202): ║                             "salad": null,
I/flutter ( 9202): ║                             "isPremium": true,
I/flutter ( 9202): ║                             "premiumKey": "shrimp",
I/flutter ( 9202): ║                             "premiumSource": "paid_extra",
I/flutter ( 9202): ║                             "premiumExtraFeeHalala": 2000
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                     ]
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "date": "2026-05-30",
I/flutter ( 9202): ║                     "day": "السبت",
I/flutter ( 9202): ║                     "month": "مايو",
I/flutter ( 9202): ║                     "dayNumber": 30,
I/flutter ( 9202): ║                     "deliveryMode": "pickup",
I/flutter ( 9202): ║                     "status": "planned",
I/flutter ( 9202): ║                     "statusLabel": "مخطط له",
I/flutter ( 9202): ║                     "isPast": false,
I/flutter ( 9202): ║                     "autoSettled": false,
I/flutter ( 9202): ║                     "settledAt": null,
I/flutter ( 9202): ║                     "settlementReason": null,
I/flutter ( 9202): ║                     "consumedByPolicy": false,
I/flutter ( 9202): ║                     "selectedMeals": 2,
I/flutter ( 9202): ║                     "requiredMeals": 1,
I/flutter ( 9202): ║                     "commercialState": "payment_required",
I/flutter ( 9202): ║                     "commercialStateLabel": "الدفع مطلوب",
I/flutter ( 9202): ║                     "isFulfillable": false,
I/flutter ( 9202): ║                     "canBePrepared": false,
I/flutter ( 9202): ║                     "paymentRequirement": {
I/flutter ( 9202): ║                         "status": "priced",
I/flutter ( 9202): ║                         "requiresPayment": true,
I/flutter ( 9202): ║                         "pricingStatus": "priced",
I/flutter ( 9202): ║                         "blockingReason": "PREMIUM_PAYMENT_REQUIRED",
I/flutter ( 9202): ║                         "canCreatePayment": true,
I/flutter ( 9202): ║                         "premiumSelectedCount": 1,
I/flutter ( 9202): ║                         "premiumPendingPaymentCount": 1,
I/flutter ( 9202): ║                         "addonSelectedCount": 2,
I/flutter ( 9202): ║                         "addonPendingPaymentCount": 1,
I/flutter ( 9202): ║                         "pendingAmountHalala": 4000,
I/flutter ( 9202): ║                         "amountHalala": 4000,
I/flutter ( 9202): ║                         "currency": "SAR",
I/flutter ( 9202): ║                         "pricingStatusLabel": "مسعر",
I/flutter ( 9202): ║                         "blockingReasonLabel": ""
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "fulfillmentMode": "customer_selected",
I/flutter ( 9202): ║                     "consumptionState": "consumable_today",
I/flutter ( 9202): ║                     "requiredMealCount": 1,
I/flutter ( 9202): ║                     "specifiedMealCount": 1,
I/flutter ( 9202): ║                     "unspecifiedMealCount": 0,
I/flutter ( 9202): ║                     "hasCustomerSelections": true,
I/flutter ( 9202): ║                     "requiresMealTypeKnowledge": true,
I/flutter ( 9202): ║                     "planningReady": false,
I/flutter ( 9202): ║                     "fulfillmentReady": false,
I/flutter ( 9202): ║                     "deliveryWindow": null,
I/flutter ( 9202): ║                     "deliveryAddress": null,
I/flutter ( 9202): ║                     "pickupLocation": {
I/flutter ( 9202): ║                         "id": "main",
I/flutter ( 9202): ║                         "name": "[object Object]",
I/flutter ( 9202): ║                         "address": "[object Object]",
I/flutter ( 9202): ║                         "phone": "",
I/flutter ( 9202): ║                         "city": "",
I/flutter ( 9202): ║                         "district": "",
I/flutter ( 9202): ║                         "workingHours": "",
I/flutter ( 9202): ║                         "latitude": null,
I/flutter ( 9202): ║                         "longitude": null,
I/flutter ( 9202): ║                         "mapUrl": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "fulfillmentSummary": {
I/flutter ( 9202): ║                         "mode": "pickup",
I/flutter ( 9202): ║                         "title": "الاستلام من الفرع",
I/flutter ( 9202): ║                         "status": "open",
I/flutter ( 9202): ║                         "statusLabel": "مخطط له",
I/flutter ( 9202): ║                         "message": "راجع اختيارات اليوم واطلب التجهيز عندما تكون جاهزا"
I/flutter ( 9202): ║                         "nextAction": "",
I/flutter ( 9202): ║                         "isEditable": true,
I/flutter ( 9202): ║                         "isFulfillable": false,
I/flutter ( 9202): ║                         "planningReady": false,
I/flutter ( 9202): ║                         "fulfillmentReady": false,
I/flutter ( 9202): ║                         "lockedReason": null,
I/flutter ( 9202): ║                         "lockedMessage": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "lockedReason": null,
I/flutter ( 9202): ║                     "lockedMessage": null,
I/flutter ( 9202): ║                     "selectedMealIds": [6a19c0176864369ee0a8c0b7, 6a19c0176864369ee0a8c0ba]
I/flutter ( 9202): ║                     "mealSlots": [
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "slotIndex": 1,
I/flutter ( 9202): ║                             "slotKey": "slot_1",
I/flutter ( 9202): ║                             "status": "complete",
I/flutter ( 9202): ║                             "selectionType": "premium_large_salad",
I/flutter ( 9202): ║                             "proteinId": "6a19c0176864369ee0a8c0b7",
I/flutter ( 9202): ║                             "carbs": []
I/flutter ( 9202): ║                             "sandwichId": null,
I/flutter ( 9202): ║                             "salad": {
I/flutter ( 9202): ║                                 "presetKey": "premium_large_salad",
I/flutter ( 9202): ║                                 "groups": {
I/flutter ( 9202): ║                                     "leafy_greens": []
I/flutter ( 9202): ║                                     "vegetables": []
I/flutter ( 9202): ║                                     "protein": [6a19c0176864369ee0a8c0b7]
I/flutter ( 9202): ║                                     "cheese_nuts": []
I/flutter ( 9202): ║                                     "fruits": []
I/flutter ( 9202): ║                                     "sauce": [6a19c01c6864369ee0a8c0da]
I/flutter ( 9202): ║                                }
I/flutter ( 9202): ║                            }
I/flutter ( 9202): ║                             "isPremium": true,
I/flutter ( 9202): ║                             "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                             "premiumSource": "pending_payment",
I/flutter ( 9202): ║                             "premiumExtraFeeHalala": 2900
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "slotIndex": 2,
I/flutter ( 9202): ║                             "slotKey": "slot_2",
I/flutter ( 9202): ║                             "status": "complete",
I/flutter ( 9202): ║                             "selectionType": "premium_meal",
I/flutter ( 9202): ║                             "proteinId": "6a19c0176864369ee0a8c0ba",
I/flutter ( 9202): ║                             "carbs": [{carbId: 6a19c0196864369ee0a8c0c2, grams: 150}]
I/flutter ( 9202): ║                             "sandwichId": null,
I/flutter ( 9202): ║                             "salad": null,
I/flutter ( 9202): ║                             "isPremium": false,
I/flutter ( 9202): ║                             "premiumKey": "beef_steak",
I/flutter ( 9202): ║                             "premiumSource": "none",
I/flutter ( 9202): ║                             "premiumExtraFeeHalala": 0
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                     ]
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "date": "2026-05-31",
I/flutter ( 9202): ║                     "day": "الأحد",
I/flutter ( 9202): ║                     "month": "مايو",
I/flutter ( 9202): ║                     "dayNumber": 31,
I/flutter ( 9202): ║                     "deliveryMode": "pickup",
I/flutter ( 9202): ║                     "status": "planned",
I/flutter ( 9202): ║                     "statusLabel": "مخطط له",
I/flutter ( 9202): ║                     "isPast": false,
I/flutter ( 9202): ║                     "autoSettled": false,
I/flutter ( 9202): ║                     "settledAt": null,
I/flutter ( 9202): ║                     "settlementReason": null,
I/flutter ( 9202): ║                     "consumedByPolicy": false,
I/flutter ( 9202): ║                     "selectedMeals": 2,
I/flutter ( 9202): ║                     "requiredMeals": 1,
I/flutter ( 9202): ║                     "commercialState": "confirmed",
I/flutter ( 9202): ║                     "commercialStateLabel": "مؤكد",
I/flutter ( 9202): ║                     "isFulfillable": true,
I/flutter ( 9202): ║                     "canBePrepared": true,
I/flutter ( 9202): ║                     "paymentRequirement": {
I/flutter ( 9202): ║                         "status": "satisfied",
I/flutter ( 9202): ║                         "requiresPayment": false,
I/flutter ( 9202): ║                         "pricingStatus": "not_required",
I/flutter ( 9202): ║                         "blockingReason": null,
I/flutter ( 9202): ║                         "canCreatePayment": false,
I/flutter ( 9202): ║                         "premiumSelectedCount": 1,
I/flutter ( 9202): ║                         "premiumPendingPaymentCount": 0,
I/flutter ( 9202): ║                         "addonSelectedCount": 3,
I/flutter ( 9202): ║                         "addonPendingPaymentCount": 0,
I/flutter ( 9202): ║                         "pendingAmountHalala": 0,
I/flutter ( 9202): ║                         "amountHalala": 0,
I/flutter ( 9202): ║                         "currency": "SAR",
I/flutter ( 9202): ║                         "pricingStatusLabel": "غير مطلوب",
I/flutter ( 9202): ║                         "blockingReasonLabel": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "fulfillmentMode": "customer_selected",
I/flutter ( 9202): ║                     "consumptionState": "pending_day",
I/flutter ( 9202): ║                     "requiredMealCount": 1,
I/flutter ( 9202): ║                     "specifiedMealCount": 1,
I/flutter ( 9202): ║                     "unspecifiedMealCount": 0,
I/flutter ( 9202): ║                     "hasCustomerSelections": true,
I/flutter ( 9202): ║                     "requiresMealTypeKnowledge": true,
I/flutter ( 9202): ║                     "planningReady": true,
I/flutter ( 9202): ║                     "fulfillmentReady": false,
I/flutter ( 9202): ║                     "deliveryWindow": null,
I/flutter ( 9202): ║                     "deliveryAddress": null,
I/flutter ( 9202): ║                     "pickupLocation": {
I/flutter ( 9202): ║                         "id": "main",
I/flutter ( 9202): ║                         "name": "[object Object]",
I/flutter ( 9202): ║                         "address": "[object Object]",
I/flutter ( 9202): ║                         "phone": "",
I/flutter ( 9202): ║                         "city": "",
I/flutter ( 9202): ║                         "district": "",
I/flutter ( 9202): ║                         "workingHours": "",
I/flutter ( 9202): ║                         "latitude": null,
I/flutter ( 9202): ║                         "longitude": null,
I/flutter ( 9202): ║                         "mapUrl": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "fulfillmentSummary": {
I/flutter ( 9202): ║                         "mode": "pickup",
I/flutter ( 9202): ║                         "title": "الاستلام من الفرع",
I/flutter ( 9202): ║                         "status": "open",
I/flutter ( 9202): ║                         "statusLabel": "مخطط له",
I/flutter ( 9202): ║                         "message": "راجع اختيارات اليوم واطلب التجهيز عندما تكون جاهزا"
I/flutter ( 9202): ║                         "nextAction": "",
I/flutter ( 9202): ║                         "isEditable": true,
I/flutter ( 9202): ║                         "isFulfillable": true,
I/flutter ( 9202): ║                         "planningReady": true,
I/flutter ( 9202): ║                         "fulfillmentReady": false,
I/flutter ( 9202): ║                         "lockedReason": null,
I/flutter ( 9202): ║                         "lockedMessage": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "lockedReason": null,
I/flutter ( 9202): ║                     "lockedMessage": null,
I/flutter ( 9202): ║                     "selectedMealIds": [6a19c0186864369ee0a8c0bc, 6a19c0186864369ee0a8c0bc]
I/flutter ( 9202): ║                     "mealSlots": [
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "slotIndex": 1,
I/flutter ( 9202): ║                             "slotKey": "slot_1",
I/flutter ( 9202): ║                             "status": "complete",
I/flutter ( 9202): ║                             "selectionType": "premium_meal",
I/flutter ( 9202): ║                             "proteinId": "6a19c0186864369ee0a8c0bc",
I/flutter ( 9202): ║                             "carbs": [{carbId: 6a19c0196864369ee0a8c0c3, grams: 150}]
I/flutter ( 9202): ║                             "sandwichId": null,
I/flutter ( 9202): ║                             "salad": null,
I/flutter ( 9202): ║                             "isPremium": false,
I/flutter ( 9202): ║                             "premiumKey": "salmon",
I/flutter ( 9202): ║                             "premiumSource": "none",
I/flutter ( 9202): ║                             "premiumExtraFeeHalala": 0
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "slotIndex": 2,
I/flutter ( 9202): ║                             "slotKey": "slot_2",
I/flutter ( 9202): ║                             "status": "complete",
I/flutter ( 9202): ║                             "selectionType": "premium_large_salad",
I/flutter ( 9202): ║                             "proteinId": "6a19c0186864369ee0a8c0bc",
I/flutter ( 9202): ║                             "carbs": []
I/flutter ( 9202): ║                             "sandwichId": null,
I/flutter ( 9202): ║                             "salad": {
I/flutter ( 9202): ║                                 "presetKey": "premium_large_salad",
I/flutter ( 9202): ║                                 "groups": {
I/flutter ( 9202): ║                                     "leafy_greens": []
I/flutter ( 9202): ║                                     "vegetables": []
I/flutter ( 9202): ║                                     "protein": [6a19c0186864369ee0a8c0bc]
I/flutter ( 9202): ║                                     "cheese_nuts": []
I/flutter ( 9202): ║                                     "fruits": []
I/flutter ( 9202): ║                                     "sauce": [6a19c01c6864369ee0a8c0da]
I/flutter ( 9202): ║                                }
I/flutter ( 9202): ║                            }
I/flutter ( 9202): ║                             "isPremium": true,
I/flutter ( 9202): ║                             "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                             "premiumSource": "paid_extra",
I/flutter ( 9202): ║                             "premiumExtraFeeHalala": 2900
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                     ]
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "date": "2026-06-01",
I/flutter ( 9202): ║                     "day": "الاثنين",
I/flutter ( 9202): ║                     "month": "يونيو",
I/flutter ( 9202): ║                     "dayNumber": 1,
I/flutter ( 9202): ║                     "deliveryMode": "pickup",
I/flutter ( 9202): ║                     "status": "planned",
I/flutter ( 9202): ║                     "statusLabel": "مخطط له",
I/flutter ( 9202): ║                     "isPast": false,
I/flutter ( 9202): ║                     "autoSettled": false,
I/flutter ( 9202): ║                     "settledAt": null,
I/flutter ( 9202): ║                     "settlementReason": null,
I/flutter ( 9202): ║                     "consumedByPolicy": false,
I/flutter ( 9202): ║                     "selectedMeals": 2,
I/flutter ( 9202): ║                     "requiredMeals": 1,
I/flutter ( 9202): ║                     "commercialState": "confirmed",
I/flutter ( 9202): ║                     "commercialStateLabel": "مؤكد",
I/flutter ( 9202): ║                     "isFulfillable": true,
I/flutter ( 9202): ║                     "canBePrepared": true,
I/flutter ( 9202): ║                     "paymentRequirement": {
I/flutter ( 9202): ║                         "status": "satisfied",
I/flutter ( 9202): ║                         "requiresPayment": false,
I/flutter ( 9202): ║                         "pricingStatus": "not_required",
I/flutter ( 9202): ║                         "blockingReason": null,
I/flutter ( 9202): ║                         "canCreatePayment": false,
I/flutter ( 9202): ║                         "premiumSelectedCount": 1,
I/flutter ( 9202): ║                         "premiumPendingPaymentCount": 0,
I/flutter ( 9202): ║                         "addonSelectedCount": 2,
I/flutter ( 9202): ║                         "addonPendingPaymentCount": 0,
I/flutter ( 9202): ║                         "pendingAmountHalala": 0,
I/flutter ( 9202): ║                         "amountHalala": 0,
I/flutter ( 9202): ║                         "currency": "SAR",
I/flutter ( 9202): ║                         "pricingStatusLabel": "غير مطلوب",
I/flutter ( 9202): ║                         "blockingReasonLabel": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "fulfillmentMode": "customer_selected",
I/flutter ( 9202): ║                     "consumptionState": "pending_day",
I/flutter ( 9202): ║                     "requiredMealCount": 1,
I/flutter ( 9202): ║                     "specifiedMealCount": 1,
I/flutter ( 9202): ║                     "unspecifiedMealCount": 0,
I/flutter ( 9202): ║                     "hasCustomerSelections": true,
I/flutter ( 9202): ║                     "requiresMealTypeKnowledge": true,
I/flutter ( 9202): ║                     "planningReady": true,
I/flutter ( 9202): ║                     "fulfillmentReady": false,
I/flutter ( 9202): ║                     "deliveryWindow": null,
I/flutter ( 9202): ║                     "deliveryAddress": null,
I/flutter ( 9202): ║                     "pickupLocation": {
I/flutter ( 9202): ║                         "id": "main",
I/flutter ( 9202): ║                         "name": "[object Object]",
I/flutter ( 9202): ║                         "address": "[object Object]",
I/flutter ( 9202): ║                         "phone": "",
I/flutter ( 9202): ║                         "city": "",
I/flutter ( 9202): ║                         "district": "",
I/flutter ( 9202): ║                         "workingHours": "",
I/flutter ( 9202): ║                         "latitude": null,
I/flutter ( 9202): ║                         "longitude": null,
I/flutter ( 9202): ║                         "mapUrl": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "fulfillmentSummary": {
I/flutter ( 9202): ║                         "mode": "pickup",
I/flutter ( 9202): ║                         "title": "الاستلام من الفرع",
I/flutter ( 9202): ║                         "status": "open",
I/flutter ( 9202): ║                         "statusLabel": "مخطط له",
I/flutter ( 9202): ║                         "message": "راجع اختيارات اليوم واطلب التجهيز عندما تكون جاهزا"
I/flutter ( 9202): ║                         "nextAction": "",
I/flutter ( 9202): ║                         "isEditable": true,
I/flutter ( 9202): ║                         "isFulfillable": true,
I/flutter ( 9202): ║                         "planningReady": true,
I/flutter ( 9202): ║                         "fulfillmentReady": false,
I/flutter ( 9202): ║                         "lockedReason": null,
I/flutter ( 9202): ║                         "lockedMessage": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "lockedReason": null,
I/flutter ( 9202): ║                     "lockedMessage": null,
I/flutter ( 9202): ║                     "selectedMealIds": [6a19c0186864369ee0a8c0bc, 6a19c0186864369ee0a8c0bc]
I/flutter ( 9202): ║                     "mealSlots": [
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "slotIndex": 1,
I/flutter ( 9202): ║                             "slotKey": "slot_1",
I/flutter ( 9202): ║                             "status": "complete",
I/flutter ( 9202): ║                             "selectionType": "premium_large_salad",
I/flutter ( 9202): ║                             "proteinId": "6a19c0186864369ee0a8c0bc",
I/flutter ( 9202): ║                             "carbs": []
I/flutter ( 9202): ║                             "sandwichId": null,
I/flutter ( 9202): ║                             "salad": {
I/flutter ( 9202): ║                                 "presetKey": "premium_large_salad",
I/flutter ( 9202): ║                                 "groups": {
I/flutter ( 9202): ║                                     "leafy_greens": []
I/flutter ( 9202): ║                                     "vegetables": []
I/flutter ( 9202): ║                                     "protein": [6a19c0186864369ee0a8c0bc]
I/flutter ( 9202): ║                                     "cheese_nuts": []
I/flutter ( 9202): ║                                     "fruits": []
I/flutter ( 9202): ║                                     "sauce": [6a19c01c6864369ee0a8c0da]
I/flutter ( 9202): ║                                }
I/flutter ( 9202): ║                            }
I/flutter ( 9202): ║                             "isPremium": true,
I/flutter ( 9202): ║                             "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                             "premiumSource": "paid_extra",
I/flutter ( 9202): ║                             "premiumExtraFeeHalala": 2900
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "slotIndex": 2,
I/flutter ( 9202): ║                             "slotKey": "slot_2",
I/flutter ( 9202): ║                             "status": "complete",
I/flutter ( 9202): ║                             "selectionType": "premium_meal",
I/flutter ( 9202): ║                             "proteinId": "6a19c0186864369ee0a8c0bc",
I/flutter ( 9202): ║                             "carbs": [{carbId: 6a19c0196864369ee0a8c0c3, grams: 150}]
I/flutter ( 9202): ║                             "sandwichId": null,
I/flutter ( 9202): ║                             "salad": null,
I/flutter ( 9202): ║                             "isPremium": false,
I/flutter ( 9202): ║                             "premiumKey": "salmon",
I/flutter ( 9202): ║                             "premiumSource": "none",
I/flutter ( 9202): ║                             "premiumExtraFeeHalala": 0
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                     ]
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "date": "2026-06-02",
I/flutter ( 9202): ║                     "day": "الثلاثاء",
I/flutter ( 9202): ║                     "month": "يونيو",
I/flutter ( 9202): ║                     "dayNumber": 2,
I/flutter ( 9202): ║                     "deliveryMode": "pickup",
I/flutter ( 9202): ║                     "status": "open",
I/flutter ( 9202): ║                     "statusLabel": "مفتوح",
I/flutter ( 9202): ║                     "isPast": false,
I/flutter ( 9202): ║                     "autoSettled": false,
I/flutter ( 9202): ║                     "settledAt": null,
I/flutter ( 9202): ║                     "settlementReason": null,
I/flutter ( 9202): ║                     "consumedByPolicy": false,
I/flutter ( 9202): ║                     "selectedMeals": 0,
I/flutter ( 9202): ║                     "requiredMeals": 1,
I/flutter ( 9202): ║                     "commercialState": "draft",
I/flutter ( 9202): ║                     "commercialStateLabel": "مسودة",
I/flutter ( 9202): ║                     "isFulfillable": false,
I/flutter ( 9202): ║                     "canBePrepared": false,
I/flutter ( 9202): ║                     "paymentRequirement": {
I/flutter ( 9202): ║                         "status": "satisfied",
I/flutter ( 9202): ║                         "requiresPayment": false,
I/flutter ( 9202): ║                         "pricingStatus": "not_required",
I/flutter ( 9202): ║                         "blockingReason": "PLANNING_INCOMPLETE",
I/flutter ( 9202): ║                         "canCreatePayment": false,
I/flutter ( 9202): ║                         "premiumSelectedCount": 0,
I/flutter ( 9202): ║                         "premiumPendingPaymentCount": 0,
I/flutter ( 9202): ║                         "addonSelectedCount": 0,
I/flutter ( 9202): ║                         "addonPendingPaymentCount": 0,
I/flutter ( 9202): ║                         "pendingAmountHalala": 0,
I/flutter ( 9202): ║                         "amountHalala": 0,
I/flutter ( 9202): ║                         "currency": "SAR",
I/flutter ( 9202): ║                         "pricingStatusLabel": "غير مطلوب",
I/flutter ( 9202): ║                         "blockingReasonLabel": ""
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "fulfillmentMode": "no_service",
I/flutter ( 9202): ║                     "consumptionState": "pending_day",
I/flutter ( 9202): ║                     "requiredMealCount": 1,
I/flutter ( 9202): ║                     "specifiedMealCount": 0,
I/flutter ( 9202): ║                     "unspecifiedMealCount": 1,
I/flutter ( 9202): ║                     "hasCustomerSelections": false,
I/flutter ( 9202): ║                     "requiresMealTypeKnowledge": false,
I/flutter ( 9202): ║                     "planningReady": false,
I/flutter ( 9202): ║                     "fulfillmentReady": false,
I/flutter ( 9202): ║                     "deliveryWindow": null,
I/flutter ( 9202): ║                     "deliveryAddress": null,
I/flutter ( 9202): ║                     "pickupLocation": {
I/flutter ( 9202): ║                         "id": "main",
I/flutter ( 9202): ║                         "name": "[object Object]",
I/flutter ( 9202): ║                         "address": "[object Object]",
I/flutter ( 9202): ║                         "phone": "",
I/flutter ( 9202): ║                         "city": "",
I/flutter ( 9202): ║                         "district": "",
I/flutter ( 9202): ║                         "workingHours": "",
I/flutter ( 9202): ║                         "latitude": null,
I/flutter ( 9202): ║                         "longitude": null,
I/flutter ( 9202): ║                         "mapUrl": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "fulfillmentSummary": {
I/flutter ( 9202): ║                         "mode": "pickup",
I/flutter ( 9202): ║                         "title": "الاستلام من الفرع",
I/flutter ( 9202): ║                         "status": "open",
I/flutter ( 9202): ║                         "statusLabel": "مفتوح",
I/flutter ( 9202): ║                         "message": "راجع اختيارات اليوم واطلب التجهيز عندما تكون جاهزا"
I/flutter ( 9202): ║                         "nextAction": "",
I/flutter ( 9202): ║                         "isEditable": true,
I/flutter ( 9202): ║                         "isFulfillable": false,
I/flutter ( 9202): ║                         "planningReady": false,
I/flutter ( 9202): ║                         "fulfillmentReady": false,
I/flutter ( 9202): ║                         "lockedReason": null,
I/flutter ( 9202): ║                         "lockedMessage": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "lockedReason": null,
I/flutter ( 9202): ║                     "lockedMessage": null,
I/flutter ( 9202): ║                     "selectedMealIds": []
I/flutter ( 9202): ║                     "mealSlots": []
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "date": "2026-06-03",
I/flutter ( 9202): ║                     "day": "الأربعاء",
I/flutter ( 9202): ║                     "month": "يونيو",
I/flutter ( 9202): ║                     "dayNumber": 3,
I/flutter ( 9202): ║                     "deliveryMode": "pickup",
I/flutter ( 9202): ║                     "status": "open",
I/flutter ( 9202): ║                     "statusLabel": "مفتوح",
I/flutter ( 9202): ║                     "isPast": false,
I/flutter ( 9202): ║                     "autoSettled": false,
I/flutter ( 9202): ║                     "settledAt": null,
I/flutter ( 9202): ║                     "settlementReason": null,
I/flutter ( 9202): ║                     "consumedByPolicy": false,
I/flutter ( 9202): ║                     "selectedMeals": 0,
I/flutter ( 9202): ║                     "requiredMeals": 1,
I/flutter ( 9202): ║                     "commercialState": "draft",
I/flutter ( 9202): ║                     "commercialStateLabel": "مسودة",
I/flutter ( 9202): ║                     "isFulfillable": false,
I/flutter ( 9202): ║                     "canBePrepared": false,
I/flutter ( 9202): ║                     "paymentRequirement": {
I/flutter ( 9202): ║                         "status": "satisfied",
I/flutter ( 9202): ║                         "requiresPayment": false,
I/flutter ( 9202): ║                         "pricingStatus": "not_required",
I/flutter ( 9202): ║                         "blockingReason": "PLANNING_INCOMPLETE",
I/flutter ( 9202): ║                         "canCreatePayment": false,
I/flutter ( 9202): ║                         "premiumSelectedCount": 0,
I/flutter ( 9202): ║                         "premiumPendingPaymentCount": 0,
I/flutter ( 9202): ║                         "addonSelectedCount": 0,
I/flutter ( 9202): ║                         "addonPendingPaymentCount": 0,
I/flutter ( 9202): ║                         "pendingAmountHalala": 0,
I/flutter ( 9202): ║                         "amountHalala": 0,
I/flutter ( 9202): ║                         "currency": "SAR",
I/flutter ( 9202): ║                         "pricingStatusLabel": "غير مطلوب",
I/flutter ( 9202): ║                         "blockingReasonLabel": ""
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "fulfillmentMode": "no_service",
I/flutter ( 9202): ║                     "consumptionState": "pending_day",
I/flutter ( 9202): ║                     "requiredMealCount": 1,
I/flutter ( 9202): ║                     "specifiedMealCount": 0,
I/flutter ( 9202): ║                     "unspecifiedMealCount": 1,
I/flutter ( 9202): ║                     "hasCustomerSelections": false,
I/flutter ( 9202): ║                     "requiresMealTypeKnowledge": false,
I/flutter ( 9202): ║                     "planningReady": false,
I/flutter ( 9202): ║                     "fulfillmentReady": false,
I/flutter ( 9202): ║                     "deliveryWindow": null,
I/flutter ( 9202): ║                     "deliveryAddress": null,
I/flutter ( 9202): ║                     "pickupLocation": {
I/flutter ( 9202): ║                         "id": "main",
I/flutter ( 9202): ║                         "name": "[object Object]",
I/flutter ( 9202): ║                         "address": "[object Object]",
I/flutter ( 9202): ║                         "phone": "",
I/flutter ( 9202): ║                         "city": "",
I/flutter ( 9202): ║                         "district": "",
I/flutter ( 9202): ║                         "workingHours": "",
I/flutter ( 9202): ║                         "latitude": null,
I/flutter ( 9202): ║                         "longitude": null,
I/flutter ( 9202): ║                         "mapUrl": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "fulfillmentSummary": {
I/flutter ( 9202): ║                         "mode": "pickup",
I/flutter ( 9202): ║                         "title": "الاستلام من الفرع",
I/flutter ( 9202): ║                         "status": "open",
I/flutter ( 9202): ║                         "statusLabel": "مفتوح",
I/flutter ( 9202): ║                         "message": "راجع اختيارات اليوم واطلب التجهيز عندما تكون جاهزا"
I/flutter ( 9202): ║                         "nextAction": "",
I/flutter ( 9202): ║                         "isEditable": true,
I/flutter ( 9202): ║                         "isFulfillable": false,
I/flutter ( 9202): ║                         "planningReady": false,
I/flutter ( 9202): ║                         "fulfillmentReady": false,
I/flutter ( 9202): ║                         "lockedReason": null,
I/flutter ( 9202): ║                         "lockedMessage": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "lockedReason": null,
I/flutter ( 9202): ║                     "lockedMessage": null,
I/flutter ( 9202): ║                     "selectedMealIds": []
I/flutter ( 9202): ║                     "mealSlots": []
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "date": "2026-06-04",
I/flutter ( 9202): ║                     "day": "الخميس",
I/flutter ( 9202): ║                     "month": "يونيو",
I/flutter ( 9202): ║                     "dayNumber": 4,
I/flutter ( 9202): ║                     "deliveryMode": "pickup",
I/flutter ( 9202): ║                     "status": "open",
I/flutter ( 9202): ║                     "statusLabel": "مفتوح",
I/flutter ( 9202): ║                     "isPast": false,
I/flutter ( 9202): ║                     "autoSettled": false,
I/flutter ( 9202): ║                     "settledAt": null,
I/flutter ( 9202): ║                     "settlementReason": null,
I/flutter ( 9202): ║                     "consumedByPolicy": false,
I/flutter ( 9202): ║                     "selectedMeals": 0,
I/flutter ( 9202): ║                     "requiredMeals": 1,
I/flutter ( 9202): ║                     "commercialState": "draft",
I/flutter ( 9202): ║                     "commercialStateLabel": "مسودة",
I/flutter ( 9202): ║                     "isFulfillable": false,
I/flutter ( 9202): ║                     "canBePrepared": false,
I/flutter ( 9202): ║                     "paymentRequirement": {
I/flutter ( 9202): ║                         "status": "satisfied",
I/flutter ( 9202): ║                         "requiresPayment": false,
I/flutter ( 9202): ║                         "pricingStatus": "not_required",
I/flutter ( 9202): ║                         "blockingReason": "PLANNING_INCOMPLETE",
I/flutter ( 9202): ║                         "canCreatePayment": false,
I/flutter ( 9202): ║                         "premiumSelectedCount": 0,
I/flutter ( 9202): ║                         "premiumPendingPaymentCount": 0,
I/flutter ( 9202): ║                         "addonSelectedCount": 0,
I/flutter ( 9202): ║                         "addonPendingPaymentCount": 0,
I/flutter ( 9202): ║                         "pendingAmountHalala": 0,
I/flutter ( 9202): ║                         "amountHalala": 0,
I/flutter ( 9202): ║                         "currency": "SAR",
I/flutter ( 9202): ║                         "pricingStatusLabel": "غير مطلوب",
I/flutter ( 9202): ║                         "blockingReasonLabel": ""
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "fulfillmentMode": "no_service",
I/flutter ( 9202): ║                     "consumptionState": "pending_day",
I/flutter ( 9202): ║                     "requiredMealCount": 1,
I/flutter ( 9202): ║                     "specifiedMealCount": 0,
I/flutter ( 9202): ║                     "unspecifiedMealCount": 1,
I/flutter ( 9202): ║                     "hasCustomerSelections": false,
I/flutter ( 9202): ║                     "requiresMealTypeKnowledge": false,
I/flutter ( 9202): ║                     "planningReady": false,
I/flutter ( 9202): ║                     "fulfillmentReady": false,
I/flutter ( 9202): ║                     "deliveryWindow": null,
I/flutter ( 9202): ║                     "deliveryAddress": null,
I/flutter ( 9202): ║                     "pickupLocation": {
I/flutter ( 9202): ║                         "id": "main",
I/flutter ( 9202): ║                         "name": "[object Object]",
I/flutter ( 9202): ║                         "address": "[object Object]",
I/flutter ( 9202): ║                         "phone": "",
I/flutter ( 9202): ║                         "city": "",
I/flutter ( 9202): ║                         "district": "",
I/flutter ( 9202): ║                         "workingHours": "",
I/flutter ( 9202): ║                         "latitude": null,
I/flutter ( 9202): ║                         "longitude": null,
I/flutter ( 9202): ║                         "mapUrl": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "fulfillmentSummary": {
I/flutter ( 9202): ║                         "mode": "pickup",
I/flutter ( 9202): ║                         "title": "الاستلام من الفرع",
I/flutter ( 9202): ║                         "status": "open",
I/flutter ( 9202): ║                         "statusLabel": "مفتوح",
I/flutter ( 9202): ║                         "message": "راجع اختيارات اليوم واطلب التجهيز عندما تكون جاهزا"
I/flutter ( 9202): ║                         "nextAction": "",
I/flutter ( 9202): ║                         "isEditable": true,
I/flutter ( 9202): ║                         "isFulfillable": false,
I/flutter ( 9202): ║                         "planningReady": false,
I/flutter ( 9202): ║                         "fulfillmentReady": false,
I/flutter ( 9202): ║                         "lockedReason": null,
I/flutter ( 9202): ║                         "lockedMessage": null
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "lockedReason": null,
I/flutter ( 9202): ║                     "lockedMessage": null,
I/flutter ( 9202): ║                     "selectedMealIds": []
I/flutter ( 9202): ║                     "mealSlots": []
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ]
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): onChange -- TimelineBloc, Change { currentState: TimelineLoading(), nextState: TimelineLoaded(Instance of 'TimelineModel') }
I/flutter ( 9202): onCreate -- MealPlannerBloc
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/flutter ( 9202): onChange -- MealPlannerBloc, Change { currentState: MealPlannerLoaded([Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel'], Instance of 'MealPlannerMenuModel', [], [Instance of 'AddonSubscriptionModel'], [Instance of 'PremiumSummaryModel', Instance of 'PremiumSummaryModel'], 4, {}, {}, {}, {}, {}, false, false, false, , 1, false, 0, null, null, null, null, null, null), nextState: MealPlannerLoading() }
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ GET
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/meal-planner-menu?includeLegacy=true
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Query Parameters
I/flutter ( 9202): ╟ includeLegacy: true
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 1068 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/meal-planner-menu?includeLegacy=true
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:02:29 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef69d7945e208-MRS]
I/flutter ( 9202): ╟ etag: [W/"aa1d-z1mfSvSoi7Ahrj0X7uYM4mx0a4Q"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ rndr-id: [c63ea0f6-23a5-40a8]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "builderCatalog": {
I/flutter ( 9202): ║                 "categories": [
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "carb:standard_carbs",
I/flutter ( 9202): ║                         "key": "standard_carbs",
I/flutter ( 9202): ║                         "dimension": "carb",
I/flutter ( 9202): ║                         "name": "كربوهيدرات",
I/flutter ( 9202): ║                         "description": "اختيارات الكربوهيدرات للوجبات",
I/flutter ( 9202): ║                         "sortOrder": 10,
I/flutter ( 9202): ║                         "rules": {maxTypes: 2, maxTotalGrams: 300, unit: grams, ruleKey: carb_split},
I/flutter ( 9202): ║                         "ui": {cardVariant: standard}
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "carb:large_salad",
I/flutter ( 9202): ║                         "key": "large_salad",
I/flutter ( 9202): ║                         "dimension": "carb",
I/flutter ( 9202): ║                         "name": "سلطة كبيرة مميزة",
I/flutter ( 9202): ║                         "description": "الهوية المرجعية للسلطة الكبيرة المميزة",
I/flutter ( 9202): ║                         "sortOrder": 20,
I/flutter ( 9202): ║                         "rules": {ruleKey: premium_large_salad},
I/flutter ( 9202): ║                         "ui": {cardVariant: large_salad}
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "protein:chicken",
I/flutter ( 9202): ║                         "key": "chicken",
I/flutter ( 9202): ║                         "dimension": "protein",
I/flutter ( 9202): ║                         "name": "دجاج",
I/flutter ( 9202): ║                         "description": "خيارات دجاج",
I/flutter ( 9202): ║                         "sortOrder": 10,
I/flutter ( 9202): ║                         "rules": {},
I/flutter ( 9202): ║                         "ui": {cardVariant: standard}
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "protein:beef",
I/flutter ( 9202): ║                         "key": "beef",
I/flutter ( 9202): ║                         "dimension": "protein",
I/flutter ( 9202): ║                         "name": "لحم",
I/flutter ( 9202): ║                         "description": "خيارات لحم",
I/flutter ( 9202): ║                         "sortOrder": 20,
I/flutter ( 9202): ║                         "rules": {dailyLimit: 1, ruleKey: beef_daily_limit, unit: slots},
I/flutter ( 9202): ║                         "ui": {cardVariant: standard}
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "protein:fish",
I/flutter ( 9202): ║                         "key": "fish",
I/flutter ( 9202): ║                         "dimension": "protein",
I/flutter ( 9202): ║                         "name": "أسماك",
I/flutter ( 9202): ║                         "description": "خيارات أسماك",
I/flutter ( 9202): ║                         "sortOrder": 30,
I/flutter ( 9202): ║                         "rules": {},
I/flutter ( 9202): ║                         "ui": {cardVariant: standard}
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "protein:eggs",
I/flutter ( 9202): ║                         "key": "eggs",
I/flutter ( 9202): ║                         "dimension": "protein",
I/flutter ( 9202): ║                         "name": "بيض",
I/flutter ( 9202): ║                         "description": "خيارات بيض",
I/flutter ( 9202): ║                         "sortOrder": 40,
I/flutter ( 9202): ║                         "rules": {},
I/flutter ( 9202): ║                         "ui": {cardVariant: standard}
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "protein:premium",
I/flutter ( 9202): ║                         "key": "premium",
I/flutter ( 9202): ║                         "dimension": "protein",
I/flutter ( 9202): ║                         "name": "بريميوم",
I/flutter ( 9202): ║                         "description": "خيارات البروتينات المميزة",
I/flutter ( 9202): ║                         "sortOrder": 50,
I/flutter ( 9202): ║                         "rules": {},
I/flutter ( 9202): ║                         "ui": {cardVariant: premium}
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "protein:other",
I/flutter ( 9202): ║                         "key": "other",
I/flutter ( 9202): ║                         "dimension": "protein",
I/flutter ( 9202): ║                         "name": "أخرى",
I/flutter ( 9202): ║                         "description": "خيارات أخرى",
I/flutter ( 9202): ║                         "sortOrder": 60,
I/flutter ( 9202): ║                         "rules": {},
I/flutter ( 9202): ║                         "ui": {cardVariant: standard}
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                 ],
I/flutter ( 9202): ║                 "proteins": [
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "6a19c0176864369ee0a8c0b4",
I/flutter ( 9202): ║                         "key": "chicken",
I/flutter ( 9202): ║                         "displayCategoryKey": "chicken",
I/flutter ( 9202): ║                         "name": "دجاج",
I/flutter ( 9202): ║                         "description": "",
I/flutter ( 9202): ║                         "proteinFamilyKey": "chicken",
I/flutter ( 9202): ║                         "ruleTags": []
I/flutter ( 9202): ║                         "selectionType": "standard_meal",
I/flutter ( 9202): ║                         "isPremium": false,
I/flutter ( 9202): ║                         "sortOrder": 10
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "6a19c0176864369ee0a8c0b6",
I/flutter ( 9202): ║                         "key": "beef",
I/flutter ( 9202): ║                         "displayCategoryKey": "beef",
I/flutter ( 9202): ║                         "name": "لحم",
I/flutter ( 9202): ║                         "description": "",
I/flutter ( 9202): ║                         "proteinFamilyKey": "beef",
I/flutter ( 9202): ║                         "ruleTags": []
I/flutter ( 9202): ║                         "selectionType": "standard_meal",
I/flutter ( 9202): ║                         "isPremium": false,
I/flutter ( 9202): ║                         "sortOrder": 20
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "6a19c0176864369ee0a8c0b7",
I/flutter ( 9202): ║                         "key": "fish",
I/flutter ( 9202): ║                         "displayCategoryKey": "fish",
I/flutter ( 9202): ║                         "name": "سمك",
I/flutter ( 9202): ║                         "description": "",
I/flutter ( 9202): ║                         "proteinFamilyKey": "fish",
I/flutter ( 9202): ║                         "ruleTags": []
I/flutter ( 9202): ║                         "selectionType": "standard_meal",
I/flutter ( 9202): ║                         "isPremium": false,
I/flutter ( 9202): ║                         "sortOrder": 30
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "6a19c0176864369ee0a8c0b9",
I/flutter ( 9202): ║                         "key": "eggs",
I/flutter ( 9202): ║                         "displayCategoryKey": "eggs",
I/flutter ( 9202): ║                         "name": "بيض",
I/flutter ( 9202): ║                         "description": "",
I/flutter ( 9202): ║                         "proteinFamilyKey": "eggs",
I/flutter ( 9202): ║                         "ruleTags": []
I/flutter ( 9202): ║                         "selectionType": "standard_meal",
I/flutter ( 9202): ║                         "isPremium": false,
I/flutter ( 9202): ║                         "sortOrder": 40
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                 ],
I/flutter ( 9202): ║                 "premiumProteins": [
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "6a19c0176864369ee0a8c0ba",
I/flutter ( 9202): ║                         "key": "beef_steak",
I/flutter ( 9202): ║                         "displayCategoryKey": "premium",
I/flutter ( 9202): ║                         "name": "ستيك لحم",
I/flutter ( 9202): ║                         "description": "",
I/flutter ( 9202): ║                         "proteinFamilyKey": "beef",
I/flutter ( 9202): ║                         "ruleTags": []
I/flutter ( 9202): ║                         "selectionType": "premium_meal",
I/flutter ( 9202): ║                         "isPremium": true,
I/flutter ( 9202): ║                         "premiumKey": "beef_steak",
I/flutter ( 9202): ║                         "extraFeeHalala": 2000,
I/flutter ( 9202): ║                         "sortOrder": 50
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "6a19c0176864369ee0a8c0bb",
I/flutter ( 9202): ║                         "key": "shrimp",
I/flutter ( 9202): ║                         "displayCategoryKey": "premium",
I/flutter ( 9202): ║                         "name": "جمبري",
I/flutter ( 9202): ║                         "description": "",
I/flutter ( 9202): ║                         "proteinFamilyKey": "fish",
I/flutter ( 9202): ║                         "ruleTags": []
I/flutter ( 9202): ║                         "selectionType": "premium_meal",
I/flutter ( 9202): ║                         "isPremium": true,
I/flutter ( 9202): ║                         "premiumKey": "shrimp",
I/flutter ( 9202): ║                         "extraFeeHalala": 2000,
I/flutter ( 9202): ║                         "sortOrder": 60
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "6a19c0186864369ee0a8c0bc",
I/flutter ( 9202): ║                         "key": "salmon",
I/flutter ( 9202): ║                         "displayCategoryKey": "premium",
I/flutter ( 9202): ║                         "name": "سالمون",
I/flutter ( 9202): ║                         "description": "",
I/flutter ( 9202): ║                         "proteinFamilyKey": "fish",
I/flutter ( 9202): ║                         "ruleTags": []
I/flutter ( 9202): ║                         "selectionType": "premium_meal",
I/flutter ( 9202): ║                         "isPremium": true,
I/flutter ( 9202): ║                         "premiumKey": "salmon",
I/flutter ( 9202): ║                         "extraFeeHalala": 2000,
I/flutter ( 9202): ║                         "sortOrder": 70
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                 ],
I/flutter ( 9202): ║                 "carbs": [
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "6a19c0186864369ee0a8c0be",
I/flutter ( 9202): ║                         "key": "white_rice",
I/flutter ( 9202): ║                         "displayCategoryKey": "standard_carbs",
I/flutter ( 9202): ║                         "name": "ارز ابيض",
I/flutter ( 9202): ║                         "description": "",
I/flutter ( 9202): ║                         "sortOrder": 10
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "6a19c0186864369ee0a8c0bf",
I/flutter ( 9202): ║                         "key": "brown_rice",
I/flutter ( 9202): ║                         "displayCategoryKey": "standard_carbs",
I/flutter ( 9202): ║                         "name": "ارز اسمر",
I/flutter ( 9202): ║                         "description": "",
I/flutter ( 9202): ║                         "sortOrder": 20
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "6a19c0186864369ee0a8c0c1",
I/flutter ( 9202): ║                         "key": "potato",
I/flutter ( 9202): ║                         "displayCategoryKey": "standard_carbs",
I/flutter ( 9202): ║                         "name": "بطاطس",
I/flutter ( 9202): ║                         "description": "",
I/flutter ( 9202): ║                         "sortOrder": 30
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "6a19c0196864369ee0a8c0c2",
I/flutter ( 9202): ║                         "key": "sweet_potato",
I/flutter ( 9202): ║                         "displayCategoryKey": "standard_carbs",
I/flutter ( 9202): ║                         "name": "بطاطا حلوة",
I/flutter ( 9202): ║                         "description": "",
I/flutter ( 9202): ║                         "sortOrder": 40
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "6a19c0196864369ee0a8c0c3",
I/flutter ( 9202): ║                         "key": "pasta",
I/flutter ( 9202): ║                         "displayCategoryKey": "standard_carbs",
I/flutter ( 9202): ║                         "name": "مكرونة",
I/flutter ( 9202): ║                         "description": "",
I/flutter ( 9202): ║                         "sortOrder": 50
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                 ],
I/flutter ( 9202): ║                 "sandwiches": [
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "6a19c0376864369ee0a8c1ef",
I/flutter ( 9202): ║                         "name": "ساندويتش دجاج",
I/flutter ( 9202): ║                         "description": "",
I/flutter ( 9202): ║                         "imageUrl": "",
I/flutter ( 9202): ║                         "calories": 0,
I/flutter ( 9202): ║                         "selectionType": "sandwich",
I/flutter ( 9202): ║                         "categoryKey": "sandwich",
I/flutter ( 9202): ║                         "pricingModel": "fixed",
I/flutter ( 9202): ║                         "priceHalala": 0,
I/flutter ( 9202): ║                         "proteinFamilyKey": "other",
I/flutter ( 9202): ║                         "sortOrder": 80
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "6a19c0376864369ee0a8c1f0",
I/flutter ( 9202): ║                         "name": "ساندويتش تونا",
I/flutter ( 9202): ║                         "description": "",
I/flutter ( 9202): ║                         "imageUrl": "",
I/flutter ( 9202): ║                         "calories": 0,
I/flutter ( 9202): ║                         "selectionType": "sandwich",
I/flutter ( 9202): ║                         "categoryKey": "sandwich",
I/flutter ( 9202): ║                         "pricingModel": "fixed",
I/flutter ( 9202): ║                         "priceHalala": 0,
I/flutter ( 9202): ║                         "proteinFamilyKey": "other",
I/flutter ( 9202): ║                         "sortOrder": 90
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "6a19c0376864369ee0a8c1f2",
I/flutter ( 9202): ║                         "name": "ساوردو تركي",
I/flutter ( 9202): ║                         "description": "",
I/flutter ( 9202): ║                         "imageUrl": "",
I/flutter ( 9202): ║                         "calories": 0,
I/flutter ( 9202): ║                         "selectionType": "sandwich",
I/flutter ( 9202): ║                         "categoryKey": "sandwich",
I/flutter ( 9202): ║                         "pricingModel": "fixed",
I/flutter ( 9202): ║                         "priceHalala": 0,
I/flutter ( 9202): ║                         "proteinFamilyKey": "other",
I/flutter ( 9202): ║                         "sortOrder": 100
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                 ],
I/flutter ( 9202): ║                 "premiumLargeSalad": {
I/flutter ( 9202): ║                     "id": "premium_large_salad",
I/flutter ( 9202): ║                     "enabled": true,
I/flutter ( 9202): ║                     "carbId": "6a19c02a6864369ee0a8c10b",
I/flutter ( 9202): ║                     "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                     "selectionType": "premium_large_salad",
I/flutter ( 9202): ║                     "presetKey": "large_salad",
I/flutter ( 9202): ║                     "name": "سلطة كبيرة مميزة",
I/flutter ( 9202): ║                     "extraFeeHalala": 2900,
I/flutter ( 9202): ║                     "priceHalala": 2900,
I/flutter ( 9202): ║                     "priceSource": "menu_product_premium_large_salad",
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "preset": {
I/flutter ( 9202): ║                         "key": "large_salad",
I/flutter ( 9202): ║                         "name": "سلطة كبيرة مميزة",
I/flutter ( 9202): ║                         "selectionType": "premium_large_salad",
I/flutter ( 9202): ║                         "fixedPriceHalala": 2900,
I/flutter ( 9202): ║                         "priceSource": "menu_product_premium_large_salad",
I/flutter ( 9202): ║                         "currency": "SAR",
I/flutter ( 9202): ║                         "groups": [
I/flutter ( 9202): ║                          {key: leafy_greens, name: ورقيات, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                          {key: vegetables, name: خضار, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                          {key: protein, name: بروتين, minSelect: 1, maxSelect: 1},
I/flutter ( 9202): ║                          {key: cheese_nuts, name: أجبان ومكسرات, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                          {key: fruits, name: فواكه, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                          {key: sauce, name: صوص, minSelect: 1, maxSelect: 1}
I/flutter ( 9202): ║                         ]
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "groups": [
I/flutter ( 9202): ║                      {key: leafy_greens, name: ورقيات, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                      {key: vegetables, name: خضار, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                      {key: protein, name: بروتين, minSelect: 1, maxSelect: 1},
I/flutter ( 9202): ║                      {key: cheese_nuts, name: أجبان ومكسرات, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                      {key: fruits, name: فواكه, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                      {key: sauce, name: صوص, minSelect: 1, maxSelect: 1}
I/flutter ( 9202): ║                     ],
I/flutter ( 9202): ║                     "ingredients": [
I/flutter ( 9202): ║                      {id: 6a19c01c6864369ee0a8c0d4, groupKey: fruits, name: تفاح, calories: 0, sortOrder: 10},
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "id": "6a19c01b6864369ee0a8c0d0",
I/flutter ( 9202): ║                             "groupKey": "cheese_nuts",
I/flutter ( 9202): ║                             "name": "جبنة فيتا",
I/flutter ( 9202): ║                             "calories": 0,
I/flutter ( 9202): ║                             "sortOrder": 10
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "id": "6a19c0196864369ee0a8c0c6",
I/flutter ( 9202): ║                             "groupKey": "leafy_greens",
I/flutter ( 9202): ║                             "name": "خس",
I/flutter ( 9202): ║                             "calories": 0,
I/flutter ( 9202): ║                             "sortOrder": 10
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "id": "6a19c01a6864369ee0a8c0ca",
I/flutter ( 9202): ║                             "groupKey": "vegetables",
I/flutter ( 9202): ║                             "name": "خيار",
I/flutter ( 9202): ║                             "calories": 0,
I/flutter ( 9202): ║                             "sortOrder": 10
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "id": "6a19c0176864369ee0a8c0b4",
I/flutter ( 9202): ║                             "groupKey": "protein",
I/flutter ( 9202): ║                             "name": "دجاج",
I/flutter ( 9202): ║                             "calories": 0,
I/flutter ( 9202): ║                             "displayCategoryKey": "chicken",
I/flutter ( 9202): ║                             "proteinFamilyKey": "chicken",
I/flutter ( 9202): ║                             "isPremium": false,
I/flutter ( 9202): ║                             "premiumKey": "chicken",
I/flutter ( 9202): ║                             "extraFeeHalala": 0,
I/flutter ( 9202): ║                             "sortOrder": 10
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                      {id: 6a19c01c6864369ee0a8c0d9, groupKey: sauce, name: رانش, calories: 0, sortOrder: 10},
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "id": "6a19c0196864369ee0a8c0c7",
I/flutter ( 9202): ║                             "groupKey": "leafy_greens",
I/flutter ( 9202): ║                             "name": "جرجير",
I/flutter ( 9202): ║                             "calories": 0,
I/flutter ( 9202): ║                             "sortOrder": 20
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                      {id: 6a19c01c6864369ee0a8c0d5, groupKey: fruits, name: رمان, calories: 0, sortOrder: 20},
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "id": "6a19c01a6864369ee0a8c0cb",
I/flutter ( 9202): ║                             "groupKey": "vegetables",
I/flutter ( 9202): ║                             "name": "طماطم",
I/flutter ( 9202): ║                             "calories": 0,
I/flutter ( 9202): ║                             "sortOrder": 20
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "id": "6a19c0176864369ee0a8c0b6",
I/flutter ( 9202): ║                             "groupKey": "protein",
I/flutter ( 9202): ║                             "name": "لحم",
I/flutter ( 9202): ║                             "calories": 0,
I/flutter ( 9202): ║                             "displayCategoryKey": "beef",
I/flutter ( 9202): ║                             "proteinFamilyKey": "beef",
I/flutter ( 9202): ║                             "isPremium": false,
I/flutter ( 9202): ║                             "premiumKey": "beef",
I/flutter ( 9202): ║                             "extraFeeHalala": 0,
I/flutter ( 9202): ║                             "sortOrder": 20
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "id": "6a19c01b6864369ee0a8c0d1",
I/flutter ( 9202): ║                             "groupKey": "cheese_nuts",
I/flutter ( 9202): ║                             "name": "لوز",
I/flutter ( 9202): ║                             "calories": 0,
I/flutter ( 9202): ║                             "sortOrder": 20
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "id": "6a19c01c6864369ee0a8c0da",
I/flutter ( 9202): ║                             "groupKey": "sauce",
I/flutter ( 9202): ║                             "name": "ليمون وخردل",
I/flutter ( 9202): ║                             "calories": 0,
I/flutter ( 9202): ║                             "sortOrder": 20
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                      {id: 6a19c01d6864369ee0a8c0dc, groupKey: sauce, name: بلسميك, calories: 0, sortOrder: 30},
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "id": "6a19c01b6864369ee0a8c0d2",
I/flutter ( 9202): ║                             "groupKey": "cheese_nuts",
I/flutter ( 9202): ║                             "name": "جوز",
I/flutter ( 9202): ║                             "calories": 0,
I/flutter ( 9202): ║                             "sortOrder": 30
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "id": "6a19c01a6864369ee0a8c0cc",
I/flutter ( 9202): ║                             "groupKey": "vegetables",
I/flutter ( 9202): ║                             "name": "ذرة",
I/flutter ( 9202): ║                             "calories": 0,
I/flutter ( 9202): ║                             "sortOrder": 30
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "id": "6a19c0196864369ee0a8c0c8",
I/flutter ( 9202): ║                             "groupKey": "leafy_greens",
I/flutter ( 9202): ║                             "name": "سبانخ",
I/flutter ( 9202): ║                             "calories": 0,
I/flutter ( 9202): ║                             "sortOrder": 30
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "id": "6a19c0176864369ee0a8c0b7",
I/flutter ( 9202): ║                             "groupKey": "protein",
I/flutter ( 9202): ║                             "name": "سمك",
I/flutter ( 9202): ║                             "calories": 0,
I/flutter ( 9202): ║                             "displayCategoryKey": "fish",
I/flutter ( 9202): ║                             "proteinFamilyKey": "fish",
I/flutter ( 9202): ║                             "isPremium": false,
I/flutter ( 9202): ║                             "premiumKey": "fish",
I/flutter ( 9202): ║                             "extraFeeHalala": 0,
I/flutter ( 9202): ║                             "sortOrder": 30
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                      {id: 6a19c01c6864369ee0a8c0d6, groupKey: fruits, name: مانجا, calories: 0, sortOrder: 30},
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "id": "6a19c0176864369ee0a8c0b9",
I/flutter ( 9202): ║                             "groupKey": "protein",
I/flutter ( 9202): ║                             "name": "بيض",
I/flutter ( 9202): ║                             "calories": 0,
I/flutter ( 9202): ║                             "displayCategoryKey": "eggs",
I/flutter ( 9202): ║                             "proteinFamilyKey": "eggs",
I/flutter ( 9202): ║                             "isPremium": false,
I/flutter ( 9202): ║                             "premiumKey": "eggs",
I/flutter ( 9202): ║                             "extraFeeHalala": 0,
I/flutter ( 9202): ║                             "sortOrder": 40
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "id": "6a19c01a6864369ee0a8c0cd",
I/flutter ( 9202): ║                             "groupKey": "vegetables",
I/flutter ( 9202): ║                             "name": "جزر",
I/flutter ( 9202): ║                             "calories": 0,
I/flutter ( 9202): ║                             "sortOrder": 40
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "id": "6a19c0176864369ee0a8c0ba",
I/flutter ( 9202): ║                             "groupKey": "protein",
I/flutter ( 9202): ║                             "name": "ستيك لحم",
I/flutter ( 9202): ║                             "calories": 0,
I/flutter ( 9202): ║                             "displayCategoryKey": "premium",
I/flutter ( 9202): ║                             "proteinFamilyKey": "beef",
I/flutter ( 9202): ║                             "isPremium": true,
I/flutter ( 9202): ║                             "premiumKey": "beef_steak",
I/flutter ( 9202): ║                             "extraFeeHalala": 2000,
I/flutter ( 9202): ║                             "sortOrder": 50
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "id": "6a19c01a6864369ee0a8c0ce",
I/flutter ( 9202): ║                             "groupKey": "vegetables",
I/flutter ( 9202): ║                             "name": "فاصوليا حمراء",
I/flutter ( 9202): ║                             "calories": 0,
I/flutter ( 9202): ║                             "sortOrder": 50
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "id": "6a19c0176864369ee0a8c0bb",
I/flutter ( 9202): ║                             "groupKey": "protein",
I/flutter ( 9202): ║                             "name": "جمبري",
I/flutter ( 9202): ║                             "calories": 0,
I/flutter ( 9202): ║                             "displayCategoryKey": "premium",
I/flutter ( 9202): ║                             "proteinFamilyKey": "fish",
I/flutter ( 9202): ║                             "isPremium": true,
I/flutter ( 9202): ║                             "premiumKey": "shrimp",
I/flutter ( 9202): ║                             "extraFeeHalala": 2000,
I/flutter ( 9202): ║                             "sortOrder": 60
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "id": "6a19c0186864369ee0a8c0bc",
I/flutter ( 9202): ║                             "groupKey": "protein",
I/flutter ( 9202): ║                             "name": "سالمون",
I/flutter ( 9202): ║                             "calories": 0,
I/flutter ( 9202): ║                             "displayCategoryKey": "premium",
I/flutter ( 9202): ║                             "proteinFamilyKey": "fish",
I/flutter ( 9202): ║                             "isPremium": true,
I/flutter ( 9202): ║                             "premiumKey": "salmon",
I/flutter ( 9202): ║                             "extraFeeHalala": 2000,
I/flutter ( 9202): ║                             "sortOrder": 70
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                     ]
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║                 "rules": {
I/flutter ( 9202): ║                     "version": "meal_planner_rules.v3",
I/flutter ( 9202): ║                     "beef": {proteinFamilyKey: beef, maxSlotsPerDay: 1},
I/flutter ( 9202): ║                     "standardCarbs": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
I/flutter ( 9202): ║                     "premiumCarbs": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
I/flutter ( 9202): ║                     "proteinGroups": [
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "key": "chicken",
I/flutter ( 9202): ║                             "name": {ar: دجاج, en: Chicken},
I/flutter ( 9202): ║                             "sortOrder": 10
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "key": "beef",
I/flutter ( 9202): ║                             "name": {ar: لحم, en: Beef},
I/flutter ( 9202): ║                             "sortOrder": 20
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "key": "fish",
I/flutter ( 9202): ║                             "name": {ar: أسماك, en: Fish},
I/flutter ( 9202): ║                             "sortOrder": 30
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "key": "eggs",
I/flutter ( 9202): ║                             "name": {ar: بيض, en: Eggs},
I/flutter ( 9202): ║                             "sortOrder": 40
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "key": "premium",
I/flutter ( 9202): ║                             "name": {ar: بريميوم, en: Premium},
I/flutter ( 9202): ║                             "sortOrder": 50
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "key": "other",
I/flutter ( 9202): ║                             "name": {ar: أخرى, en: Other},
I/flutter ( 9202): ║                             "sortOrder": 60
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                     ],
I/flutter ( 9202): ║                     "premiumLargeSalad": {
I/flutter ( 9202): ║                         "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                         "presetKey": "large_salad",
I/flutter ( 9202): ║                         "extraFeeHalala": 2900,
I/flutter ( 9202): ║                         "groups": [
I/flutter ( 9202): ║                          {key: leafy_greens, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                          {key: vegetables, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                          {key: protein, minSelect: 1, maxSelect: 1},
I/flutter ( 9202): ║                          {key: cheese_nuts, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                          {key: fruits, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                          {key: sauce, minSelect: 1, maxSelect: 1}
I/flutter ( 9202): ║                         ]
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "addonCatalog": {
I/flutter ( 9202): ║                 "items": [
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "6a19c03c6864369ee0a8c203",
I/flutter ( 9202): ║                         "name": "كلاسيك جرين",
I/flutter ( 9202): ║                         "description": "",
I/flutter ( 9202): ║                         "imageUrl": "",
I/flutter ( 9202): ║                         "currency": "SAR",
I/flutter ( 9202): ║                         "priceHalala": 1100,
I/flutter ( 9202): ║                         "priceSar": 11,
I/flutter ( 9202): ║                         "priceLabel": "11 SAR",
I/flutter ( 9202): ║                         "kind": "item",
I/flutter ( 9202): ║                         "category": "juice",
I/flutter ( 9202): ║                         "type": "one_time",
I/flutter ( 9202): ║                         "billingMode": "flat_once",
I/flutter ( 9202): ║                         "pricingModel": "one_time",
I/flutter ( 9202): ║                         "billingUnit": "item",
I/flutter ( 9202): ║                         "ui": {title: كلاسيك جرين, subtitle: , ctaLabel: أضف, badge: إضافة مرة واحدة}
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "6a19c03c6864369ee0a8c202",
I/flutter ( 9202): ║                         "name": "بيري بلاست",
I/flutter ( 9202): ║                         "description": "",
I/flutter ( 9202): ║                         "imageUrl": "",
I/flutter ( 9202): ║                         "currency": "SAR",
I/flutter ( 9202): ║                         "priceHalala": 1100,
I/flutter ( 9202): ║                         "priceSar": 11,
I/flutter ( 9202): ║                         "priceLabel": "11 SAR",
I/flutter ( 9202): ║                         "kind": "item",
I/flutter ( 9202): ║                         "category": "juice",
I/flutter ( 9202): ║                         "type": "one_time",
I/flutter ( 9202): ║                         "billingMode": "flat_once",
I/flutter ( 9202): ║                         "pricingModel": "one_time",
I/flutter ( 9202): ║                         "billingUnit": "item",
I/flutter ( 9202): ║                         "ui": {title: بيري بلاست, subtitle: , ctaLabel: أضف, badge: إضافة مرة واحدة}
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "6a19c03b6864369ee0a8c201",
I/flutter ( 9202): ║                         "name": "براونيز داكن",
I/flutter ( 9202): ║                         "description": "",
I/flutter ( 9202): ║                         "imageUrl": "",
I/flutter ( 9202): ║                         "currency": "SAR",
I/flutter ( 9202): ║                         "priceHalala": 1300,
I/flutter ( 9202): ║                         "priceSar": 13,
I/flutter ( 9202): ║                         "priceLabel": "13 SAR",
I/flutter ( 9202): ║                         "kind": "item",
I/flutter ( 9202): ║                         "category": "snack",
I/flutter ( 9202): ║                         "type": "one_time",
I/flutter ( 9202): ║                         "billingMode": "flat_once",
I/flutter ( 9202): ║                         "pricingModel": "one_time",
I/flutter ( 9202): ║                         "billingUnit": "item",
I/flutter ( 9202): ║                         "ui": {title: براونيز داكن, subtitle: , ctaLabel: أضف, badge: إضافة مرة واحدة}
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "6a19c03b6864369ee0a8c200",
I/flutter ( 9202): ║                         "name": "تشيز كيك بالتوت",
I/flutter ( 9202): ║                         "description": "",
I/flutter ( 9202): ║                         "imageUrl": "",
I/flutter ( 9202): ║                         "currency": "SAR",
I/flutter ( 9202): ║                         "priceHalala": 1900,
I/flutter ( 9202): ║                         "priceSar": 19,
I/flutter ( 9202): ║                         "priceLabel": "19 SAR",
I/flutter ( 9202): ║                         "kind": "item",
I/flutter ( 9202): ║                         "category": "snack",
I/flutter ( 9202): ║                         "type": "one_time",
I/flutter ( 9202): ║                         "billingMode": "flat_once",
I/flutter ( 9202): ║                         "pricingModel": "one_time",
I/flutter ( 9202): ║                         "billingUnit": "item",
I/flutter ( 9202): ║                         "ui": {title: تشيز كيك بالتوت, subtitle: , ctaLabel: أضف, badge: إضافة مرة واحدة}
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                 ],
I/flutter ( 9202): ║                 "byCategory": {
I/flutter ( 9202): ║                     "juice": [
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "id": "6a19c03c6864369ee0a8c203",
I/flutter ( 9202): ║                             "name": "كلاسيك جرين",
I/flutter ( 9202): ║                             "description": "",
I/flutter ( 9202): ║                             "imageUrl": "",
I/flutter ( 9202): ║                             "currency": "SAR",
I/flutter ( 9202): ║                             "priceHalala": 1100,
I/flutter ( 9202): ║                             "priceSar": 11,
I/flutter ( 9202): ║                             "priceLabel": "11 SAR",
I/flutter ( 9202): ║                             "kind": "item",
I/flutter ( 9202): ║                             "category": "juice",
I/flutter ( 9202): ║                             "type": "one_time",
I/flutter ( 9202): ║                             "billingMode": "flat_once",
I/flutter ( 9202): ║                             "pricingModel": "one_time",
I/flutter ( 9202): ║                             "billingUnit": "item",
I/flutter ( 9202): ║                             "ui": {title: كلاسيك جرين, subtitle: , ctaLabel: أضف, badge: إضافة مرة واحدة}
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "id": "6a19c03c6864369ee0a8c202",
I/flutter ( 9202): ║                             "name": "بيري بلاست",
I/flutter ( 9202): ║                             "description": "",
I/flutter ( 9202): ║                             "imageUrl": "",
I/flutter ( 9202): ║                             "currency": "SAR",
I/flutter ( 9202): ║                             "priceHalala": 1100,
I/flutter ( 9202): ║                             "priceSar": 11,
I/flutter ( 9202): ║                             "priceLabel": "11 SAR",
I/flutter ( 9202): ║                             "kind": "item",
I/flutter ( 9202): ║                             "category": "juice",
I/flutter ( 9202): ║                             "type": "one_time",
I/flutter ( 9202): ║                             "billingMode": "flat_once",
I/flutter ( 9202): ║                             "pricingModel": "one_time",
I/flutter ( 9202): ║                             "billingUnit": "item",
I/flutter ( 9202): ║                             "ui": {title: بيري بلاست, subtitle: , ctaLabel: أضف, badge: إضافة مرة واحدة}
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                     ],
I/flutter ( 9202): ║                     "snack": [
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "id": "6a19c03b6864369ee0a8c201",
I/flutter ( 9202): ║                             "name": "براونيز داكن",
I/flutter ( 9202): ║                             "description": "",
I/flutter ( 9202): ║                             "imageUrl": "",
I/flutter ( 9202): ║                             "currency": "SAR",
I/flutter ( 9202): ║                             "priceHalala": 1300,
I/flutter ( 9202): ║                             "priceSar": 13,
I/flutter ( 9202): ║                             "priceLabel": "13 SAR",
I/flutter ( 9202): ║                             "kind": "item",
I/flutter ( 9202): ║                             "category": "snack",
I/flutter ( 9202): ║                             "type": "one_time",
I/flutter ( 9202): ║                             "billingMode": "flat_once",
I/flutter ( 9202): ║                             "pricingModel": "one_time",
I/flutter ( 9202): ║                             "billingUnit": "item",
I/flutter ( 9202): ║                             "ui": {title: براونيز داكن, subtitle: , ctaLabel: أضف, badge: إضافة مرة واحدة}
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "id": "6a19c03b6864369ee0a8c200",
I/flutter ( 9202): ║                             "name": "تشيز كيك بالتوت",
I/flutter ( 9202): ║                             "description": "",
I/flutter ( 9202): ║                             "imageUrl": "",
I/flutter ( 9202): ║                             "currency": "SAR",
I/flutter ( 9202): ║                             "priceHalala": 1900,
I/flutter ( 9202): ║                             "priceSar": 19,
I/flutter ( 9202): ║                             "priceLabel": "19 SAR",
I/flutter ( 9202): ║                             "kind": "item",
I/flutter ( 9202): ║                             "category": "snack",
I/flutter ( 9202): ║                             "type": "one_time",
I/flutter ( 9202): ║                             "billingMode": "flat_once",
I/flutter ( 9202): ║                             "pricingModel": "one_time",
I/flutter ( 9202): ║                             "billingUnit": "item",
I/flutter ( 9202): ║                             "ui": {title: تشيز كيك بالتوت, subtitle: , ctaLabel: أضف, badge: إضافة مرة واحدة}
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                     ]
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║                 "totalCount": 4
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "builderCatalogV2": {
I/flutter ( 9202): ║                 "catalogVersion": "meal_planner_menu.v2",
I/flutter ( 9202): ║                 "currency": "SAR",
I/flutter ( 9202): ║                 "sections": [
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "section:standard_meal",
I/flutter ( 9202): ║                         "key": "standard_meal",
I/flutter ( 9202): ║                         "type": "meal_builder",
I/flutter ( 9202): ║                         "name": "وجبة عادية",
I/flutter ( 9202): ║                         "ui": {cardVariant: standard},
I/flutter ( 9202): ║                         "products": [
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "id": "virtual:standard_meal",
I/flutter ( 9202): ║                                 "key": "standard_meal",
I/flutter ( 9202): ║                                 "type": "virtual_builder_product",
I/flutter ( 9202): ║                                 "isVirtual": true,
I/flutter ( 9202): ║                                 "selectionType": "standard_meal",
I/flutter ( 9202): ║                                 "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
I/flutter ( 9202): ║                                 "optionGroups": [
I/flutter ( 9202): ║                                    {
I/flutter ( 9202): ║                                         "id": "6a19c0166864369ee0a8c0b3"
I/flutter ( 9202): ║                                         "groupId": "6a19c0166864369ee0a8c0b3"
I/flutter ( 9202): ║                                         "key": "protein",
I/flutter ( 9202): ║                                         "sourceKey": "proteins",
I/flutter ( 9202): ║                                         "name": "بروتينات",
I/flutter ( 9202): ║                                         "nameI18n": {ar: بروتينات, en: Proteins},
I/flutter ( 9202): ║                                         "minSelections": 1,
I/flutter ( 9202): ║                                         "maxSelections": 1,
I/flutter ( 9202): ║                                         "isRequired": true,
I/flutter ( 9202): ║                                         "sortOrder": 10,
I/flutter ( 9202): ║                                         "ui": {displayStyle: radio_cards},
I/flutter ( 9202): ║                                         "rules": {
I/flutter ( 9202): ║                                             "beef": {proteinFamilyKey: beef, maxSlotsPerDay: 1}
I/flutter ( 9202): ║                                        }
I/flutter ( 9202): ║                                         "options": [
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c0176864369ee0a8c0b4"
I/flutter ( 9202): ║                                                 "optionId": "6a19c0176864369ee0a8c0b4"
I/flutter ( 9202): ║                                                 "key": "chicken"
I/flutter ( 9202): ║                                                 "name": "دجاج"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: دجاج, en: دجاج},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 10
I/flutter ( 9202): ║                                                 "displayCategoryKey": "chicken"
I/flutter ( 9202): ║                                                 "proteinFamilyKey": "chicken"
I/flutter ( 9202): ║                                                 "premiumKey": null
I/flutter ( 9202): ║                                                 "selectionType": "standard_meal"
I/flutter ( 9202): ║                                                 "isPremium": false
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            },
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c0176864369ee0a8c0b6"
I/flutter ( 9202): ║                                                 "optionId": "6a19c0176864369ee0a8c0b6"
I/flutter ( 9202): ║                                                 "key": "beef"
I/flutter ( 9202): ║                                                 "name": "لحم"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: لحم, en: لحم},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 20
I/flutter ( 9202): ║                                                 "displayCategoryKey": "beef"
I/flutter ( 9202): ║                                                 "proteinFamilyKey": "beef"
I/flutter ( 9202): ║                                                 "premiumKey": null
I/flutter ( 9202): ║                                                 "selectionType": "standard_meal"
I/flutter ( 9202): ║                                                 "isPremium": false
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            },
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c0176864369ee0a8c0b7"
I/flutter ( 9202): ║                                                 "optionId": "6a19c0176864369ee0a8c0b7"
I/flutter ( 9202): ║                                                 "key": "fish"
I/flutter ( 9202): ║                                                 "name": "سمك"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: سمك, en: سمك},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 30
I/flutter ( 9202): ║                                                 "displayCategoryKey": "fish"
I/flutter ( 9202): ║                                                 "proteinFamilyKey": "fish"
I/flutter ( 9202): ║                                                 "premiumKey": null
I/flutter ( 9202): ║                                                 "selectionType": "standard_meal"
I/flutter ( 9202): ║                                                 "isPremium": false
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            },
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c0176864369ee0a8c0b9"
I/flutter ( 9202): ║                                                 "optionId": "6a19c0176864369ee0a8c0b9"
I/flutter ( 9202): ║                                                 "key": "eggs"
I/flutter ( 9202): ║                                                 "name": "بيض"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: بيض, en: بيض},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 40
I/flutter ( 9202): ║                                                 "displayCategoryKey": "eggs"
I/flutter ( 9202): ║                                                 "proteinFamilyKey": "eggs"
I/flutter ( 9202): ║                                                 "premiumKey": null
I/flutter ( 9202): ║                                                 "selectionType": "standard_meal"
I/flutter ( 9202): ║                                                 "isPremium": false
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            }
I/flutter ( 9202): ║                                         ]
I/flutter ( 9202): ║                                    },
I/flutter ( 9202): ║                                    {
I/flutter ( 9202): ║                                         "id": "6a19c0186864369ee0a8c0bd"
I/flutter ( 9202): ║                                         "groupId": "6a19c0186864369ee0a8c0bd"
I/flutter ( 9202): ║                                         "key": "carb",
I/flutter ( 9202): ║                                         "sourceKey": "carbs",
I/flutter ( 9202): ║                                         "name": "كارب",
I/flutter ( 9202): ║                                         "nameI18n": {ar: كارب, en: Carbs},
I/flutter ( 9202): ║                                         "minSelections": 1,
I/flutter ( 9202): ║                                         "maxSelections": 2,
I/flutter ( 9202): ║                                         "isRequired": true,
I/flutter ( 9202): ║                                         "sortOrder": 20,
I/flutter ( 9202): ║                                         "ui": {displayStyle: chips},
I/flutter ( 9202): ║                                         "rules": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
I/flutter ( 9202): ║                                         "options": [
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c0186864369ee0a8c0be"
I/flutter ( 9202): ║                                                 "optionId": "6a19c0186864369ee0a8c0be"
I/flutter ( 9202): ║                                                 "key": "white_rice"
I/flutter ( 9202): ║                                                 "name": "ارز ابيض"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: ارز ابيض, en: ارز ابيض},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 10
I/flutter ( 9202): ║                                                 "displayCategoryKey": "standard_carbs"
I/flutter ( 9202): ║                                                 "proteinFamilyKey": ""
I/flutter ( 9202): ║                                                 "premiumKey": null
I/flutter ( 9202): ║                                                 "selectionType": ""
I/flutter ( 9202): ║                                                 "isPremium": false
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            },
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c0186864369ee0a8c0bf"
I/flutter ( 9202): ║                                                 "optionId": "6a19c0186864369ee0a8c0bf"
I/flutter ( 9202): ║                                                 "key": "brown_rice"
I/flutter ( 9202): ║                                                 "name": "ارز اسمر"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: ارز اسمر, en: ارز اسمر},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 20
I/flutter ( 9202): ║                                                 "displayCategoryKey": "standard_carbs"
I/flutter ( 9202): ║                                                 "proteinFamilyKey": ""
I/flutter ( 9202): ║                                                 "premiumKey": null
I/flutter ( 9202): ║                                                 "selectionType": ""
I/flutter ( 9202): ║                                                 "isPremium": false
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            },
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c0186864369ee0a8c0c1"
I/flutter ( 9202): ║                                                 "optionId": "6a19c0186864369ee0a8c0c1"
I/flutter ( 9202): ║                                                 "key": "potato"
I/flutter ( 9202): ║                                                 "name": "بطاطس"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: بطاطس, en: بطاطس},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 30
I/flutter ( 9202): ║                                                 "displayCategoryKey": "standard_carbs"
I/flutter ( 9202): ║                                                 "proteinFamilyKey": ""
I/flutter ( 9202): ║                                                 "premiumKey": null
I/flutter ( 9202): ║                                                 "selectionType": ""
I/flutter ( 9202): ║                                                 "isPremium": false
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            },
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c0196864369ee0a8c0c2"
I/flutter ( 9202): ║                                                 "optionId": "6a19c0196864369ee0a8c0c2"
I/flutter ( 9202): ║                                                 "key": "sweet_potato"
I/flutter ( 9202): ║                                                 "name": "بطاطا حلوة"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: بطاطا حلوة, en: بطاطا حلوة},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 40
I/flutter ( 9202): ║                                                 "displayCategoryKey": "standard_carbs"
I/flutter ( 9202): ║                                                 "proteinFamilyKey": ""
I/flutter ( 9202): ║                                                 "premiumKey": null
I/flutter ( 9202): ║                                                 "selectionType": ""
I/flutter ( 9202): ║                                                 "isPremium": false
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            },
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c0196864369ee0a8c0c3"
I/flutter ( 9202): ║                                                 "optionId": "6a19c0196864369ee0a8c0c3"
I/flutter ( 9202): ║                                                 "key": "pasta"
I/flutter ( 9202): ║                                                 "name": "مكرونة"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: مكرونة, en: مكرونة},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 50
I/flutter ( 9202): ║                                                 "displayCategoryKey": "standard_carbs"
I/flutter ( 9202): ║                                                 "proteinFamilyKey": ""
I/flutter ( 9202): ║                                                 "premiumKey": null
I/flutter ( 9202): ║                                                 "selectionType": ""
I/flutter ( 9202): ║                                                 "isPremium": false
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            }
I/flutter ( 9202): ║                                         ]
I/flutter ( 9202): ║                                    }
I/flutter ( 9202): ║                                 ]
I/flutter ( 9202): ║                            }
I/flutter ( 9202): ║                         ]
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "section:premium_meal",
I/flutter ( 9202): ║                         "key": "premium_meal",
I/flutter ( 9202): ║                         "type": "meal_builder",
I/flutter ( 9202): ║                         "name": "وجبة مميزة",
I/flutter ( 9202): ║                         "ui": {cardVariant: premium},
I/flutter ( 9202): ║                         "products": [
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "id": "virtual:premium_meal",
I/flutter ( 9202): ║                                 "key": "premium_meal",
I/flutter ( 9202): ║                                 "type": "virtual_builder_product",
I/flutter ( 9202): ║                                 "isVirtual": true,
I/flutter ( 9202): ║                                 "selectionType": "premium_meal",
I/flutter ( 9202): ║                                 "ui": {cardVariant: premium, badge: , ctaLabel: , imageRatio: square},
I/flutter ( 9202): ║                                 "optionGroups": [
I/flutter ( 9202): ║                                    {
I/flutter ( 9202): ║                                         "id": "6a19c0166864369ee0a8c0b3"
I/flutter ( 9202): ║                                         "groupId": "6a19c0166864369ee0a8c0b3"
I/flutter ( 9202): ║                                         "key": "protein",
I/flutter ( 9202): ║                                         "sourceKey": "proteins",
I/flutter ( 9202): ║                                         "name": "بروتينات",
I/flutter ( 9202): ║                                         "nameI18n": {ar: بروتينات, en: Proteins},
I/flutter ( 9202): ║                                         "minSelections": 1,
I/flutter ( 9202): ║                                         "maxSelections": 1,
I/flutter ( 9202): ║                                         "isRequired": true,
I/flutter ( 9202): ║                                         "sortOrder": 10,
I/flutter ( 9202): ║                                         "ui": {displayStyle: radio_cards},
I/flutter ( 9202): ║                                         "rules": {},
I/flutter ( 9202): ║                                         "options": [
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c0176864369ee0a8c0ba"
I/flutter ( 9202): ║                                                 "optionId": "6a19c0176864369ee0a8c0ba"
I/flutter ( 9202): ║                                                 "key": "beef_steak"
I/flutter ( 9202): ║                                                 "name": "ستيك لحم"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: ستيك لحم, en: ستيك لحم},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 50
I/flutter ( 9202): ║                                                 "displayCategoryKey": "premium"
I/flutter ( 9202): ║                                                 "proteinFamilyKey": "beef"
I/flutter ( 9202): ║                                                 "premiumKey": "beef_steak"
I/flutter ( 9202): ║                                                 "extraFeeHalala": 2000
I/flutter ( 9202): ║                                                 "selectionType": "premium_meal"
I/flutter ( 9202): ║                                                 "isPremium": true
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            },
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c0176864369ee0a8c0bb"
I/flutter ( 9202): ║                                                 "optionId": "6a19c0176864369ee0a8c0bb"
I/flutter ( 9202): ║                                                 "key": "shrimp"
I/flutter ( 9202): ║                                                 "name": "جمبري"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: جمبري, en: جمبري},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 60
I/flutter ( 9202): ║                                                 "displayCategoryKey": "premium"
I/flutter ( 9202): ║                                                 "proteinFamilyKey": "fish"
I/flutter ( 9202): ║                                                 "premiumKey": "shrimp"
I/flutter ( 9202): ║                                                 "extraFeeHalala": 2000
I/flutter ( 9202): ║                                                 "selectionType": "premium_meal"
I/flutter ( 9202): ║                                                 "isPremium": true
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            },
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c0186864369ee0a8c0bc"
I/flutter ( 9202): ║                                                 "optionId": "6a19c0186864369ee0a8c0bc"
I/flutter ( 9202): ║                                                 "key": "salmon"
I/flutter ( 9202): ║                                                 "name": "سالمون"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: سالمون, en: سالمون},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 70
I/flutter ( 9202): ║                                                 "displayCategoryKey": "premium"
I/flutter ( 9202): ║                                                 "proteinFamilyKey": "fish"
I/flutter ( 9202): ║                                                 "premiumKey": "salmon"
I/flutter ( 9202): ║                                                 "extraFeeHalala": 2000
I/flutter ( 9202): ║                                                 "selectionType": "premium_meal"
I/flutter ( 9202): ║                                                 "isPremium": true
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            }
I/flutter ( 9202): ║                                         ]
I/flutter ( 9202): ║                                    },
I/flutter ( 9202): ║                                    {
I/flutter ( 9202): ║                                         "id": "6a19c0186864369ee0a8c0bd"
I/flutter ( 9202): ║                                         "groupId": "6a19c0186864369ee0a8c0bd"
I/flutter ( 9202): ║                                         "key": "carb",
I/flutter ( 9202): ║                                         "sourceKey": "carbs",
I/flutter ( 9202): ║                                         "name": "كارب",
I/flutter ( 9202): ║                                         "nameI18n": {ar: كارب, en: Carbs},
I/flutter ( 9202): ║                                         "minSelections": 1,
I/flutter ( 9202): ║                                         "maxSelections": 2,
I/flutter ( 9202): ║                                         "isRequired": true,
I/flutter ( 9202): ║                                         "sortOrder": 20,
I/flutter ( 9202): ║                                         "ui": {displayStyle: chips},
I/flutter ( 9202): ║                                         "rules": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
I/flutter ( 9202): ║                                         "options": [
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c0186864369ee0a8c0be"
I/flutter ( 9202): ║                                                 "optionId": "6a19c0186864369ee0a8c0be"
I/flutter ( 9202): ║                                                 "key": "white_rice"
I/flutter ( 9202): ║                                                 "name": "ارز ابيض"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: ارز ابيض, en: ارز ابيض},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 10
I/flutter ( 9202): ║                                                 "displayCategoryKey": "standard_carbs"
I/flutter ( 9202): ║                                                 "proteinFamilyKey": ""
I/flutter ( 9202): ║                                                 "premiumKey": null
I/flutter ( 9202): ║                                                 "selectionType": ""
I/flutter ( 9202): ║                                                 "isPremium": false
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            },
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c0186864369ee0a8c0bf"
I/flutter ( 9202): ║                                                 "optionId": "6a19c0186864369ee0a8c0bf"
I/flutter ( 9202): ║                                                 "key": "brown_rice"
I/flutter ( 9202): ║                                                 "name": "ارز اسمر"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: ارز اسمر, en: ارز اسمر},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 20
I/flutter ( 9202): ║                                                 "displayCategoryKey": "standard_carbs"
I/flutter ( 9202): ║                                                 "proteinFamilyKey": ""
I/flutter ( 9202): ║                                                 "premiumKey": null
I/flutter ( 9202): ║                                                 "selectionType": ""
I/flutter ( 9202): ║                                                 "isPremium": false
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            },
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c0186864369ee0a8c0c1"
I/flutter ( 9202): ║                                                 "optionId": "6a19c0186864369ee0a8c0c1"
I/flutter ( 9202): ║                                                 "key": "potato"
I/flutter ( 9202): ║                                                 "name": "بطاطس"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: بطاطس, en: بطاطس},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 30
I/flutter ( 9202): ║                                                 "displayCategoryKey": "standard_carbs"
I/flutter ( 9202): ║                                                 "proteinFamilyKey": ""
I/flutter ( 9202): ║                                                 "premiumKey": null
I/flutter ( 9202): ║                                                 "selectionType": ""
I/flutter ( 9202): ║                                                 "isPremium": false
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            },
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c0196864369ee0a8c0c2"
I/flutter ( 9202): ║                                                 "optionId": "6a19c0196864369ee0a8c0c2"
I/flutter ( 9202): ║                                                 "key": "sweet_potato"
I/flutter ( 9202): ║                                                 "name": "بطاطا حلوة"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: بطاطا حلوة, en: بطاطا حلوة},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 40
I/flutter ( 9202): ║                                                 "displayCategoryKey": "standard_carbs"
I/flutter ( 9202): ║                                                 "proteinFamilyKey": ""
I/flutter ( 9202): ║                                                 "premiumKey": null
I/flutter ( 9202): ║                                                 "selectionType": ""
I/flutter ( 9202): ║                                                 "isPremium": false
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            },
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c0196864369ee0a8c0c3"
I/flutter ( 9202): ║                                                 "optionId": "6a19c0196864369ee0a8c0c3"
I/flutter ( 9202): ║                                                 "key": "pasta"
I/flutter ( 9202): ║                                                 "name": "مكرونة"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: مكرونة, en: مكرونة},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 50
I/flutter ( 9202): ║                                                 "displayCategoryKey": "standard_carbs"
I/flutter ( 9202): ║                                                 "proteinFamilyKey": ""
I/flutter ( 9202): ║                                                 "premiumKey": null
I/flutter ( 9202): ║                                                 "selectionType": ""
I/flutter ( 9202): ║                                                 "isPremium": false
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            }
I/flutter ( 9202): ║                                         ]
I/flutter ( 9202): ║                                    }
I/flutter ( 9202): ║                                 ]
I/flutter ( 9202): ║                            }
I/flutter ( 9202): ║                         ]
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "section:sandwich",
I/flutter ( 9202): ║                         "key": "sandwich",
I/flutter ( 9202): ║                         "type": "product_list",
I/flutter ( 9202): ║                         "name": "ساندويتشات",
I/flutter ( 9202): ║                         "ui": {cardVariant: standard},
I/flutter ( 9202): ║                         "products": [
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "id": "6a19c0376864369ee0a8c1ef",
I/flutter ( 9202): ║                                 "key": "chicken_sandwich",
I/flutter ( 9202): ║                                 "type": "menu_product",
I/flutter ( 9202): ║                                 "isVirtual": false,
I/flutter ( 9202): ║                                 "selectionType": "sandwich",
I/flutter ( 9202): ║                                 "name": "ساندويتش دجاج",
I/flutter ( 9202): ║                                 "nameI18n": {ar: ساندويتش دجاج, en: Chicken Sandwich},
I/flutter ( 9202): ║                                 "description": "",
I/flutter ( 9202): ║                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                 "imageUrl": "",
I/flutter ( 9202): ║                                 "itemType": "cold_sandwich",
I/flutter ( 9202): ║                                 "pricingModel": "fixed",
I/flutter ( 9202): ║                                 "priceHalala": 1300,
I/flutter ( 9202): ║                                 "currency": "SAR",
I/flutter ( 9202): ║                                 "sortOrder": 80,
I/flutter ( 9202): ║                                 "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
I/flutter ( 9202): ║                                 "optionGroups": []
I/flutter ( 9202): ║                            },
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "id": "6a19c0376864369ee0a8c1f0",
I/flutter ( 9202): ║                                 "key": "tuna_sandwich",
I/flutter ( 9202): ║                                 "type": "menu_product",
I/flutter ( 9202): ║                                 "isVirtual": false,
I/flutter ( 9202): ║                                 "selectionType": "sandwich",
I/flutter ( 9202): ║                                 "name": "ساندويتش تونا",
I/flutter ( 9202): ║                                 "nameI18n": {ar: ساندويتش تونا, en: Tuna Sandwich},
I/flutter ( 9202): ║                                 "description": "",
I/flutter ( 9202): ║                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                 "imageUrl": "",
I/flutter ( 9202): ║                                 "itemType": "cold_sandwich",
I/flutter ( 9202): ║                                 "pricingModel": "fixed",
I/flutter ( 9202): ║                                 "priceHalala": 1300,
I/flutter ( 9202): ║                                 "currency": "SAR",
I/flutter ( 9202): ║                                 "sortOrder": 90,
I/flutter ( 9202): ║                                 "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
I/flutter ( 9202): ║                                 "optionGroups": []
I/flutter ( 9202): ║                            },
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "id": "6a19c0376864369ee0a8c1f2",
I/flutter ( 9202): ║                                 "key": "sourdough_turkey",
I/flutter ( 9202): ║                                 "type": "menu_product",
I/flutter ( 9202): ║                                 "isVirtual": false,
I/flutter ( 9202): ║                                 "selectionType": "sandwich",
I/flutter ( 9202): ║                                 "name": "ساوردو تركي",
I/flutter ( 9202): ║                                 "nameI18n": {ar: ساوردو تركي, en: Sourdough Turkey},
I/flutter ( 9202): ║                                 "description": "",
I/flutter ( 9202): ║                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                 "imageUrl": "",
I/flutter ( 9202): ║                                 "itemType": "sourdough",
I/flutter ( 9202): ║                                 "pricingModel": "fixed",
I/flutter ( 9202): ║                                 "priceHalala": 2300,
I/flutter ( 9202): ║                                 "currency": "SAR",
I/flutter ( 9202): ║                                 "sortOrder": 100,
I/flutter ( 9202): ║                                 "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
I/flutter ( 9202): ║                                 "optionGroups": []
I/flutter ( 9202): ║                            }
I/flutter ( 9202): ║                         ]
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "section:premium_large_salad",
I/flutter ( 9202): ║                         "key": "premium_large_salad",
I/flutter ( 9202): ║                         "type": "configurable_product",
I/flutter ( 9202): ║                         "name": "سلطة كبيرة مميزة",
I/flutter ( 9202): ║                         "ui": {cardVariant: large_salad},
I/flutter ( 9202): ║                         "products": [
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "id": "6a19c02a6864369ee0a8c10b",
I/flutter ( 9202): ║                                 "key": "premium_large_salad",
I/flutter ( 9202): ║                                 "type": "menu_product",
I/flutter ( 9202): ║                                 "isVirtual": false,
I/flutter ( 9202): ║                                 "selectionType": "premium_large_salad",
I/flutter ( 9202): ║                                 "name": "سلطة كبيرة مميزة",
I/flutter ( 9202): ║                                 "nameI18n": {ar: سلطة كبيرة مميزة, en: Premium Large Salad},
I/flutter ( 9202): ║                                 "description": "",
I/flutter ( 9202): ║                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                 "imageUrl": "",
I/flutter ( 9202): ║                                 "itemType": "basic_salad",
I/flutter ( 9202): ║                                 "pricingModel": "fixed",
I/flutter ( 9202): ║                                 "priceHalala": 2900,
I/flutter ( 9202): ║                                 "currency": "SAR",
I/flutter ( 9202): ║                                 "sortOrder": 30,
I/flutter ( 9202): ║                                 "ui": {cardVariant: large_salad, badge: , ctaLabel: , imageRatio: square},
I/flutter ( 9202): ║                                 "optionGroups": [
I/flutter ( 9202): ║                                    {
I/flutter ( 9202): ║                                         "id": "6a19c0196864369ee0a8c0c4"
I/flutter ( 9202): ║                                         "groupId": "6a19c0196864369ee0a8c0c4"
I/flutter ( 9202): ║                                         "key": "leafy_greens"
I/flutter ( 9202): ║                                         "sourceKey": "leafy_greens"
I/flutter ( 9202): ║                                         "name": "ورقيات",
I/flutter ( 9202): ║                                         "nameI18n": {ar: ورقيات, en: Leafy Greens},
I/flutter ( 9202): ║                                         "minSelections": 0,
I/flutter ( 9202): ║                                         "maxSelections": 99,
I/flutter ( 9202): ║                                         "isRequired": false,
I/flutter ( 9202): ║                                         "sortOrder": 10,
I/flutter ( 9202): ║                                         "ui": {displayStyle: checkbox_grid},
I/flutter ( 9202): ║                                         "rules": {minSelect: 0, maxSelect: 99, source: ingredient},
I/flutter ( 9202): ║                                         "options": [
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c0196864369ee0a8c0c6"
I/flutter ( 9202): ║                                                 "optionId": "6a19c0196864369ee0a8c0c6"
I/flutter ( 9202): ║                                                 "key": "lettuce"
I/flutter ( 9202): ║                                                 "name": "خس"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: خس, en: Lettuce},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 10
I/flutter ( 9202): ║                                                 "displayCategoryKey": ""
I/flutter ( 9202): ║                                                 "proteinFamilyKey": ""
I/flutter ( 9202): ║                                                 "premiumKey": null
I/flutter ( 9202): ║                                                 "extraFeeHalala": 0
I/flutter ( 9202): ║                                                 "extraPriceHalala": 0
I/flutter ( 9202): ║                                                 "selectionType": ""
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            },
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c0196864369ee0a8c0c7"
I/flutter ( 9202): ║                                                 "optionId": "6a19c0196864369ee0a8c0c7"
I/flutter ( 9202): ║                                                 "key": "arugula"
I/flutter ( 9202): ║                                                 "name": "جرجير"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: جرجير, en: Arugula},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 20
I/flutter ( 9202): ║                                                 "displayCategoryKey": ""
I/flutter ( 9202): ║                                                 "proteinFamilyKey": ""
I/flutter ( 9202): ║                                                 "premiumKey": null
I/flutter ( 9202): ║                                                 "extraFeeHalala": 0
I/flutter ( 9202): ║                                                 "extraPriceHalala": 0
I/flutter ( 9202): ║                                                 "selectionType": ""
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            },
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c0196864369ee0a8c0c8"
I/flutter ( 9202): ║                                                 "optionId": "6a19c0196864369ee0a8c0c8"
I/flutter ( 9202): ║                                                 "key": "spinach"
I/flutter ( 9202): ║                                                 "name": "سبانخ"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: سبانخ, en: Spinach},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 30
I/flutter ( 9202): ║                                                 "displayCategoryKey": ""
I/flutter ( 9202): ║                                                 "proteinFamilyKey": ""
I/flutter ( 9202): ║                                                 "premiumKey": null
I/flutter ( 9202): ║                                                 "extraFeeHalala": 0
I/flutter ( 9202): ║                                                 "extraPriceHalala": 0
I/flutter ( 9202): ║                                                 "selectionType": ""
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            }
I/flutter ( 9202): ║                                         ]
I/flutter ( 9202): ║                                    },
I/flutter ( 9202): ║                                    {
I/flutter ( 9202): ║                                         "id": "6a19c01a6864369ee0a8c0c9"
I/flutter ( 9202): ║                                         "groupId": "6a19c01a6864369ee0a8c0c9"
I/flutter ( 9202): ║                                         "key": "vegetables"
I/flutter ( 9202): ║                                         "sourceKey": "vegetables_legumes"
I/flutter ( 9202): ║                                         "name": "خضار",
I/flutter ( 9202): ║                                         "nameI18n": {ar: خضار, en: Vegetables},
I/flutter ( 9202): ║                                         "minSelections": 0,
I/flutter ( 9202): ║                                         "maxSelections": 99,
I/flutter ( 9202): ║                                         "isRequired": false,
I/flutter ( 9202): ║                                         "sortOrder": 20,
I/flutter ( 9202): ║                                         "ui": {displayStyle: checkbox_grid},
I/flutter ( 9202): ║                                         "rules": {minSelect: 0, maxSelect: 99, source: ingredient},
I/flutter ( 9202): ║                                         "options": [
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c01a6864369ee0a8c0ca"
I/flutter ( 9202): ║                                                 "optionId": "6a19c01a6864369ee0a8c0ca"
I/flutter ( 9202): ║                                                 "key": "cucumber"
I/flutter ( 9202): ║                                                 "name": "خيار"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: خيار, en: Cucumber},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 10
I/flutter ( 9202): ║                                                 "displayCategoryKey": ""
I/flutter ( 9202): ║                                                 "proteinFamilyKey": ""
I/flutter ( 9202): ║                                                 "premiumKey": null
I/flutter ( 9202): ║                                                 "extraFeeHalala": 0
I/flutter ( 9202): ║                                                 "extraPriceHalala": 0
I/flutter ( 9202): ║                                                 "selectionType": ""
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            },
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c01a6864369ee0a8c0cb"
I/flutter ( 9202): ║                                                 "optionId": "6a19c01a6864369ee0a8c0cb"
I/flutter ( 9202): ║                                                 "key": "tomato"
I/flutter ( 9202): ║                                                 "name": "طماطم"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: طماطم, en: Tomato},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 20
I/flutter ( 9202): ║                                                 "displayCategoryKey": ""
I/flutter ( 9202): ║                                                 "proteinFamilyKey": ""
I/flutter ( 9202): ║                                                 "premiumKey": null
I/flutter ( 9202): ║                                                 "extraFeeHalala": 0
I/flutter ( 9202): ║                                                 "extraPriceHalala": 0
I/flutter ( 9202): ║                                                 "selectionType": ""
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            },
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c01a6864369ee0a8c0cc"
I/flutter ( 9202): ║                                                 "optionId": "6a19c01a6864369ee0a8c0cc"
I/flutter ( 9202): ║                                                 "key": "corn"
I/flutter ( 9202): ║                                                 "name": "ذرة"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: ذرة, en: Corn},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 30
I/flutter ( 9202): ║                                                 "displayCategoryKey": ""
I/flutter ( 9202): ║                                                 "proteinFamilyKey": ""
I/flutter ( 9202): ║                                                 "premiumKey": null
I/flutter ( 9202): ║                                                 "extraFeeHalala": 0
I/flutter ( 9202): ║                                                 "extraPriceHalala": 0
I/flutter ( 9202): ║                                                 "selectionType": ""
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            },
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c01a6864369ee0a8c0cd"
I/flutter ( 9202): ║                                                 "optionId": "6a19c01a6864369ee0a8c0cd"
I/flutter ( 9202): ║                                                 "key": "carrot"
I/flutter ( 9202): ║                                                 "name": "جزر"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: جزر, en: Carrot},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 40
I/flutter ( 9202): ║                                                 "displayCategoryKey": ""
I/flutter ( 9202): ║                                                 "proteinFamilyKey": ""
I/flutter ( 9202): ║                                                 "premiumKey": null
I/flutter ( 9202): ║                                                 "extraFeeHalala": 0
I/flutter ( 9202): ║                                                 "extraPriceHalala": 0
I/flutter ( 9202): ║                                                 "selectionType": ""
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            },
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c01a6864369ee0a8c0ce"
I/flutter ( 9202): ║                                                 "optionId": "6a19c01a6864369ee0a8c0ce"
I/flutter ( 9202): ║                                                 "key": "red_beans"
I/flutter ( 9202): ║                                                 "name": "فاصوليا حمراء"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: فاصوليا حمراء, en: Red Beans},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 50
I/flutter ( 9202): ║                                                 "displayCategoryKey": ""
I/flutter ( 9202): ║                                                 "proteinFamilyKey": ""
I/flutter ( 9202): ║                                                 "premiumKey": null
I/flutter ( 9202): ║                                                 "extraFeeHalala": 0
I/flutter ( 9202): ║                                                 "extraPriceHalala": 0
I/flutter ( 9202): ║                                                 "selectionType": ""
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            }
I/flutter ( 9202): ║                                         ]
I/flutter ( 9202): ║                                    },
I/flutter ( 9202): ║                                    {
I/flutter ( 9202): ║                                         "id": "6a19c0166864369ee0a8c0b3"
I/flutter ( 9202): ║                                         "groupId": "6a19c0166864369ee0a8c0b3"
I/flutter ( 9202): ║                                         "key": "protein",
I/flutter ( 9202): ║                                         "sourceKey": "proteins",
I/flutter ( 9202): ║                                         "name": "بروتين",
I/flutter ( 9202): ║                                         "nameI18n": {ar: بروتين, en: Protein},
I/flutter ( 9202): ║                                         "minSelections": 1,
I/flutter ( 9202): ║                                         "maxSelections": 1,
I/flutter ( 9202): ║                                         "isRequired": true,
I/flutter ( 9202): ║                                         "sortOrder": 30,
I/flutter ( 9202): ║                                         "ui": {displayStyle: radio_cards},
I/flutter ( 9202): ║                                         "rules": {minSelect: 1, maxSelect: 1, source: protein},
I/flutter ( 9202): ║                                         "options": [
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c0176864369ee0a8c0b4"
I/flutter ( 9202): ║                                                 "optionId": "6a19c0176864369ee0a8c0b4"
I/flutter ( 9202): ║                                                 "key": "chicken"
I/flutter ( 9202): ║                                                 "name": "دجاج"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: دجاج, en: دجاج},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 10
I/flutter ( 9202): ║                                                 "displayCategoryKey": "chicken"
I/flutter ( 9202): ║                                                 "proteinFamilyKey": "chicken"
I/flutter ( 9202): ║                                                 "premiumKey": "chicken"
I/flutter ( 9202): ║                                                 "extraFeeHalala": 0
I/flutter ( 9202): ║                                                 "selectionType": "standard_meal"
I/flutter ( 9202): ║                                                 "isPremium": false
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            },
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c0176864369ee0a8c0b6"
I/flutter ( 9202): ║                                                 "optionId": "6a19c0176864369ee0a8c0b6"
I/flutter ( 9202): ║                                                 "key": "beef"
I/flutter ( 9202): ║                                                 "name": "لحم"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: لحم, en: لحم},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 20
I/flutter ( 9202): ║                                                 "displayCategoryKey": "beef"
I/flutter ( 9202): ║                                                 "proteinFamilyKey": "beef"
I/flutter ( 9202): ║                                                 "premiumKey": "beef"
I/flutter ( 9202): ║                                                 "extraFeeHalala": 0
I/flutter ( 9202): ║                                                 "selectionType": "standard_meal"
I/flutter ( 9202): ║                                                 "isPremium": false
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            },
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c0176864369ee0a8c0b7"
I/flutter ( 9202): ║                                                 "optionId": "6a19c0176864369ee0a8c0b7"
I/flutter ( 9202): ║                                                 "key": "fish"
I/flutter ( 9202): ║                                                 "name": "سمك"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: سمك, en: سمك},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 30
I/flutter ( 9202): ║                                                 "displayCategoryKey": "fish"
I/flutter ( 9202): ║                                                 "proteinFamilyKey": "fish"
I/flutter ( 9202): ║                                                 "premiumKey": "fish"
I/flutter ( 9202): ║                                                 "extraFeeHalala": 0
I/flutter ( 9202): ║                                                 "selectionType": "standard_meal"
I/flutter ( 9202): ║                                                 "isPremium": false
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            },
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c0176864369ee0a8c0b9"
I/flutter ( 9202): ║                                                 "optionId": "6a19c0176864369ee0a8c0b9"
I/flutter ( 9202): ║                                                 "key": "eggs"
I/flutter ( 9202): ║                                                 "name": "بيض"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: بيض, en: بيض},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 40
I/flutter ( 9202): ║                                                 "displayCategoryKey": "eggs"
I/flutter ( 9202): ║                                                 "proteinFamilyKey": "eggs"
I/flutter ( 9202): ║                                                 "premiumKey": "eggs"
I/flutter ( 9202): ║                                                 "extraFeeHalala": 0
I/flutter ( 9202): ║                                                 "selectionType": "standard_meal"
I/flutter ( 9202): ║                                                 "isPremium": false
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            },
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c0176864369ee0a8c0ba"
I/flutter ( 9202): ║                                                 "optionId": "6a19c0176864369ee0a8c0ba"
I/flutter ( 9202): ║                                                 "key": "beef_steak"
I/flutter ( 9202): ║                                                 "name": "ستيك لحم"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: ستيك لحم, en: ستيك لحم},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 50
I/flutter ( 9202): ║                                                 "displayCategoryKey": "premium"
I/flutter ( 9202): ║                                                 "proteinFamilyKey": "beef"
I/flutter ( 9202): ║                                                 "premiumKey": "beef_steak"
I/flutter ( 9202): ║                                                 "extraFeeHalala": 2000
I/flutter ( 9202): ║                                                 "selectionType": "premium_meal"
I/flutter ( 9202): ║                                                 "isPremium": true
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            },
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c0176864369ee0a8c0bb"
I/flutter ( 9202): ║                                                 "optionId": "6a19c0176864369ee0a8c0bb"
I/flutter ( 9202): ║                                                 "key": "shrimp"
I/flutter ( 9202): ║                                                 "name": "جمبري"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: جمبري, en: جمبري},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 60
I/flutter ( 9202): ║                                                 "displayCategoryKey": "premium"
I/flutter ( 9202): ║                                                 "proteinFamilyKey": "fish"
I/flutter ( 9202): ║                                                 "premiumKey": "shrimp"
I/flutter ( 9202): ║                                                 "extraFeeHalala": 2000
I/flutter ( 9202): ║                                                 "selectionType": "premium_meal"
I/flutter ( 9202): ║                                                 "isPremium": true
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            },
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c0186864369ee0a8c0bc"
I/flutter ( 9202): ║                                                 "optionId": "6a19c0186864369ee0a8c0bc"
I/flutter ( 9202): ║                                                 "key": "salmon"
I/flutter ( 9202): ║                                                 "name": "سالمون"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: سالمون, en: سالمون},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 70
I/flutter ( 9202): ║                                                 "displayCategoryKey": "premium"
I/flutter ( 9202): ║                                                 "proteinFamilyKey": "fish"
I/flutter ( 9202): ║                                                 "premiumKey": "salmon"
I/flutter ( 9202): ║                                                 "extraFeeHalala": 2000
I/flutter ( 9202): ║                                                 "selectionType": "premium_meal"
I/flutter ( 9202): ║                                                 "isPremium": true
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            }
I/flutter ( 9202): ║                                         ]
I/flutter ( 9202): ║                                    },
I/flutter ( 9202): ║                                    {
I/flutter ( 9202): ║                                         "id": "6a19c01b6864369ee0a8c0cf"
I/flutter ( 9202): ║                                         "groupId": "6a19c01b6864369ee0a8c0cf"
I/flutter ( 9202): ║                                         "key": "cheese_nuts"
I/flutter ( 9202): ║                                         "sourceKey": "cheese_nuts"
I/flutter ( 9202): ║                                         "name": "أجبان ومكسرات"
I/flutter ( 9202): ║                                         "nameI18n": {ar: أجبان ومكسرات, en: Cheese & Nuts},
I/flutter ( 9202): ║                                         "minSelections": 0,
I/flutter ( 9202): ║                                         "maxSelections": 99,
I/flutter ( 9202): ║                                         "isRequired": false,
I/flutter ( 9202): ║                                         "sortOrder": 40,
I/flutter ( 9202): ║                                         "ui": {displayStyle: checkbox_grid},
I/flutter ( 9202): ║                                         "rules": {minSelect: 0, maxSelect: 99, source: ingredient},
I/flutter ( 9202): ║                                         "options": [
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c01b6864369ee0a8c0d0"
I/flutter ( 9202): ║                                                 "optionId": "6a19c01b6864369ee0a8c0d0"
I/flutter ( 9202): ║                                                 "key": "feta_cheese"
I/flutter ( 9202): ║                                                 "name": "جبنة فيتا"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: جبنة فيتا, en: Feta Cheese},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 10
I/flutter ( 9202): ║                                                 "displayCategoryKey": ""
I/flutter ( 9202): ║                                                 "proteinFamilyKey": ""
I/flutter ( 9202): ║                                                 "premiumKey": null
I/flutter ( 9202): ║                                                 "extraFeeHalala": 0
I/flutter ( 9202): ║                                                 "extraPriceHalala": 0
I/flutter ( 9202): ║                                                 "selectionType": ""
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            },
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c01b6864369ee0a8c0d1"
I/flutter ( 9202): ║                                                 "optionId": "6a19c01b6864369ee0a8c0d1"
I/flutter ( 9202): ║                                                 "key": "almond"
I/flutter ( 9202): ║                                                 "name": "لوز"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: لوز, en: Almond},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 20
I/flutter ( 9202): ║                                                 "displayCategoryKey": ""
I/flutter ( 9202): ║                                                 "proteinFamilyKey": ""
I/flutter ( 9202): ║                                                 "premiumKey": null
I/flutter ( 9202): ║                                                 "extraFeeHalala": 0
I/flutter ( 9202): ║                                                 "extraPriceHalala": 0
I/flutter ( 9202): ║                                                 "selectionType": ""
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            },
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c01b6864369ee0a8c0d2"
I/flutter ( 9202): ║                                                 "optionId": "6a19c01b6864369ee0a8c0d2"
I/flutter ( 9202): ║                                                 "key": "walnut"
I/flutter ( 9202): ║                                                 "name": "جوز"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: جوز, en: Walnut},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 30
I/flutter ( 9202): ║                                                 "displayCategoryKey": ""
I/flutter ( 9202): ║                                                 "proteinFamilyKey": ""
I/flutter ( 9202): ║                                                 "premiumKey": null
I/flutter ( 9202): ║                                                 "extraFeeHalala": 0
I/flutter ( 9202): ║                                                 "extraPriceHalala": 0
I/flutter ( 9202): ║                                                 "selectionType": ""
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            }
I/flutter ( 9202): ║                                         ]
I/flutter ( 9202): ║                                    },
I/flutter ( 9202): ║                                    {
I/flutter ( 9202): ║                                         "id": "6a19c01b6864369ee0a8c0d3"
I/flutter ( 9202): ║                                         "groupId": "6a19c01b6864369ee0a8c0d3"
I/flutter ( 9202): ║                                         "key": "fruits",
I/flutter ( 9202): ║                                         "sourceKey": "fruits",
I/flutter ( 9202): ║                                         "name": "فواكه",
I/flutter ( 9202): ║                                         "nameI18n": {ar: فواكه, en: Fruits},
I/flutter ( 9202): ║                                         "minSelections": 0,
I/flutter ( 9202): ║                                         "maxSelections": 99,
I/flutter ( 9202): ║                                         "isRequired": false,
I/flutter ( 9202): ║                                         "sortOrder": 50,
I/flutter ( 9202): ║                                         "ui": {displayStyle: checkbox_grid},
I/flutter ( 9202): ║                                         "rules": {minSelect: 0, maxSelect: 99, source: ingredient},
I/flutter ( 9202): ║                                         "options": [
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c01c6864369ee0a8c0d4"
I/flutter ( 9202): ║                                                 "optionId": "6a19c01c6864369ee0a8c0d4"
I/flutter ( 9202): ║                                                 "key": "apple"
I/flutter ( 9202): ║                                                 "name": "تفاح"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: تفاح, en: Apple},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 10
I/flutter ( 9202): ║                                                 "displayCategoryKey": ""
I/flutter ( 9202): ║                                                 "proteinFamilyKey": ""
I/flutter ( 9202): ║                                                 "premiumKey": null
I/flutter ( 9202): ║                                                 "extraFeeHalala": 0
I/flutter ( 9202): ║                                                 "extraPriceHalala": 0
I/flutter ( 9202): ║                                                 "selectionType": ""
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            },
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c01c6864369ee0a8c0d5"
I/flutter ( 9202): ║                                                 "optionId": "6a19c01c6864369ee0a8c0d5"
I/flutter ( 9202): ║                                                 "key": "pomegranate"
I/flutter ( 9202): ║                                                 "name": "رمان"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: رمان, en: Pomegranate},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 20
I/flutter ( 9202): ║                                                 "displayCategoryKey": ""
I/flutter ( 9202): ║                                                 "proteinFamilyKey": ""
I/flutter ( 9202): ║                                                 "premiumKey": null
I/flutter ( 9202): ║                                                 "extraFeeHalala": 0
I/flutter ( 9202): ║                                                 "extraPriceHalala": 0
I/flutter ( 9202): ║                                                 "selectionType": ""
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            },
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c01c6864369ee0a8c0d6"
I/flutter ( 9202): ║                                                 "optionId": "6a19c01c6864369ee0a8c0d6"
I/flutter ( 9202): ║                                                 "key": "mango"
I/flutter ( 9202): ║                                                 "name": "مانجا"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: مانجا, en: Mango},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 30
I/flutter ( 9202): ║                                                 "displayCategoryKey": ""
I/flutter ( 9202): ║                                                 "proteinFamilyKey": ""
I/flutter ( 9202): ║                                                 "premiumKey": null
I/flutter ( 9202): ║                                                 "extraFeeHalala": 0
I/flutter ( 9202): ║                                                 "extraPriceHalala": 0
I/flutter ( 9202): ║                                                 "selectionType": ""
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            }
I/flutter ( 9202): ║                                         ]
I/flutter ( 9202): ║                                    },
I/flutter ( 9202): ║                                    {
I/flutter ( 9202): ║                                         "id": "6a19c01c6864369ee0a8c0d7"
I/flutter ( 9202): ║                                         "groupId": "6a19c01c6864369ee0a8c0d7"
I/flutter ( 9202): ║                                         "key": "sauce",
I/flutter ( 9202): ║                                         "sourceKey": "sauces",
I/flutter ( 9202): ║                                         "name": "صوص",
I/flutter ( 9202): ║                                         "nameI18n": {ar: صوص, en: Sauce},
I/flutter ( 9202): ║                                         "minSelections": 1,
I/flutter ( 9202): ║                                         "maxSelections": 1,
I/flutter ( 9202): ║                                         "isRequired": true,
I/flutter ( 9202): ║                                         "sortOrder": 60,
I/flutter ( 9202): ║                                         "ui": {displayStyle: radio_cards},
I/flutter ( 9202): ║                                         "rules": {minSelect: 1, maxSelect: 1, source: ingredient},
I/flutter ( 9202): ║                                         "options": [
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c01c6864369ee0a8c0d9"
I/flutter ( 9202): ║                                                 "optionId": "6a19c01c6864369ee0a8c0d9"
I/flutter ( 9202): ║                                                 "key": "ranch"
I/flutter ( 9202): ║                                                 "name": "رانش"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: رانش, en: Ranch},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 10
I/flutter ( 9202): ║                                                 "displayCategoryKey": ""
I/flutter ( 9202): ║                                                 "proteinFamilyKey": ""
I/flutter ( 9202): ║                                                 "premiumKey": null
I/flutter ( 9202): ║                                                 "extraFeeHalala": 0
I/flutter ( 9202): ║                                                 "extraPriceHalala": 0
I/flutter ( 9202): ║                                                 "selectionType": ""
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            },
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c01c6864369ee0a8c0da"
I/flutter ( 9202): ║                                                 "optionId": "6a19c01c6864369ee0a8c0da"
I/flutter ( 9202): ║                                                 "key": "lemon_mustard"
I/flutter ( 9202): ║                                                 "name": "ليمون وخردل"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: ليمون وخردل, en: Lemon Mustard},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 20
I/flutter ( 9202): ║                                                 "displayCategoryKey": ""
I/flutter ( 9202): ║                                                 "proteinFamilyKey": ""
I/flutter ( 9202): ║                                                 "premiumKey": null
I/flutter ( 9202): ║                                                 "extraFeeHalala": 0
I/flutter ( 9202): ║                                                 "extraPriceHalala": 0
I/flutter ( 9202): ║                                                 "selectionType": ""
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            },
I/flutter ( 9202): ║                                            {
I/flutter ( 9202): ║                                                 "id": "6a19c01d6864369ee0a8c0dc"
I/flutter ( 9202): ║                                                 "optionId": "6a19c01d6864369ee0a8c0dc"
I/flutter ( 9202): ║                                                 "key": "balsamic"
I/flutter ( 9202): ║                                                 "name": "بلسميك"
I/flutter ( 9202): ║                                                 "nameI18n": {ar: بلسميك, en: Balsamic},
I/flutter ( 9202): ║                                                 "description": ""
I/flutter ( 9202): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 9202): ║                                                 "imageUrl": ""
I/flutter ( 9202): ║                                                 "sortOrder": 30
I/flutter ( 9202): ║                                                 "displayCategoryKey": ""
I/flutter ( 9202): ║                                                 "proteinFamilyKey": ""
I/flutter ( 9202): ║                                                 "premiumKey": null
I/flutter ( 9202): ║                                                 "extraFeeHalala": 0
I/flutter ( 9202): ║                                                 "extraPriceHalala": 0
I/flutter ( 9202): ║                                                 "selectionType": ""
I/flutter ( 9202): ║                                                 "ui": {}
I/flutter ( 9202): ║                                            }
I/flutter ( 9202): ║                                         ]
I/flutter ( 9202): ║                                    }
I/flutter ( 9202): ║                                 ],
I/flutter ( 9202): ║                                 "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                                 "presetKey": "large_salad",
I/flutter ( 9202): ║                                 "extraFeeHalala": 2900,
I/flutter ( 9202): ║                                 "priceSource": "menu_product_premium_large_salad"
I/flutter ( 9202): ║                            }
I/flutter ( 9202): ║                         ]
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                 ],
I/flutter ( 9202): ║                 "rules": {
I/flutter ( 9202): ║                     "version": "meal_planner_rules.v3",
I/flutter ( 9202): ║                     "beef": {proteinFamilyKey: beef, maxSlotsPerDay: 1},
I/flutter ( 9202): ║                     "standardCarbs": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
I/flutter ( 9202): ║                     "premiumCarbs": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
I/flutter ( 9202): ║                     "proteinGroups": [
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "key": "chicken",
I/flutter ( 9202): ║                             "name": {ar: دجاج, en: Chicken},
I/flutter ( 9202): ║                             "sortOrder": 10
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "key": "beef",
I/flutter ( 9202): ║                             "name": {ar: لحم, en: Beef},
I/flutter ( 9202): ║                             "sortOrder": 20
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "key": "fish",
I/flutter ( 9202): ║                             "name": {ar: أسماك, en: Fish},
I/flutter ( 9202): ║                             "sortOrder": 30
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "key": "eggs",
I/flutter ( 9202): ║                             "name": {ar: بيض, en: Eggs},
I/flutter ( 9202): ║                             "sortOrder": 40
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "key": "premium",
I/flutter ( 9202): ║                             "name": {ar: بريميوم, en: Premium},
I/flutter ( 9202): ║                             "sortOrder": 50
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "key": "other",
I/flutter ( 9202): ║                             "name": {ar: أخرى, en: Other},
I/flutter ( 9202): ║                             "sortOrder": 60
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                     ],
I/flutter ( 9202): ║                     "premiumLargeSalad": {
I/flutter ( 9202): ║                         "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                         "presetKey": "large_salad",
I/flutter ( 9202): ║                         "extraFeeHalala": 2900,
I/flutter ( 9202): ║                         "groups": [
I/flutter ( 9202): ║                          {key: leafy_greens, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                          {key: vegetables, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                          {key: protein, minSelect: 1, maxSelect: 1},
I/flutter ( 9202): ║                          {key: cheese_nuts, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                          {key: fruits, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                          {key: sauce, minSelect: 1, maxSelect: 1}
I/flutter ( 9202): ║                         ]
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "currency": "SAR",
I/flutter ( 9202): ║             "regularMeals": {
I/flutter ( 9202): ║                 "items": [
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "6a19bd7b0f6ac4f0db96ece1",
I/flutter ( 9202): ║                         "name": "ساندوتش دجاج",
I/flutter ( 9202): ║                         "description": "",
I/flutter ( 9202): ║                         "imageUrl": "",
I/flutter ( 9202): ║                         "categoryId": "6a19bd7b0f6ac4f0db96ecdd",
I/flutter ( 9202): ║                         "categoryKey": "sandwiches",
I/flutter ( 9202): ║                         "category": {
I/flutter ( 9202): ║                             "id": "6a19bd7b0f6ac4f0db96ecdd",
I/flutter ( 9202): ║                             "key": "sandwiches",
I/flutter ( 9202): ║                             "name": "سندوتشات",
I/flutter ( 9202): ║                             "description": "",
I/flutter ( 9202): ║                             "sortOrder": 0,
I/flutter ( 9202): ║                             "isActive": true,
I/flutter ( 9202): ║                             "isFallback": false
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                         "proteinGrams": 33,
I/flutter ( 9202): ║                         "carbGrams": 37,
I/flutter ( 9202): ║                         "fatGrams": 19,
I/flutter ( 9202): ║                         "type": "regular",
I/flutter ( 9202): ║                         "pricingModel": "included",
I/flutter ( 9202): ║                         "priceHalala": 0,
I/flutter ( 9202): ║                         "priceSar": 0,
I/flutter ( 9202): ║                         "currency": "SAR",
I/flutter ( 9202): ║                         "ui": {title: ساندوتش دجاج, subtitle: }
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                 ],
I/flutter ( 9202): ║                 "categories": [
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "6a19bd7b0f6ac4f0db96ecdd",
I/flutter ( 9202): ║                         "key": "sandwiches",
I/flutter ( 9202): ║                         "name": "سندوتشات",
I/flutter ( 9202): ║                         "description": "",
I/flutter ( 9202): ║                         "sortOrder": 0,
I/flutter ( 9202): ║                         "isActive": true,
I/flutter ( 9202): ║                         "isFallback": false,
I/flutter ( 9202): ║                         "categoryId": "6a19bd7b0f6ac4f0db96ecdd"
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                 ],
I/flutter ( 9202): ║                 "sections": [
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "category": {
I/flutter ( 9202): ║                             "id": "6a19bd7b0f6ac4f0db96ecdd",
I/flutter ( 9202): ║                             "key": "sandwiches",
I/flutter ( 9202): ║                             "name": "سندوتشات",
I/flutter ( 9202): ║                             "description": "",
I/flutter ( 9202): ║                             "sortOrder": 0,
I/flutter ( 9202): ║                             "isActive": true,
I/flutter ( 9202): ║                             "isFallback": false
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                         "items": [
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "id": "6a19bd7b0f6ac4f0db96ece1",
I/flutter ( 9202): ║                                 "name": "ساندوتش دجاج",
I/flutter ( 9202): ║                                 "description": "",
I/flutter ( 9202): ║                                 "imageUrl": "",
I/flutter ( 9202): ║                                 "categoryId": "6a19bd7b0f6ac4f0db96ecdd",
I/flutter ( 9202): ║                                 "categoryKey": "sandwiches",
I/flutter ( 9202): ║                                 "category": {
I/flutter ( 9202): ║                                     "id": "6a19bd7b0f6ac4f0db96ecdd"
I/flutter ( 9202): ║                                     "key": "sandwiches",
I/flutter ( 9202): ║                                     "name": "سندوتشات",
I/flutter ( 9202): ║                                     "description": "",
I/flutter ( 9202): ║                                     "sortOrder": 0,
I/flutter ( 9202): ║                                     "isActive": true,
I/flutter ( 9202): ║                                     "isFallback": false
I/flutter ( 9202): ║                                }
I/flutter ( 9202): ║                                 "proteinGrams": 33,
I/flutter ( 9202): ║                                 "carbGrams": 37,
I/flutter ( 9202): ║                                 "fatGrams": 19,
I/flutter ( 9202): ║                                 "type": "regular",
I/flutter ( 9202): ║                                 "pricingModel": "included",
I/flutter ( 9202): ║                                 "priceHalala": 0,
I/flutter ( 9202): ║                                 "priceSar": 0,
I/flutter ( 9202): ║                                 "currency": "SAR",
I/flutter ( 9202): ║                                 "ui": {title: ساندوتش دجاج, subtitle: }
I/flutter ( 9202): ║                            }
I/flutter ( 9202): ║                         ]
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                 ],
I/flutter ( 9202): ║                 "totalCount": 1
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "premiumMeals": {
I/flutter ( 9202): ║                 "items": [
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "6a19c0176864369ee0a8c0ba",
I/flutter ( 9202): ║                         "premiumKey": "beef_steak",
I/flutter ( 9202): ║                         "selectionType": "beef_steak",
I/flutter ( 9202): ║                         "type": "premium",
I/flutter ( 9202): ║                         "name": "ستيك لحم",
I/flutter ( 9202): ║                         "description": "",
I/flutter ( 9202): ║                         "imageUrl": "",
I/flutter ( 9202): ║                         "currency": "SAR",
I/flutter ( 9202): ║                         "extraFeeHalala": 2000,
I/flutter ( 9202): ║                         "extraFeeSar": 20,
I/flutter ( 9202): ║                         "priceHalala": 2000,
I/flutter ( 9202): ║                         "priceSar": 20,
I/flutter ( 9202): ║                         "priceLabel": "20 SAR",
I/flutter ( 9202): ║                         "proteinGrams": 0,
I/flutter ( 9202): ║                         "carbGrams": 0,
I/flutter ( 9202): ║                         "fatGrams": 0,
I/flutter ( 9202): ║                         "ui": {title: ستيك لحم, subtitle: , ctaLabel: أضف, selectionStyle: stepper},
I/flutter ( 9202): ║                         "pricingModel": "extra_fee"
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "6a19c0176864369ee0a8c0bb",
I/flutter ( 9202): ║                         "premiumKey": "shrimp",
I/flutter ( 9202): ║                         "selectionType": "shrimp",
I/flutter ( 9202): ║                         "type": "premium",
I/flutter ( 9202): ║                         "name": "جمبري",
I/flutter ( 9202): ║                         "description": "",
I/flutter ( 9202): ║                         "imageUrl": "",
I/flutter ( 9202): ║                         "currency": "SAR",
I/flutter ( 9202): ║                         "extraFeeHalala": 2000,
I/flutter ( 9202): ║                         "extraFeeSar": 20,
I/flutter ( 9202): ║                         "priceHalala": 2000,
I/flutter ( 9202): ║                         "priceSar": 20,
I/flutter ( 9202): ║                         "priceLabel": "20 SAR",
I/flutter ( 9202): ║                         "proteinGrams": 0,
I/flutter ( 9202): ║                         "carbGrams": 0,
I/flutter ( 9202): ║                         "fatGrams": 0,
I/flutter ( 9202): ║                         "ui": {title: جمبري, subtitle: , ctaLabel: أضف, selectionStyle: stepper},
I/flutter ( 9202): ║                         "pricingModel": "extra_fee"
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "6a19c0186864369ee0a8c0bc",
I/flutter ( 9202): ║                         "premiumKey": "salmon",
I/flutter ( 9202): ║                         "selectionType": "salmon",
I/flutter ( 9202): ║                         "type": "premium",
I/flutter ( 9202): ║                         "name": "سالمون",
I/flutter ( 9202): ║                         "description": "",
I/flutter ( 9202): ║                         "imageUrl": "",
I/flutter ( 9202): ║                         "currency": "SAR",
I/flutter ( 9202): ║                         "extraFeeHalala": 2000,
I/flutter ( 9202): ║                         "extraFeeSar": 20,
I/flutter ( 9202): ║                         "priceHalala": 2000,
I/flutter ( 9202): ║                         "priceSar": 20,
I/flutter ( 9202): ║                         "priceLabel": "20 SAR",
I/flutter ( 9202): ║                         "proteinGrams": 0,
I/flutter ( 9202): ║                         "carbGrams": 0,
I/flutter ( 9202): ║                         "fatGrams": 0,
I/flutter ( 9202): ║                         "ui": {title: سالمون, subtitle: , ctaLabel: أضف, selectionStyle: stepper},
I/flutter ( 9202): ║                         "pricingModel": "extra_fee"
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                 ],
I/flutter ( 9202): ║                 "totalCount": 3
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "addons": {
I/flutter ( 9202): ║                 "items": [
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "6a19c03c6864369ee0a8c203",
I/flutter ( 9202): ║                         "name": "كلاسيك جرين",
I/flutter ( 9202): ║                         "description": "",
I/flutter ( 9202): ║                         "imageUrl": "",
I/flutter ( 9202): ║                         "currency": "SAR",
I/flutter ( 9202): ║                         "priceHalala": 1100,
I/flutter ( 9202): ║                         "priceSar": 11,
I/flutter ( 9202): ║                         "priceLabel": "11 SAR",
I/flutter ( 9202): ║                         "kind": "item",
I/flutter ( 9202): ║                         "category": "juice",
I/flutter ( 9202): ║                         "type": "one_time",
I/flutter ( 9202): ║                         "billingMode": "flat_once",
I/flutter ( 9202): ║                         "pricingModel": "one_time",
I/flutter ( 9202): ║                         "billingUnit": "item",
I/flutter ( 9202): ║                         "ui": {title: كلاسيك جرين, subtitle: , ctaLabel: أضف, badge: إضافة مرة واحدة}
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "6a19c03c6864369ee0a8c202",
I/flutter ( 9202): ║                         "name": "بيري بلاست",
I/flutter ( 9202): ║                         "description": "",
I/flutter ( 9202): ║                         "imageUrl": "",
I/flutter ( 9202): ║                         "currency": "SAR",
I/flutter ( 9202): ║                         "priceHalala": 1100,
I/flutter ( 9202): ║                         "priceSar": 11,
I/flutter ( 9202): ║                         "priceLabel": "11 SAR",
I/flutter ( 9202): ║                         "kind": "item",
I/flutter ( 9202): ║                         "category": "juice",
I/flutter ( 9202): ║                         "type": "one_time",
I/flutter ( 9202): ║                         "billingMode": "flat_once",
I/flutter ( 9202): ║                         "pricingModel": "one_time",
I/flutter ( 9202): ║                         "billingUnit": "item",
I/flutter ( 9202): ║                         "ui": {title: بيري بلاست, subtitle: , ctaLabel: أضف, badge: إضافة مرة واحدة}
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "6a19c03b6864369ee0a8c201",
I/flutter ( 9202): ║                         "name": "براونيز داكن",
I/flutter ( 9202): ║                         "description": "",
I/flutter ( 9202): ║                         "imageUrl": "",
I/flutter ( 9202): ║                         "currency": "SAR",
I/flutter ( 9202): ║                         "priceHalala": 1300,
I/flutter ( 9202): ║                         "priceSar": 13,
I/flutter ( 9202): ║                         "priceLabel": "13 SAR",
I/flutter ( 9202): ║                         "kind": "item",
I/flutter ( 9202): ║                         "category": "snack",
I/flutter ( 9202): ║                         "type": "one_time",
I/flutter ( 9202): ║                         "billingMode": "flat_once",
I/flutter ( 9202): ║                         "pricingModel": "one_time",
I/flutter ( 9202): ║                         "billingUnit": "item",
I/flutter ( 9202): ║                         "ui": {title: براونيز داكن, subtitle: , ctaLabel: أضف, badge: إضافة مرة واحدة}
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "id": "6a19c03b6864369ee0a8c200",
I/flutter ( 9202): ║                         "name": "تشيز كيك بالتوت",
I/flutter ( 9202): ║                         "description": "",
I/flutter ( 9202): ║                         "imageUrl": "",
I/flutter ( 9202): ║                         "currency": "SAR",
I/flutter ( 9202): ║                         "priceHalala": 1900,
I/flutter ( 9202): ║                         "priceSar": 19,
I/flutter ( 9202): ║                         "priceLabel": "19 SAR",
I/flutter ( 9202): ║                         "kind": "item",
I/flutter ( 9202): ║                         "category": "snack",
I/flutter ( 9202): ║                         "type": "one_time",
I/flutter ( 9202): ║                         "billingMode": "flat_once",
I/flutter ( 9202): ║                         "pricingModel": "one_time",
I/flutter ( 9202): ║                         "billingUnit": "item",
I/flutter ( 9202): ║                         "ui": {title: تشيز كيك بالتوت, subtitle: , ctaLabel: أضف, badge: إضافة مرة واحدة}
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                 ],
I/flutter ( 9202): ║                 "byType": {
I/flutter ( 9202): ║                     "subscription": []
I/flutter ( 9202): ║                     "oneTime": [
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "id": "6a19c03c6864369ee0a8c203",
I/flutter ( 9202): ║                             "name": "كلاسيك جرين",
I/flutter ( 9202): ║                             "description": "",
I/flutter ( 9202): ║                             "imageUrl": "",
I/flutter ( 9202): ║                             "currency": "SAR",
I/flutter ( 9202): ║                             "priceHalala": 1100,
I/flutter ( 9202): ║                             "priceSar": 11,
I/flutter ( 9202): ║                             "priceLabel": "11 SAR",
I/flutter ( 9202): ║                             "kind": "item",
I/flutter ( 9202): ║                             "category": "juice",
I/flutter ( 9202): ║                             "type": "one_time",
I/flutter ( 9202): ║                             "billingMode": "flat_once",
I/flutter ( 9202): ║                             "pricingModel": "one_time",
I/flutter ( 9202): ║                             "billingUnit": "item",
I/flutter ( 9202): ║                             "ui": {title: كلاسيك جرين, subtitle: , ctaLabel: أضف, badge: إضافة مرة واحدة}
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "id": "6a19c03c6864369ee0a8c202",
I/flutter ( 9202): ║                             "name": "بيري بلاست",
I/flutter ( 9202): ║                             "description": "",
I/flutter ( 9202): ║                             "imageUrl": "",
I/flutter ( 9202): ║                             "currency": "SAR",
I/flutter ( 9202): ║                             "priceHalala": 1100,
I/flutter ( 9202): ║                             "priceSar": 11,
I/flutter ( 9202): ║                             "priceLabel": "11 SAR",
I/flutter ( 9202): ║                             "kind": "item",
I/flutter ( 9202): ║                             "category": "juice",
I/flutter ( 9202): ║                             "type": "one_time",
I/flutter ( 9202): ║                             "billingMode": "flat_once",
I/flutter ( 9202): ║                             "pricingModel": "one_time",
I/flutter ( 9202): ║                             "billingUnit": "item",
I/flutter ( 9202): ║                             "ui": {title: بيري بلاست, subtitle: , ctaLabel: أضف, badge: إضافة مرة واحدة}
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "id": "6a19c03b6864369ee0a8c201",
I/flutter ( 9202): ║                             "name": "براونيز داكن",
I/flutter ( 9202): ║                             "description": "",
I/flutter ( 9202): ║                             "imageUrl": "",
I/flutter ( 9202): ║                             "currency": "SAR",
I/flutter ( 9202): ║                             "priceHalala": 1300,
I/flutter ( 9202): ║                             "priceSar": 13,
I/flutter ( 9202): ║                             "priceLabel": "13 SAR",
I/flutter ( 9202): ║                             "kind": "item",
I/flutter ( 9202): ║                             "category": "snack",
I/flutter ( 9202): ║                             "type": "one_time",
I/flutter ( 9202): ║                             "billingMode": "flat_once",
I/flutter ( 9202): ║                             "pricingModel": "one_time",
I/flutter ( 9202): ║                             "billingUnit": "item",
I/flutter ( 9202): ║                             "ui": {title: براونيز داكن, subtitle: , ctaLabel: أضف, badge: إضافة مرة واحدة}
I/flutter ( 9202): ║                        },
I/flutter ( 9202): ║                        {
I/flutter ( 9202): ║                             "id": "6a19c03b6864369ee0a8c200",
I/flutter ( 9202): ║                             "name": "تشيز كيك بالتوت",
I/flutter ( 9202): ║                             "description": "",
I/flutter ( 9202): ║                             "imageUrl": "",
I/flutter ( 9202): ║                             "currency": "SAR",
I/flutter ( 9202): ║                             "priceHalala": 1900,
I/flutter ( 9202): ║                             "priceSar": 19,
I/flutter ( 9202): ║                             "priceLabel": "19 SAR",
I/flutter ( 9202): ║                             "kind": "item",
I/flutter ( 9202): ║                             "category": "snack",
I/flutter ( 9202): ║                             "type": "one_time",
I/flutter ( 9202): ║                             "billingMode": "flat_once",
I/flutter ( 9202): ║                             "pricingModel": "one_time",
I/flutter ( 9202): ║                             "billingUnit": "item",
I/flutter ( 9202): ║                             "ui": {title: تشيز كيك بالتوت, subtitle: , ctaLabel: أضف, badge: إضافة مرة واحدة}
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                     ]
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║                 "totalCount": 4
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): MealPlannerBloc: Initialized with mealBalance: canConsumeNow=null, limitEnforced=null, maxConsumable=null, remaining=null
I/flutter ( 9202): onChange -- MealPlannerBloc, Change { currentState: MealPlannerLoading(), nextState: MealPlannerLoaded([Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel'], Instance of 'MealPlannerMenuModel', [AddOnModel(6a19c03c6864369ee0a8c203, كلاسيك جرين, juice, , , SAR, 1100, 11.0, 11 SAR, item, flat_once, one_time, item, AddOnUiModel(كلاسيك جرين, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03c6864369ee0a8c202, بيري بلاست, juice, , , SAR, 1100, 11.0, 11 SAR, item, flat_once, one_time, item, AddOnUiModel(بيري بلاست, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03b6864369ee0a8c201, براونيز داكن, snack, , , SAR, 1300, 13.0, 13 SAR, item, flat_once, one_time, item, AddOnUiModel(براونيز داكن, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03b6864369ee0a8c200,
I/flutter ( 9202): [🌎 Easy Localization] [WARNING] Localization key [dailyLimitEnforced] not found
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ GET
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/6a19c41387785860771917e7/days/2026-06-02
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 983 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/6a19c41387785860771917e7/days/2026-06-02
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:02:30 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef6a50cd5e208-MRS]
I/flutter ( 9202): ╟ etag: [W/"1309-/lH+RtnHeMofrlIwbGYpI9NaM3w"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ rndr-id: [21fc2abc-38b9-47ec]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "_id": "6a19c41387785860771917f2",
I/flutter ( 9202): ║             "subscriptionId": "6a19c41387785860771917e7",
I/flutter ( 9202): ║             "date": "2026-06-02",
I/flutter ( 9202): ║             "status": "open",
I/flutter ( 9202): ║             "selections": []
I/flutter ( 9202): ║             "skippedByUser": false,
I/flutter ( 9202): ║             "skipCompensated": false,
I/flutter ( 9202): ║             "assignedByKitchen": false,
I/flutter ( 9202): ║             "pickupRequested": false,
I/flutter ( 9202): ║             "pickupRequestedAt": null,
I/flutter ( 9202): ║             "pickupPreparationStartedAt": null,
I/flutter ( 9202): ║             "pickupPreparedAt": null,
I/flutter ( 9202): ║             "pickupCode": null,
I/flutter ( 9202): ║             "pickupCodeIssuedAt": null,
I/flutter ( 9202): ║             "pickupVerifiedAt": null,
I/flutter ( 9202): ║             "pickupVerifiedByDashboardUserId": null,
I/flutter ( 9202): ║             "pickupNoShowAt": null,
I/flutter ( 9202): ║             "dayEndConsumptionReason": null,
I/flutter ( 9202): ║             "autoSettled": false,
I/flutter ( 9202): ║             "settledAt": null,
I/flutter ( 9202): ║             "settlementReason": null,
I/flutter ( 9202): ║             "settledBy": null,
I/flutter ( 9202): ║             "cancellationReason": null,
I/flutter ( 9202): ║             "cancellationCategory": null,
I/flutter ( 9202): ║             "cancellationNote": null,
I/flutter ( 9202): ║             "canceledBy": null,
I/flutter ( 9202): ║             "canceledAt": null,
I/flutter ( 9202): ║             "creditsDeducted": false,
I/flutter ( 9202): ║             "autoLocked": false,
I/flutter ( 9202): ║             "plannerRevisionHash": "b0ddd7e6b9051b1c961aa465baaa398393149b64baaf0d86503e2b7694ca46e4",
I/flutter ( 9202): ║             "mealReminderSentAt": null,
I/flutter ( 9202): ║             "addonSelections": []
I/flutter ( 9202): ║             "premiumUpgradeSelections": []
I/flutter ( 9202): ║             "operationAuditLog": []
I/flutter ( 9202): ║             "customSalads": []
I/flutter ( 9202): ║             "customMeals": []
I/flutter ( 9202): ║             "baseMealSlots": []
I/flutter ( 9202): ║             "__v": 0,
I/flutter ( 9202): ║             "createdAt": "2026-05-29T16:51:31.803Z",
I/flutter ( 9202): ║             "updatedAt": "2026-05-29T16:51:31.803Z",
I/flutter ( 9202): ║             "planning": {
I/flutter ( 9202): ║                 "version": "subscription_day_planning.v1",
I/flutter ( 9202): ║                 "state": "draft",
I/flutter ( 9202): ║                 "requiredMealCount": 1,
I/flutter ( 9202): ║                 "selectedBaseMealCount": 0,
I/flutter ( 9202): ║                 "selectedPremiumMealCount": 0,
I/flutter ( 9202): ║                 "selectedTotalMealCount": 0,
I/flutter ( 9202): ║                 "isThresholdMet": false,
I/flutter ( 9202): ║                 "isExactCountSatisfied": false,
I/flutter ( 9202): ║                 "isBalanceExceeded": false,
I/flutter ( 9202): ║                 "maxConsumableMealsNow": 7,
I/flutter ( 9202): ║                 "confirmedAt": null,
I/flutter ( 9202): ║                 "confirmedByRole": null,
I/flutter ( 9202): ║                 "baseMealSlots": []
I/flutter ( 9202): ║                 "premiumOverageCount": 0,
I/flutter ( 9202): ║                 "premiumOverageStatus": null,
I/flutter ( 9202): ║                 "stateLabel": "مسودة",
I/flutter ( 9202): ║                 "premiumOverageStatusLabel": ""
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "statusLabel": "مفتوح",
I/flutter ( 9202): ║             "premiumSummary": {
I/flutter ( 9202): ║                 "selectedCount": 0,
I/flutter ( 9202): ║                 "coveredByBalanceCount": 0,
I/flutter ( 9202): ║                 "pendingPaymentCount": 0,
I/flutter ( 9202): ║                 "paidExtraCount": 0,
I/flutter ( 9202): ║                 "totalExtraHalala": 0,
I/flutter ( 9202): ║                 "currency": "SAR"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "premiumExtraPayment": {
I/flutter ( 9202): ║                 "status": "none",
I/flutter ( 9202): ║                 "paymentId": null,
I/flutter ( 9202): ║                 "providerInvoiceId": null,
I/flutter ( 9202): ║                 "amountHalala": 0,
I/flutter ( 9202): ║                 "currency": "SAR",
I/flutter ( 9202): ║                 "expiresAt": null,
I/flutter ( 9202): ║                 "reused": false,
I/flutter ( 9202): ║                 "revisionHash": "b0ddd7e6b9051b1c961aa465baaa398393149b64baaf0d86503e2b7694ca46e4"
I/flutter ( 9202): ║                 "createdAt": null,
I/flutter ( 9202): ║                 "paidAt": null,
I/flutter ( 9202): ║                 "extraPremiumCount": 0,
I/flutter ( 9202): ║                 "statusLabel": "لا يوجد دفع"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "paymentRequirement": {
I/flutter ( 9202): ║                 "status": "satisfied",
I/flutter ( 9202): ║                 "requiresPayment": false,
I/flutter ( 9202): ║                 "pricingStatus": "not_required",
I/flutter ( 9202): ║                 "blockingReason": "PLANNING_INCOMPLETE",
I/flutter ( 9202): ║                 "canCreatePayment": false,
I/flutter ( 9202): ║                 "premiumSelectedCount": 0,
I/flutter ( 9202): ║                 "premiumPendingPaymentCount": 0,
I/flutter ( 9202): ║                 "addonSelectedCount": 0,
I/flutter ( 9202): ║                 "addonPendingPaymentCount": 0,
I/flutter ( 9202): ║                 "pendingAmountHalala": 0,
I/flutter ( 9202): ║                 "amountHalala": 0,
I/flutter ( 9202): ║                 "currency": "SAR",
I/flutter ( 9202): ║                 "pricingStatusLabel": "غير مطلوب",
I/flutter ( 9202): ║                 "blockingReasonLabel": ""
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "commercialState": "draft",
I/flutter ( 9202): ║             "isFulfillable": false,
I/flutter ( 9202): ║             "canBePrepared": false,
I/flutter ( 9202): ║             "pickupPrepared": false,
I/flutter ( 9202): ║             "pickupPreparationFlowStatus": "waiting_for_prepare",
I/flutter ( 9202): ║             "fulfillmentMode": "no_service",
I/flutter ( 9202): ║             "consumptionState": "pending_day",
I/flutter ( 9202): ║             "requiredMealCount": 1,
I/flutter ( 9202): ║             "specifiedMealCount": 0,
I/flutter ( 9202): ║             "unspecifiedMealCount": 1,
I/flutter ( 9202): ║             "hasCustomerSelections": false,
I/flutter ( 9202): ║             "requiresMealTypeKnowledge": false,
I/flutter ( 9202): ║             "mealTypesSpecified": false,
I/flutter ( 9202): ║             "planningReady": false,
I/flutter ( 9202): ║             "fulfillmentReady": false,
I/flutter ( 9202): ║             "deliveryMode": "pickup",
I/flutter ( 9202): ║             "pickupLocation": {
I/flutter ( 9202): ║                 "id": "main",
I/flutter ( 9202): ║                 "name": "[object Object]",
I/flutter ( 9202): ║                 "address": "[object Object]",
I/flutter ( 9202): ║                 "phone": "",
I/flutter ( 9202): ║                 "city": "",
I/flutter ( 9202): ║                 "district": "",
I/flutter ( 9202): ║                 "workingHours": "",
I/flutter ( 9202): ║                 "latitude": null,
I/flutter ( 9202): ║                 "longitude": null,
I/flutter ( 9202): ║                 "mapUrl": null
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "deliveryAddress": null,
I/flutter ( 9202): ║             "deliveryWindow": null,
I/flutter ( 9202): ║             "deliverySlot": {type: pickup, slotId: , window: , label: },
I/flutter ( 9202): ║             "fulfillmentSummary": {
I/flutter ( 9202): ║                 "mode": "pickup",
I/flutter ( 9202): ║                 "title": "الاستلام من الفرع",
I/flutter ( 9202): ║                 "status": "open",
I/flutter ( 9202): ║                 "statusLabel": "مفتوح",
I/flutter ( 9202): ║                 "message": "راجع اختيارات اليوم واطلب التجهيز عندما تكون جاهزا",
I/flutter ( 9202): ║                 "nextAction": "",
I/flutter ( 9202): ║                 "isEditable": true,
I/flutter ( 9202): ║                 "isFulfillable": false,
I/flutter ( 9202): ║                 "planningReady": false,
I/flutter ( 9202): ║                 "fulfillmentReady": false,
I/flutter ( 9202): ║                 "lockedReason": null,
I/flutter ( 9202): ║                 "lockedMessage": null
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "lockedReason": null,
I/flutter ( 9202): ║             "lockedMessage": null,
I/flutter ( 9202): ║             "mealBalance": {
I/flutter ( 9202): ║                 "totalMeals": 7,
I/flutter ( 9202): ║                 "remainingMeals": 7,
I/flutter ( 9202): ║                 "consumedMeals": 0,
I/flutter ( 9202): ║                 "canConsumeNow": true,
I/flutter ( 9202): ║                 "maxConsumableMealsNow": 7,
I/flutter ( 9202): ║                 "mealBalancePolicy": "TOTAL_BALANCE_WITHIN_VALIDITY",
I/flutter ( 9202): ║                 "dailyMealLimitEnforced": false,
I/flutter ( 9202): ║                 "dailyMealsDefault": 1
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "rules": {
I/flutter ( 9202): ║                 "version": "meal_planner_rules.v3",
I/flutter ( 9202): ║                 "beef": {proteinFamilyKey: beef, maxSlotsPerDay: 1},
I/flutter ( 9202): ║                 "standardCarbs": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
I/flutter ( 9202): ║                 "premiumCarbs": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
I/flutter ( 9202): ║                 "proteinGroups": [
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "chicken",
I/flutter ( 9202): ║                         "name": {ar: دجاج, en: Chicken},
I/flutter ( 9202): ║                         "sortOrder": 10
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "beef",
I/flutter ( 9202): ║                         "name": {ar: لحم, en: Beef},
I/flutter ( 9202): ║                         "sortOrder": 20
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "fish",
I/flutter ( 9202): ║                         "name": {ar: أسماك, en: Fish},
I/flutter ( 9202): ║                         "sortOrder": 30
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "eggs",
I/flutter ( 9202): ║                         "name": {ar: بيض, en: Eggs},
I/flutter ( 9202): ║                         "sortOrder": 40
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "premium",
I/flutter ( 9202): ║                         "name": {ar: بريميوم, en: Premium},
I/flutter ( 9202): ║                         "sortOrder": 50
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "other",
I/flutter ( 9202): ║                         "name": {ar: أخرى, en: Other},
I/flutter ( 9202): ║                         "sortOrder": 60
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                 ],
I/flutter ( 9202): ║                 "premiumLargeSalad": {
I/flutter ( 9202): ║                     "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                     "presetKey": "large_salad",
I/flutter ( 9202): ║                     "extraFeeHalala": 2900,
I/flutter ( 9202): ║                     "groups": [
I/flutter ( 9202): ║                      {key: leafy_greens, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                      {key: vegetables, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                      {key: protein, minSelect: 1, maxSelect: 1},
I/flutter ( 9202): ║                      {key: cheese_nuts, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                      {key: fruits, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                      {key: sauce, minSelect: 1, maxSelect: 1}
I/flutter ( 9202): ║                     ]
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "commercialStateLabel": "مسودة"
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): onChange -- MealPlannerBloc, Change { currentState: MealPlannerLoaded([Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel'], Instance of 'MealPlannerMenuModel', [AddOnModel(6a19c03c6864369ee0a8c203, كلاسيك جرين, juice, , , SAR, 1100, 11.0, 11 SAR, item, flat_once, one_time, item, AddOnUiModel(كلاسيك جرين, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03c6864369ee0a8c202, بيري بلاست, juice, , , SAR, 1100, 11.0, 11 SAR, item, flat_once, one_time, item, AddOnUiModel(بيري بلاست, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03b6864369ee0a8c201, براونيز داكن, snack, , , SAR, 1300, 13.0, 13 SAR, item, flat_once, one_time, item, AddOnUiModel(براونيز داكن, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03b6864369ee0a8c200, تشيز كيك بالتوت, sn

======== Exception caught by rendering library =====================================================
The following assertion was thrown during layout:
A RenderFlex overflowed by 39 pixels on the right.

The relevant error-causing widget was:
Row Row:file:///Users/moali/AndroidStudioProjects/mobile_app/lib/presentation/plans/timeline/meal_planner/widgets/meal_planner_progress_indicator.dart:71:25
E/libEGL  ( 9202): called unimplemented OpenGL ES API
E/libEGL  ( 9202): called unimplemented OpenGL ES API
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/flutter ( 9202): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingSuccess(Instance of 'OrderModel', Instance of 'OrderTimelineModel'), nextState: OrderTrackingRefreshing(Instance of 'OrderModel', Instance of 'OrderTimelineModel') }
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ GET
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): onChange -- MealPlannerBloc, Change { currentState: MealPlannerLoaded([Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel'], Instance of 'MealPlannerMenuModel', [AddOnModel(6a19c03c6864369ee0a8c203, كلاسيك جرين, juice, , , SAR, 1100, 11.0, 11 SAR, item, flat_once, one_time, item, AddOnUiModel(كلاسيك جرين, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03c6864369ee0a8c202, بيري بلاست, juice, , , SAR, 1100, 11.0, 11 SAR, item, flat_once, one_time, item, AddOnUiModel(بيري بلاست, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03b6864369ee0a8c201, براونيز داكن, snack, , , SAR, 1300, 13.0, 13 SAR, item, flat_once, one_time, item, AddOnUiModel(براونيز داكن, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03b6864369ee0a8c200, تشيز كيك بالتوت, sn
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 980 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:02:34 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef6c3281fb88f-MRS]
I/flutter ( 9202): ╟ etag: [W/"1036-VS3kx2U23+609sfingsdoMMMtSk"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ rndr-id: [42683aa9-c683-4b67]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "id": "6a1b09cd8e060b5e369a8f61",
I/flutter ( 9202): ║             "orderId": "6a1b09cd8e060b5e369a8f61",
I/flutter ( 9202): ║             "orderNumber": "ORD-369A8F60",
I/flutter ( 9202): ║             "source": "one_time_order",
I/flutter ( 9202): ║             "status": "confirmed",
I/flutter ( 9202): ║             "paymentStatus": "paid",
I/flutter ( 9202): ║             "allowedActions": []
I/flutter ( 9202): ║             "timeline_endpoint": "/api/orders/6a1b09cd8e060b5e369a8f61/timeline",
I/flutter ( 9202): ║             "cancelled_by": null,
I/flutter ( 9202): ║             "cancellation_reason": null,
I/flutter ( 9202): ║             "cancellation_source": null,
I/flutter ( 9202): ║             "cancelled_at": null,
I/flutter ( 9202): ║             "expiresAt": null,
I/flutter ( 9202): ║             "fulfillmentMethod": "pickup",
I/flutter ( 9202): ║             "fulfillmentDate": "2026-05-30",
I/flutter ( 9202): ║             "requestedFulfillmentDate": "2026-05-30",
I/flutter ( 9202): ║             "items": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "itemType": "basic_salad",
I/flutter ( 9202): ║                     "catalogRef": {model: MenuProduct, id: 6a19c0226864369ee0a8c0de},
I/flutter ( 9202): ║                     "name": {ar: سلطة بيسك, en: Basic Salad},
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 8700,
I/flutter ( 9202): ║                     "lineTotalHalala": 8700,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "selections": {
I/flutter ( 9202): ║                         "salad": {
I/flutter ( 9202): ║                             "ingredients": []
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                         "proteinName": {ar: , en: },
I/flutter ( 9202): ║                         "carbs": []
I/flutter ( 9202): ║                         "selectedOptions": [
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c0196864369ee0a8c0c4",
I/flutter ( 9202): ║                                 "groupName": {ar: ورقيات, en: Leafy Greens},
I/flutter ( 9202): ║                                 "optionId": "6a19c0196864369ee0a8c0c8",
I/flutter ( 9202): ║                                 "name": {ar: سبانخ, en: Spinach},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            },
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c0196864369ee0a8c0c4",
I/flutter ( 9202): ║                                 "groupName": {ar: ورقيات, en: Leafy Greens},
I/flutter ( 9202): ║                                 "optionId": "6a19c0196864369ee0a8c0c7",
I/flutter ( 9202): ║                                 "name": {ar: جرجير, en: Arugula},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            },
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c0166864369ee0a8c0b3",
I/flutter ( 9202): ║                                 "groupName": {ar: بروتينات, en: Proteins},
I/flutter ( 9202): ║                                 "optionId": "6a19c0176864369ee0a8c0b7",
I/flutter ( 9202): ║                                 "name": {ar: سمك, en: Fish},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            },
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c01c6864369ee0a8c0d7",
I/flutter ( 9202): ║                                 "groupName": {ar: الصوصات, en: Sauces},
I/flutter ( 9202): ║                                 "optionId": "6a19c01c6864369ee0a8c0da",
I/flutter ( 9202): ║                                 "name": {ar: ليمون وخردل, en: Lemon Mustard},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            }
I/flutter ( 9202): ║                         ]
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "nutrition": {},
I/flutter ( 9202): ║                     "productSnapshot": {
I/flutter ( 9202): ║                         "productId": "6a19c0226864369ee0a8c0de",
I/flutter ( 9202): ║                         "categoryId": "6a19c0156864369ee0a8c0ab",
I/flutter ( 9202): ║                         "categoryName": {ar: اطلب على مزاجك, en: Custom Order},
I/flutter ( 9202): ║                         "key": "basic_salad",
I/flutter ( 9202): ║                         "name": {ar: سلطة بيسك, en: Basic Salad},
I/flutter ( 9202): ║                         "itemType": "basic_salad",
I/flutter ( 9202): ║                         "pricingModel": "per_100g",
I/flutter ( 9202): ║                         "priceHalala": 2900,
I/flutter ( 9202): ║                         "baseUnitGrams": 100,
I/flutter ( 9202): ║                         "weightGrams": 300
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "itemType": "dessert",
I/flutter ( 9202): ║                     "catalogRef": {model: MenuProduct, id: 6a19c0386864369ee0a8c1f3},
I/flutter ( 9202): ║                     "name": {ar: تشيز كيك بالتوت, en: Berry Cheesecake},
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 1900,
I/flutter ( 9202): ║                     "lineTotalHalala": 1900,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "selections": {
I/flutter ( 9202): ║                         "salad": {
I/flutter ( 9202): ║                             "ingredients": []
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                         "proteinName": {ar: , en: },
I/flutter ( 9202): ║                         "carbs": []
I/flutter ( 9202): ║                         "selectedOptions": []
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "nutrition": {},
I/flutter ( 9202): ║                     "productSnapshot": {
I/flutter ( 9202): ║                         "productId": "6a19c0386864369ee0a8c1f3",
I/flutter ( 9202): ║                         "categoryId": "6a19c0166864369ee0a8c0af",
I/flutter ( 9202): ║                         "categoryName": {ar: الحلويات, en: Desserts},
I/flutter ( 9202): ║                         "key": "berry_cheesecake",
I/flutter ( 9202): ║                         "name": {ar: تشيز كيك بالتوت, en: Berry Cheesecake},
I/flutter ( 9202): ║                         "itemType": "dessert",
I/flutter ( 9202): ║                         "pricingModel": "fixed",
I/flutter ( 9202): ║                         "priceHalala": 1900,
I/flutter ( 9202): ║                         "baseUnitGrams": 100,
I/flutter ( 9202): ║                         "weightGrams": 0
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "itemType": "dessert",
I/flutter ( 9202): ║                     "catalogRef": {model: MenuProduct, id: 6a19c0386864369ee0a8c1f4},
I/flutter ( 9202): ║                     "name": {ar: براونيز داكن, en: Dark Brownies},
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 1300,
I/flutter ( 9202): ║                     "lineTotalHalala": 1300,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "selections": {
I/flutter ( 9202): ║                         "salad": {
I/flutter ( 9202): ║                             "ingredients": []
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                         "proteinName": {ar: , en: },
I/flutter ( 9202): ║                         "carbs": []
I/flutter ( 9202): ║                         "selectedOptions": []
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "nutrition": {},
I/flutter ( 9202): ║                     "productSnapshot": {
I/flutter ( 9202): ║                         "productId": "6a19c0386864369ee0a8c1f4",
I/flutter ( 9202): ║                         "categoryId": "6a19c0166864369ee0a8c0af",
I/flutter ( 9202): ║                         "categoryName": {ar: الحلويات, en: Desserts},
I/flutter ( 9202): ║                         "key": "dark_brownies",
I/flutter ( 9202): ║                         "name": {ar: براونيز داكن, en: Dark Brownies},
I/flutter ( 9202): ║                         "itemType": "dessert",
I/flutter ( 9202): ║                         "pricingModel": "fixed",
I/flutter ( 9202): ║                         "priceHalala": 1300,
I/flutter ( 9202): ║                         "baseUnitGrams": 100,
I/flutter ( 9202): ║                         "weightGrams": 0
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "pricing": {
I/flutter ( 9202): ║                 "subtotalHalala": 11900,
I/flutter ( 9202): ║                 "deliveryFeeHalala": 0,
I/flutter ( 9202): ║                 "discountHalala": 0,
I/flutter ( 9202): ║                 "totalHalala": 11900,
I/flutter ( 9202): ║                 "vatPercentage": 16,
I/flutter ( 9202): ║                 "vatHalala": 1641,
I/flutter ( 9202): ║                 "vatIncluded": true,
I/flutter ( 9202): ║                 "currency": "SAR"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "pickup": {
I/flutter ( 9202): ║                 "branchId": "main",
I/flutter ( 9202): ║                 "pickupWindow": "18:00-20:00",
I/flutter ( 9202): ║                 "branchName": {ar: , en: },
I/flutter ( 9202): ║                 "pickupCode": null,
I/flutter ( 9202): ║                 "pickupCodeIssuedAt": null,
I/flutter ( 9202): ║                 "pickupVerifiedAt": null
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "createdAt": "2026-05-30T16:01:18.052Z",
I/flutter ( 9202): ║             "updatedAt": "2026-05-30T16:01:43.056Z"
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ GET
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61/timeline
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 369 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61/timeline
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:02:35 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef6c89bd5b88f-MRS]
I/flutter ( 9202): ╟ etag: [W/"300-s0mUrNnipiNw5O9miV03dPeMkfU"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ rndr-id: [9463c3e3-753b-470d]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "order_id": "6a1b09cd8e060b5e369a8f61",
I/flutter ( 9202): ║             "current_status": "confirmed",
I/flutter ( 9202): ║             "timeline": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "order_created",
I/flutter ( 9202): ║                     "label_ar": "تم إنشاء الطلب",
I/flutter ( 9202): ║                     "label_en": "Order Created",
I/flutter ( 9202): ║                     "state": "completed",
I/flutter ( 9202): ║                     "time": "2026-05-30T16:01:18.052Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "payment_confirmed",
I/flutter ( 9202): ║                     "label_ar": "تم تأكيد الطلب",
I/flutter ( 9202): ║                     "label_en": "Payment Confirmed",
I/flutter ( 9202): ║                     "state": "active",
I/flutter ( 9202): ║                     "time": "2026-05-30T16:01:42.857Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "preparing",
I/flutter ( 9202): ║                     "label_ar": "جاري تجهيز الطلب",
I/flutter ( 9202): ║                     "label_en": "Preparing",
I/flutter ( 9202): ║                     "state": "pending",
I/flutter ( 9202): ║                     "time": null
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "ready_for_pickup",
I/flutter ( 9202): ║                     "label_ar": "الطلب جاهز للاستلام",
I/flutter ( 9202): ║                     "label_en": "Ready for Pickup",
I/flutter ( 9202): ║                     "state": "pending",
I/flutter ( 9202): ║                     "time": null
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "fulfilled",
I/flutter ( 9202): ║                     "label_ar": "تم استلام الطلب",
I/flutter ( 9202): ║                     "label_en": "Picked Up",
I/flutter ( 9202): ║                     "state": "pending",
I/flutter ( 9202): ║                     "time": null
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ]
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingRefreshing(Instance of 'OrderModel', Instance of 'OrderTimelineModel'), nextState: OrderTrackingSuccess(Instance of 'OrderModel', Instance of 'OrderTimelineModel') }
I/flutter ( 9202): onChange -- MealPlannerBloc, Change { currentState: MealPlannerLoaded([Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel'], Instance of 'MealPlannerMenuModel', [AddOnModel(6a19c03c6864369ee0a8c203, كلاسيك جرين, juice, , , SAR, 1100, 11.0, 11 SAR, item, flat_once, one_time, item, AddOnUiModel(كلاسيك جرين, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03c6864369ee0a8c202, بيري بلاست, juice, , , SAR, 1100, 11.0, 11 SAR, item, flat_once, one_time, item, AddOnUiModel(بيري بلاست, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03b6864369ee0a8c201, براونيز داكن, snack, , , SAR, 1300, 13.0, 13 SAR, item, flat_once, one_time, item, AddOnUiModel(براونيز داكن, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03b6864369ee0a8c200, تشيز كيك بالتوت, sn
E/libEGL  ( 9202): called unimplemented OpenGL ES API
E/libEGL  ( 9202): called unimplemented OpenGL ES API
E/libEGL  ( 9202): called unimplemented OpenGL ES API
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/flutter ( 9202): onChange -- MealPlannerBloc, Change { currentState: MealPlannerLoaded([Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel'], Instance of 'MealPlannerMenuModel', [AddOnModel(6a19c03c6864369ee0a8c203, كلاسيك جرين, juice, , , SAR, 1100, 11.0, 11 SAR, item, flat_once, one_time, item, AddOnUiModel(كلاسيك جرين, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03c6864369ee0a8c202, بيري بلاست, juice, , , SAR, 1100, 11.0, 11 SAR, item, flat_once, one_time, item, AddOnUiModel(بيري بلاست, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03b6864369ee0a8c201, براونيز داكن, snack, , , SAR, 1300, 13.0, 13 SAR, item, flat_once, one_time, item, AddOnUiModel(براونيز داكن, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03b6864369ee0a8c200, تشيز كيك بالتوت, sn
E/libEGL  ( 9202): called unimplemented OpenGL ES API
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/flutter ( 9202): onChange -- MealPlannerBloc, Change { currentState: MealPlannerLoaded([Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel'], Instance of 'MealPlannerMenuModel', [AddOnModel(6a19c03c6864369ee0a8c203, كلاسيك جرين, juice, , , SAR, 1100, 11.0, 11 SAR, item, flat_once, one_time, item, AddOnUiModel(كلاسيك جرين, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03c6864369ee0a8c202, بيري بلاست, juice, , , SAR, 1100, 11.0, 11 SAR, item, flat_once, one_time, item, AddOnUiModel(بيري بلاست, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03b6864369ee0a8c201, براونيز داكن, snack, , , SAR, 1300, 13.0, 13 SAR, item, flat_once, one_time, item, AddOnUiModel(براونيز داكن, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03b6864369ee0a8c200, تشيز كيك بالتوت, sn
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/flutter ( 9202): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingSuccess(Instance of 'OrderModel', Instance of 'OrderTimelineModel'), nextState: OrderTrackingRefreshing(Instance of 'OrderModel', Instance of 'OrderTimelineModel') }
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ GET
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 576 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:02:44 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef701ddc9189a-MRS]
I/flutter ( 9202): ╟ etag: [W/"1036-VS3kx2U23+609sfingsdoMMMtSk"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ rndr-id: [5f99d505-2031-49e1]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "id": "6a1b09cd8e060b5e369a8f61",
I/flutter ( 9202): ║             "orderId": "6a1b09cd8e060b5e369a8f61",
I/flutter ( 9202): ║             "orderNumber": "ORD-369A8F60",
I/flutter ( 9202): ║             "source": "one_time_order",
I/flutter ( 9202): ║             "status": "confirmed",
I/flutter ( 9202): ║             "paymentStatus": "paid",
I/flutter ( 9202): ║             "allowedActions": []
I/flutter ( 9202): ║             "timeline_endpoint": "/api/orders/6a1b09cd8e060b5e369a8f61/timeline",
I/flutter ( 9202): ║             "cancelled_by": null,
I/flutter ( 9202): ║             "cancellation_reason": null,
I/flutter ( 9202): ║             "cancellation_source": null,
I/flutter ( 9202): ║             "cancelled_at": null,
I/flutter ( 9202): ║             "expiresAt": null,
I/flutter ( 9202): ║             "fulfillmentMethod": "pickup",
I/flutter ( 9202): ║             "fulfillmentDate": "2026-05-30",
I/flutter ( 9202): ║             "requestedFulfillmentDate": "2026-05-30",
I/flutter ( 9202): ║             "items": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "itemType": "basic_salad",
I/flutter ( 9202): ║                     "catalogRef": {model: MenuProduct, id: 6a19c0226864369ee0a8c0de},
I/flutter ( 9202): ║                     "name": {ar: سلطة بيسك, en: Basic Salad},
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 8700,
I/flutter ( 9202): ║                     "lineTotalHalala": 8700,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "selections": {
I/flutter ( 9202): ║                         "salad": {
I/flutter ( 9202): ║                             "ingredients": []
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                         "proteinName": {ar: , en: },
I/flutter ( 9202): ║                         "carbs": []
I/flutter ( 9202): ║                         "selectedOptions": [
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c0196864369ee0a8c0c4",
I/flutter ( 9202): ║                                 "groupName": {ar: ورقيات, en: Leafy Greens},
I/flutter ( 9202): ║                                 "optionId": "6a19c0196864369ee0a8c0c8",
I/flutter ( 9202): ║                                 "name": {ar: سبانخ, en: Spinach},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            },
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c0196864369ee0a8c0c4",
I/flutter ( 9202): ║                                 "groupName": {ar: ورقيات, en: Leafy Greens},
I/flutter ( 9202): ║                                 "optionId": "6a19c0196864369ee0a8c0c7",
I/flutter ( 9202): ║                                 "name": {ar: جرجير, en: Arugula},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            },
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c0166864369ee0a8c0b3",
I/flutter ( 9202): ║                                 "groupName": {ar: بروتينات, en: Proteins},
I/flutter ( 9202): ║                                 "optionId": "6a19c0176864369ee0a8c0b7",
I/flutter ( 9202): ║                                 "name": {ar: سمك, en: Fish},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            },
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c01c6864369ee0a8c0d7",
I/flutter ( 9202): ║                                 "groupName": {ar: الصوصات, en: Sauces},
I/flutter ( 9202): ║                                 "optionId": "6a19c01c6864369ee0a8c0da",
I/flutter ( 9202): ║                                 "name": {ar: ليمون وخردل, en: Lemon Mustard},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            }
I/flutter ( 9202): ║                         ]
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "nutrition": {},
I/flutter ( 9202): ║                     "productSnapshot": {
I/flutter ( 9202): ║                         "productId": "6a19c0226864369ee0a8c0de",
I/flutter ( 9202): ║                         "categoryId": "6a19c0156864369ee0a8c0ab",
I/flutter ( 9202): ║                         "categoryName": {ar: اطلب على مزاجك, en: Custom Order},
I/flutter ( 9202): ║                         "key": "basic_salad",
I/flutter ( 9202): ║                         "name": {ar: سلطة بيسك, en: Basic Salad},
I/flutter ( 9202): ║                         "itemType": "basic_salad",
I/flutter ( 9202): ║                         "pricingModel": "per_100g",
I/flutter ( 9202): ║                         "priceHalala": 2900,
I/flutter ( 9202): ║                         "baseUnitGrams": 100,
I/flutter ( 9202): ║                         "weightGrams": 300
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "itemType": "dessert",
I/flutter ( 9202): ║                     "catalogRef": {model: MenuProduct, id: 6a19c0386864369ee0a8c1f3},
I/flutter ( 9202): ║                     "name": {ar: تشيز كيك بالتوت, en: Berry Cheesecake},
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 1900,
I/flutter ( 9202): ║                     "lineTotalHalala": 1900,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "selections": {
I/flutter ( 9202): ║                         "salad": {
I/flutter ( 9202): ║                             "ingredients": []
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                         "proteinName": {ar: , en: },
I/flutter ( 9202): ║                         "carbs": []
I/flutter ( 9202): ║                         "selectedOptions": []
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "nutrition": {},
I/flutter ( 9202): ║                     "productSnapshot": {
I/flutter ( 9202): ║                         "productId": "6a19c0386864369ee0a8c1f3",
I/flutter ( 9202): ║                         "categoryId": "6a19c0166864369ee0a8c0af",
I/flutter ( 9202): ║                         "categoryName": {ar: الحلويات, en: Desserts},
I/flutter ( 9202): ║                         "key": "berry_cheesecake",
I/flutter ( 9202): ║                         "name": {ar: تشيز كيك بالتوت, en: Berry Cheesecake},
I/flutter ( 9202): ║                         "itemType": "dessert",
I/flutter ( 9202): ║                         "pricingModel": "fixed",
I/flutter ( 9202): ║                         "priceHalala": 1900,
I/flutter ( 9202): ║                         "baseUnitGrams": 100,
I/flutter ( 9202): ║                         "weightGrams": 0
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "itemType": "dessert",
I/flutter ( 9202): ║                     "catalogRef": {model: MenuProduct, id: 6a19c0386864369ee0a8c1f4},
I/flutter ( 9202): ║                     "name": {ar: براونيز داكن, en: Dark Brownies},
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 1300,
I/flutter ( 9202): ║                     "lineTotalHalala": 1300,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "selections": {
I/flutter ( 9202): ║                         "salad": {
I/flutter ( 9202): ║                             "ingredients": []
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                         "proteinName": {ar: , en: },
I/flutter ( 9202): ║                         "carbs": []
I/flutter ( 9202): ║                         "selectedOptions": []
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "nutrition": {},
I/flutter ( 9202): ║                     "productSnapshot": {
I/flutter ( 9202): ║                         "productId": "6a19c0386864369ee0a8c1f4",
I/flutter ( 9202): ║                         "categoryId": "6a19c0166864369ee0a8c0af",
I/flutter ( 9202): ║                         "categoryName": {ar: الحلويات, en: Desserts},
I/flutter ( 9202): ║                         "key": "dark_brownies",
I/flutter ( 9202): ║                         "name": {ar: براونيز داكن, en: Dark Brownies},
I/flutter ( 9202): ║                         "itemType": "dessert",
I/flutter ( 9202): ║                         "pricingModel": "fixed",
I/flutter ( 9202): ║                         "priceHalala": 1300,
I/flutter ( 9202): ║                         "baseUnitGrams": 100,
I/flutter ( 9202): ║                         "weightGrams": 0
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "pricing": {
I/flutter ( 9202): ║                 "subtotalHalala": 11900,
I/flutter ( 9202): ║                 "deliveryFeeHalala": 0,
I/flutter ( 9202): ║                 "discountHalala": 0,
I/flutter ( 9202): ║                 "totalHalala": 11900,
I/flutter ( 9202): ║                 "vatPercentage": 16,
I/flutter ( 9202): ║                 "vatHalala": 1641,
I/flutter ( 9202): ║                 "vatIncluded": true,
I/flutter ( 9202): ║                 "currency": "SAR"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "pickup": {
I/flutter ( 9202): ║                 "branchId": "main",
I/flutter ( 9202): ║                 "pickupWindow": "18:00-20:00",
I/flutter ( 9202): ║                 "branchName": {ar: , en: },
I/flutter ( 9202): ║                 "pickupCode": null,
I/flutter ( 9202): ║                 "pickupCodeIssuedAt": null,
I/flutter ( 9202): ║                 "pickupVerifiedAt": null
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "createdAt": "2026-05-30T16:01:18.052Z",
I/flutter ( 9202): ║             "updatedAt": "2026-05-30T16:01:43.056Z"
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ GET
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61/timeline
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 421 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61/timeline
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:02:44 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef7049fdc189a-MRS]
I/flutter ( 9202): ╟ etag: [W/"300-s0mUrNnipiNw5O9miV03dPeMkfU"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ rndr-id: [bbfaf887-d611-402d]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "order_id": "6a1b09cd8e060b5e369a8f61",
I/flutter ( 9202): ║             "current_status": "confirmed",
I/flutter ( 9202): ║             "timeline": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "order_created",
I/flutter ( 9202): ║                     "label_ar": "تم إنشاء الطلب",
I/flutter ( 9202): ║                     "label_en": "Order Created",
I/flutter ( 9202): ║                     "state": "completed",
I/flutter ( 9202): ║                     "time": "2026-05-30T16:01:18.052Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "payment_confirmed",
I/flutter ( 9202): ║                     "label_ar": "تم تأكيد الطلب",
I/flutter ( 9202): ║                     "label_en": "Payment Confirmed",
I/flutter ( 9202): ║                     "state": "active",
I/flutter ( 9202): ║                     "time": "2026-05-30T16:01:42.857Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "preparing",
I/flutter ( 9202): ║                     "label_ar": "جاري تجهيز الطلب",
I/flutter ( 9202): ║                     "label_en": "Preparing",
I/flutter ( 9202): ║                     "state": "pending",
I/flutter ( 9202): ║                     "time": null
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "ready_for_pickup",
I/flutter ( 9202): ║                     "label_ar": "الطلب جاهز للاستلام",
I/flutter ( 9202): ║                     "label_en": "Ready for Pickup",
I/flutter ( 9202): ║                     "state": "pending",
I/flutter ( 9202): ║                     "time": null
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "fulfilled",
I/flutter ( 9202): ║                     "label_ar": "تم استلام الطلب",
I/flutter ( 9202): ║                     "label_en": "Picked Up",
I/flutter ( 9202): ║                     "state": "pending",
I/flutter ( 9202): ║                     "time": null
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ]
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingRefreshing(Instance of 'OrderModel', Instance of 'OrderTimelineModel'), nextState: OrderTrackingSuccess(Instance of 'OrderModel', Instance of 'OrderTimelineModel') }
E/libEGL  ( 9202): called unimplemented OpenGL ES API
E/libEGL  ( 9202): called unimplemented OpenGL ES API
E/libEGL  ( 9202): called unimplemented OpenGL ES API
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ GET
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/6a19c41387785860771917e7/days/2026-05-30/pickup/status
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 776 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/6a19c41387785860771917e7/days/2026-05-30/pickup/status
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:02:52 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef7328f38e1bc-MRS]
I/flutter ( 9202): ╟ etag: [W/"560-NOvfX5W8FGykmDO03MH/dAOVuXE"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ rndr-id: [399ca1b1-d733-4be3]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "subscriptionId": "6a19c41387785860771917e7",
I/flutter ( 9202): ║             "date": "2026-05-30",
I/flutter ( 9202): ║             "currentStep": 1,
I/flutter ( 9202): ║             "status": "open",
I/flutter ( 9202): ║             "statusLabel": "وجباتك غير مجهزة بعد",
I/flutter ( 9202): ║             "statusLabelAr": "وجباتك غير مجهزة بعد",
I/flutter ( 9202): ║             "statusLabelEn": "Your meals are not prepared yet",
I/flutter ( 9202): ║             "message": "راجع اختياراتك لبدء التجهيز.",
I/flutter ( 9202): ║             "messageAr": "راجع اختياراتك لبدء التجهيز.",
I/flutter ( 9202): ║             "messageEn": "Review your selection to start preparation.",
I/flutter ( 9202): ║             "canModify": true,
I/flutter ( 9202): ║             "isReady": false,
I/flutter ( 9202): ║             "isCompleted": false,
I/flutter ( 9202): ║             "pickupRequested": false,
I/flutter ( 9202): ║             "pickupPrepared": false,
I/flutter ( 9202): ║             "pickupPreparationFlowStatus": "waiting_for_prepare",
I/flutter ( 9202): ║             "consumptionState": "consumable_today",
I/flutter ( 9202): ║             "fulfillmentMode": "customer_selected",
I/flutter ( 9202): ║             "dayEndConsumptionReason": null,
I/flutter ( 9202): ║             "canRequestPrepare": false,
I/flutter ( 9202): ║             "requestBlockedReason": "INVALID_STATE",
I/flutter ( 9202): ║             "requestBlockedMessage": "تجهيز الاستلام غير متاح لهذا اليوم",
I/flutter ( 9202): ║             "requestBlockedMessageAr": "تجهيز الاستلام غير متاح لهذا اليوم",
I/flutter ( 9202): ║             "requestBlockedMessageEn": "Pickup preparation is not available for this day",
I/flutter ( 9202): ║             "pickupLocation": {
I/flutter ( 9202): ║                 "id": "main",
I/flutter ( 9202): ║                 "name": "[object Object]",
I/flutter ( 9202): ║                 "address": "[object Object]",
I/flutter ( 9202): ║                 "phone": "",
I/flutter ( 9202): ║                 "city": "",
I/flutter ( 9202): ║                 "district": "",
I/flutter ( 9202): ║                 "workingHours": "",
I/flutter ( 9202): ║                 "latitude": null,
I/flutter ( 9202): ║                 "longitude": null,
I/flutter ( 9202): ║                 "mapUrl": null
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "restaurantHours": {openTime: 00:00, closeTime: 23:59, isOpenNow: true},
I/flutter ( 9202): ║             "pickupCode": null,
I/flutter ( 9202): ║             "pickupCodeIssuedAt": null,
I/flutter ( 9202): ║             "fulfilledAt": null
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/flutter ( 9202): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingSuccess(Instance of 'OrderModel', Instance of 'OrderTimelineModel'), nextState: OrderTrackingRefreshing(Instance of 'OrderModel', Instance of 'OrderTimelineModel') }
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ GET
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 433 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:02:54 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef73f99b3e1bc-MRS]
I/flutter ( 9202): ╟ etag: [W/"1036-VS3kx2U23+609sfingsdoMMMtSk"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ rndr-id: [104339ef-54cd-4359]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "id": "6a1b09cd8e060b5e369a8f61",
I/flutter ( 9202): ║             "orderId": "6a1b09cd8e060b5e369a8f61",
I/flutter ( 9202): ║             "orderNumber": "ORD-369A8F60",
I/flutter ( 9202): ║             "source": "one_time_order",
I/flutter ( 9202): ║             "status": "confirmed",
I/flutter ( 9202): ║             "paymentStatus": "paid",
I/flutter ( 9202): ║             "allowedActions": []
I/flutter ( 9202): ║             "timeline_endpoint": "/api/orders/6a1b09cd8e060b5e369a8f61/timeline",
I/flutter ( 9202): ║             "cancelled_by": null,
I/flutter ( 9202): ║             "cancellation_reason": null,
I/flutter ( 9202): ║             "cancellation_source": null,
I/flutter ( 9202): ║             "cancelled_at": null,
I/flutter ( 9202): ║             "expiresAt": null,
I/flutter ( 9202): ║             "fulfillmentMethod": "pickup",
I/flutter ( 9202): ║             "fulfillmentDate": "2026-05-30",
I/flutter ( 9202): ║             "requestedFulfillmentDate": "2026-05-30",
I/flutter ( 9202): ║             "items": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "itemType": "basic_salad",
I/flutter ( 9202): ║                     "catalogRef": {model: MenuProduct, id: 6a19c0226864369ee0a8c0de},
I/flutter ( 9202): ║                     "name": {ar: سلطة بيسك, en: Basic Salad},
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 8700,
I/flutter ( 9202): ║                     "lineTotalHalala": 8700,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "selections": {
I/flutter ( 9202): ║                         "salad": {
I/flutter ( 9202): ║                             "ingredients": []
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                         "proteinName": {ar: , en: },
I/flutter ( 9202): ║                         "carbs": []
I/flutter ( 9202): ║                         "selectedOptions": [
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c0196864369ee0a8c0c4",
I/flutter ( 9202): ║                                 "groupName": {ar: ورقيات, en: Leafy Greens},
I/flutter ( 9202): ║                                 "optionId": "6a19c0196864369ee0a8c0c8",
I/flutter ( 9202): ║                                 "name": {ar: سبانخ, en: Spinach},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            },
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c0196864369ee0a8c0c4",
I/flutter ( 9202): ║                                 "groupName": {ar: ورقيات, en: Leafy Greens},
I/flutter ( 9202): ║                                 "optionId": "6a19c0196864369ee0a8c0c7",
I/flutter ( 9202): ║                                 "name": {ar: جرجير, en: Arugula},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            },
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c0166864369ee0a8c0b3",
I/flutter ( 9202): ║                                 "groupName": {ar: بروتينات, en: Proteins},
I/flutter ( 9202): ║                                 "optionId": "6a19c0176864369ee0a8c0b7",
I/flutter ( 9202): ║                                 "name": {ar: سمك, en: Fish},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            },
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c01c6864369ee0a8c0d7",
I/flutter ( 9202): ║                                 "groupName": {ar: الصوصات, en: Sauces},
I/flutter ( 9202): ║                                 "optionId": "6a19c01c6864369ee0a8c0da",
I/flutter ( 9202): ║                                 "name": {ar: ليمون وخردل, en: Lemon Mustard},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            }
I/flutter ( 9202): ║                         ]
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "nutrition": {},
I/flutter ( 9202): ║                     "productSnapshot": {
I/flutter ( 9202): ║                         "productId": "6a19c0226864369ee0a8c0de",
I/flutter ( 9202): ║                         "categoryId": "6a19c0156864369ee0a8c0ab",
I/flutter ( 9202): ║                         "categoryName": {ar: اطلب على مزاجك, en: Custom Order},
I/flutter ( 9202): ║                         "key": "basic_salad",
I/flutter ( 9202): ║                         "name": {ar: سلطة بيسك, en: Basic Salad},
I/flutter ( 9202): ║                         "itemType": "basic_salad",
I/flutter ( 9202): ║                         "pricingModel": "per_100g",
I/flutter ( 9202): ║                         "priceHalala": 2900,
I/flutter ( 9202): ║                         "baseUnitGrams": 100,
I/flutter ( 9202): ║                         "weightGrams": 300
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "itemType": "dessert",
I/flutter ( 9202): ║                     "catalogRef": {model: MenuProduct, id: 6a19c0386864369ee0a8c1f3},
I/flutter ( 9202): ║                     "name": {ar: تشيز كيك بالتوت, en: Berry Cheesecake},
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 1900,
I/flutter ( 9202): ║                     "lineTotalHalala": 1900,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "selections": {
I/flutter ( 9202): ║                         "salad": {
I/flutter ( 9202): ║                             "ingredients": []
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                         "proteinName": {ar: , en: },
I/flutter ( 9202): ║                         "carbs": []
I/flutter ( 9202): ║                         "selectedOptions": []
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "nutrition": {},
I/flutter ( 9202): ║                     "productSnapshot": {
I/flutter ( 9202): ║                         "productId": "6a19c0386864369ee0a8c1f3",
I/flutter ( 9202): ║                         "categoryId": "6a19c0166864369ee0a8c0af",
I/flutter ( 9202): ║                         "categoryName": {ar: الحلويات, en: Desserts},
I/flutter ( 9202): ║                         "key": "berry_cheesecake",
I/flutter ( 9202): ║                         "name": {ar: تشيز كيك بالتوت, en: Berry Cheesecake},
I/flutter ( 9202): ║                         "itemType": "dessert",
I/flutter ( 9202): ║                         "pricingModel": "fixed",
I/flutter ( 9202): ║                         "priceHalala": 1900,
I/flutter ( 9202): ║                         "baseUnitGrams": 100,
I/flutter ( 9202): ║                         "weightGrams": 0
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "itemType": "dessert",
I/flutter ( 9202): ║                     "catalogRef": {model: MenuProduct, id: 6a19c0386864369ee0a8c1f4},
I/flutter ( 9202): ║                     "name": {ar: براونيز داكن, en: Dark Brownies},
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 1300,
I/flutter ( 9202): ║                     "lineTotalHalala": 1300,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "selections": {
I/flutter ( 9202): ║                         "salad": {
I/flutter ( 9202): ║                             "ingredients": []
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                         "proteinName": {ar: , en: },
I/flutter ( 9202): ║                         "carbs": []
I/flutter ( 9202): ║                         "selectedOptions": []
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "nutrition": {},
I/flutter ( 9202): ║                     "productSnapshot": {
I/flutter ( 9202): ║                         "productId": "6a19c0386864369ee0a8c1f4",
I/flutter ( 9202): ║                         "categoryId": "6a19c0166864369ee0a8c0af",
I/flutter ( 9202): ║                         "categoryName": {ar: الحلويات, en: Desserts},
I/flutter ( 9202): ║                         "key": "dark_brownies",
I/flutter ( 9202): ║                         "name": {ar: براونيز داكن, en: Dark Brownies},
I/flutter ( 9202): ║                         "itemType": "dessert",
I/flutter ( 9202): ║                         "pricingModel": "fixed",
I/flutter ( 9202): ║                         "priceHalala": 1300,
I/flutter ( 9202): ║                         "baseUnitGrams": 100,
I/flutter ( 9202): ║                         "weightGrams": 0
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "pricing": {
I/flutter ( 9202): ║                 "subtotalHalala": 11900,
I/flutter ( 9202): ║                 "deliveryFeeHalala": 0,
I/flutter ( 9202): ║                 "discountHalala": 0,
I/flutter ( 9202): ║                 "totalHalala": 11900,
I/flutter ( 9202): ║                 "vatPercentage": 16,
I/flutter ( 9202): ║                 "vatHalala": 1641,
I/flutter ( 9202): ║                 "vatIncluded": true,
I/flutter ( 9202): ║                 "currency": "SAR"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "pickup": {
I/flutter ( 9202): ║                 "branchId": "main",
I/flutter ( 9202): ║                 "pickupWindow": "18:00-20:00",
I/flutter ( 9202): ║                 "branchName": {ar: , en: },
I/flutter ( 9202): ║                 "pickupCode": null,
I/flutter ( 9202): ║                 "pickupCodeIssuedAt": null,
I/flutter ( 9202): ║                 "pickupVerifiedAt": null
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "createdAt": "2026-05-30T16:01:18.052Z",
I/flutter ( 9202): ║             "updatedAt": "2026-05-30T16:01:43.056Z"
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ GET
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61/timeline
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 397 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61/timeline
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:02:54 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef742385ae1bc-MRS]
I/flutter ( 9202): ╟ etag: [W/"300-s0mUrNnipiNw5O9miV03dPeMkfU"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ rndr-id: [c01d8603-199f-420c]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "order_id": "6a1b09cd8e060b5e369a8f61",
I/flutter ( 9202): ║             "current_status": "confirmed",
I/flutter ( 9202): ║             "timeline": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "order_created",
I/flutter ( 9202): ║                     "label_ar": "تم إنشاء الطلب",
I/flutter ( 9202): ║                     "label_en": "Order Created",
I/flutter ( 9202): ║                     "state": "completed",
I/flutter ( 9202): ║                     "time": "2026-05-30T16:01:18.052Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "payment_confirmed",
I/flutter ( 9202): ║                     "label_ar": "تم تأكيد الطلب",
I/flutter ( 9202): ║                     "label_en": "Payment Confirmed",
I/flutter ( 9202): ║                     "state": "active",
I/flutter ( 9202): ║                     "time": "2026-05-30T16:01:42.857Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "preparing",
I/flutter ( 9202): ║                     "label_ar": "جاري تجهيز الطلب",
I/flutter ( 9202): ║                     "label_en": "Preparing",
I/flutter ( 9202): ║                     "state": "pending",
I/flutter ( 9202): ║                     "time": null
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "ready_for_pickup",
I/flutter ( 9202): ║                     "label_ar": "الطلب جاهز للاستلام",
I/flutter ( 9202): ║                     "label_en": "Ready for Pickup",
I/flutter ( 9202): ║                     "state": "pending",
I/flutter ( 9202): ║                     "time": null
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "fulfilled",
I/flutter ( 9202): ║                     "label_ar": "تم استلام الطلب",
I/flutter ( 9202): ║                     "label_en": "Picked Up",
I/flutter ( 9202): ║                     "state": "pending",
I/flutter ( 9202): ║                     "time": null
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ]
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingRefreshing(Instance of 'OrderModel', Instance of 'OrderTimelineModel'), nextState: OrderTrackingSuccess(Instance of 'OrderModel', Instance of 'OrderTimelineModel') }
The overflowing RenderFlex has an orientation of Axis.horizontal.
The edge of the RenderFlex that is overflowing has been marked in the rendering with a yellow and black striped pattern. This is usually caused by the contents being too big for the RenderFlex.

Consider applying a flex factor (e.g. using an Expanded widget) to force the children of the RenderFlex to fit within the available space instead of being sized to their natural size.
This is considered an error condition because it indicates that there is content that cannot be seen. If the content is legitimately bigger than the available space, consider clipping it with a ClipRect widget before putting it in the flex, or using a scrollable container rather than a Flex, like a ListView.

The specific RenderFlex in question is: RenderFlex#7e1e8 relayoutBoundary=up8 OVERFLOWING
...  parentData: offset=Offset(0.0, 50.6); flex=null; fit=null (can use size)
...  constraints: BoxConstraints(0.0<=w<=152.1, 0.0<=h<=Infinity)
...  size: Size(152.1, 4.3)
...  direction: horizontal
...  mainAxisAlignment: start
...  mainAxisSize: max
...  crossAxisAlignment: center
...  textDirection: rtl
...  verticalDirection: down
...  spacing: 0.0
◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤◢◤
====================================================================================================
E/libEGL  ( 9202): called unimplemented OpenGL ES API
E/libEGL  ( 9202): called unimplemented OpenGL ES API
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/flutter ( 9202): onChange -- MealPlannerBloc, Change { currentState: MealPlannerLoaded([Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel'], Instance of 'MealPlannerMenuModel', [AddOnModel(6a19c03c6864369ee0a8c203, كلاسيك جرين, juice, , , SAR, 1100, 11.0, 11 SAR, item, flat_once, one_time, item, AddOnUiModel(كلاسيك جرين, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03c6864369ee0a8c202, بيري بلاست, juice, , , SAR, 1100, 11.0, 11 SAR, item, flat_once, one_time, item, AddOnUiModel(بيري بلاست, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03b6864369ee0a8c201, براونيز داكن, snack, , , SAR, 1300, 13.0, 13 SAR, item, flat_once, one_time, item, AddOnUiModel(براونيز داكن, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03b6864369ee0a8c200, تشيز كيك بالتوت, sn
E/libEGL  ( 9202): called unimplemented OpenGL ES API
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/flutter ( 9202): onChange -- MealPlannerBloc, Change { currentState: MealPlannerLoaded([Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel'], Instance of 'MealPlannerMenuModel', [AddOnModel(6a19c03c6864369ee0a8c203, كلاسيك جرين, juice, , , SAR, 1100, 11.0, 11 SAR, item, flat_once, one_time, item, AddOnUiModel(كلاسيك جرين, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03c6864369ee0a8c202, بيري بلاست, juice, , , SAR, 1100, 11.0, 11 SAR, item, flat_once, one_time, item, AddOnUiModel(بيري بلاست, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03b6864369ee0a8c201, براونيز داكن, snack, , , SAR, 1300, 13.0, 13 SAR, item, flat_once, one_time, item, AddOnUiModel(براونيز داكن, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03b6864369ee0a8c200, تشيز كيك بالتوت, sn
I/flutter ( 9202): {
I/flutter ( 9202):   "mealSlots": [
I/flutter ( 9202):     {
I/flutter ( 9202):       "slotIndex": 1,
I/flutter ( 9202):       "slotKey": "slot_1",
I/flutter ( 9202):       "selectionType": "premium_meal",
I/flutter ( 9202):       "proteinId": "6a19c0176864369ee0a8c0bb",
I/flutter ( 9202):       "proteinKey": "shrimp",
I/flutter ( 9202):       "premiumKey": "shrimp",
I/flutter ( 9202):       "carbs": [
I/flutter ( 9202):         {
I/flutter ( 9202):           "carbId": "6a19c0196864369ee0a8c0c2",
I/flutter ( 9202):           "grams": 150
I/flutter ( 9202):         }
I/flutter ( 9202):       ]
I/flutter ( 9202):     },
I/flutter ( 9202):     {
I/flutter ( 9202):       "slotIndex": 2,
I/flutter ( 9202):       "slotKey": "slot_2",
I/flutter ( 9202):       "selectionType": "premium_large_salad",
I/flutter ( 9202):       "proteinId": "6a19c0176864369ee0a8c0b9",
I/flutter ( 9202):       "salad": {
I/flutter ( 9202):         "presetKey": "premium_large_salad",
I/flutter ( 9202):         "groups": {
I/flutter ( 9202):           "leafy_greens": [],
I/flutter ( 9202):           "vegetables": [],
I/flutter ( 9202):           "protein": [
I/flutter ( 9202):             "6a19c0176864369ee0a8c0b9"
I/flutter ( 9202):           ],
I/flutter ( 9202):           "cheese_nuts": [],
I/flutter ( 9202):           "fruits": [],
I/flutter ( 9202):           "sauce": [
I/flutter ( 9202):             "6a19c01c6864369ee0a8c0da"
I/flutter ( 9202):           ]
I/flutter ( 9202):         }
I/flutter ( 9202):       }
I/flutter ( 9202):     }
I/flutter ( 9202):   ],
I/flutter ( 9202):   "addonsOneTime": [
I/flutter ( 9202):     "6a19c03c6864369ee0a8c203",
I/flutter ( 9202):     "6a19c03c6864369ee0a8c202"
I/flutter ( 9202):   ]
I/flutter ( 9202): }
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ POST
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/6a19c41387785860771917e7/days/2026-06-02/selection/validate
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ╟ mealSlots:
I/flutter ( 9202): ║ [{slotIndex: 1, slotKey: slot_1, selectionType: premium_meal, proteinId: 6a19c0176864369ee
I/flutter ( 9202): ║ 0a8c0bb, proteinKey: shrimp, premiumKey: shrimp, carbs: [{carbId: 6a19c0196864369ee0a8c0c2
I/flutter ( 9202): ║ , grams: 150}]}, {slotIndex: 2, slotKey: slot_2, selectionType: premium_large_salad, prote
I/flutter ( 9202): ║ inId: 6a19c0176864369ee0a8c0b9, salad: {presetKey: premium_large_salad, groups: Instance o
I/flutter ( 9202): ║ f 'SaladGroupsRequest'}}]
I/flutter ( 9202): ╟ addonsOneTime: [6a19c03c6864369ee0a8c203, 6a19c03c6864369ee0a8c202]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ║ {mealSlots: [{slotIndex: 1, slotKey: slot_1, selectionType: premium_meal, proteinId: 6a19c
I/flutter ( 9202): ║ 0176864369ee0a8c0bb, proteinKey: shrimp, premiumKey: shrimp, carbs: [{carbId: 6a19c0196864
I/flutter ( 9202): ║ 369ee0a8c0c2, grams: 150}]}, {slotIndex: 2, slotKey: slot_2, selectionType: premium_large_
I/flutter ( 9202): ║ salad, proteinId: 6a19c0176864369ee0a8c0b9, salad: {presetKey: premium_large_salad, groups
I/flutter ( 9202): ║ : Instance of 'SaladGroupsRequest'}}], addonsOneTime: [6a19c03c6864369ee0a8c203, 6a19c03c6
I/flutter ( 9202): ║ 864369ee0a8c202]}
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ POST ║ Status: 200 OK  ║ Time: 1064 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/6a19c41387785860771917e7/days/2026-06-02/selection/validate
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:03:01 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef76aebe1e20c-MRS]
I/flutter ( 9202): ╟ etag: [W/"172e-wtUpxxUExJ849QJSyJb3Szl1wuY"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ rndr-id: [f6129b5c-d85d-486b]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "valid": true,
I/flutter ( 9202): ║             "plannerState": "draft",
I/flutter ( 9202): ║             "mealSlots": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "slotIndex": 1,
I/flutter ( 9202): ║                     "slotKey": "slot_1",
I/flutter ( 9202): ║                     "status": "complete",
I/flutter ( 9202): ║                     "selectionType": "premium_meal",
I/flutter ( 9202): ║                     "proteinId": "6a19bd7b0f6ac4f0db96ecc6",
I/flutter ( 9202): ║                     "proteinKey": "shrimp",
I/flutter ( 9202): ║                     "carbs": [{carbId: 6a19c0196864369ee0a8c0c2, grams: 150}]
I/flutter ( 9202): ║                     "sandwichId": null,
I/flutter ( 9202): ║                     "salad": null,
I/flutter ( 9202): ║                     "isPremium": true,
I/flutter ( 9202): ║                     "premiumKey": "shrimp",
I/flutter ( 9202): ║                     "premiumSource": "pending_payment",
I/flutter ( 9202): ║                     "premiumExtraFeeHalala": 2000,
I/flutter ( 9202): ║                     "proteinFamilyKey": "fish",
I/flutter ( 9202): ║                     "proteinDisplayCategoryKey": "premium",
I/flutter ( 9202): ║                     "proteinRuleTags": []
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "slotIndex": 2,
I/flutter ( 9202): ║                     "slotKey": "slot_2",
I/flutter ( 9202): ║                     "status": "complete",
I/flutter ( 9202): ║                     "selectionType": "premium_large_salad",
I/flutter ( 9202): ║                     "proteinId": "6a19c0176864369ee0a8c0b9",
I/flutter ( 9202): ║                     "proteinKey": null,
I/flutter ( 9202): ║                     "carbs": []
I/flutter ( 9202): ║                     "sandwichId": null,
I/flutter ( 9202): ║                     "salad": {
I/flutter ( 9202): ║                         "presetKey": "premium_large_salad",
I/flutter ( 9202): ║                         "groups": {
I/flutter ( 9202): ║                             "leafy_greens": []
I/flutter ( 9202): ║                             "vegetables": []
I/flutter ( 9202): ║                             "protein": [6a19c0176864369ee0a8c0b9]
I/flutter ( 9202): ║                             "cheese_nuts": []
I/flutter ( 9202): ║                             "fruits": []
I/flutter ( 9202): ║                             "sauce": [6a19c01c6864369ee0a8c0da]
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "isPremium": true,
I/flutter ( 9202): ║                     "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                     "premiumSource": "pending_payment",
I/flutter ( 9202): ║                     "premiumExtraFeeHalala": 2900,
I/flutter ( 9202): ║                     "proteinFamilyKey": "eggs",
I/flutter ( 9202): ║                     "proteinDisplayCategoryKey": "eggs",
I/flutter ( 9202): ║                     "proteinRuleTags": []
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "plannerMeta": {
I/flutter ( 9202): ║                 "requiredSlotCount": 1,
I/flutter ( 9202): ║                 "emptySlotCount": 0,
I/flutter ( 9202): ║                 "partialSlotCount": 0,
I/flutter ( 9202): ║                 "completeSlotCount": 2,
I/flutter ( 9202): ║                 "beefSlotCount": 0,
I/flutter ( 9202): ║                 "premiumSlotCount": 2,
I/flutter ( 9202): ║                 "premiumCoveredByBalanceCount": 0,
I/flutter ( 9202): ║                 "premiumPendingPaymentCount": 2,
I/flutter ( 9202): ║                 "premiumPaidExtraCount": 0,
I/flutter ( 9202): ║                 "premiumTotalHalala": 4900,
I/flutter ( 9202): ║                 "maxSlotCount": 7,
I/flutter ( 9202): ║                 "isDraftValid": true,
I/flutter ( 9202): ║                 "isConfirmable": false,
I/flutter ( 9202): ║                 "lastEditedAt": "2026-05-30T16:03:01.592Z"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "addonSelections": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "addonId": "6a19c03c6864369ee0a8c203",
I/flutter ( 9202): ║                     "name": "Classic Green",
I/flutter ( 9202): ║                     "category": "juice",
I/flutter ( 9202): ║                     "source": "subscription",
I/flutter ( 9202): ║                     "priceHalala": 0,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "consumedAt": "2026-05-30T16:03:01.661Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "addonId": "6a19c03c6864369ee0a8c202",
I/flutter ( 9202): ║                     "name": "Berry Blast",
I/flutter ( 9202): ║                     "category": "juice",
I/flutter ( 9202): ║                     "source": "pending_payment",
I/flutter ( 9202): ║                     "priceHalala": 1100,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "consumedAt": "2026-05-30T16:03:01.661Z"
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "plannerRevisionHash": "44b7e490f06d037116a6b9f0991a0b1a7a5cfc4171921885943313d66258a370",
I/flutter ( 9202): ║             "premiumSummary": {
I/flutter ( 9202): ║                 "selectedCount": 2,
I/flutter ( 9202): ║                 "coveredByBalanceCount": 0,
I/flutter ( 9202): ║                 "pendingPaymentCount": 2,
I/flutter ( 9202): ║                 "paidExtraCount": 0,
I/flutter ( 9202): ║                 "totalExtraHalala": 4900,
I/flutter ( 9202): ║                 "currency": "SAR"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "premiumExtraPayment": {
I/flutter ( 9202): ║                 "status": "none",
I/flutter ( 9202): ║                 "paymentId": null,
I/flutter ( 9202): ║                 "providerInvoiceId": null,
I/flutter ( 9202): ║                 "amountHalala": 4900,
I/flutter ( 9202): ║                 "currency": "SAR",
I/flutter ( 9202): ║                 "expiresAt": null,
I/flutter ( 9202): ║                 "reused": false,
I/flutter ( 9202): ║                 "revisionHash": "44b7e490f06d037116a6b9f0991a0b1a7a5cfc4171921885943313d66258a370"
I/flutter ( 9202): ║                 "createdAt": null,
I/flutter ( 9202): ║                 "paidAt": null,
I/flutter ( 9202): ║                 "extraPremiumCount": 2,
I/flutter ( 9202): ║                 "statusLabel": "لا يوجد دفع"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "paymentRequirement": {
I/flutter ( 9202): ║                 "status": "priced",
I/flutter ( 9202): ║                 "requiresPayment": true,
I/flutter ( 9202): ║                 "pricingStatus": "priced",
I/flutter ( 9202): ║                 "blockingReason": "PREMIUM_PAYMENT_REQUIRED",
I/flutter ( 9202): ║                 "canCreatePayment": true,
I/flutter ( 9202): ║                 "premiumSelectedCount": 2,
I/flutter ( 9202): ║                 "premiumPendingPaymentCount": 2,
I/flutter ( 9202): ║                 "addonSelectedCount": 2,
I/flutter ( 9202): ║                 "addonPendingPaymentCount": 1,
I/flutter ( 9202): ║                 "pendingAmountHalala": 6000,
I/flutter ( 9202): ║                 "amountHalala": 6000,
I/flutter ( 9202): ║                 "currency": "SAR",
I/flutter ( 9202): ║                 "pricingStatusLabel": "مسعر",
I/flutter ( 9202): ║                 "blockingReasonLabel": ""
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "commercialState": "payment_required",
I/flutter ( 9202): ║             "isFulfillable": false,
I/flutter ( 9202): ║             "canBePrepared": false,
I/flutter ( 9202): ║             "rules": {
I/flutter ( 9202): ║                 "version": "meal_planner_rules.v3",
I/flutter ( 9202): ║                 "beef": {proteinFamilyKey: beef, maxSlotsPerDay: 1},
I/flutter ( 9202): ║                 "standardCarbs": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
I/flutter ( 9202): ║                 "premiumCarbs": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
I/flutter ( 9202): ║                 "proteinGroups": [
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "chicken",
I/flutter ( 9202): ║                         "name": {ar: دجاج, en: Chicken},
I/flutter ( 9202): ║                         "sortOrder": 10
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "beef",
I/flutter ( 9202): ║                         "name": {ar: لحم, en: Beef},
I/flutter ( 9202): ║                         "sortOrder": 20
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "fish",
I/flutter ( 9202): ║                         "name": {ar: أسماك, en: Fish},
I/flutter ( 9202): ║                         "sortOrder": 30
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "eggs",
I/flutter ( 9202): ║                         "name": {ar: بيض, en: Eggs},
I/flutter ( 9202): ║                         "sortOrder": 40
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "premium",
I/flutter ( 9202): ║                         "name": {ar: بريميوم, en: Premium},
I/flutter ( 9202): ║                         "sortOrder": 50
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "other",
I/flutter ( 9202): ║                         "name": {ar: أخرى, en: Other},
I/flutter ( 9202): ║                         "sortOrder": 60
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                 ],
I/flutter ( 9202): ║                 "premiumLargeSalad": {
I/flutter ( 9202): ║                     "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                     "presetKey": "large_salad",
I/flutter ( 9202): ║                     "extraFeeHalala": 2900,
I/flutter ( 9202): ║                     "groups": [
I/flutter ( 9202): ║                      {key: leafy_greens, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                      {key: vegetables, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                      {key: protein, minSelect: 1, maxSelect: 1},
I/flutter ( 9202): ║                      {key: cheese_nuts, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                      {key: fruits, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                      {key: sauce, minSelect: 1, maxSelect: 1}
I/flutter ( 9202): ║                     ]
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "planningState": "draft",
I/flutter ( 9202): ║             "planningMeta": {
I/flutter ( 9202): ║                 "requiredMealCount": 1,
I/flutter ( 9202): ║                 "selectedBaseMealCount": 0,
I/flutter ( 9202): ║                 "selectedPremiumMealCount": 2,
I/flutter ( 9202): ║                 "selectedTotalMealCount": 2,
I/flutter ( 9202): ║                 "isExactCountSatisfied": true,
I/flutter ( 9202): ║                 "lastEditedAt": null,
I/flutter ( 9202): ║                 "confirmedAt": null,
I/flutter ( 9202): ║                 "confirmedByRole": null
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "planning": {
I/flutter ( 9202): ║                 "version": "subscription_day_planning.v1",
I/flutter ( 9202): ║                 "state": "draft",
I/flutter ( 9202): ║                 "requiredMealCount": 1,
I/flutter ( 9202): ║                 "selectedBaseMealCount": 0,
I/flutter ( 9202): ║                 "selectedPremiumMealCount": 2,
I/flutter ( 9202): ║                 "selectedTotalMealCount": 2,
I/flutter ( 9202): ║                 "isThresholdMet": true,
I/flutter ( 9202): ║                 "isExactCountSatisfied": true,
I/flutter ( 9202): ║                 "isBalanceExceeded": false,
I/flutter ( 9202): ║                 "maxConsumableMealsNow": 7,
I/flutter ( 9202): ║                 "confirmedAt": null,
I/flutter ( 9202): ║                 "confirmedByRole": null,
I/flutter ( 9202): ║                 "baseMealSlots": []
I/flutter ( 9202): ║                 "premiumOverageCount": 0,
I/flutter ( 9202): ║                 "premiumOverageStatus": null,
I/flutter ( 9202): ║                 "stateLabel": "مسودة",
I/flutter ( 9202): ║                 "premiumOverageStatusLabel": ""
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "pickupRequested": false,
I/flutter ( 9202): ║             "pickupPrepared": false,
I/flutter ( 9202): ║             "pickupPreparationFlowStatus": "waiting_for_prepare",
I/flutter ( 9202): ║             "dayEndConsumptionReason": null,
I/flutter ( 9202): ║             "fulfillmentMode": "customer_selected",
I/flutter ( 9202): ║             "consumptionState": "pending_day",
I/flutter ( 9202): ║             "requiredMealCount": 1,
I/flutter ( 9202): ║             "specifiedMealCount": 1,
I/flutter ( 9202): ║             "unspecifiedMealCount": 0,
I/flutter ( 9202): ║             "hasCustomerSelections": true,
I/flutter ( 9202): ║             "requiresMealTypeKnowledge": true,
I/flutter ( 9202): ║             "mealTypesSpecified": true,
I/flutter ( 9202): ║             "planningReady": false,
I/flutter ( 9202): ║             "fulfillmentReady": false,
I/flutter ( 9202): ║             "deliveryMode": "pickup",
I/flutter ( 9202): ║             "pickupLocation": null,
I/flutter ( 9202): ║             "deliveryAddress": null,
I/flutter ( 9202): ║             "deliveryWindow": null,
I/flutter ( 9202): ║             "deliverySlot": {type: pickup, slotId: , window: , label: },
I/flutter ( 9202): ║             "fulfillmentSummary": {
I/flutter ( 9202): ║                 "mode": "pickup",
I/flutter ( 9202): ║                 "title": "الاستلام من الفرع",
I/flutter ( 9202): ║                 "status": "active",
I/flutter ( 9202): ║                 "statusLabel": "نشط",
I/flutter ( 9202): ║                 "message": "تفاصيل الفرع غير متاحة حاليا",
I/flutter ( 9202): ║                 "nextAction": "",
I/flutter ( 9202): ║                 "isEditable": false,
I/flutter ( 9202): ║                 "isFulfillable": false,
I/flutter ( 9202): ║                 "planningReady": false,
I/flutter ( 9202): ║                 "fulfillmentReady": false,
I/flutter ( 9202): ║                 "lockedReason": "PICKUP_LOCATION_MISSING",
I/flutter ( 9202): ║                 "lockedMessage": "تفاصيل الفرع غير متاحة حاليا"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "lockedReason": "PICKUP_LOCATION_MISSING",
I/flutter ( 9202): ║             "lockedMessage": "تفاصيل الفرع غير متاحة حاليا",
I/flutter ( 9202): ║             "mealBalance": {
I/flutter ( 9202): ║                 "totalMeals": 7,
I/flutter ( 9202): ║                 "remainingMeals": 7,
I/flutter ( 9202): ║                 "consumedMeals": 0,
I/flutter ( 9202): ║                 "canConsumeNow": true,
I/flutter ( 9202): ║                 "maxConsumableMealsNow": 7,
I/flutter ( 9202): ║                 "mealBalancePolicy": "TOTAL_BALANCE_WITHIN_VALIDITY",
I/flutter ( 9202): ║                 "dailyMealLimitEnforced": false,
I/flutter ( 9202): ║                 "dailyMealsDefault": 1
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "commercialStateLabel": "الدفع مطلوب"
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): {
I/flutter ( 9202):   "mealSlots": [
I/flutter ( 9202):     {
I/flutter ( 9202):       "slotIndex": 1,
I/flutter ( 9202):       "slotKey": "slot_1",
I/flutter ( 9202):       "selectionType": "premium_meal",
I/flutter ( 9202):       "proteinId": "6a19c0176864369ee0a8c0bb",
I/flutter ( 9202):       "proteinKey": "shrimp",
I/flutter ( 9202):       "premiumKey": "shrimp",
I/flutter ( 9202):       "carbs": [
I/flutter ( 9202):         {
I/flutter ( 9202):           "carbId": "6a19c0196864369ee0a8c0c2",
I/flutter ( 9202):           "grams": 150
I/flutter ( 9202):         }
I/flutter ( 9202):       ]
I/flutter ( 9202):     },
I/flutter ( 9202):     {
I/flutter ( 9202):       "slotIndex": 2,
I/flutter ( 9202):       "slotKey": "slot_2",
I/flutter ( 9202):       "selectionType": "premium_large_salad",
I/flutter ( 9202):       "proteinId": "6a19c0176864369ee0a8c0b9",
I/flutter ( 9202):       "salad": {
I/flutter ( 9202):         "presetKey": "premium_large_salad",
I/flutter ( 9202):         "groups": {
I/flutter ( 9202):           "leafy_greens": [],
I/flutter ( 9202):           "vegetables": [],
I/flutter ( 9202):           "protein": [
I/flutter ( 9202):             "6a19c0176864369ee0a8c0b9"
I/flutter ( 9202):           ],
I/flutter ( 9202):           "cheese_nuts": [],
I/flutter ( 9202):           "fruits": [],
I/flutter ( 9202):           "sauce": [
I/flutter ( 9202):             "6a19c01c6864369ee0a8c0da"
I/flutter ( 9202):           ]
I/flutter ( 9202):         }
I/flutter ( 9202):       }
I/flutter ( 9202):     }
I/flutter ( 9202):   ],
I/flutter ( 9202):   "addonsOneTime": [
I/flutter ( 9202):     "6a19c03c6864369ee0a8c203",
I/flutter ( 9202):     "6a19c03c6864369ee0a8c202"
I/flutter ( 9202):   ]
I/flutter ( 9202): }
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ PUT
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/6a19c41387785860771917e7/days/2026-06-02/selection
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ╟ mealSlots:
I/flutter ( 9202): ║ [{slotIndex: 1, slotKey: slot_1, selectionType: premium_meal, proteinId: 6a19c0176864369ee
I/flutter ( 9202): ║ 0a8c0bb, proteinKey: shrimp, premiumKey: shrimp, carbs: [{carbId: 6a19c0196864369ee0a8c0c2
I/flutter ( 9202): ║ , grams: 150}]}, {slotIndex: 2, slotKey: slot_2, selectionType: premium_large_salad, prote
I/flutter ( 9202): ║ inId: 6a19c0176864369ee0a8c0b9, salad: {presetKey: premium_large_salad, groups: Instance o
I/flutter ( 9202): ║ f 'SaladGroupsRequest'}}]
I/flutter ( 9202): ╟ addonsOneTime: [6a19c03c6864369ee0a8c203, 6a19c03c6864369ee0a8c202]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ║ {mealSlots: [{slotIndex: 1, slotKey: slot_1, selectionType: premium_meal, proteinId: 6a19c
I/flutter ( 9202): ║ 0176864369ee0a8c0bb, proteinKey: shrimp, premiumKey: shrimp, carbs: [{carbId: 6a19c0196864
I/flutter ( 9202): ║ 369ee0a8c0c2, grams: 150}]}, {slotIndex: 2, slotKey: slot_2, selectionType: premium_large_
I/flutter ( 9202): ║ salad, proteinId: 6a19c0176864369ee0a8c0b9, salad: {presetKey: premium_large_salad, groups
I/flutter ( 9202): ║ : Instance of 'SaladGroupsRequest'}}], addonsOneTime: [6a19c03c6864369ee0a8c203, 6a19c03c6
I/flutter ( 9202): ║ 864369ee0a8c202]}
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ PUT ║ Status: 200 OK  ║ Time: 1533 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/6a19c41387785860771917e7/days/2026-06-02/selection
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:03:03 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef7708ac8e20c-MRS]
I/flutter ( 9202): ╟ etag: [W/"2264-LYyscMfgHRhIrTT/cIpuTy3WhhU"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ rndr-id: [e402d157-5346-485c]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "planningMeta": {
I/flutter ( 9202): ║                 "requiredMealCount": 1,
I/flutter ( 9202): ║                 "selectedBaseMealCount": 0,
I/flutter ( 9202): ║                 "selectedPremiumMealCount": 2,
I/flutter ( 9202): ║                 "selectedTotalMealCount": 2,
I/flutter ( 9202): ║                 "isExactCountSatisfied": true,
I/flutter ( 9202): ║                 "lastEditedAt": "2026-05-30T16:03:02.822Z",
I/flutter ( 9202): ║                 "confirmedAt": null,
I/flutter ( 9202): ║                 "confirmedByRole": null
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "_id": "6a19c41387785860771917f2",
I/flutter ( 9202): ║             "subscriptionId": "6a19c41387785860771917e7",
I/flutter ( 9202): ║             "date": "2026-06-02",
I/flutter ( 9202): ║             "status": "open",
I/flutter ( 9202): ║             "selections": [6a19bd7b0f6ac4f0db96ecc6, 6a19c0176864369ee0a8c0b9]
I/flutter ( 9202): ║             "skippedByUser": false,
I/flutter ( 9202): ║             "skipCompensated": false,
I/flutter ( 9202): ║             "assignedByKitchen": false,
I/flutter ( 9202): ║             "pickupRequested": false,
I/flutter ( 9202): ║             "pickupRequestedAt": null,
I/flutter ( 9202): ║             "pickupPreparationStartedAt": null,
I/flutter ( 9202): ║             "pickupPreparedAt": null,
I/flutter ( 9202): ║             "pickupCode": null,
I/flutter ( 9202): ║             "pickupCodeIssuedAt": null,
I/flutter ( 9202): ║             "pickupVerifiedAt": null,
I/flutter ( 9202): ║             "pickupVerifiedByDashboardUserId": null,
I/flutter ( 9202): ║             "pickupNoShowAt": null,
I/flutter ( 9202): ║             "dayEndConsumptionReason": null,
I/flutter ( 9202): ║             "autoSettled": false,
I/flutter ( 9202): ║             "settledAt": null,
I/flutter ( 9202): ║             "settlementReason": null,
I/flutter ( 9202): ║             "settledBy": null,
I/flutter ( 9202): ║             "cancellationReason": null,
I/flutter ( 9202): ║             "cancellationCategory": null,
I/flutter ( 9202): ║             "cancellationNote": null,
I/flutter ( 9202): ║             "canceledBy": null,
I/flutter ( 9202): ║             "canceledAt": null,
I/flutter ( 9202): ║             "creditsDeducted": false,
I/flutter ( 9202): ║             "autoLocked": false,
I/flutter ( 9202): ║             "plannerRevisionHash": "44b7e490f06d037116a6b9f0991a0b1a7a5cfc4171921885943313d66258a370",
I/flutter ( 9202): ║             "mealReminderSentAt": null,
I/flutter ( 9202): ║             "addonSelections": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "addonId": "6a19c03c6864369ee0a8c203",
I/flutter ( 9202): ║                     "name": "Classic Green",
I/flutter ( 9202): ║                     "category": "juice",
I/flutter ( 9202): ║                     "source": "subscription",
I/flutter ( 9202): ║                     "priceHalala": 0,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "paymentId": null,
I/flutter ( 9202): ║                     "consumedAt": "2026-05-30T16:03:02.618Z",
I/flutter ( 9202): ║                     "_id": "6a1b0a368e060b5e369a90b2"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "addonId": "6a19c03c6864369ee0a8c202",
I/flutter ( 9202): ║                     "name": "Berry Blast",
I/flutter ( 9202): ║                     "category": "juice",
I/flutter ( 9202): ║                     "source": "pending_payment",
I/flutter ( 9202): ║                     "priceHalala": 1100,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "paymentId": null,
I/flutter ( 9202): ║                     "consumedAt": "2026-05-30T16:03:02.618Z",
I/flutter ( 9202): ║                     "_id": "6a1b0a368e060b5e369a90b3"
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "premiumUpgradeSelections": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "baseSlotKey": "slot_1",
I/flutter ( 9202): ║                     "proteinId": "6a19bd7b0f6ac4f0db96ecc6",
I/flutter ( 9202): ║                     "premiumKey": "shrimp",
I/flutter ( 9202): ║                     "unitExtraFeeHalala": 2000,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "premiumSource": "pending_payment",
I/flutter ( 9202): ║                     "_id": "6a1b0a368e060b5e369a90c2",
I/flutter ( 9202): ║                     "consumedAt": "2026-05-30T16:03:02.824Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "baseSlotKey": "slot_2",
I/flutter ( 9202): ║                     "proteinId": "6a19c0176864369ee0a8c0b9",
I/flutter ( 9202): ║                     "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                     "unitExtraFeeHalala": 2900,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "premiumSource": "pending_payment",
I/flutter ( 9202): ║                     "_id": "6a1b0a368e060b5e369a90c3",
I/flutter ( 9202): ║                     "consumedAt": "2026-05-30T16:03:02.824Z"
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "operationAuditLog": []
I/flutter ( 9202): ║             "customSalads": []
I/flutter ( 9202): ║             "customMeals": []
I/flutter ( 9202): ║             "baseMealSlots": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "slotKey": "base_slot_1",
I/flutter ( 9202): ║                     "mealId": "6a19bd7b0f6ac4f0db96ecc6",
I/flutter ( 9202): ║                     "assignmentSource": "client",
I/flutter ( 9202): ║                     "assignedAt": "2026-05-30T16:03:02.822Z",
I/flutter ( 9202): ║                     "_id": "6a1b0a368e060b5e369a90c0"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "slotKey": "base_slot_2",
I/flutter ( 9202): ║                     "mealId": "6a19c0176864369ee0a8c0b9",
I/flutter ( 9202): ║                     "assignmentSource": "client",
I/flutter ( 9202): ║                     "assignedAt": "2026-05-30T16:03:02.822Z",
I/flutter ( 9202): ║                     "_id": "6a1b0a368e060b5e369a90c1"
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "__v": 1,
I/flutter ( 9202): ║             "createdAt": "2026-05-29T16:51:31.803Z",
I/flutter ( 9202): ║             "updatedAt": "2026-05-30T16:03:02.899Z",
I/flutter ( 9202): ║             "materializedMeals": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "slotKey": "slot_1",
I/flutter ( 9202): ║                     "selectionType": "premium_meal",
I/flutter ( 9202): ║                     "sandwichId": null,
I/flutter ( 9202): ║                     "proteinId": "6a19bd7b0f6ac4f0db96ecc6",
I/flutter ( 9202): ║                     "carbId": "6a19c0196864369ee0a8c0c2",
I/flutter ( 9202): ║                     "isPremium": true,
I/flutter ( 9202): ║                     "premiumSource": "pending_payment",
I/flutter ( 9202): ║                     "premiumKey": "shrimp",
I/flutter ( 9202): ║                     "premiumExtraFeeHalala": 2000,
I/flutter ( 9202): ║                     "comboKey": "6a19bd7b0f6ac4f0db96ecc6:6a19c0196864369ee0a8c0c2"
I/flutter ( 9202): ║                     "operationalSku": "6a19bd7b0f6ac4f0db96ecc6:6a19c0196864369ee0a8c0c2"
I/flutter ( 9202): ║                     "generatedAt": "2026-05-30T16:03:02.551Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "slotKey": "slot_2",
I/flutter ( 9202): ║                     "selectionType": "premium_large_salad",
I/flutter ( 9202): ║                     "sandwichId": null,
I/flutter ( 9202): ║                     "proteinId": "6a19c0176864369ee0a8c0b9",
I/flutter ( 9202): ║                     "carbId": null,
I/flutter ( 9202): ║                     "isPremium": true,
I/flutter ( 9202): ║                     "premiumSource": "pending_payment",
I/flutter ( 9202): ║                     "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                     "premiumExtraFeeHalala": 2900,
I/flutter ( 9202): ║                     "comboKey": null,
I/flutter ( 9202): ║                     "operationalSku": "salad:premium_large_salad",
I/flutter ( 9202): ║                     "generatedAt": "2026-05-30T16:03:02.551Z"
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "mealSlots": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "slotIndex": 1,
I/flutter ( 9202): ║                     "slotKey": "slot_1",
I/flutter ( 9202): ║                     "status": "complete",
I/flutter ( 9202): ║                     "selectionType": "premium_meal",
I/flutter ( 9202): ║                     "proteinId": "6a19bd7b0f6ac4f0db96ecc6",
I/flutter ( 9202): ║                     "carbs": [{carbId: 6a19c0196864369ee0a8c0c2, grams: 150}]
I/flutter ( 9202): ║                     "sandwichId": null,
I/flutter ( 9202): ║                     "salad": null,
I/flutter ( 9202): ║                     "isPremium": true,
I/flutter ( 9202): ║                     "premiumKey": "shrimp",
I/flutter ( 9202): ║                     "premiumSource": "pending_payment",
I/flutter ( 9202): ║                     "premiumExtraFeeHalala": 2000
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "slotIndex": 2,
I/flutter ( 9202): ║                     "slotKey": "slot_2",
I/flutter ( 9202): ║                     "status": "complete",
I/flutter ( 9202): ║                     "selectionType": "premium_large_salad",
I/flutter ( 9202): ║                     "proteinId": "6a19c0176864369ee0a8c0b9",
I/flutter ( 9202): ║                     "carbs": []
I/flutter ( 9202): ║                     "sandwichId": null,
I/flutter ( 9202): ║                     "salad": {
I/flutter ( 9202): ║                         "presetKey": "premium_large_salad",
I/flutter ( 9202): ║                         "groups": {
I/flutter ( 9202): ║                             "leafy_greens": []
I/flutter ( 9202): ║                             "vegetables": []
I/flutter ( 9202): ║                             "protein": [6a19c0176864369ee0a8c0b9]
I/flutter ( 9202): ║                             "cheese_nuts": []
I/flutter ( 9202): ║                             "fruits": []
I/flutter ( 9202): ║                             "sauce": [6a19c01c6864369ee0a8c0da]
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "isPremium": true,
I/flutter ( 9202): ║                     "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                     "premiumSource": "pending_payment",
I/flutter ( 9202): ║                     "premiumExtraFeeHalala": 2900
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "plannerMeta": {
I/flutter ( 9202): ║                 "requiredSlotCount": 1,
I/flutter ( 9202): ║                 "emptySlotCount": 0,
I/flutter ( 9202): ║                 "partialSlotCount": 0,
I/flutter ( 9202): ║                 "completeSlotCount": 2,
I/flutter ( 9202): ║                 "beefSlotCount": 0,
I/flutter ( 9202): ║                 "premiumSlotCount": 2,
I/flutter ( 9202): ║                 "premiumCoveredByBalanceCount": 0,
I/flutter ( 9202): ║                 "premiumPendingPaymentCount": 2,
I/flutter ( 9202): ║                 "premiumPaidExtraCount": 0,
I/flutter ( 9202): ║                 "premiumTotalHalala": 4900,
I/flutter ( 9202): ║                 "isDraftValid": true,
I/flutter ( 9202): ║                 "isConfirmable": false,
I/flutter ( 9202): ║                 "lastEditedAt": "2026-05-30T16:03:02.551Z",
I/flutter ( 9202): ║                 "confirmedAt": null,
I/flutter ( 9202): ║                 "confirmedByRole": null
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "plannerState": "draft",
I/flutter ( 9202): ║             "plannerVersion": "v1",
I/flutter ( 9202): ║             "premiumExtraPayment": {
I/flutter ( 9202): ║                 "status": "none",
I/flutter ( 9202): ║                 "paymentId": null,
I/flutter ( 9202): ║                 "providerInvoiceId": null,
I/flutter ( 9202): ║                 "amountHalala": 4900,
I/flutter ( 9202): ║                 "currency": "SAR",
I/flutter ( 9202): ║                 "expiresAt": null,
I/flutter ( 9202): ║                 "reused": false,
I/flutter ( 9202): ║                 "revisionHash": "44b7e490f06d037116a6b9f0991a0b1a7a5cfc4171921885943313d66258a370"
I/flutter ( 9202): ║                 "createdAt": null,
I/flutter ( 9202): ║                 "paidAt": null,
I/flutter ( 9202): ║                 "extraPremiumCount": 2,
I/flutter ( 9202): ║                 "statusLabel": "لا يوجد دفع"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "planningVersion": "subscription_day_planning.v1",
I/flutter ( 9202): ║             "planningState": "draft",
I/flutter ( 9202): ║             "planning": {
I/flutter ( 9202): ║                 "version": "subscription_day_planning.v1",
I/flutter ( 9202): ║                 "state": "draft",
I/flutter ( 9202): ║                 "requiredMealCount": 1,
I/flutter ( 9202): ║                 "selectedBaseMealCount": 0,
I/flutter ( 9202): ║                 "selectedPremiumMealCount": 2,
I/flutter ( 9202): ║                 "selectedTotalMealCount": 2,
I/flutter ( 9202): ║                 "isThresholdMet": true,
I/flutter ( 9202): ║                 "isExactCountSatisfied": true,
I/flutter ( 9202): ║                 "isBalanceExceeded": false,
I/flutter ( 9202): ║                 "maxConsumableMealsNow": 7,
I/flutter ( 9202): ║                 "confirmedAt": null,
I/flutter ( 9202): ║                 "confirmedByRole": null,
I/flutter ( 9202): ║                 "baseMealSlots": [
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "slotKey": "base_slot_1",
I/flutter ( 9202): ║                         "mealId": "6a19bd7b0f6ac4f0db96ecc6",
I/flutter ( 9202): ║                         "assignmentSource": "client",
I/flutter ( 9202): ║                         "assignedAt": "2026-05-30T16:03:02.822Z",
I/flutter ( 9202): ║                         "_id": "6a1b0a368e060b5e369a90c0"
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "slotKey": "base_slot_2",
I/flutter ( 9202): ║                         "mealId": "6a19c0176864369ee0a8c0b9",
I/flutter ( 9202): ║                         "assignmentSource": "client",
I/flutter ( 9202): ║                         "assignedAt": "2026-05-30T16:03:02.822Z",
I/flutter ( 9202): ║                         "_id": "6a1b0a368e060b5e369a90c1"
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                 ],
I/flutter ( 9202): ║                 "premiumOverageCount": 0,
I/flutter ( 9202): ║                 "premiumOverageStatus": null,
I/flutter ( 9202): ║                 "stateLabel": "مسودة",
I/flutter ( 9202): ║                 "premiumOverageStatusLabel": ""
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "statusLabel": "مفتوح",
I/flutter ( 9202): ║             "premiumSummary": {
I/flutter ( 9202): ║                 "selectedCount": 2,
I/flutter ( 9202): ║                 "coveredByBalanceCount": 0,
I/flutter ( 9202): ║                 "pendingPaymentCount": 2,
I/flutter ( 9202): ║                 "paidExtraCount": 0,
I/flutter ( 9202): ║                 "totalExtraHalala": 4900,
I/flutter ( 9202): ║                 "currency": "SAR"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "paymentRequirement": {
I/flutter ( 9202): ║                 "status": "priced",
I/flutter ( 9202): ║                 "requiresPayment": true,
I/flutter ( 9202): ║                 "pricingStatus": "priced",
I/flutter ( 9202): ║                 "blockingReason": "PREMIUM_PAYMENT_REQUIRED",
I/flutter ( 9202): ║                 "canCreatePayment": true,
I/flutter ( 9202): ║                 "premiumSelectedCount": 2,
I/flutter ( 9202): ║                 "premiumPendingPaymentCount": 2,
I/flutter ( 9202): ║                 "addonSelectedCount": 2,
I/flutter ( 9202): ║                 "addonPendingPaymentCount": 1,
I/flutter ( 9202): ║                 "pendingAmountHalala": 6000,
I/flutter ( 9202): ║                 "amountHalala": 6000,
I/flutter ( 9202): ║                 "currency": "SAR",
I/flutter ( 9202): ║                 "pricingStatusLabel": "مسعر",
I/flutter ( 9202): ║                 "blockingReasonLabel": ""
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "commercialState": "payment_required",
I/flutter ( 9202): ║             "isFulfillable": false,
I/flutter ( 9202): ║             "canBePrepared": false,
I/flutter ( 9202): ║             "pickupPrepared": false,
I/flutter ( 9202): ║             "pickupPreparationFlowStatus": "waiting_for_prepare",
I/flutter ( 9202): ║             "fulfillmentMode": "customer_selected",
I/flutter ( 9202): ║             "consumptionState": "pending_day",
I/flutter ( 9202): ║             "requiredMealCount": 1,
I/flutter ( 9202): ║             "specifiedMealCount": 1,
I/flutter ( 9202): ║             "unspecifiedMealCount": 0,
I/flutter ( 9202): ║             "hasCustomerSelections": true,
I/flutter ( 9202): ║             "requiresMealTypeKnowledge": true,
I/flutter ( 9202): ║             "mealTypesSpecified": true,
I/flutter ( 9202): ║             "planningReady": false,
I/flutter ( 9202): ║             "fulfillmentReady": false,
I/flutter ( 9202): ║             "deliveryMode": "pickup",
I/flutter ( 9202): ║             "pickupLocation": null,
I/flutter ( 9202): ║             "deliveryAddress": null,
I/flutter ( 9202): ║             "deliveryWindow": null,
I/flutter ( 9202): ║             "deliverySlot": {type: pickup, slotId: , window: , label: },
I/flutter ( 9202): ║             "fulfillmentSummary": {
I/flutter ( 9202): ║                 "mode": "pickup",
I/flutter ( 9202): ║                 "title": "الاستلام من الفرع",
I/flutter ( 9202): ║                 "status": "open",
I/flutter ( 9202): ║                 "statusLabel": "مفتوح",
I/flutter ( 9202): ║                 "message": "تفاصيل الفرع غير متاحة حاليا",
I/flutter ( 9202): ║                 "nextAction": "",
I/flutter ( 9202): ║                 "isEditable": false,
I/flutter ( 9202): ║                 "isFulfillable": false,
I/flutter ( 9202): ║                 "planningReady": false,
I/flutter ( 9202): ║                 "fulfillmentReady": false,
I/flutter ( 9202): ║                 "lockedReason": "PICKUP_LOCATION_MISSING",
I/flutter ( 9202): ║                 "lockedMessage": "تفاصيل الفرع غير متاحة حاليا"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "lockedReason": "PICKUP_LOCATION_MISSING",
I/flutter ( 9202): ║             "lockedMessage": "تفاصيل الفرع غير متاحة حاليا",
I/flutter ( 9202): ║             "mealBalance": {
I/flutter ( 9202): ║                 "totalMeals": 7,
I/flutter ( 9202): ║                 "remainingMeals": 7,
I/flutter ( 9202): ║                 "consumedMeals": 0,
I/flutter ( 9202): ║                 "canConsumeNow": true,
I/flutter ( 9202): ║                 "maxConsumableMealsNow": 7,
I/flutter ( 9202): ║                 "mealBalancePolicy": "TOTAL_BALANCE_WITHIN_VALIDITY",
I/flutter ( 9202): ║                 "dailyMealLimitEnforced": false,
I/flutter ( 9202): ║                 "dailyMealsDefault": 1
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "rules": {
I/flutter ( 9202): ║                 "version": "meal_planner_rules.v3",
I/flutter ( 9202): ║                 "beef": {proteinFamilyKey: beef, maxSlotsPerDay: 1},
I/flutter ( 9202): ║                 "standardCarbs": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
I/flutter ( 9202): ║                 "premiumCarbs": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
I/flutter ( 9202): ║                 "proteinGroups": [
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "chicken",
I/flutter ( 9202): ║                         "name": {ar: دجاج, en: Chicken},
I/flutter ( 9202): ║                         "sortOrder": 10
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "beef",
I/flutter ( 9202): ║                         "name": {ar: لحم, en: Beef},
I/flutter ( 9202): ║                         "sortOrder": 20
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "fish",
I/flutter ( 9202): ║                         "name": {ar: أسماك, en: Fish},
I/flutter ( 9202): ║                         "sortOrder": 30
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "eggs",
I/flutter ( 9202): ║                         "name": {ar: بيض, en: Eggs},
I/flutter ( 9202): ║                         "sortOrder": 40
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "premium",
I/flutter ( 9202): ║                         "name": {ar: بريميوم, en: Premium},
I/flutter ( 9202): ║                         "sortOrder": 50
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "other",
I/flutter ( 9202): ║                         "name": {ar: أخرى, en: Other},
I/flutter ( 9202): ║                         "sortOrder": 60
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                 ],
I/flutter ( 9202): ║                 "premiumLargeSalad": {
I/flutter ( 9202): ║                     "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                     "presetKey": "large_salad",
I/flutter ( 9202): ║                     "extraFeeHalala": 2900,
I/flutter ( 9202): ║                     "groups": [
I/flutter ( 9202): ║                      {key: leafy_greens, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                      {key: vegetables, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                      {key: protein, minSelect: 1, maxSelect: 1},
I/flutter ( 9202): ║                      {key: cheese_nuts, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                      {key: fruits, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                      {key: sauce, minSelect: 1, maxSelect: 1}
I/flutter ( 9202): ║                     ]
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "commercialStateLabel": "الدفع مطلوب"
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): onChange -- MealPlannerBloc, Change { currentState: MealPlannerLoaded([Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel'], Instance of 'MealPlannerMenuModel', [AddOnModel(6a19c03c6864369ee0a8c203, كلاسيك جرين, juice, , , SAR, 1100, 11.0, 11 SAR, item, flat_once, one_time, item, AddOnUiModel(كلاسيك جرين, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03c6864369ee0a8c202, بيري بلاست, juice, , , SAR, 1100, 11.0, 11 SAR, item, flat_once, one_time, item, AddOnUiModel(بيري بلاست, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03b6864369ee0a8c201, براونيز داكن, snack, , , SAR, 1300, 13.0, 13 SAR, item, flat_once, one_time, item, AddOnUiModel(براونيز داكن, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03b6864369ee0a8c200, تشيز كيك بالتوت, sn
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ POST
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/6a19c41387785860771917e7/days/2026-06-02/payments
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ╟ plannerRevisionHash: 44b7e490f06d037116a6b9f0991a0b1a7a5cfc4171921885943313d66258a370
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ║ {plannerRevisionHash: 44b7e490f06d037116a6b9f0991a0b1a7a5cfc4171921885943313d66258a370}
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/flutter ( 9202): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingSuccess(Instance of 'OrderModel', Instance of 'OrderTimelineModel'), nextState: OrderTrackingRefreshing(Instance of 'OrderModel', Instance of 'OrderTimelineModel') }
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ GET
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 1080 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:03:04 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef77e9ee9dc31-MRS]
I/flutter ( 9202): ╟ etag: [W/"1036-VS3kx2U23+609sfingsdoMMMtSk"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ rndr-id: [4560c347-ea4a-4341]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "id": "6a1b09cd8e060b5e369a8f61",
I/flutter ( 9202): ║             "orderId": "6a1b09cd8e060b5e369a8f61",
I/flutter ( 9202): ║             "orderNumber": "ORD-369A8F60",
I/flutter ( 9202): ║             "source": "one_time_order",
I/flutter ( 9202): ║             "status": "confirmed",
I/flutter ( 9202): ║             "paymentStatus": "paid",
I/flutter ( 9202): ║             "allowedActions": []
I/flutter ( 9202): ║             "timeline_endpoint": "/api/orders/6a1b09cd8e060b5e369a8f61/timeline",
I/flutter ( 9202): ║             "cancelled_by": null,
I/flutter ( 9202): ║             "cancellation_reason": null,
I/flutter ( 9202): ║             "cancellation_source": null,
I/flutter ( 9202): ║             "cancelled_at": null,
I/flutter ( 9202): ║             "expiresAt": null,
I/flutter ( 9202): ║             "fulfillmentMethod": "pickup",
I/flutter ( 9202): ║             "fulfillmentDate": "2026-05-30",
I/flutter ( 9202): ║             "requestedFulfillmentDate": "2026-05-30",
I/flutter ( 9202): ║             "items": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "itemType": "basic_salad",
I/flutter ( 9202): ║                     "catalogRef": {model: MenuProduct, id: 6a19c0226864369ee0a8c0de},
I/flutter ( 9202): ║                     "name": {ar: سلطة بيسك, en: Basic Salad},
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 8700,
I/flutter ( 9202): ║                     "lineTotalHalala": 8700,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "selections": {
I/flutter ( 9202): ║                         "salad": {
I/flutter ( 9202): ║                             "ingredients": []
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                         "proteinName": {ar: , en: },
I/flutter ( 9202): ║                         "carbs": []
I/flutter ( 9202): ║                         "selectedOptions": [
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c0196864369ee0a8c0c4",
I/flutter ( 9202): ║                                 "groupName": {ar: ورقيات, en: Leafy Greens},
I/flutter ( 9202): ║                                 "optionId": "6a19c0196864369ee0a8c0c8",
I/flutter ( 9202): ║                                 "name": {ar: سبانخ, en: Spinach},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            },
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c0196864369ee0a8c0c4",
I/flutter ( 9202): ║                                 "groupName": {ar: ورقيات, en: Leafy Greens},
I/flutter ( 9202): ║                                 "optionId": "6a19c0196864369ee0a8c0c7",
I/flutter ( 9202): ║                                 "name": {ar: جرجير, en: Arugula},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            },
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c0166864369ee0a8c0b3",
I/flutter ( 9202): ║                                 "groupName": {ar: بروتينات, en: Proteins},
I/flutter ( 9202): ║                                 "optionId": "6a19c0176864369ee0a8c0b7",
I/flutter ( 9202): ║                                 "name": {ar: سمك, en: Fish},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            },
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c01c6864369ee0a8c0d7",
I/flutter ( 9202): ║                                 "groupName": {ar: الصوصات, en: Sauces},
I/flutter ( 9202): ║                                 "optionId": "6a19c01c6864369ee0a8c0da",
I/flutter ( 9202): ║                                 "name": {ar: ليمون وخردل, en: Lemon Mustard},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            }
I/flutter ( 9202): ║                         ]
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "nutrition": {},
I/flutter ( 9202): ║                     "productSnapshot": {
I/flutter ( 9202): ║                         "productId": "6a19c0226864369ee0a8c0de",
I/flutter ( 9202): ║                         "categoryId": "6a19c0156864369ee0a8c0ab",
I/flutter ( 9202): ║                         "categoryName": {ar: اطلب على مزاجك, en: Custom Order},
I/flutter ( 9202): ║                         "key": "basic_salad",
I/flutter ( 9202): ║                         "name": {ar: سلطة بيسك, en: Basic Salad},
I/flutter ( 9202): ║                         "itemType": "basic_salad",
I/flutter ( 9202): ║                         "pricingModel": "per_100g",
I/flutter ( 9202): ║                         "priceHalala": 2900,
I/flutter ( 9202): ║                         "baseUnitGrams": 100,
I/flutter ( 9202): ║                         "weightGrams": 300
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "itemType": "dessert",
I/flutter ( 9202): ║                     "catalogRef": {model: MenuProduct, id: 6a19c0386864369ee0a8c1f3},
I/flutter ( 9202): ║                     "name": {ar: تشيز كيك بالتوت, en: Berry Cheesecake},
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 1900,
I/flutter ( 9202): ║                     "lineTotalHalala": 1900,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "selections": {
I/flutter ( 9202): ║                         "salad": {
I/flutter ( 9202): ║                             "ingredients": []
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                         "proteinName": {ar: , en: },
I/flutter ( 9202): ║                         "carbs": []
I/flutter ( 9202): ║                         "selectedOptions": []
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "nutrition": {},
I/flutter ( 9202): ║                     "productSnapshot": {
I/flutter ( 9202): ║                         "productId": "6a19c0386864369ee0a8c1f3",
I/flutter ( 9202): ║                         "categoryId": "6a19c0166864369ee0a8c0af",
I/flutter ( 9202): ║                         "categoryName": {ar: الحلويات, en: Desserts},
I/flutter ( 9202): ║                         "key": "berry_cheesecake",
I/flutter ( 9202): ║                         "name": {ar: تشيز كيك بالتوت, en: Berry Cheesecake},
I/flutter ( 9202): ║                         "itemType": "dessert",
I/flutter ( 9202): ║                         "pricingModel": "fixed",
I/flutter ( 9202): ║                         "priceHalala": 1900,
I/flutter ( 9202): ║                         "baseUnitGrams": 100,
I/flutter ( 9202): ║                         "weightGrams": 0
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "itemType": "dessert",
I/flutter ( 9202): ║                     "catalogRef": {model: MenuProduct, id: 6a19c0386864369ee0a8c1f4},
I/flutter ( 9202): ║                     "name": {ar: براونيز داكن, en: Dark Brownies},
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 1300,
I/flutter ( 9202): ║                     "lineTotalHalala": 1300,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "selections": {
I/flutter ( 9202): ║                         "salad": {
I/flutter ( 9202): ║                             "ingredients": []
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                         "proteinName": {ar: , en: },
I/flutter ( 9202): ║                         "carbs": []
I/flutter ( 9202): ║                         "selectedOptions": []
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "nutrition": {},
I/flutter ( 9202): ║                     "productSnapshot": {
I/flutter ( 9202): ║                         "productId": "6a19c0386864369ee0a8c1f4",
I/flutter ( 9202): ║                         "categoryId": "6a19c0166864369ee0a8c0af",
I/flutter ( 9202): ║                         "categoryName": {ar: الحلويات, en: Desserts},
I/flutter ( 9202): ║                         "key": "dark_brownies",
I/flutter ( 9202): ║                         "name": {ar: براونيز داكن, en: Dark Brownies},
I/flutter ( 9202): ║                         "itemType": "dessert",
I/flutter ( 9202): ║                         "pricingModel": "fixed",
I/flutter ( 9202): ║                         "priceHalala": 1300,
I/flutter ( 9202): ║                         "baseUnitGrams": 100,
I/flutter ( 9202): ║                         "weightGrams": 0
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "pricing": {
I/flutter ( 9202): ║                 "subtotalHalala": 11900,
I/flutter ( 9202): ║                 "deliveryFeeHalala": 0,
I/flutter ( 9202): ║                 "discountHalala": 0,
I/flutter ( 9202): ║                 "totalHalala": 11900,
I/flutter ( 9202): ║                 "vatPercentage": 16,
I/flutter ( 9202): ║                 "vatHalala": 1641,
I/flutter ( 9202): ║                 "vatIncluded": true,
I/flutter ( 9202): ║                 "currency": "SAR"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "pickup": {
I/flutter ( 9202): ║                 "branchId": "main",
I/flutter ( 9202): ║                 "pickupWindow": "18:00-20:00",
I/flutter ( 9202): ║                 "branchName": {ar: , en: },
I/flutter ( 9202): ║                 "pickupCode": null,
I/flutter ( 9202): ║                 "pickupCodeIssuedAt": null,
I/flutter ( 9202): ║                 "pickupVerifiedAt": null
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "createdAt": "2026-05-30T16:01:18.052Z",
I/flutter ( 9202): ║             "updatedAt": "2026-05-30T16:01:43.056Z"
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ GET
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61/timeline
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ POST ║ Status: 201 Created  ║ Time: 1726 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/6a19c41387785860771917e7/days/2026-06-02/payments
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:03:05 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef77aae89e20c-MRS]
I/flutter ( 9202): ╟ etag: [W/"359-HgSTyWZNTGc2XRYwhkl7Z0nD9hQ"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ rndr-id: [6d64a56e-0948-446f]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "payment_id": "6a1b0a388e060b5e369a90ed",
I/flutter ( 9202): ║             "paymentId": "6a1b0a388e060b5e369a90ed",
I/flutter ( 9202): ║             "payment_url": "https://checkout.moyasar.com/invoices/05e483cb-6813-4e8e-8535-2d14c6d20b26?la
I/flutter ( 9202): ║              ng=en"
I/flutter ( 9202): ║             "invoice_id": "05e483cb-6813-4e8e-8535-2d14c6d20b26",
I/flutter ( 9202): ║             "providerInvoiceId": "05e483cb-6813-4e8e-8535-2d14c6d20b26",
I/flutter ( 9202): ║             "totalHalala": 6000,
I/flutter ( 9202): ║             "premiumAmountHalala": 4900,
I/flutter ( 9202): ║             "addonsAmountHalala": 1100,
I/flutter ( 9202): ║             "currency": "SAR",
I/flutter ( 9202): ║             "plannerRevisionHash": "44b7e490f06d037116a6b9f0991a0b1a7a5cfc4171921885943313d66258a370",
I/flutter ( 9202): ║             "paymentRequirement": {
I/flutter ( 9202): ║                 "status": "priced",
I/flutter ( 9202): ║                 "requiresPayment": true,
I/flutter ( 9202): ║                 "pricingStatus": "priced",
I/flutter ( 9202): ║                 "blockingReason": "PREMIUM_PAYMENT_REQUIRED",
I/flutter ( 9202): ║                 "canCreatePayment": true,
I/flutter ( 9202): ║                 "premiumSelectedCount": 2,
I/flutter ( 9202): ║                 "premiumPendingPaymentCount": 2,
I/flutter ( 9202): ║                 "addonSelectedCount": 2,
I/flutter ( 9202): ║                 "addonPendingPaymentCount": 1,
I/flutter ( 9202): ║                 "pendingAmountHalala": 6000,
I/flutter ( 9202): ║                 "amountHalala": 6000,
I/flutter ( 9202): ║                 "currency": "SAR"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "commercialState": "payment_required"
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): onChange -- MealPlannerBloc, Change { currentState: MealPlannerLoaded([Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel'], Instance of 'MealPlannerMenuModel', [AddOnModel(6a19c03c6864369ee0a8c203, كلاسيك جرين, juice, , , SAR, 1100, 11.0, 11 SAR, item, flat_once, one_time, item, AddOnUiModel(كلاسيك جرين, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03c6864369ee0a8c202, بيري بلاست, juice, , , SAR, 1100, 11.0, 11 SAR, item, flat_once, one_time, item, AddOnUiModel(بيري بلاست, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03b6864369ee0a8c201, براونيز داكن, snack, , , SAR, 1300, 13.0, 13 SAR, item, flat_once, one_time, item, AddOnUiModel(براونيز داكن, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03b6864369ee0a8c200, تشيز كيك بالتوت, sn
I/flutter ( 9202): MealPlannerScreen: Opening unified day payment webview subscriptionId=6a19c41387785860771917e7 date=2026-06-02 paymentId=6a1b0a388e060b5e369a90ed providerInvoiceId=unavailable paymentUrl=https://checkout.moyasar.com/invoices/05e483cb-6813-4e8e-8535-2d14c6d20b26?lang=en
W/HWUI    ( 9202): Image decoding logging dropped!
W/HWUI    ( 9202): Image decoding logging dropped!
I/PlatformViewsController( 9202): Hosting view in view hierarchy for platform view: 1
I/PlatformViewsController( 9202): PlatformView is using SurfaceProducer backend
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 381 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61/timeline
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:03:05 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef784cfa6dc31-MRS]
I/flutter ( 9202): ╟ etag: [W/"300-s0mUrNnipiNw5O9miV03dPeMkfU"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ rndr-id: [6bab7852-f0c4-4b64]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "order_id": "6a1b09cd8e060b5e369a8f61",
I/flutter ( 9202): ║             "current_status": "confirmed",
I/flutter ( 9202): ║             "timeline": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "order_created",
I/flutter ( 9202): ║                     "label_ar": "تم إنشاء الطلب",
I/flutter ( 9202): ║                     "label_en": "Order Created",
I/flutter ( 9202): ║                     "state": "completed",
I/flutter ( 9202): ║                     "time": "2026-05-30T16:01:18.052Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "payment_confirmed",
I/flutter ( 9202): ║                     "label_ar": "تم تأكيد الطلب",
I/flutter ( 9202): ║                     "label_en": "Payment Confirmed",
I/flutter ( 9202): ║                     "state": "active",
I/flutter ( 9202): ║                     "time": "2026-05-30T16:01:42.857Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "preparing",
I/flutter ( 9202): ║                     "label_ar": "جاري تجهيز الطلب",
I/flutter ( 9202): ║                     "label_en": "Preparing",
I/flutter ( 9202): ║                     "state": "pending",
I/flutter ( 9202): ║                     "time": null
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "ready_for_pickup",
I/flutter ( 9202): ║                     "label_ar": "الطلب جاهز للاستلام",
I/flutter ( 9202): ║                     "label_en": "Ready for Pickup",
I/flutter ( 9202): ║                     "state": "pending",
I/flutter ( 9202): ║                     "time": null
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "fulfilled",
I/flutter ( 9202): ║                     "label_ar": "تم استلام الطلب",
I/flutter ( 9202): ║                     "label_en": "Picked Up",
I/flutter ( 9202): ║                     "state": "pending",
I/flutter ( 9202): ║                     "time": null
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ]
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingRefreshing(Instance of 'OrderModel', Instance of 'OrderTimelineModel'), nextState: OrderTrackingSuccess(Instance of 'OrderModel', Instance of 'OrderTimelineModel') }
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/chromium( 9202): [INFO:CONSOLE(16)] "To speed up loading of Samsung Pay button you can include the Samsung Pay Web SDK JavaScript file in your website front-end directly. If there will be no Samsung Pay available on form initialization it will be loaded automatically", source: https://cdn.jsdelivr.net/npm/moyasar-payment-form@latest/dist/moyasar.umd.min.js (16)
I/chromium( 9202): [INFO:CONSOLE(14)] "Cannot initialize Samsung Pay", source: https://cdn.jsdelivr.net/npm/moyasar-payment-form@latest/dist/moyasar.umd.min.js (14)
I/ImeTracker( 9202): com.app.basic_diet:276cf757: onRequestShow at ORIGIN_CLIENT reason SHOW_SOFT_INPUT fromUser false
D/InsetsController( 9202): show(ime(), fromIme=false)
D/InsetsController( 9202): Setting requestedVisibleTypes to -1 (was -9)
I/AssistStructure( 9202): Flattened final assist data: 5040 bytes, containing 1 windows, 7 views
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/ImeTracker( 9202): com.app.basic_diet:276cf757: onShown
E/libEGL  ( 9202): called unimplemented OpenGL ES API
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/ImeTracker( 9202): com.app.basic_diet:814e8963: onRequestShow at ORIGIN_CLIENT reason SHOW_SOFT_INPUT fromUser false
D/InsetsController( 9202): show(ime(), fromIme=false)
I/ImeTracker( 9202): com.app.basic_diet:814e8963: onCancelled at PHASE_CLIENT_APPLY_ANIMATION
I/AssistStructure( 9202): Flattened final assist data: 5060 bytes, containing 1 windows, 7 views
E/libEGL  ( 9202): called unimplemented OpenGL ES API
E/libEGL  ( 9202): called unimplemented OpenGL ES API
E/libEGL  ( 9202): called unimplemented OpenGL ES API
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/flutter ( 9202): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingSuccess(Instance of 'OrderModel', Instance of 'OrderTimelineModel'), nextState: OrderTrackingRefreshing(Instance of 'OrderModel', Instance of 'OrderTimelineModel') }
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ GET
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 502 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:03:14 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef7bd3f9eda11-MRS]
I/flutter ( 9202): ╟ etag: [W/"1036-VS3kx2U23+609sfingsdoMMMtSk"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ rndr-id: [9cd04d33-25a3-471c]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "id": "6a1b09cd8e060b5e369a8f61",
I/flutter ( 9202): ║             "orderId": "6a1b09cd8e060b5e369a8f61",
I/flutter ( 9202): ║             "orderNumber": "ORD-369A8F60",
I/flutter ( 9202): ║             "source": "one_time_order",
I/flutter ( 9202): ║             "status": "confirmed",
I/flutter ( 9202): ║             "paymentStatus": "paid",
I/flutter ( 9202): ║             "allowedActions": []
I/flutter ( 9202): ║             "timeline_endpoint": "/api/orders/6a1b09cd8e060b5e369a8f61/timeline",
I/flutter ( 9202): ║             "cancelled_by": null,
I/flutter ( 9202): ║             "cancellation_reason": null,
I/flutter ( 9202): ║             "cancellation_source": null,
I/flutter ( 9202): ║             "cancelled_at": null,
I/flutter ( 9202): ║             "expiresAt": null,
I/flutter ( 9202): ║             "fulfillmentMethod": "pickup",
I/flutter ( 9202): ║             "fulfillmentDate": "2026-05-30",
I/flutter ( 9202): ║             "requestedFulfillmentDate": "2026-05-30",
I/flutter ( 9202): ║             "items": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "itemType": "basic_salad",
I/flutter ( 9202): ║                     "catalogRef": {model: MenuProduct, id: 6a19c0226864369ee0a8c0de},
I/flutter ( 9202): ║                     "name": {ar: سلطة بيسك, en: Basic Salad},
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 8700,
I/flutter ( 9202): ║                     "lineTotalHalala": 8700,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "selections": {
I/flutter ( 9202): ║                         "salad": {
I/flutter ( 9202): ║                             "ingredients": []
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                         "proteinName": {ar: , en: },
I/flutter ( 9202): ║                         "carbs": []
I/flutter ( 9202): ║                         "selectedOptions": [
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c0196864369ee0a8c0c4",
I/flutter ( 9202): ║                                 "groupName": {ar: ورقيات, en: Leafy Greens},
I/flutter ( 9202): ║                                 "optionId": "6a19c0196864369ee0a8c0c8",
I/flutter ( 9202): ║                                 "name": {ar: سبانخ, en: Spinach},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            },
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c0196864369ee0a8c0c4",
I/flutter ( 9202): ║                                 "groupName": {ar: ورقيات, en: Leafy Greens},
I/flutter ( 9202): ║                                 "optionId": "6a19c0196864369ee0a8c0c7",
I/flutter ( 9202): ║                                 "name": {ar: جرجير, en: Arugula},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            },
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c0166864369ee0a8c0b3",
I/flutter ( 9202): ║                                 "groupName": {ar: بروتينات, en: Proteins},
I/flutter ( 9202): ║                                 "optionId": "6a19c0176864369ee0a8c0b7",
I/flutter ( 9202): ║                                 "name": {ar: سمك, en: Fish},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            },
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c01c6864369ee0a8c0d7",
I/flutter ( 9202): ║                                 "groupName": {ar: الصوصات, en: Sauces},
I/flutter ( 9202): ║                                 "optionId": "6a19c01c6864369ee0a8c0da",
I/flutter ( 9202): ║                                 "name": {ar: ليمون وخردل, en: Lemon Mustard},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            }
I/flutter ( 9202): ║                         ]
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "nutrition": {},
I/flutter ( 9202): ║                     "productSnapshot": {
I/flutter ( 9202): ║                         "productId": "6a19c0226864369ee0a8c0de",
I/flutter ( 9202): ║                         "categoryId": "6a19c0156864369ee0a8c0ab",
I/flutter ( 9202): ║                         "categoryName": {ar: اطلب على مزاجك, en: Custom Order},
I/flutter ( 9202): ║                         "key": "basic_salad",
I/flutter ( 9202): ║                         "name": {ar: سلطة بيسك, en: Basic Salad},
I/flutter ( 9202): ║                         "itemType": "basic_salad",
I/flutter ( 9202): ║                         "pricingModel": "per_100g",
I/flutter ( 9202): ║                         "priceHalala": 2900,
I/flutter ( 9202): ║                         "baseUnitGrams": 100,
I/flutter ( 9202): ║                         "weightGrams": 300
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "itemType": "dessert",
I/flutter ( 9202): ║                     "catalogRef": {model: MenuProduct, id: 6a19c0386864369ee0a8c1f3},
I/flutter ( 9202): ║                     "name": {ar: تشيز كيك بالتوت, en: Berry Cheesecake},
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 1900,
I/flutter ( 9202): ║                     "lineTotalHalala": 1900,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "selections": {
I/flutter ( 9202): ║                         "salad": {
I/flutter ( 9202): ║                             "ingredients": []
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                         "proteinName": {ar: , en: },
I/flutter ( 9202): ║                         "carbs": []
I/flutter ( 9202): ║                         "selectedOptions": []
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "nutrition": {},
I/flutter ( 9202): ║                     "productSnapshot": {
I/flutter ( 9202): ║                         "productId": "6a19c0386864369ee0a8c1f3",
I/flutter ( 9202): ║                         "categoryId": "6a19c0166864369ee0a8c0af",
I/flutter ( 9202): ║                         "categoryName": {ar: الحلويات, en: Desserts},
I/flutter ( 9202): ║                         "key": "berry_cheesecake",
I/flutter ( 9202): ║                         "name": {ar: تشيز كيك بالتوت, en: Berry Cheesecake},
I/flutter ( 9202): ║                         "itemType": "dessert",
I/flutter ( 9202): ║                         "pricingModel": "fixed",
I/flutter ( 9202): ║                         "priceHalala": 1900,
I/flutter ( 9202): ║                         "baseUnitGrams": 100,
I/flutter ( 9202): ║                         "weightGrams": 0
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "itemType": "dessert",
I/flutter ( 9202): ║                     "catalogRef": {model: MenuProduct, id: 6a19c0386864369ee0a8c1f4},
I/flutter ( 9202): ║                     "name": {ar: براونيز داكن, en: Dark Brownies},
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 1300,
I/flutter ( 9202): ║                     "lineTotalHalala": 1300,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "selections": {
I/flutter ( 9202): ║                         "salad": {
I/flutter ( 9202): ║                             "ingredients": []
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                         "proteinName": {ar: , en: },
I/flutter ( 9202): ║                         "carbs": []
I/flutter ( 9202): ║                         "selectedOptions": []
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "nutrition": {},
I/flutter ( 9202): ║                     "productSnapshot": {
I/flutter ( 9202): ║                         "productId": "6a19c0386864369ee0a8c1f4",
I/flutter ( 9202): ║                         "categoryId": "6a19c0166864369ee0a8c0af",
I/flutter ( 9202): ║                         "categoryName": {ar: الحلويات, en: Desserts},
I/flutter ( 9202): ║                         "key": "dark_brownies",
I/flutter ( 9202): ║                         "name": {ar: براونيز داكن, en: Dark Brownies},
I/flutter ( 9202): ║                         "itemType": "dessert",
I/flutter ( 9202): ║                         "pricingModel": "fixed",
I/flutter ( 9202): ║                         "priceHalala": 1300,
I/flutter ( 9202): ║                         "baseUnitGrams": 100,
I/flutter ( 9202): ║                         "weightGrams": 0
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "pricing": {
I/flutter ( 9202): ║                 "subtotalHalala": 11900,
I/flutter ( 9202): ║                 "deliveryFeeHalala": 0,
I/flutter ( 9202): ║                 "discountHalala": 0,
I/flutter ( 9202): ║                 "totalHalala": 11900,
I/flutter ( 9202): ║                 "vatPercentage": 16,
I/flutter ( 9202): ║                 "vatHalala": 1641,
I/flutter ( 9202): ║                 "vatIncluded": true,
I/flutter ( 9202): ║                 "currency": "SAR"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "pickup": {
I/flutter ( 9202): ║                 "branchId": "main",
I/flutter ( 9202): ║                 "pickupWindow": "18:00-20:00",
I/flutter ( 9202): ║                 "branchName": {ar: , en: },
I/flutter ( 9202): ║                 "pickupCode": null,
I/flutter ( 9202): ║                 "pickupCodeIssuedAt": null,
I/flutter ( 9202): ║                 "pickupVerifiedAt": null
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "createdAt": "2026-05-30T16:01:18.052Z",
I/flutter ( 9202): ║             "updatedAt": "2026-05-30T16:01:43.056Z"
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ GET
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61/timeline
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/ImeTracker( 9202): com.app.basic_diet:8ffb1863: onRequestShow at ORIGIN_CLIENT reason SHOW_SOFT_INPUT fromUser false
D/InsetsController( 9202): show(ime(), fromIme=false)
I/ImeTracker( 9202): com.app.basic_diet:8ffb1863: onCancelled at PHASE_CLIENT_APPLY_ANIMATION
I/AssistStructure( 9202): Flattened final assist data: 5076 bytes, containing 1 windows, 7 views
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 387 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61/timeline
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:03:14 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef7bfbdc4da11-MRS]
I/flutter ( 9202): ╟ etag: [W/"300-s0mUrNnipiNw5O9miV03dPeMkfU"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ rndr-id: [25fecda3-b578-47d7]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "order_id": "6a1b09cd8e060b5e369a8f61",
I/flutter ( 9202): ║             "current_status": "confirmed",
I/flutter ( 9202): ║             "timeline": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "order_created",
I/flutter ( 9202): ║                     "label_ar": "تم إنشاء الطلب",
I/flutter ( 9202): ║                     "label_en": "Order Created",
I/flutter ( 9202): ║                     "state": "completed",
I/flutter ( 9202): ║                     "time": "2026-05-30T16:01:18.052Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "payment_confirmed",
I/flutter ( 9202): ║                     "label_ar": "تم تأكيد الطلب",
I/flutter ( 9202): ║                     "label_en": "Payment Confirmed",
I/flutter ( 9202): ║                     "state": "active",
I/flutter ( 9202): ║                     "time": "2026-05-30T16:01:42.857Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "preparing",
I/flutter ( 9202): ║                     "label_ar": "جاري تجهيز الطلب",
I/flutter ( 9202): ║                     "label_en": "Preparing",
I/flutter ( 9202): ║                     "state": "pending",
I/flutter ( 9202): ║                     "time": null
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "ready_for_pickup",
I/flutter ( 9202): ║                     "label_ar": "الطلب جاهز للاستلام",
I/flutter ( 9202): ║                     "label_en": "Ready for Pickup",
I/flutter ( 9202): ║                     "state": "pending",
I/flutter ( 9202): ║                     "time": null
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "fulfilled",
I/flutter ( 9202): ║                     "label_ar": "تم استلام الطلب",
I/flutter ( 9202): ║                     "label_en": "Picked Up",
I/flutter ( 9202): ║                     "state": "pending",
I/flutter ( 9202): ║                     "time": null
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ]
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingRefreshing(Instance of 'OrderModel', Instance of 'OrderTimelineModel'), nextState: OrderTrackingSuccess(Instance of 'OrderModel', Instance of 'OrderTimelineModel') }
E/libEGL  ( 9202): called unimplemented OpenGL ES API
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/ImeTracker( 9202): com.app.basic_diet:84e9b0ad: onRequestShow at ORIGIN_CLIENT reason SHOW_SOFT_INPUT fromUser false
D/InsetsController( 9202): show(ime(), fromIme=false)
I/ImeTracker( 9202): com.app.basic_diet:84e9b0ad: onCancelled at PHASE_CLIENT_APPLY_ANIMATION
I/AssistStructure( 9202): Flattened final assist data: 5080 bytes, containing 1 windows, 7 views
E/libEGL  ( 9202): called unimplemented OpenGL ES API
E/libEGL  ( 9202): called unimplemented OpenGL ES API
D/InsetsController( 9202): Setting requestedVisibleTypes to -9 (was -1)
W/WindowOnBackDispatcher( 9202): sendCancelIfRunning: isInProgress=false callback=android.view.ImeBackAnimationController@5df12f
I/ImeTracker( 9202): com.app.basic_diet:2945e9bc: onRequestHide at ORIGIN_CLIENT reason HIDE_SOFT_INPUT_REQUEST_HIDE_WITH_CONTROL fromUser true
D/InsetsController( 9202): hide(ime(), fromIme=false)
I/ImeTracker( 9202): com.app.basic_diet:2945e9bc: onCancelled at PHASE_CLIENT_ALREADY_HIDDEN
I/ImeTracker( 9202): system_server:3f042190: onCancelled at PHASE_CLIENT_ON_CONTROLS_CHANGED
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/ImeTracker( 9202): com.app.basic_diet:33b76c75: onRequestHide at ORIGIN_CLIENT reason HIDE_SOFT_INPUT fromUser false
D/InsetsController( 9202): hide(ime(), fromIme=false)
I/ImeTracker( 9202): com.app.basic_diet:33b76c75: onCancelled at PHASE_CLIENT_ALREADY_HIDDEN
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ GET
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/6a19c41387785860771917e7/days/2026-05-30/fulfillment/status
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 709 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/6a19c41387785860771917e7/days/2026-05-30/fulfillment/status
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:03:22 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef7ed1b269d86-MRS]
I/flutter ( 9202): ╟ etag: [W/"4bf-wqiNrVN97CM+Xsv3MKlbkwAhCk0"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ rndr-id: [3ca878fb-c937-4f01]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "subscriptionId": "6a19c41387785860771917e7",
I/flutter ( 9202): ║             "date": "2026-05-30",
I/flutter ( 9202): ║             "deliveryMode": "pickup",
I/flutter ( 9202): ║             "status": "open",
I/flutter ( 9202): ║             "statusLabel": "مفتوح",
I/flutter ( 9202): ║             "message": "راجع اختيارات اليوم واطلب التجهيز عندما تكون جاهزا",
I/flutter ( 9202): ║             "nextAction": "",
I/flutter ( 9202): ║             "isTerminal": false,
I/flutter ( 9202): ║             "pollingIntervalSeconds": 60,
I/flutter ( 9202): ║             "lastUpdatedAt": "2026-05-29T17:15:47.184Z",
I/flutter ( 9202): ║             "fulfillmentSummary": {
I/flutter ( 9202): ║                 "mode": "pickup",
I/flutter ( 9202): ║                 "title": "الاستلام من الفرع",
I/flutter ( 9202): ║                 "status": "open",
I/flutter ( 9202): ║                 "statusLabel": "مفتوح",
I/flutter ( 9202): ║                 "message": "راجع اختيارات اليوم واطلب التجهيز عندما تكون جاهزا",
I/flutter ( 9202): ║                 "nextAction": "",
I/flutter ( 9202): ║                 "isEditable": true,
I/flutter ( 9202): ║                 "isFulfillable": false,
I/flutter ( 9202): ║                 "planningReady": false,
I/flutter ( 9202): ║                 "fulfillmentReady": false,
I/flutter ( 9202): ║                 "lockedReason": null,
I/flutter ( 9202): ║                 "lockedMessage": null
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "deliveryAddress": null,
I/flutter ( 9202): ║             "deliveryWindow": null,
I/flutter ( 9202): ║             "deliverySlot": {type: pickup, slotId: , window: , label: },
I/flutter ( 9202): ║             "pickupLocation": {
I/flutter ( 9202): ║                 "id": "main",
I/flutter ( 9202): ║                 "name": "[object Object]",
I/flutter ( 9202): ║                 "address": "[object Object]",
I/flutter ( 9202): ║                 "phone": "",
I/flutter ( 9202): ║                 "city": "",
I/flutter ( 9202): ║                 "district": "",
I/flutter ( 9202): ║                 "workingHours": "",
I/flutter ( 9202): ║                 "latitude": null,
I/flutter ( 9202): ║                 "longitude": null,
I/flutter ( 9202): ║                 "mapUrl": null
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "lockedReason": null,
I/flutter ( 9202): ║             "lockedMessage": null,
I/flutter ( 9202): ║             "pickupCode": null,
I/flutter ( 9202): ║             "pickupCodeIssuedAt": null,
I/flutter ( 9202): ║             "planningReady": false,
I/flutter ( 9202): ║             "fulfillmentReady": false,
I/flutter ( 9202): ║             "isFulfillable": false,
I/flutter ( 9202): ║             "canBePrepared": false
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): onChange -- FulfillmentStatusCubit, Change { currentState: FulfillmentStatusState(FulfillmentStatusStateStatus.success, FulfillmentStatusModel(6a19c41387785860771917e7, 2026-05-30, pickup, open, مفتوح, , , , , Instance of 'FulfillmentSummaryModel', Instance of 'PickupLocationSummaryModel', null, null, null, false, 2026-05-29 20:15:47.184, 60), null, true), nextState: FulfillmentStatusState(FulfillmentStatusStateStatus.success, FulfillmentStatusModel(6a19c41387785860771917e7, 2026-05-30, pickup, open, مفتوح, , , , , Instance of 'FulfillmentSummaryModel', Instance of 'PickupLocationSummaryModel', null, null, null, false, 2026-05-29 20:15:47.184, 60), null, true) }
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/flutter ( 9202): PaymentWebViewScreen: success callback url=https://basicdiet145.onrender.com/payments/success?id=27e444e8-7dc1-48c7-bf34-fdbd600ac4c2&status=paid&message=APPROVED&invoice_id=05e483cb-6813-4e8e-8535-2d14c6d20b26&payment_type=day_planning_payment&token=d0e59b687ff6a488f35eb8e7d948c3badf0d&subscription_id=6a19c41387785860771917e7&day_id=6a19c41387785860771917f2&date=2026-06-02 providerPaymentId=unavailable providerInvoiceId=unavailable
I/flutter ( 9202): MealPlannerScreen: Webview finished for paymentId=6a1b0a388e060b5e369a90ed result=null
I/flutter ( 9202): onChange -- MealPlannerBloc, Change { currentState: MealPlannerLoaded([Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel'], Instance of 'MealPlannerMenuModel', [AddOnModel(6a19c03c6864369ee0a8c203, كلاسيك جرين, juice, , , SAR, 1100, 11.0, 11 SAR, item, flat_once, one_time, item, AddOnUiModel(كلاسيك جرين, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03c6864369ee0a8c202, بيري بلاست, juice, , , SAR, 1100, 11.0, 11 SAR, item, flat_once, one_time, item, AddOnUiModel(بيري بلاست, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03b6864369ee0a8c201, براونيز داكن, snack, , , SAR, 1300, 13.0, 13 SAR, item, flat_once, one_time, item, AddOnUiModel(براونيز داكن, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03b6864369ee0a8c200, تشيز كيك بالتوت, sn
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ POST
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/6a19c41387785860771917e7/days/2026-06-02/payments/6a1b0a388e060b5e369a90ed/verify
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ║ {}
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ GET
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 718 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:03:24 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef7fba8c93108-MRS]
I/flutter ( 9202): ╟ etag: [W/"1036-VS3kx2U23+609sfingsdoMMMtSk"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ rndr-id: [c32ed23f-ea57-4744]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "id": "6a1b09cd8e060b5e369a8f61",
I/flutter ( 9202): ║             "orderId": "6a1b09cd8e060b5e369a8f61",
I/flutter ( 9202): ║             "orderNumber": "ORD-369A8F60",
I/flutter ( 9202): ║             "source": "one_time_order",
I/flutter ( 9202): ║             "status": "confirmed",
I/flutter ( 9202): ║             "paymentStatus": "paid",
I/flutter ( 9202): ║             "allowedActions": []
I/flutter ( 9202): ║             "timeline_endpoint": "/api/orders/6a1b09cd8e060b5e369a8f61/timeline",
I/flutter ( 9202): ║             "cancelled_by": null,
I/flutter ( 9202): ║             "cancellation_reason": null,
I/flutter ( 9202): ║             "cancellation_source": null,
I/flutter ( 9202): ║             "cancelled_at": null,
I/flutter ( 9202): ║             "expiresAt": null,
I/flutter ( 9202): ║             "fulfillmentMethod": "pickup",
I/flutter ( 9202): ║             "fulfillmentDate": "2026-05-30",
I/flutter ( 9202): ║             "requestedFulfillmentDate": "2026-05-30",
I/flutter ( 9202): ║             "items": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "itemType": "basic_salad",
I/flutter ( 9202): ║                     "catalogRef": {model: MenuProduct, id: 6a19c0226864369ee0a8c0de},
I/flutter ( 9202): ║                     "name": {ar: سلطة بيسك, en: Basic Salad},
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 8700,
I/flutter ( 9202): ║                     "lineTotalHalala": 8700,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "selections": {
I/flutter ( 9202): ║                         "salad": {
I/flutter ( 9202): ║                             "ingredients": []
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                         "proteinName": {ar: , en: },
I/flutter ( 9202): ║                         "carbs": []
I/flutter ( 9202): ║                         "selectedOptions": [
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c0196864369ee0a8c0c4",
I/flutter ( 9202): ║                                 "groupName": {ar: ورقيات, en: Leafy Greens},
I/flutter ( 9202): ║                                 "optionId": "6a19c0196864369ee0a8c0c8",
I/flutter ( 9202): ║                                 "name": {ar: سبانخ, en: Spinach},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            },
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c0196864369ee0a8c0c4",
I/flutter ( 9202): ║                                 "groupName": {ar: ورقيات, en: Leafy Greens},
I/flutter ( 9202): ║                                 "optionId": "6a19c0196864369ee0a8c0c7",
I/flutter ( 9202): ║                                 "name": {ar: جرجير, en: Arugula},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            },
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c0166864369ee0a8c0b3",
I/flutter ( 9202): ║                                 "groupName": {ar: بروتينات, en: Proteins},
I/flutter ( 9202): ║                                 "optionId": "6a19c0176864369ee0a8c0b7",
I/flutter ( 9202): ║                                 "name": {ar: سمك, en: Fish},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            },
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c01c6864369ee0a8c0d7",
I/flutter ( 9202): ║                                 "groupName": {ar: الصوصات, en: Sauces},
I/flutter ( 9202): ║                                 "optionId": "6a19c01c6864369ee0a8c0da",
I/flutter ( 9202): ║                                 "name": {ar: ليمون وخردل, en: Lemon Mustard},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            }
I/flutter ( 9202): ║                         ]
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "nutrition": {},
I/flutter ( 9202): ║                     "productSnapshot": {
I/flutter ( 9202): ║                         "productId": "6a19c0226864369ee0a8c0de",
I/flutter ( 9202): ║                         "categoryId": "6a19c0156864369ee0a8c0ab",
I/flutter ( 9202): ║                         "categoryName": {ar: اطلب على مزاجك, en: Custom Order},
I/flutter ( 9202): ║                         "key": "basic_salad",
I/flutter ( 9202): ║                         "name": {ar: سلطة بيسك, en: Basic Salad},
I/flutter ( 9202): ║                         "itemType": "basic_salad",
I/flutter ( 9202): ║                         "pricingModel": "per_100g",
I/flutter ( 9202): ║                         "priceHalala": 2900,
I/flutter ( 9202): ║                         "baseUnitGrams": 100,
I/flutter ( 9202): ║                         "weightGrams": 300
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "itemType": "dessert",
I/flutter ( 9202): ║                     "catalogRef": {model: MenuProduct, id: 6a19c0386864369ee0a8c1f3},
I/flutter ( 9202): ║                     "name": {ar: تشيز كيك بالتوت, en: Berry Cheesecake},
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 1900,
I/flutter ( 9202): ║                     "lineTotalHalala": 1900,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "selections": {
I/flutter ( 9202): ║                         "salad": {
I/flutter ( 9202): ║                             "ingredients": []
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                         "proteinName": {ar: , en: },
I/flutter ( 9202): ║                         "carbs": []
I/flutter ( 9202): ║                         "selectedOptions": []
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "nutrition": {},
I/flutter ( 9202): ║                     "productSnapshot": {
I/flutter ( 9202): ║                         "productId": "6a19c0386864369ee0a8c1f3",
I/flutter ( 9202): ║                         "categoryId": "6a19c0166864369ee0a8c0af",
I/flutter ( 9202): ║                         "categoryName": {ar: الحلويات, en: Desserts},
I/flutter ( 9202): ║                         "key": "berry_cheesecake",
I/flutter ( 9202): ║                         "name": {ar: تشيز كيك بالتوت, en: Berry Cheesecake},
I/flutter ( 9202): ║                         "itemType": "dessert",
I/flutter ( 9202): ║                         "pricingModel": "fixed",
I/flutter ( 9202): ║                         "priceHalala": 1900,
I/flutter ( 9202): ║                         "baseUnitGrams": 100,
I/flutter ( 9202): ║                         "weightGrams": 0
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "itemType": "dessert",
I/flutter ( 9202): ║                     "catalogRef": {model: MenuProduct, id: 6a19c0386864369ee0a8c1f4},
I/flutter ( 9202): ║                     "name": {ar: براونيز داكن, en: Dark Brownies},
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 1300,
I/flutter ( 9202): ║                     "lineTotalHalala": 1300,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "selections": {
I/flutter ( 9202): ║                         "salad": {
I/flutter ( 9202): ║                             "ingredients": []
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                         "proteinName": {ar: , en: },
I/flutter ( 9202): ║                         "carbs": []
I/flutter ( 9202): ║                         "selectedOptions": []
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "nutrition": {},
I/flutter ( 9202): ║                     "productSnapshot": {
I/flutter ( 9202): ║                         "productId": "6a19c0386864369ee0a8c1f4",
I/flutter ( 9202): ║                         "categoryId": "6a19c0166864369ee0a8c0af",
I/flutter ( 9202): ║                         "categoryName": {ar: الحلويات, en: Desserts},
I/flutter ( 9202): ║                         "key": "dark_brownies",
I/flutter ( 9202): ║                         "name": {ar: براونيز داكن, en: Dark Brownies},
I/flutter ( 9202): ║                         "itemType": "dessert",
I/flutter ( 9202): ║                         "pricingModel": "fixed",
I/flutter ( 9202): ║                         "priceHalala": 1300,
I/flutter ( 9202): ║                         "baseUnitGrams": 100,
I/flutter ( 9202): ║                         "weightGrams": 0
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "pricing": {
I/flutter ( 9202): ║                 "subtotalHalala": 11900,
I/flutter ( 9202): ║                 "deliveryFeeHalala": 0,
I/flutter ( 9202): ║                 "discountHalala": 0,
I/flutter ( 9202): ║                 "totalHalala": 11900,
I/flutter ( 9202): ║                 "vatPercentage": 16,
I/flutter ( 9202): ║                 "vatHalala": 1641,
I/flutter ( 9202): ║                 "vatIncluded": true,
I/flutter ( 9202): ║                 "currency": "SAR"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "pickup": {
I/flutter ( 9202): ║                 "branchId": "main",
I/flutter ( 9202): ║                 "pickupWindow": "18:00-20:00",
I/flutter ( 9202): ║                 "branchName": {ar: , en: },
I/flutter ( 9202): ║                 "pickupCode": null,
I/flutter ( 9202): ║                 "pickupCodeIssuedAt": null,
I/flutter ( 9202): ║                 "pickupVerifiedAt": null
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "createdAt": "2026-05-30T16:01:18.052Z",
I/flutter ( 9202): ║             "updatedAt": "2026-05-30T16:01:43.056Z"
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ GET
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61/timeline
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): MealPlannerBloc: Verifying unified day payment subscriptionId=6a19c41387785860771917e7 date=2026-06-02 paymentId=6a1b0a388e060b5e369a90ed body={}
I/flutter ( 9202): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingSuccess(Instance of 'OrderModel', Instance of 'OrderTimelineModel'), nextState: OrderTrackingRefreshing(Instance of 'OrderModel', Instance of 'OrderTimelineModel') }
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ DioError ║ Status: 500 Internal Server Error ║ Time: 1147 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/6a19c41387785860771917e7/days/2026-06-02/payments/6a1b0a388e060b5e369a90ed/verify
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ DioExceptionType.badResponse
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "ok": false,
I/flutter ( 9202): ║         "error": {code: INTERNAL, message: Unified day payment verification failed}
I/flutter ( 9202): ║    }
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202):
I/flutter ( 9202): MealPlannerBloc: Verify unified day payment failed code=INTERNAL message=Unified day payment verification failed
I/flutter ( 9202): onChange -- MealPlannerBloc, Change { currentState: MealPlannerLoaded([Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel'], Instance of 'MealPlannerMenuModel', [AddOnModel(6a19c03c6864369ee0a8c203, كلاسيك جرين, juice, , , SAR, 1100, 11.0, 11 SAR, item, flat_once, one_time, item, AddOnUiModel(كلاسيك جرين, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03c6864369ee0a8c202, بيري بلاست, juice, , , SAR, 1100, 11.0, 11 SAR, item, flat_once, one_time, item, AddOnUiModel(بيري بلاست, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03b6864369ee0a8c201, براونيز داكن, snack, , , SAR, 1300, 13.0, 13 SAR, item, flat_once, one_time, item, AddOnUiModel(براونيز داكن, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03b6864369ee0a8c200, تشيز كيك بالتوت, sn
E/flutter ( 9202): [ERROR:flutter/runtime/dart_vm_initializer.cc(40)] Unhandled Exception: Looking up a deactivated widget's ancestor is unsafe.
E/flutter ( 9202): At this point the state of the widget's element tree is no longer stable.
E/flutter ( 9202): To safely refer to a widget's ancestor in its dispose() method, save a reference to the ancestor by calling dependOnInheritedWidgetOfExactType() in the widget's didChangeDependencies() method.
E/flutter ( 9202): #0      Element._debugCheckStateIsActiveForAncestorLookup.<anonymous closure> (package:flutter/src/widgets/framework.dart:4963:9)
E/flutter ( 9202): #1      Element._debugCheckStateIsActiveForAncestorLookup (package:flutter/src/widgets/framework.dart:4977:6)
E/flutter ( 9202): #2      Element.findAncestorStateOfType (package:flutter/src/widgets/framework.dart:5048:12)
E/flutter ( 9202): #3      ScaffoldMessengerState._isRoot (package:flutter/src/material/scaffold.dart:252:52)
E/flutter ( 9202): #4      ScaffoldMessengerState._updateScaffolds (package:flutter/src/material/scaffold.dart:242:11)
E/flutter ( 9202): #5      ScaffoldMessengerState.showSnackBar (package:flutter/src/material/scaffold.dart:359:7)
E/flutter ( 9202): #6      MealPlannerScreen.build.<anonymous closure> (package:basic_diet/presentation/plans/timeline/meal_planner/meal_planner_screen.dart:107:51)
E/flutter ( 9202): #7      _BlocListenerBaseState._subscribe.<anonymous closure> (package:flutter_bloc/src/bloc_listener.dart:216:24)
E/flutter ( 9202): #8      _RootZone.runUnaryGuarded (dart:async/zone.dart:1778:10)
E/flutter ( 9202): #9      _BufferingStreamSubscription._sendData (dart:async/stream_impl.dart:381:11)
E/flutter ( 9202): #10     _DelayedData.perform (dart:async/stream_impl.dart:573:14)
E/flutter ( 9202): #11     _PendingEvents.handleNext (dart:async/stream_impl.dart:678:11)
E/flutter ( 9202): #12     _PendingEvents.schedule.<anonymous closure> (dart:async/stream_impl.dart:649:7)
E/flutter ( 9202): #13     _microtaskLoop (dart:async/schedule_microtask.dart:40:21)
E/flutter ( 9202): #14     _startMicrotaskLoop (dart:async/schedule_microtask.dart:49:5)
E/flutter ( 9202):
E/libEGL  ( 9202): called unimplemented OpenGL ES API
E/chromium( 9202): [ERROR:aw_browser_terminator.cc(165)] Renderer process (10000) crash detected (code -1).
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 437 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61/timeline
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:03:25 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef7ff8aa23108-MRS]
I/flutter ( 9202): ╟ etag: [W/"300-s0mUrNnipiNw5O9miV03dPeMkfU"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ rndr-id: [83b7bb13-3274-4b06]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "order_id": "6a1b09cd8e060b5e369a8f61",
I/flutter ( 9202): ║             "current_status": "confirmed",
I/flutter ( 9202): ║             "timeline": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "order_created",
I/flutter ( 9202): ║                     "label_ar": "تم إنشاء الطلب",
I/flutter ( 9202): ║                     "label_en": "Order Created",
I/flutter ( 9202): ║                     "state": "completed",
I/flutter ( 9202): ║                     "time": "2026-05-30T16:01:18.052Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "payment_confirmed",
I/flutter ( 9202): ║                     "label_ar": "تم تأكيد الطلب",
I/flutter ( 9202): ║                     "label_en": "Payment Confirmed",
I/flutter ( 9202): ║                     "state": "active",
I/flutter ( 9202): ║                     "time": "2026-05-30T16:01:42.857Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "preparing",
I/flutter ( 9202): ║                     "label_ar": "جاري تجهيز الطلب",
I/flutter ( 9202): ║                     "label_en": "Preparing",
I/flutter ( 9202): ║                     "state": "pending",
I/flutter ( 9202): ║                     "time": null
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "ready_for_pickup",
I/flutter ( 9202): ║                     "label_ar": "الطلب جاهز للاستلام",
I/flutter ( 9202): ║                     "label_en": "Ready for Pickup",
I/flutter ( 9202): ║                     "state": "pending",
I/flutter ( 9202): ║                     "time": null
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "fulfilled",
I/flutter ( 9202): ║                     "label_ar": "تم استلام الطلب",
I/flutter ( 9202): ║                     "label_en": "Picked Up",
I/flutter ( 9202): ║                     "state": "pending",
I/flutter ( 9202): ║                     "time": null
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ]
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝

======== Exception caught by animation library =====================================================
The following assertion was thrown while notifying status listeners for AnimationController:
Looking up a deactivated widget's ancestor is unsafe.

At this point the state of the widget's element tree is no longer stable.

To safely refer to a widget's ancestor in its dispose() method, save a reference to the ancestor by calling dependOnInheritedWidgetOfExactType() in the widget's didChangeDependencies() method.

When the exception was thrown, this was the stack:
#0      Element._debugCheckStateIsActiveForAncestorLookup.<anonymous closure> (package:flutter/src/widgets/framework.dart:4963:9)
#1      Element._debugCheckStateIsActiveForAncestorLookup (package:flutter/src/widgets/framework.dart:4977:6)
#2      Element.findAncestorStateOfType (package:flutter/src/widgets/framework.dart:5048:12)
#3      ScaffoldMessengerState._isRoot (package:flutter/src/material/scaffold.dart:252:52)
#4      ScaffoldMessengerState._updateScaffolds (package:flutter/src/material/scaffold.dart:242:11)
#5      ScaffoldMessengerState._handleSnackBarStatusChanged (package:flutter/src/material/scaffold.dart:421:9)
#6      AnimationLocalStatusListenersMixin.notifyStatusListeners (package:flutter/src/animation/listener_helpers.dart:243:19)
#7      AnimationController._checkStatusChanged (package:flutter/src/animation/animation_controller.dart:964:7)
#8      AnimationController._tick (package:flutter/src/animation/animation_controller.dart:982:5)
#9      Ticker._tick (package:flutter/src/scheduler/ticker.dart:277:12)
#10     SchedulerBinding._invokeFrameCallback (package:flutter/src/scheduler/binding.dart:1442:15)
#11     SchedulerBinding.handleBeginFrame.<anonymous closure> (package:flutter/src/scheduler/binding.dart:1273:11)
#12     _LinkedHashMapMixin.forEach (dart:_compact_hash:763:13)
#13     SchedulerBinding.handleBeginFrame (package:flutter/src/scheduler/binding.dart:1271:17)
#14     SchedulerBinding._handleBeginFrame (package:flutter/src/scheduler/binding.dart:1187:5)
#15     _invoke1 (dart:ui/hooks.dart:332:13)
#16     PlatformDispatcher._beginFrame (dart:ui/platform_dispatcher.dart:410:5)
#17     _beginFrame (dart:ui/hooks.dart:277:31)
The AnimationController notifying status listeners was: AnimationController#4bb4a(⏭ 1.000; paused; for SnackBar)
====================================================================================================
I/flutter ( 9202): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingRefreshing(Instance of 'OrderModel', Instance of 'OrderTimelineModel'), nextState: OrderTrackingSuccess(Instance of 'OrderModel', Instance of 'OrderTimelineModel') }
E/libEGL  ( 9202): called unimplemented OpenGL ES API

======== Exception caught by animation library =====================================================
The following assertion was thrown while notifying status listeners for AnimationController:
Looking up a deactivated widget's ancestor is unsafe.

At this point the state of the widget's element tree is no longer stable.

To safely refer to a widget's ancestor in its dispose() method, save a reference to the ancestor by calling dependOnInheritedWidgetOfExactType() in the widget's didChangeDependencies() method.

When the exception was thrown, this was the stack:
#0      Element._debugCheckStateIsActiveForAncestorLookup.<anonymous closure> (package:flutter/src/widgets/framework.dart:4963:9)
#1      Element._debugCheckStateIsActiveForAncestorLookup (package:flutter/src/widgets/framework.dart:4977:6)
#2      Element.findAncestorStateOfType (package:flutter/src/widgets/framework.dart:5048:12)
#3      ScaffoldMessengerState._isRoot (package:flutter/src/material/scaffold.dart:252:52)
#4      ScaffoldMessengerState._updateScaffolds (package:flutter/src/material/scaffold.dart:242:11)
#5      ScaffoldMessengerState._handleSnackBarStatusChanged (package:flutter/src/material/scaffold.dart:412:9)
#6      AnimationLocalStatusListenersMixin.notifyStatusListeners (package:flutter/src/animation/listener_helpers.dart:243:19)
#7      AnimationController._checkStatusChanged (package:flutter/src/animation/animation_controller.dart:964:7)
#8      AnimationController._tick (package:flutter/src/animation/animation_controller.dart:982:5)
#9      Ticker._tick (package:flutter/src/scheduler/ticker.dart:277:12)
#10     SchedulerBinding._invokeFrameCallback (package:flutter/src/scheduler/binding.dart:1442:15)
#11     SchedulerBinding.handleBeginFrame.<anonymous closure> (package:flutter/src/scheduler/binding.dart:1273:11)
#12     _LinkedHashMapMixin.forEach (dart:_compact_hash:763:13)
#13     SchedulerBinding.handleBeginFrame (package:flutter/src/scheduler/binding.dart:1271:17)
#14     SchedulerBinding._handleBeginFrame (package:flutter/src/scheduler/binding.dart:1187:5)
#15     _invoke1 (dart:ui/hooks.dart:332:13)
#16     PlatformDispatcher._beginFrame (dart:ui/platform_dispatcher.dart:410:5)
#17     _beginFrame (dart:ui/hooks.dart:277:31)
The AnimationController notifying status listeners was: AnimationController#4bb4a(⏮ 0.000; paused; for SnackBar)
====================================================================================================
I/flutter ( 9202): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingSuccess(Instance of 'OrderModel', Instance of 'OrderTimelineModel'), nextState: OrderTrackingRefreshing(Instance of 'OrderModel', Instance of 'OrderTimelineModel') }
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ GET
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 574 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:03:34 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef83a48ed5321-MRS]
I/flutter ( 9202): ╟ etag: [W/"1036-VS3kx2U23+609sfingsdoMMMtSk"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ rndr-id: [f9c050ec-820b-424b]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "id": "6a1b09cd8e060b5e369a8f61",
I/flutter ( 9202): ║             "orderId": "6a1b09cd8e060b5e369a8f61",
I/flutter ( 9202): ║             "orderNumber": "ORD-369A8F60",
I/flutter ( 9202): ║             "source": "one_time_order",
I/flutter ( 9202): ║             "status": "confirmed",
I/flutter ( 9202): ║             "paymentStatus": "paid",
I/flutter ( 9202): ║             "allowedActions": []
I/flutter ( 9202): ║             "timeline_endpoint": "/api/orders/6a1b09cd8e060b5e369a8f61/timeline",
I/flutter ( 9202): ║             "cancelled_by": null,
I/flutter ( 9202): ║             "cancellation_reason": null,
I/flutter ( 9202): ║             "cancellation_source": null,
I/flutter ( 9202): ║             "cancelled_at": null,
I/flutter ( 9202): ║             "expiresAt": null,
I/flutter ( 9202): ║             "fulfillmentMethod": "pickup",
I/flutter ( 9202): ║             "fulfillmentDate": "2026-05-30",
I/flutter ( 9202): ║             "requestedFulfillmentDate": "2026-05-30",
I/flutter ( 9202): ║             "items": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "itemType": "basic_salad",
I/flutter ( 9202): ║                     "catalogRef": {model: MenuProduct, id: 6a19c0226864369ee0a8c0de},
I/flutter ( 9202): ║                     "name": {ar: سلطة بيسك, en: Basic Salad},
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 8700,
I/flutter ( 9202): ║                     "lineTotalHalala": 8700,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "selections": {
I/flutter ( 9202): ║                         "salad": {
I/flutter ( 9202): ║                             "ingredients": []
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                         "proteinName": {ar: , en: },
I/flutter ( 9202): ║                         "carbs": []
I/flutter ( 9202): ║                         "selectedOptions": [
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c0196864369ee0a8c0c4",
I/flutter ( 9202): ║                                 "groupName": {ar: ورقيات, en: Leafy Greens},
I/flutter ( 9202): ║                                 "optionId": "6a19c0196864369ee0a8c0c8",
I/flutter ( 9202): ║                                 "name": {ar: سبانخ, en: Spinach},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            },
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c0196864369ee0a8c0c4",
I/flutter ( 9202): ║                                 "groupName": {ar: ورقيات, en: Leafy Greens},
I/flutter ( 9202): ║                                 "optionId": "6a19c0196864369ee0a8c0c7",
I/flutter ( 9202): ║                                 "name": {ar: جرجير, en: Arugula},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            },
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c0166864369ee0a8c0b3",
I/flutter ( 9202): ║                                 "groupName": {ar: بروتينات, en: Proteins},
I/flutter ( 9202): ║                                 "optionId": "6a19c0176864369ee0a8c0b7",
I/flutter ( 9202): ║                                 "name": {ar: سمك, en: Fish},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            },
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c01c6864369ee0a8c0d7",
I/flutter ( 9202): ║                                 "groupName": {ar: الصوصات, en: Sauces},
I/flutter ( 9202): ║                                 "optionId": "6a19c01c6864369ee0a8c0da",
I/flutter ( 9202): ║                                 "name": {ar: ليمون وخردل, en: Lemon Mustard},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            }
I/flutter ( 9202): ║                         ]
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "nutrition": {},
I/flutter ( 9202): ║                     "productSnapshot": {
I/flutter ( 9202): ║                         "productId": "6a19c0226864369ee0a8c0de",
I/flutter ( 9202): ║                         "categoryId": "6a19c0156864369ee0a8c0ab",
I/flutter ( 9202): ║                         "categoryName": {ar: اطلب على مزاجك, en: Custom Order},
I/flutter ( 9202): ║                         "key": "basic_salad",
I/flutter ( 9202): ║                         "name": {ar: سلطة بيسك, en: Basic Salad},
I/flutter ( 9202): ║                         "itemType": "basic_salad",
I/flutter ( 9202): ║                         "pricingModel": "per_100g",
I/flutter ( 9202): ║                         "priceHalala": 2900,
I/flutter ( 9202): ║                         "baseUnitGrams": 100,
I/flutter ( 9202): ║                         "weightGrams": 300
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "itemType": "dessert",
I/flutter ( 9202): ║                     "catalogRef": {model: MenuProduct, id: 6a19c0386864369ee0a8c1f3},
I/flutter ( 9202): ║                     "name": {ar: تشيز كيك بالتوت, en: Berry Cheesecake},
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 1900,
I/flutter ( 9202): ║                     "lineTotalHalala": 1900,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "selections": {
I/flutter ( 9202): ║                         "salad": {
I/flutter ( 9202): ║                             "ingredients": []
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                         "proteinName": {ar: , en: },
I/flutter ( 9202): ║                         "carbs": []
I/flutter ( 9202): ║                         "selectedOptions": []
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "nutrition": {},
I/flutter ( 9202): ║                     "productSnapshot": {
I/flutter ( 9202): ║                         "productId": "6a19c0386864369ee0a8c1f3",
I/flutter ( 9202): ║                         "categoryId": "6a19c0166864369ee0a8c0af",
I/flutter ( 9202): ║                         "categoryName": {ar: الحلويات, en: Desserts},
I/flutter ( 9202): ║                         "key": "berry_cheesecake",
I/flutter ( 9202): ║                         "name": {ar: تشيز كيك بالتوت, en: Berry Cheesecake},
I/flutter ( 9202): ║                         "itemType": "dessert",
I/flutter ( 9202): ║                         "pricingModel": "fixed",
I/flutter ( 9202): ║                         "priceHalala": 1900,
I/flutter ( 9202): ║                         "baseUnitGrams": 100,
I/flutter ( 9202): ║                         "weightGrams": 0
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "itemType": "dessert",
I/flutter ( 9202): ║                     "catalogRef": {model: MenuProduct, id: 6a19c0386864369ee0a8c1f4},
I/flutter ( 9202): ║                     "name": {ar: براونيز داكن, en: Dark Brownies},
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 1300,
I/flutter ( 9202): ║                     "lineTotalHalala": 1300,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "selections": {
I/flutter ( 9202): ║                         "salad": {
I/flutter ( 9202): ║                             "ingredients": []
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                         "proteinName": {ar: , en: },
I/flutter ( 9202): ║                         "carbs": []
I/flutter ( 9202): ║                         "selectedOptions": []
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "nutrition": {},
I/flutter ( 9202): ║                     "productSnapshot": {
I/flutter ( 9202): ║                         "productId": "6a19c0386864369ee0a8c1f4",
I/flutter ( 9202): ║                         "categoryId": "6a19c0166864369ee0a8c0af",
I/flutter ( 9202): ║                         "categoryName": {ar: الحلويات, en: Desserts},
I/flutter ( 9202): ║                         "key": "dark_brownies",
I/flutter ( 9202): ║                         "name": {ar: براونيز داكن, en: Dark Brownies},
I/flutter ( 9202): ║                         "itemType": "dessert",
I/flutter ( 9202): ║                         "pricingModel": "fixed",
I/flutter ( 9202): ║                         "priceHalala": 1300,
I/flutter ( 9202): ║                         "baseUnitGrams": 100,
I/flutter ( 9202): ║                         "weightGrams": 0
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "pricing": {
I/flutter ( 9202): ║                 "subtotalHalala": 11900,
I/flutter ( 9202): ║                 "deliveryFeeHalala": 0,
I/flutter ( 9202): ║                 "discountHalala": 0,
I/flutter ( 9202): ║                 "totalHalala": 11900,
I/flutter ( 9202): ║                 "vatPercentage": 16,
I/flutter ( 9202): ║                 "vatHalala": 1641,
I/flutter ( 9202): ║                 "vatIncluded": true,
I/flutter ( 9202): ║                 "currency": "SAR"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "pickup": {
I/flutter ( 9202): ║                 "branchId": "main",
I/flutter ( 9202): ║                 "pickupWindow": "18:00-20:00",
I/flutter ( 9202): ║                 "branchName": {ar: , en: },
I/flutter ( 9202): ║                 "pickupCode": null,
I/flutter ( 9202): ║                 "pickupCodeIssuedAt": null,
I/flutter ( 9202): ║                 "pickupVerifiedAt": null
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "createdAt": "2026-05-30T16:01:18.052Z",
I/flutter ( 9202): ║             "updatedAt": "2026-05-30T16:01:43.056Z"
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ GET
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61/timeline
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 712 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61/timeline
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:03:35 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef83d38125321-MRS]
I/flutter ( 9202): ╟ etag: [W/"300-s0mUrNnipiNw5O9miV03dPeMkfU"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ rndr-id: [aec0ae29-6d1b-4f02]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "order_id": "6a1b09cd8e060b5e369a8f61",
I/flutter ( 9202): ║             "current_status": "confirmed",
I/flutter ( 9202): ║             "timeline": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "order_created",
I/flutter ( 9202): ║                     "label_ar": "تم إنشاء الطلب",
I/flutter ( 9202): ║                     "label_en": "Order Created",
I/flutter ( 9202): ║                     "state": "completed",
I/flutter ( 9202): ║                     "time": "2026-05-30T16:01:18.052Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "payment_confirmed",
I/flutter ( 9202): ║                     "label_ar": "تم تأكيد الطلب",
I/flutter ( 9202): ║                     "label_en": "Payment Confirmed",
I/flutter ( 9202): ║                     "state": "active",
I/flutter ( 9202): ║                     "time": "2026-05-30T16:01:42.857Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "preparing",
I/flutter ( 9202): ║                     "label_ar": "جاري تجهيز الطلب",
I/flutter ( 9202): ║                     "label_en": "Preparing",
I/flutter ( 9202): ║                     "state": "pending",
I/flutter ( 9202): ║                     "time": null
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "ready_for_pickup",
I/flutter ( 9202): ║                     "label_ar": "الطلب جاهز للاستلام",
I/flutter ( 9202): ║                     "label_en": "Ready for Pickup",
I/flutter ( 9202): ║                     "state": "pending",
I/flutter ( 9202): ║                     "time": null
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "fulfilled",
I/flutter ( 9202): ║                     "label_ar": "تم استلام الطلب",
I/flutter ( 9202): ║                     "label_en": "Picked Up",
I/flutter ( 9202): ║                     "state": "pending",
I/flutter ( 9202): ║                     "time": null
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ]
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingRefreshing(Instance of 'OrderModel', Instance of 'OrderTimelineModel'), nextState: OrderTrackingSuccess(Instance of 'OrderModel', Instance of 'OrderTimelineModel') }
I/flutter ( 9202): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingSuccess(Instance of 'OrderModel', Instance of 'OrderTimelineModel'), nextState: OrderTrackingRefreshing(Instance of 'OrderModel', Instance of 'OrderTimelineModel') }
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ GET
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 495 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:03:44 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef878ac3a708c-MRS]
I/flutter ( 9202): ╟ etag: [W/"1036-VS3kx2U23+609sfingsdoMMMtSk"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ rndr-id: [5dbfe4a9-8147-4634]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "id": "6a1b09cd8e060b5e369a8f61",
I/flutter ( 9202): ║             "orderId": "6a1b09cd8e060b5e369a8f61",
I/flutter ( 9202): ║             "orderNumber": "ORD-369A8F60",
I/flutter ( 9202): ║             "source": "one_time_order",
I/flutter ( 9202): ║             "status": "confirmed",
I/flutter ( 9202): ║             "paymentStatus": "paid",
I/flutter ( 9202): ║             "allowedActions": []
I/flutter ( 9202): ║             "timeline_endpoint": "/api/orders/6a1b09cd8e060b5e369a8f61/timeline",
I/flutter ( 9202): ║             "cancelled_by": null,
I/flutter ( 9202): ║             "cancellation_reason": null,
I/flutter ( 9202): ║             "cancellation_source": null,
I/flutter ( 9202): ║             "cancelled_at": null,
I/flutter ( 9202): ║             "expiresAt": null,
I/flutter ( 9202): ║             "fulfillmentMethod": "pickup",
I/flutter ( 9202): ║             "fulfillmentDate": "2026-05-30",
I/flutter ( 9202): ║             "requestedFulfillmentDate": "2026-05-30",
I/flutter ( 9202): ║             "items": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "itemType": "basic_salad",
I/flutter ( 9202): ║                     "catalogRef": {model: MenuProduct, id: 6a19c0226864369ee0a8c0de},
I/flutter ( 9202): ║                     "name": {ar: سلطة بيسك, en: Basic Salad},
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 8700,
I/flutter ( 9202): ║                     "lineTotalHalala": 8700,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "selections": {
I/flutter ( 9202): ║                         "salad": {
I/flutter ( 9202): ║                             "ingredients": []
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                         "proteinName": {ar: , en: },
I/flutter ( 9202): ║                         "carbs": []
I/flutter ( 9202): ║                         "selectedOptions": [
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c0196864369ee0a8c0c4",
I/flutter ( 9202): ║                                 "groupName": {ar: ورقيات, en: Leafy Greens},
I/flutter ( 9202): ║                                 "optionId": "6a19c0196864369ee0a8c0c8",
I/flutter ( 9202): ║                                 "name": {ar: سبانخ, en: Spinach},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            },
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c0196864369ee0a8c0c4",
I/flutter ( 9202): ║                                 "groupName": {ar: ورقيات, en: Leafy Greens},
I/flutter ( 9202): ║                                 "optionId": "6a19c0196864369ee0a8c0c7",
I/flutter ( 9202): ║                                 "name": {ar: جرجير, en: Arugula},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            },
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c0166864369ee0a8c0b3",
I/flutter ( 9202): ║                                 "groupName": {ar: بروتينات, en: Proteins},
I/flutter ( 9202): ║                                 "optionId": "6a19c0176864369ee0a8c0b7",
I/flutter ( 9202): ║                                 "name": {ar: سمك, en: Fish},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            },
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c01c6864369ee0a8c0d7",
I/flutter ( 9202): ║                                 "groupName": {ar: الصوصات, en: Sauces},
I/flutter ( 9202): ║                                 "optionId": "6a19c01c6864369ee0a8c0da",
I/flutter ( 9202): ║                                 "name": {ar: ليمون وخردل, en: Lemon Mustard},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            }
I/flutter ( 9202): ║                         ]
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "nutrition": {},
I/flutter ( 9202): ║                     "productSnapshot": {
I/flutter ( 9202): ║                         "productId": "6a19c0226864369ee0a8c0de",
I/flutter ( 9202): ║                         "categoryId": "6a19c0156864369ee0a8c0ab",
I/flutter ( 9202): ║                         "categoryName": {ar: اطلب على مزاجك, en: Custom Order},
I/flutter ( 9202): ║                         "key": "basic_salad",
I/flutter ( 9202): ║                         "name": {ar: سلطة بيسك, en: Basic Salad},
I/flutter ( 9202): ║                         "itemType": "basic_salad",
I/flutter ( 9202): ║                         "pricingModel": "per_100g",
I/flutter ( 9202): ║                         "priceHalala": 2900,
I/flutter ( 9202): ║                         "baseUnitGrams": 100,
I/flutter ( 9202): ║                         "weightGrams": 300
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "itemType": "dessert",
I/flutter ( 9202): ║                     "catalogRef": {model: MenuProduct, id: 6a19c0386864369ee0a8c1f3},
I/flutter ( 9202): ║                     "name": {ar: تشيز كيك بالتوت, en: Berry Cheesecake},
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 1900,
I/flutter ( 9202): ║                     "lineTotalHalala": 1900,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "selections": {
I/flutter ( 9202): ║                         "salad": {
I/flutter ( 9202): ║                             "ingredients": []
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                         "proteinName": {ar: , en: },
I/flutter ( 9202): ║                         "carbs": []
I/flutter ( 9202): ║                         "selectedOptions": []
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "nutrition": {},
I/flutter ( 9202): ║                     "productSnapshot": {
I/flutter ( 9202): ║                         "productId": "6a19c0386864369ee0a8c1f3",
I/flutter ( 9202): ║                         "categoryId": "6a19c0166864369ee0a8c0af",
I/flutter ( 9202): ║                         "categoryName": {ar: الحلويات, en: Desserts},
I/flutter ( 9202): ║                         "key": "berry_cheesecake",
I/flutter ( 9202): ║                         "name": {ar: تشيز كيك بالتوت, en: Berry Cheesecake},
I/flutter ( 9202): ║                         "itemType": "dessert",
I/flutter ( 9202): ║                         "pricingModel": "fixed",
I/flutter ( 9202): ║                         "priceHalala": 1900,
I/flutter ( 9202): ║                         "baseUnitGrams": 100,
I/flutter ( 9202): ║                         "weightGrams": 0
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "itemType": "dessert",
I/flutter ( 9202): ║                     "catalogRef": {model: MenuProduct, id: 6a19c0386864369ee0a8c1f4},
I/flutter ( 9202): ║                     "name": {ar: براونيز داكن, en: Dark Brownies},
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 1300,
I/flutter ( 9202): ║                     "lineTotalHalala": 1300,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "selections": {
I/flutter ( 9202): ║                         "salad": {
I/flutter ( 9202): ║                             "ingredients": []
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                         "proteinName": {ar: , en: },
I/flutter ( 9202): ║                         "carbs": []
I/flutter ( 9202): ║                         "selectedOptions": []
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "nutrition": {},
I/flutter ( 9202): ║                     "productSnapshot": {
I/flutter ( 9202): ║                         "productId": "6a19c0386864369ee0a8c1f4",
I/flutter ( 9202): ║                         "categoryId": "6a19c0166864369ee0a8c0af",
I/flutter ( 9202): ║                         "categoryName": {ar: الحلويات, en: Desserts},
I/flutter ( 9202): ║                         "key": "dark_brownies",
I/flutter ( 9202): ║                         "name": {ar: براونيز داكن, en: Dark Brownies},
I/flutter ( 9202): ║                         "itemType": "dessert",
I/flutter ( 9202): ║                         "pricingModel": "fixed",
I/flutter ( 9202): ║                         "priceHalala": 1300,
I/flutter ( 9202): ║                         "baseUnitGrams": 100,
I/flutter ( 9202): ║                         "weightGrams": 0
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "pricing": {
I/flutter ( 9202): ║                 "subtotalHalala": 11900,
I/flutter ( 9202): ║                 "deliveryFeeHalala": 0,
I/flutter ( 9202): ║                 "discountHalala": 0,
I/flutter ( 9202): ║                 "totalHalala": 11900,
I/flutter ( 9202): ║                 "vatPercentage": 16,
I/flutter ( 9202): ║                 "vatHalala": 1641,
I/flutter ( 9202): ║                 "vatIncluded": true,
I/flutter ( 9202): ║                 "currency": "SAR"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "pickup": {
I/flutter ( 9202): ║                 "branchId": "main",
I/flutter ( 9202): ║                 "pickupWindow": "18:00-20:00",
I/flutter ( 9202): ║                 "branchName": {ar: , en: },
I/flutter ( 9202): ║                 "pickupCode": null,
I/flutter ( 9202): ║                 "pickupCodeIssuedAt": null,
I/flutter ( 9202): ║                 "pickupVerifiedAt": null
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "createdAt": "2026-05-30T16:01:18.052Z",
I/flutter ( 9202): ║             "updatedAt": "2026-05-30T16:01:43.056Z"
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ GET
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61/timeline
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 401 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61/timeline
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:03:44 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef87b2a80708c-MRS]
I/flutter ( 9202): ╟ etag: [W/"300-s0mUrNnipiNw5O9miV03dPeMkfU"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ rndr-id: [fc22773e-73a8-4d58]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "order_id": "6a1b09cd8e060b5e369a8f61",
I/flutter ( 9202): ║             "current_status": "confirmed",
I/flutter ( 9202): ║             "timeline": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "order_created",
I/flutter ( 9202): ║                     "label_ar": "تم إنشاء الطلب",
I/flutter ( 9202): ║                     "label_en": "Order Created",
I/flutter ( 9202): ║                     "state": "completed",
I/flutter ( 9202): ║                     "time": "2026-05-30T16:01:18.052Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "payment_confirmed",
I/flutter ( 9202): ║                     "label_ar": "تم تأكيد الطلب",
I/flutter ( 9202): ║                     "label_en": "Payment Confirmed",
I/flutter ( 9202): ║                     "state": "active",
I/flutter ( 9202): ║                     "time": "2026-05-30T16:01:42.857Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "preparing",
I/flutter ( 9202): ║                     "label_ar": "جاري تجهيز الطلب",
I/flutter ( 9202): ║                     "label_en": "Preparing",
I/flutter ( 9202): ║                     "state": "pending",
I/flutter ( 9202): ║                     "time": null
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "ready_for_pickup",
I/flutter ( 9202): ║                     "label_ar": "الطلب جاهز للاستلام",
I/flutter ( 9202): ║                     "label_en": "Ready for Pickup",
I/flutter ( 9202): ║                     "state": "pending",
I/flutter ( 9202): ║                     "time": null
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "fulfilled",
I/flutter ( 9202): ║                     "label_ar": "تم استلام الطلب",
I/flutter ( 9202): ║                     "label_en": "Picked Up",
I/flutter ( 9202): ║                     "state": "pending",
I/flutter ( 9202): ║                     "time": null
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ]
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingRefreshing(Instance of 'OrderModel', Instance of 'OrderTimelineModel'), nextState: OrderTrackingSuccess(Instance of 'OrderModel', Instance of 'OrderTimelineModel') }
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/flutter ( 9202): onChange -- MealPlannerBloc, Change { currentState: MealPlannerLoaded([Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel'], Instance of 'MealPlannerMenuModel', [AddOnModel(6a19c03c6864369ee0a8c203, كلاسيك جرين, juice, , , SAR, 1100, 11.0, 11 SAR, item, flat_once, one_time, item, AddOnUiModel(كلاسيك جرين, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03c6864369ee0a8c202, بيري بلاست, juice, , , SAR, 1100, 11.0, 11 SAR, item, flat_once, one_time, item, AddOnUiModel(بيري بلاست, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03b6864369ee0a8c201, براونيز داكن, snack, , , SAR, 1300, 13.0, 13 SAR, item, flat_once, one_time, item, AddOnUiModel(براونيز داكن, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03b6864369ee0a8c200, تشيز كيك بالتوت, sn
I/flutter ( 9202): MealPlannerBloc: Verifying unified day payment subscriptionId=6a19c41387785860771917e7 date=2026-06-02 paymentId=6a1b0a388e060b5e369a90ed body={}
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ POST
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/6a19c41387785860771917e7/days/2026-06-02/payments/6a1b0a388e060b5e369a90ed/verify
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ║ {}
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ POST ║ Status: 200 OK  ║ Time: 925 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/6a19c41387785860771917e7/days/2026-06-02/payments/6a1b0a388e060b5e369a90ed/verify
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:03:48 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef88c5e4a708c-MRS]
I/flutter ( 9202): ╟ etag: [W/"877-o9vD1ULrbof5Y8j9/IbB73NeFJE"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ rndr-id: [91764136-e72e-4aac]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "subscriptionId": "6a19c41387785860771917e7",
I/flutter ( 9202): ║             "dayId": "6a19c41387785860771917f2",
I/flutter ( 9202): ║             "date": "2026-06-02",
I/flutter ( 9202): ║             "paymentStatus": "paid",
I/flutter ( 9202): ║             "applied": true,
I/flutter ( 9202): ║             "isFinal": true,
I/flutter ( 9202): ║             "premiumSummary": {
I/flutter ( 9202): ║                 "selectedCount": 2,
I/flutter ( 9202): ║                 "coveredByBalanceCount": 0,
I/flutter ( 9202): ║                 "pendingPaymentCount": 0,
I/flutter ( 9202): ║                 "paidExtraCount": 2,
I/flutter ( 9202): ║                 "totalExtraHalala": 0,
I/flutter ( 9202): ║                 "currency": "SAR"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "premiumExtraPayment": {
I/flutter ( 9202): ║                 "status": "paid",
I/flutter ( 9202): ║                 "paymentId": "6a1b0a388e060b5e369a90ed",
I/flutter ( 9202): ║                 "providerInvoiceId": "05e483cb-6813-4e8e-8535-2d14c6d20b26",
I/flutter ( 9202): ║                 "amountHalala": 4900,
I/flutter ( 9202): ║                 "currency": "SAR",
I/flutter ( 9202): ║                 "expiresAt": null,
I/flutter ( 9202): ║                 "reused": false,
I/flutter ( 9202): ║                 "revisionHash": "c3e8c58fe5993112422e10b1fe5aebe6f49d33843e3dbae5172fac20ee50b728"
I/flutter ( 9202): ║                 "createdAt": "2026-05-30T16:03:04.853Z",
I/flutter ( 9202): ║                 "paidAt": "2026-05-30T16:03:24.088Z",
I/flutter ( 9202): ║                 "extraPremiumCount": 2
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "addonSelections": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "addonId": "6a19c03c6864369ee0a8c203",
I/flutter ( 9202): ║                     "name": "Classic Green",
I/flutter ( 9202): ║                     "category": "juice",
I/flutter ( 9202): ║                     "source": "subscription",
I/flutter ( 9202): ║                     "priceHalala": 0,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "paymentId": null,
I/flutter ( 9202): ║                     "consumedAt": "2026-05-30T16:03:02.618Z",
I/flutter ( 9202): ║                     "_id": "6a1b0a368e060b5e369a90b2"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "addonId": "6a19c03c6864369ee0a8c202",
I/flutter ( 9202): ║                     "name": "Berry Blast",
I/flutter ( 9202): ║                     "category": "juice",
I/flutter ( 9202): ║                     "source": "paid",
I/flutter ( 9202): ║                     "priceHalala": 1100,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "paymentId": "6a1b0a388e060b5e369a90ed",
I/flutter ( 9202): ║                     "consumedAt": "2026-05-30T16:03:02.618Z",
I/flutter ( 9202): ║                     "_id": "6a1b0a368e060b5e369a90b3"
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "paymentRequirement": {
I/flutter ( 9202): ║                 "status": "satisfied",
I/flutter ( 9202): ║                 "requiresPayment": false,
I/flutter ( 9202): ║                 "pricingStatus": "not_required",
I/flutter ( 9202): ║                 "blockingReason": "PLANNER_UNCONFIRMED",
I/flutter ( 9202): ║                 "canCreatePayment": false,
I/flutter ( 9202): ║                 "premiumSelectedCount": 2,
I/flutter ( 9202): ║                 "premiumPendingPaymentCount": 0,
I/flutter ( 9202): ║                 "addonSelectedCount": 2,
I/flutter ( 9202): ║                 "addonPendingPaymentCount": 0,
I/flutter ( 9202): ║                 "pendingAmountHalala": 0,
I/flutter ( 9202): ║                 "amountHalala": 0,
I/flutter ( 9202): ║                 "currency": "SAR"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "commercialState": "ready_to_confirm",
I/flutter ( 9202): ║             "providerInvoice": null,
I/flutter ( 9202): ║             "payment": {
I/flutter ( 9202): ║                 "id": "6a1b0a388e060b5e369a90ed",
I/flutter ( 9202): ║                 "provider": "moyasar",
I/flutter ( 9202): ║                 "type": "day_planning_payment",
I/flutter ( 9202): ║                 "status": "paid",
I/flutter ( 9202): ║                 "amount": 6000,
I/flutter ( 9202): ║                 "currency": "SAR",
I/flutter ( 9202): ║                 "providerInvoiceId": "05e483cb-6813-4e8e-8535-2d14c6d20b26",
I/flutter ( 9202): ║                 "providerPaymentId": null,
I/flutter ( 9202): ║                 "applied": true,
I/flutter ( 9202): ║                 "paidAt": "2026-05-30T16:03:24.088Z",
I/flutter ( 9202): ║                 "createdAt": "2026-05-30T16:03:04.452Z",
I/flutter ( 9202): ║                 "updatedAt": "2026-05-30T16:03:24.088Z"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "checkedProvider": false,
I/flutter ( 9202): ║             "synchronized": true,
I/flutter ( 9202): ║             "sideEffectResult": {
I/flutter ( 9202): ║                 "applied": true,
I/flutter ( 9202): ║                 "results": [
I/flutter ( 9202): ║                  {applied: true, alreadySettled: true, premiumSelectionsSettled: 0},
I/flutter ( 9202): ║                  {applied: true, alreadySettled: true, addonSelectionsSettled: 0}
I/flutter ( 9202): ║                 ]
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): MealPlannerBloc: Verify unified day payment response httpStatus=200 paymentStatus=paid applied=true isFinal=true commercialState=ready_to_confirm
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ GET
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/6a19c41387785860771917e7/days/2026-06-02
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 601 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/6a19c41387785860771917e7/days/2026-06-02
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:03:48 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef8923c55708c-MRS]
I/flutter ( 9202): ╟ etag: [W/"22d5-VdDBNl1OIw2CmmUgExcYEy57KDI"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ rndr-id: [b7a04c16-a34f-41b3]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "_id": "6a19c41387785860771917f2",
I/flutter ( 9202): ║             "subscriptionId": "6a19c41387785860771917e7",
I/flutter ( 9202): ║             "date": "2026-06-02",
I/flutter ( 9202): ║             "status": "open",
I/flutter ( 9202): ║             "selections": [6a19bd7b0f6ac4f0db96ecc6, 6a19c0176864369ee0a8c0b9]
I/flutter ( 9202): ║             "skippedByUser": false,
I/flutter ( 9202): ║             "skipCompensated": false,
I/flutter ( 9202): ║             "assignedByKitchen": false,
I/flutter ( 9202): ║             "pickupRequested": false,
I/flutter ( 9202): ║             "pickupRequestedAt": null,
I/flutter ( 9202): ║             "pickupPreparationStartedAt": null,
I/flutter ( 9202): ║             "pickupPreparedAt": null,
I/flutter ( 9202): ║             "pickupCode": null,
I/flutter ( 9202): ║             "pickupCodeIssuedAt": null,
I/flutter ( 9202): ║             "pickupVerifiedAt": null,
I/flutter ( 9202): ║             "pickupVerifiedByDashboardUserId": null,
I/flutter ( 9202): ║             "pickupNoShowAt": null,
I/flutter ( 9202): ║             "dayEndConsumptionReason": null,
I/flutter ( 9202): ║             "autoSettled": false,
I/flutter ( 9202): ║             "settledAt": null,
I/flutter ( 9202): ║             "settlementReason": null,
I/flutter ( 9202): ║             "settledBy": null,
I/flutter ( 9202): ║             "cancellationReason": null,
I/flutter ( 9202): ║             "cancellationCategory": null,
I/flutter ( 9202): ║             "cancellationNote": null,
I/flutter ( 9202): ║             "canceledBy": null,
I/flutter ( 9202): ║             "canceledAt": null,
I/flutter ( 9202): ║             "creditsDeducted": false,
I/flutter ( 9202): ║             "autoLocked": false,
I/flutter ( 9202): ║             "plannerRevisionHash": "c3e8c58fe5993112422e10b1fe5aebe6f49d33843e3dbae5172fac20ee50b728",
I/flutter ( 9202): ║             "mealReminderSentAt": null,
I/flutter ( 9202): ║             "addonSelections": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "addonId": "6a19c03c6864369ee0a8c203",
I/flutter ( 9202): ║                     "name": "Classic Green",
I/flutter ( 9202): ║                     "category": "juice",
I/flutter ( 9202): ║                     "source": "subscription",
I/flutter ( 9202): ║                     "priceHalala": 0,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "paymentId": null,
I/flutter ( 9202): ║                     "consumedAt": "2026-05-30T16:03:02.618Z",
I/flutter ( 9202): ║                     "_id": "6a1b0a368e060b5e369a90b2"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "addonId": "6a19c03c6864369ee0a8c202",
I/flutter ( 9202): ║                     "name": "Berry Blast",
I/flutter ( 9202): ║                     "category": "juice",
I/flutter ( 9202): ║                     "source": "paid",
I/flutter ( 9202): ║                     "priceHalala": 1100,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "paymentId": "6a1b0a388e060b5e369a90ed",
I/flutter ( 9202): ║                     "consumedAt": "2026-05-30T16:03:02.618Z",
I/flutter ( 9202): ║                     "_id": "6a1b0a368e060b5e369a90b3"
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "premiumUpgradeSelections": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "baseSlotKey": "slot_1",
I/flutter ( 9202): ║                     "proteinId": "6a19bd7b0f6ac4f0db96ecc6",
I/flutter ( 9202): ║                     "premiumKey": "shrimp",
I/flutter ( 9202): ║                     "unitExtraFeeHalala": 2000,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "premiumSource": "paid_extra",
I/flutter ( 9202): ║                     "_id": "6a1b0a4c8e060b5e369a911d",
I/flutter ( 9202): ║                     "consumedAt": "2026-05-30T16:03:24.454Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "baseSlotKey": "slot_2",
I/flutter ( 9202): ║                     "proteinId": "6a19c0176864369ee0a8c0b9",
I/flutter ( 9202): ║                     "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                     "unitExtraFeeHalala": 2900,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "premiumSource": "paid_extra",
I/flutter ( 9202): ║                     "_id": "6a1b0a4c8e060b5e369a911e",
I/flutter ( 9202): ║                     "consumedAt": "2026-05-30T16:03:24.455Z"
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "operationAuditLog": []
I/flutter ( 9202): ║             "customSalads": []
I/flutter ( 9202): ║             "customMeals": []
I/flutter ( 9202): ║             "baseMealSlots": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "slotKey": "slot_1",
I/flutter ( 9202): ║                     "mealId": "6a19bd7b0f6ac4f0db96ecc6",
I/flutter ( 9202): ║                     "assignmentSource": "client",
I/flutter ( 9202): ║                     "assignedAt": "2026-05-30T16:03:24.451Z",
I/flutter ( 9202): ║                     "_id": "6a1b0a4c8e060b5e369a911f"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "slotKey": "slot_2",
I/flutter ( 9202): ║                     "mealId": "6a19c0176864369ee0a8c0b9",
I/flutter ( 9202): ║                     "assignmentSource": "client",
I/flutter ( 9202): ║                     "assignedAt": "2026-05-30T16:03:24.451Z",
I/flutter ( 9202): ║                     "_id": "6a1b0a4c8e060b5e369a9120"
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "__v": 3,
I/flutter ( 9202): ║             "createdAt": "2026-05-29T16:51:31.803Z",
I/flutter ( 9202): ║             "updatedAt": "2026-05-30T16:03:24.754Z",
I/flutter ( 9202): ║             "materializedMeals": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "slotKey": "slot_1",
I/flutter ( 9202): ║                     "selectionType": "premium_meal",
I/flutter ( 9202): ║                     "sandwichId": null,
I/flutter ( 9202): ║                     "proteinId": "6a19bd7b0f6ac4f0db96ecc6",
I/flutter ( 9202): ║                     "carbId": "6a19c0196864369ee0a8c0c2",
I/flutter ( 9202): ║                     "isPremium": true,
I/flutter ( 9202): ║                     "premiumSource": "paid_extra",
I/flutter ( 9202): ║                     "premiumKey": "shrimp",
I/flutter ( 9202): ║                     "premiumExtraFeeHalala": 2000,
I/flutter ( 9202): ║                     "comboKey": "6a19bd7b0f6ac4f0db96ecc6:6a19c0196864369ee0a8c0c2"
I/flutter ( 9202): ║                     "operationalSku": "6a19bd7b0f6ac4f0db96ecc6:6a19c0196864369ee0a8c0c2"
I/flutter ( 9202): ║                     "generatedAt": "2026-05-30T16:03:24.451Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "slotKey": "slot_2",
I/flutter ( 9202): ║                     "selectionType": "premium_large_salad",
I/flutter ( 9202): ║                     "sandwichId": null,
I/flutter ( 9202): ║                     "proteinId": "6a19c0176864369ee0a8c0b9",
I/flutter ( 9202): ║                     "carbId": null,
I/flutter ( 9202): ║                     "isPremium": true,
I/flutter ( 9202): ║                     "premiumSource": "paid_extra",
I/flutter ( 9202): ║                     "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                     "premiumExtraFeeHalala": 2900,
I/flutter ( 9202): ║                     "comboKey": null,
I/flutter ( 9202): ║                     "operationalSku": "salad:premium_large_salad",
I/flutter ( 9202): ║                     "generatedAt": "2026-05-30T16:03:24.451Z"
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "mealSlots": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "slotIndex": 1,
I/flutter ( 9202): ║                     "slotKey": "slot_1",
I/flutter ( 9202): ║                     "status": "complete",
I/flutter ( 9202): ║                     "selectionType": "premium_meal",
I/flutter ( 9202): ║                     "proteinId": "6a19bd7b0f6ac4f0db96ecc6",
I/flutter ( 9202): ║                     "carbs": [{carbId: 6a19c0196864369ee0a8c0c2, grams: 150}]
I/flutter ( 9202): ║                     "sandwichId": null,
I/flutter ( 9202): ║                     "salad": null,
I/flutter ( 9202): ║                     "isPremium": true,
I/flutter ( 9202): ║                     "premiumKey": "shrimp",
I/flutter ( 9202): ║                     "premiumSource": "paid_extra",
I/flutter ( 9202): ║                     "premiumExtraFeeHalala": 2000
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "slotIndex": 2,
I/flutter ( 9202): ║                     "slotKey": "slot_2",
I/flutter ( 9202): ║                     "status": "complete",
I/flutter ( 9202): ║                     "selectionType": "premium_large_salad",
I/flutter ( 9202): ║                     "proteinId": "6a19c0176864369ee0a8c0b9",
I/flutter ( 9202): ║                     "carbs": []
I/flutter ( 9202): ║                     "sandwichId": null,
I/flutter ( 9202): ║                     "salad": {
I/flutter ( 9202): ║                         "presetKey": "premium_large_salad",
I/flutter ( 9202): ║                         "groups": {
I/flutter ( 9202): ║                             "leafy_greens": []
I/flutter ( 9202): ║                             "vegetables": []
I/flutter ( 9202): ║                             "protein": [6a19c0176864369ee0a8c0b9]
I/flutter ( 9202): ║                             "cheese_nuts": []
I/flutter ( 9202): ║                             "fruits": []
I/flutter ( 9202): ║                             "sauce": [6a19c01c6864369ee0a8c0da]
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "isPremium": true,
I/flutter ( 9202): ║                     "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                     "premiumSource": "paid_extra",
I/flutter ( 9202): ║                     "premiumExtraFeeHalala": 2900
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "plannerMeta": {
I/flutter ( 9202): ║                 "requiredSlotCount": 1,
I/flutter ( 9202): ║                 "emptySlotCount": 0,
I/flutter ( 9202): ║                 "partialSlotCount": 0,
I/flutter ( 9202): ║                 "completeSlotCount": 2,
I/flutter ( 9202): ║                 "beefSlotCount": 0,
I/flutter ( 9202): ║                 "premiumSlotCount": 2,
I/flutter ( 9202): ║                 "premiumCoveredByBalanceCount": 0,
I/flutter ( 9202): ║                 "premiumPendingPaymentCount": 0,
I/flutter ( 9202): ║                 "premiumPaidExtraCount": 2,
I/flutter ( 9202): ║                 "premiumTotalHalala": 0,
I/flutter ( 9202): ║                 "isDraftValid": true,
I/flutter ( 9202): ║                 "isConfirmable": true,
I/flutter ( 9202): ║                 "lastEditedAt": "2026-05-30T16:03:24.449Z",
I/flutter ( 9202): ║                 "confirmedAt": null,
I/flutter ( 9202): ║                 "confirmedByRole": null
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "plannerState": "draft",
I/flutter ( 9202): ║             "plannerVersion": "v1",
I/flutter ( 9202): ║             "premiumExtraPayment": {
I/flutter ( 9202): ║                 "status": "paid",
I/flutter ( 9202): ║                 "paymentId": "6a1b0a388e060b5e369a90ed",
I/flutter ( 9202): ║                 "providerInvoiceId": "05e483cb-6813-4e8e-8535-2d14c6d20b26",
I/flutter ( 9202): ║                 "amountHalala": 4900,
I/flutter ( 9202): ║                 "currency": "SAR",
I/flutter ( 9202): ║                 "expiresAt": null,
I/flutter ( 9202): ║                 "reused": false,
I/flutter ( 9202): ║                 "revisionHash": "c3e8c58fe5993112422e10b1fe5aebe6f49d33843e3dbae5172fac20ee50b728"
I/flutter ( 9202): ║                 "createdAt": "2026-05-30T16:03:04.853Z",
I/flutter ( 9202): ║                 "paidAt": "2026-05-30T16:03:24.088Z",
I/flutter ( 9202): ║                 "extraPremiumCount": 2,
I/flutter ( 9202): ║                 "statusLabel": "مدفوع"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "planningMeta": {
I/flutter ( 9202): ║                 "requiredMealCount": 1,
I/flutter ( 9202): ║                 "selectedBaseMealCount": 0,
I/flutter ( 9202): ║                 "selectedPremiumMealCount": 2,
I/flutter ( 9202): ║                 "selectedTotalMealCount": 2,
I/flutter ( 9202): ║                 "isExactCountSatisfied": true,
I/flutter ( 9202): ║                 "lastEditedAt": "2026-05-30T16:03:02.822Z",
I/flutter ( 9202): ║                 "confirmedAt": null,
I/flutter ( 9202): ║                 "confirmedByRole": null
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "planningState": "draft",
I/flutter ( 9202): ║             "planningVersion": "subscription_day_planning.v1",
I/flutter ( 9202): ║             "planning": {
I/flutter ( 9202): ║                 "version": "subscription_day_planning.v1",
I/flutter ( 9202): ║                 "state": "draft",
I/flutter ( 9202): ║                 "requiredMealCount": 1,
I/flutter ( 9202): ║                 "selectedBaseMealCount": 0,
I/flutter ( 9202): ║                 "selectedPremiumMealCount": 2,
I/flutter ( 9202): ║                 "selectedTotalMealCount": 2,
I/flutter ( 9202): ║                 "isThresholdMet": true,
I/flutter ( 9202): ║                 "isExactCountSatisfied": true,
I/flutter ( 9202): ║                 "isBalanceExceeded": false,
I/flutter ( 9202): ║                 "maxConsumableMealsNow": 7,
I/flutter ( 9202): ║                 "confirmedAt": null,
I/flutter ( 9202): ║                 "confirmedByRole": null,
I/flutter ( 9202): ║                 "baseMealSlots": [
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "slotKey": "slot_1",
I/flutter ( 9202): ║                         "mealId": "6a19bd7b0f6ac4f0db96ecc6",
I/flutter ( 9202): ║                         "assignmentSource": "client",
I/flutter ( 9202): ║                         "assignedAt": "2026-05-30T16:03:24.451Z",
I/flutter ( 9202): ║                         "_id": "6a1b0a4c8e060b5e369a911f"
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "slotKey": "slot_2",
I/flutter ( 9202): ║                         "mealId": "6a19c0176864369ee0a8c0b9",
I/flutter ( 9202): ║                         "assignmentSource": "client",
I/flutter ( 9202): ║                         "assignedAt": "2026-05-30T16:03:24.451Z",
I/flutter ( 9202): ║                         "_id": "6a1b0a4c8e060b5e369a9120"
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                 ],
I/flutter ( 9202): ║                 "premiumOverageCount": 0,
I/flutter ( 9202): ║                 "premiumOverageStatus": null,
I/flutter ( 9202): ║                 "stateLabel": "مسودة",
I/flutter ( 9202): ║                 "premiumOverageStatusLabel": ""
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "statusLabel": "مفتوح",
I/flutter ( 9202): ║             "premiumSummary": {
I/flutter ( 9202): ║                 "selectedCount": 2,
I/flutter ( 9202): ║                 "coveredByBalanceCount": 0,
I/flutter ( 9202): ║                 "pendingPaymentCount": 0,
I/flutter ( 9202): ║                 "paidExtraCount": 2,
I/flutter ( 9202): ║                 "totalExtraHalala": 0,
I/flutter ( 9202): ║                 "currency": "SAR"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "paymentRequirement": {
I/flutter ( 9202): ║                 "status": "satisfied",
I/flutter ( 9202): ║                 "requiresPayment": false,
I/flutter ( 9202): ║                 "pricingStatus": "not_required",
I/flutter ( 9202): ║                 "blockingReason": "PLANNER_UNCONFIRMED",
I/flutter ( 9202): ║                 "canCreatePayment": false,
I/flutter ( 9202): ║                 "premiumSelectedCount": 2,
I/flutter ( 9202): ║                 "premiumPendingPaymentCount": 0,
I/flutter ( 9202): ║                 "addonSelectedCount": 2,
I/flutter ( 9202): ║                 "addonPendingPaymentCount": 0,
I/flutter ( 9202): ║                 "pendingAmountHalala": 0,
I/flutter ( 9202): ║                 "amountHalala": 0,
I/flutter ( 9202): ║                 "currency": "SAR",
I/flutter ( 9202): ║                 "pricingStatusLabel": "غير مطلوب",
I/flutter ( 9202): ║                 "blockingReasonLabel": ""
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "commercialState": "ready_to_confirm",
I/flutter ( 9202): ║             "isFulfillable": false,
I/flutter ( 9202): ║             "canBePrepared": false,
I/flutter ( 9202): ║             "pickupPrepared": false,
I/flutter ( 9202): ║             "pickupPreparationFlowStatus": "waiting_for_prepare",
I/flutter ( 9202): ║             "fulfillmentMode": "customer_selected",
I/flutter ( 9202): ║             "consumptionState": "pending_day",
I/flutter ( 9202): ║             "requiredMealCount": 1,
I/flutter ( 9202): ║             "specifiedMealCount": 1,
I/flutter ( 9202): ║             "unspecifiedMealCount": 0,
I/flutter ( 9202): ║             "hasCustomerSelections": true,
I/flutter ( 9202): ║             "requiresMealTypeKnowledge": true,
I/flutter ( 9202): ║             "mealTypesSpecified": true,
I/flutter ( 9202): ║             "planningReady": true,
I/flutter ( 9202): ║             "fulfillmentReady": false,
I/flutter ( 9202): ║             "deliveryMode": "pickup",
I/flutter ( 9202): ║             "pickupLocation": {
I/flutter ( 9202): ║                 "id": "main",
I/flutter ( 9202): ║                 "name": "[object Object]",
I/flutter ( 9202): ║                 "address": "[object Object]",
I/flutter ( 9202): ║                 "phone": "",
I/flutter ( 9202): ║                 "city": "",
I/flutter ( 9202): ║                 "district": "",
I/flutter ( 9202): ║                 "workingHours": "",
I/flutter ( 9202): ║                 "latitude": null,
I/flutter ( 9202): ║                 "longitude": null,
I/flutter ( 9202): ║                 "mapUrl": null
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "deliveryAddress": null,
I/flutter ( 9202): ║             "deliveryWindow": null,
I/flutter ( 9202): ║             "deliverySlot": {type: pickup, slotId: , window: , label: },
I/flutter ( 9202): ║             "fulfillmentSummary": {
I/flutter ( 9202): ║                 "mode": "pickup",
I/flutter ( 9202): ║                 "title": "الاستلام من الفرع",
I/flutter ( 9202): ║                 "status": "open",
I/flutter ( 9202): ║                 "statusLabel": "مفتوح",
I/flutter ( 9202): ║                 "message": "راجع اختيارات اليوم واطلب التجهيز عندما تكون جاهزا",
I/flutter ( 9202): ║                 "nextAction": "",
I/flutter ( 9202): ║                 "isEditable": true,
I/flutter ( 9202): ║                 "isFulfillable": false,
I/flutter ( 9202): ║                 "planningReady": true,
I/flutter ( 9202): ║                 "fulfillmentReady": false,
I/flutter ( 9202): ║                 "lockedReason": null,
I/flutter ( 9202): ║                 "lockedMessage": null
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "lockedReason": null,
I/flutter ( 9202): ║             "lockedMessage": null,
I/flutter ( 9202): ║             "mealBalance": {
I/flutter ( 9202): ║                 "totalMeals": 7,
I/flutter ( 9202): ║                 "remainingMeals": 7,
I/flutter ( 9202): ║                 "consumedMeals": 0,
I/flutter ( 9202): ║                 "canConsumeNow": true,
I/flutter ( 9202): ║                 "maxConsumableMealsNow": 7,
I/flutter ( 9202): ║                 "mealBalancePolicy": "TOTAL_BALANCE_WITHIN_VALIDITY",
I/flutter ( 9202): ║                 "dailyMealLimitEnforced": false,
I/flutter ( 9202): ║                 "dailyMealsDefault": 1
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "rules": {
I/flutter ( 9202): ║                 "version": "meal_planner_rules.v3",
I/flutter ( 9202): ║                 "beef": {proteinFamilyKey: beef, maxSlotsPerDay: 1},
I/flutter ( 9202): ║                 "standardCarbs": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
I/flutter ( 9202): ║                 "premiumCarbs": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
I/flutter ( 9202): ║                 "proteinGroups": [
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "chicken",
I/flutter ( 9202): ║                         "name": {ar: دجاج, en: Chicken},
I/flutter ( 9202): ║                         "sortOrder": 10
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "beef",
I/flutter ( 9202): ║                         "name": {ar: لحم, en: Beef},
I/flutter ( 9202): ║                         "sortOrder": 20
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "fish",
I/flutter ( 9202): ║                         "name": {ar: أسماك, en: Fish},
I/flutter ( 9202): ║                         "sortOrder": 30
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "eggs",
I/flutter ( 9202): ║                         "name": {ar: بيض, en: Eggs},
I/flutter ( 9202): ║                         "sortOrder": 40
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "premium",
I/flutter ( 9202): ║                         "name": {ar: بريميوم, en: Premium},
I/flutter ( 9202): ║                         "sortOrder": 50
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "other",
I/flutter ( 9202): ║                         "name": {ar: أخرى, en: Other},
I/flutter ( 9202): ║                         "sortOrder": 60
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                 ],
I/flutter ( 9202): ║                 "premiumLargeSalad": {
I/flutter ( 9202): ║                     "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                     "presetKey": "large_salad",
I/flutter ( 9202): ║                     "extraFeeHalala": 2900,
I/flutter ( 9202): ║                     "groups": [
I/flutter ( 9202): ║                      {key: leafy_greens, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                      {key: vegetables, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                      {key: protein, minSelect: 1, maxSelect: 1},
I/flutter ( 9202): ║                      {key: cheese_nuts, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                      {key: fruits, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                      {key: sauce, minSelect: 1, maxSelect: 1}
I/flutter ( 9202): ║                     ]
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "commercialStateLabel": "جاهز للتأكيد"
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ POST
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/6a19c41387785860771917e7/days/2026-06-02/confirm
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ POST ║ Status: 200 OK  ║ Time: 1250 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/6a19c41387785860771917e7/days/2026-06-02/confirm
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:03:49 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef8962df6708c-MRS]
I/flutter ( 9202): ╟ etag: [W/"22f3-ZIlvNehulPG6T+GAvs0N08Dbq1A"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ rndr-id: [e698aa00-779a-4af8]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "success": true,
I/flutter ( 9202): ║         "plannerState": "confirmed",
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "planningMeta": {
I/flutter ( 9202): ║                 "requiredMealCount": 1,
I/flutter ( 9202): ║                 "selectedBaseMealCount": 0,
I/flutter ( 9202): ║                 "selectedPremiumMealCount": 2,
I/flutter ( 9202): ║                 "selectedTotalMealCount": 2,
I/flutter ( 9202): ║                 "isExactCountSatisfied": true,
I/flutter ( 9202): ║                 "lastEditedAt": "2026-05-30T16:03:02.822Z",
I/flutter ( 9202): ║                 "confirmedAt": "2026-05-30T16:03:49.555Z",
I/flutter ( 9202): ║                 "confirmedByRole": "client"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "_id": "6a19c41387785860771917f2",
I/flutter ( 9202): ║             "subscriptionId": "6a19c41387785860771917e7",
I/flutter ( 9202): ║             "date": "2026-06-02",
I/flutter ( 9202): ║             "status": "open",
I/flutter ( 9202): ║             "selections": [6a19bd7b0f6ac4f0db96ecc6, 6a19c0176864369ee0a8c0b9]
I/flutter ( 9202): ║             "skippedByUser": false,
I/flutter ( 9202): ║             "skipCompensated": false,
I/flutter ( 9202): ║             "assignedByKitchen": false,
I/flutter ( 9202): ║             "pickupRequested": false,
I/flutter ( 9202): ║             "pickupRequestedAt": null,
I/flutter ( 9202): ║             "pickupPreparationStartedAt": null,
I/flutter ( 9202): ║             "pickupPreparedAt": null,
I/flutter ( 9202): ║             "pickupCode": null,
I/flutter ( 9202): ║             "pickupCodeIssuedAt": null,
I/flutter ( 9202): ║             "pickupVerifiedAt": null,
I/flutter ( 9202): ║             "pickupVerifiedByDashboardUserId": null,
I/flutter ( 9202): ║             "pickupNoShowAt": null,
I/flutter ( 9202): ║             "dayEndConsumptionReason": null,
I/flutter ( 9202): ║             "autoSettled": false,
I/flutter ( 9202): ║             "settledAt": null,
I/flutter ( 9202): ║             "settlementReason": null,
I/flutter ( 9202): ║             "settledBy": null,
I/flutter ( 9202): ║             "cancellationReason": null,
I/flutter ( 9202): ║             "cancellationCategory": null,
I/flutter ( 9202): ║             "cancellationNote": null,
I/flutter ( 9202): ║             "canceledBy": null,
I/flutter ( 9202): ║             "canceledAt": null,
I/flutter ( 9202): ║             "creditsDeducted": false,
I/flutter ( 9202): ║             "autoLocked": false,
I/flutter ( 9202): ║             "plannerRevisionHash": "c3e8c58fe5993112422e10b1fe5aebe6f49d33843e3dbae5172fac20ee50b728",
I/flutter ( 9202): ║             "mealReminderSentAt": null,
I/flutter ( 9202): ║             "addonSelections": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "addonId": "6a19c03c6864369ee0a8c203",
I/flutter ( 9202): ║                     "name": "Classic Green",
I/flutter ( 9202): ║                     "category": "juice",
I/flutter ( 9202): ║                     "source": "subscription",
I/flutter ( 9202): ║                     "priceHalala": 0,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "paymentId": null,
I/flutter ( 9202): ║                     "consumedAt": "2026-05-30T16:03:02.618Z",
I/flutter ( 9202): ║                     "_id": "6a1b0a368e060b5e369a90b2"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "addonId": "6a19c03c6864369ee0a8c202",
I/flutter ( 9202): ║                     "name": "Berry Blast",
I/flutter ( 9202): ║                     "category": "juice",
I/flutter ( 9202): ║                     "source": "paid",
I/flutter ( 9202): ║                     "priceHalala": 1100,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "paymentId": "6a1b0a388e060b5e369a90ed",
I/flutter ( 9202): ║                     "consumedAt": "2026-05-30T16:03:02.618Z",
I/flutter ( 9202): ║                     "_id": "6a1b0a368e060b5e369a90b3"
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "premiumUpgradeSelections": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "baseSlotKey": "slot_1",
I/flutter ( 9202): ║                     "proteinId": "6a19bd7b0f6ac4f0db96ecc6",
I/flutter ( 9202): ║                     "premiumKey": "shrimp",
I/flutter ( 9202): ║                     "unitExtraFeeHalala": 2000,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "premiumSource": "paid_extra",
I/flutter ( 9202): ║                     "consumedAt": "2026-05-30T16:03:49.554Z",
I/flutter ( 9202): ║                     "_id": "6a1b0a658e060b5e369a919a"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "baseSlotKey": "slot_2",
I/flutter ( 9202): ║                     "proteinId": "6a19c0176864369ee0a8c0b9",
I/flutter ( 9202): ║                     "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                     "unitExtraFeeHalala": 2900,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "premiumSource": "paid_extra",
I/flutter ( 9202): ║                     "consumedAt": "2026-05-30T16:03:49.554Z",
I/flutter ( 9202): ║                     "_id": "6a1b0a658e060b5e369a919b"
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "operationAuditLog": []
I/flutter ( 9202): ║             "customSalads": []
I/flutter ( 9202): ║             "customMeals": []
I/flutter ( 9202): ║             "baseMealSlots": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "slotKey": "slot_1",
I/flutter ( 9202): ║                     "mealId": "6a19bd7b0f6ac4f0db96ecc6",
I/flutter ( 9202): ║                     "assignmentSource": "client",
I/flutter ( 9202): ║                     "assignedAt": "2026-05-30T16:03:49.552Z",
I/flutter ( 9202): ║                     "_id": "6a1b0a658e060b5e369a919c"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "slotKey": "slot_2",
I/flutter ( 9202): ║                     "mealId": "6a19c0176864369ee0a8c0b9",
I/flutter ( 9202): ║                     "assignmentSource": "client",
I/flutter ( 9202): ║                     "assignedAt": "2026-05-30T16:03:49.552Z",
I/flutter ( 9202): ║                     "_id": "6a1b0a658e060b5e369a919d"
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "__v": 3,
I/flutter ( 9202): ║             "createdAt": "2026-05-29T16:51:31.803Z",
I/flutter ( 9202): ║             "updatedAt": "2026-05-30T16:03:49.557Z",
I/flutter ( 9202): ║             "materializedMeals": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "slotKey": "slot_1",
I/flutter ( 9202): ║                     "selectionType": "premium_meal",
I/flutter ( 9202): ║                     "sandwichId": null,
I/flutter ( 9202): ║                     "proteinId": "6a19bd7b0f6ac4f0db96ecc6",
I/flutter ( 9202): ║                     "carbId": "6a19c0196864369ee0a8c0c2",
I/flutter ( 9202): ║                     "isPremium": true,
I/flutter ( 9202): ║                     "premiumSource": "paid_extra",
I/flutter ( 9202): ║                     "premiumKey": "shrimp",
I/flutter ( 9202): ║                     "premiumExtraFeeHalala": 2000,
I/flutter ( 9202): ║                     "comboKey": "6a19bd7b0f6ac4f0db96ecc6:6a19c0196864369ee0a8c0c2"
I/flutter ( 9202): ║                     "operationalSku": "6a19bd7b0f6ac4f0db96ecc6:6a19c0196864369ee0a8c0c2"
I/flutter ( 9202): ║                     "generatedAt": "2026-05-30T16:03:49.552Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "slotKey": "slot_2",
I/flutter ( 9202): ║                     "selectionType": "premium_large_salad",
I/flutter ( 9202): ║                     "sandwichId": null,
I/flutter ( 9202): ║                     "proteinId": "6a19c0176864369ee0a8c0b9",
I/flutter ( 9202): ║                     "carbId": null,
I/flutter ( 9202): ║                     "isPremium": true,
I/flutter ( 9202): ║                     "premiumSource": "paid_extra",
I/flutter ( 9202): ║                     "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                     "premiumExtraFeeHalala": 2900,
I/flutter ( 9202): ║                     "comboKey": null,
I/flutter ( 9202): ║                     "operationalSku": "salad:premium_large_salad",
I/flutter ( 9202): ║                     "generatedAt": "2026-05-30T16:03:49.552Z"
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "mealSlots": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "slotIndex": 1,
I/flutter ( 9202): ║                     "slotKey": "slot_1",
I/flutter ( 9202): ║                     "status": "complete",
I/flutter ( 9202): ║                     "selectionType": "premium_meal",
I/flutter ( 9202): ║                     "proteinId": "6a19bd7b0f6ac4f0db96ecc6",
I/flutter ( 9202): ║                     "carbs": [{carbId: 6a19c0196864369ee0a8c0c2, grams: 150}]
I/flutter ( 9202): ║                     "sandwichId": null,
I/flutter ( 9202): ║                     "salad": null,
I/flutter ( 9202): ║                     "isPremium": true,
I/flutter ( 9202): ║                     "premiumKey": "shrimp",
I/flutter ( 9202): ║                     "premiumSource": "paid_extra",
I/flutter ( 9202): ║                     "premiumExtraFeeHalala": 2000
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "slotIndex": 2,
I/flutter ( 9202): ║                     "slotKey": "slot_2",
I/flutter ( 9202): ║                     "status": "complete",
I/flutter ( 9202): ║                     "selectionType": "premium_large_salad",
I/flutter ( 9202): ║                     "proteinId": "6a19c0176864369ee0a8c0b9",
I/flutter ( 9202): ║                     "carbs": []
I/flutter ( 9202): ║                     "sandwichId": null,
I/flutter ( 9202): ║                     "salad": {
I/flutter ( 9202): ║                         "presetKey": "premium_large_salad",
I/flutter ( 9202): ║                         "groups": {
I/flutter ( 9202): ║                             "leafy_greens": []
I/flutter ( 9202): ║                             "vegetables": []
I/flutter ( 9202): ║                             "protein": [6a19c0176864369ee0a8c0b9]
I/flutter ( 9202): ║                             "cheese_nuts": []
I/flutter ( 9202): ║                             "fruits": []
I/flutter ( 9202): ║                             "sauce": [6a19c01c6864369ee0a8c0da]
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "isPremium": true,
I/flutter ( 9202): ║                     "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                     "premiumSource": "paid_extra",
I/flutter ( 9202): ║                     "premiumExtraFeeHalala": 2900
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "plannerMeta": {
I/flutter ( 9202): ║                 "requiredSlotCount": 1,
I/flutter ( 9202): ║                 "emptySlotCount": 0,
I/flutter ( 9202): ║                 "partialSlotCount": 0,
I/flutter ( 9202): ║                 "completeSlotCount": 2,
I/flutter ( 9202): ║                 "beefSlotCount": 0,
I/flutter ( 9202): ║                 "premiumSlotCount": 2,
I/flutter ( 9202): ║                 "premiumCoveredByBalanceCount": 0,
I/flutter ( 9202): ║                 "premiumPendingPaymentCount": 0,
I/flutter ( 9202): ║                 "premiumPaidExtraCount": 2,
I/flutter ( 9202): ║                 "premiumTotalHalala": 0,
I/flutter ( 9202): ║                 "isDraftValid": true,
I/flutter ( 9202): ║                 "isConfirmable": true,
I/flutter ( 9202): ║                 "lastEditedAt": "2026-05-30T16:03:49.551Z",
I/flutter ( 9202): ║                 "confirmedAt": "2026-05-30T16:03:49.555Z",
I/flutter ( 9202): ║                 "confirmedByRole": "client"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "plannerState": "confirmed",
I/flutter ( 9202): ║             "plannerVersion": "v1",
I/flutter ( 9202): ║             "premiumExtraPayment": {
I/flutter ( 9202): ║                 "status": "paid",
I/flutter ( 9202): ║                 "paymentId": "6a1b0a388e060b5e369a90ed",
I/flutter ( 9202): ║                 "providerInvoiceId": "05e483cb-6813-4e8e-8535-2d14c6d20b26",
I/flutter ( 9202): ║                 "amountHalala": 4900,
I/flutter ( 9202): ║                 "currency": "SAR",
I/flutter ( 9202): ║                 "expiresAt": null,
I/flutter ( 9202): ║                 "reused": false,
I/flutter ( 9202): ║                 "revisionHash": "c3e8c58fe5993112422e10b1fe5aebe6f49d33843e3dbae5172fac20ee50b728"
I/flutter ( 9202): ║                 "createdAt": "2026-05-30T16:03:04.853Z",
I/flutter ( 9202): ║                 "paidAt": "2026-05-30T16:03:24.088Z",
I/flutter ( 9202): ║                 "extraPremiumCount": 2,
I/flutter ( 9202): ║                 "statusLabel": "مدفوع"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "planningState": "confirmed",
I/flutter ( 9202): ║             "planningVersion": "subscription_day_planning.v1",
I/flutter ( 9202): ║             "planning": {
I/flutter ( 9202): ║                 "version": "subscription_day_planning.v1",
I/flutter ( 9202): ║                 "state": "confirmed",
I/flutter ( 9202): ║                 "requiredMealCount": 1,
I/flutter ( 9202): ║                 "selectedBaseMealCount": 0,
I/flutter ( 9202): ║                 "selectedPremiumMealCount": 2,
I/flutter ( 9202): ║                 "selectedTotalMealCount": 2,
I/flutter ( 9202): ║                 "isThresholdMet": true,
I/flutter ( 9202): ║                 "isExactCountSatisfied": true,
I/flutter ( 9202): ║                 "isBalanceExceeded": false,
I/flutter ( 9202): ║                 "maxConsumableMealsNow": 7,
I/flutter ( 9202): ║                 "confirmedAt": "2026-05-30T16:03:49.555Z",
I/flutter ( 9202): ║                 "confirmedByRole": "client",
I/flutter ( 9202): ║                 "baseMealSlots": [
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "slotKey": "slot_1",
I/flutter ( 9202): ║                         "mealId": "6a19bd7b0f6ac4f0db96ecc6",
I/flutter ( 9202): ║                         "assignmentSource": "client",
I/flutter ( 9202): ║                         "assignedAt": "2026-05-30T16:03:49.552Z",
I/flutter ( 9202): ║                         "_id": "6a1b0a658e060b5e369a919c"
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "slotKey": "slot_2",
I/flutter ( 9202): ║                         "mealId": "6a19c0176864369ee0a8c0b9",
I/flutter ( 9202): ║                         "assignmentSource": "client",
I/flutter ( 9202): ║                         "assignedAt": "2026-05-30T16:03:49.552Z",
I/flutter ( 9202): ║                         "_id": "6a1b0a658e060b5e369a919d"
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                 ],
I/flutter ( 9202): ║                 "premiumOverageCount": 0,
I/flutter ( 9202): ║                 "premiumOverageStatus": null,
I/flutter ( 9202): ║                 "stateLabel": "مؤكد",
I/flutter ( 9202): ║                 "premiumOverageStatusLabel": ""
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "statusLabel": "مفتوح",
I/flutter ( 9202): ║             "premiumSummary": {
I/flutter ( 9202): ║                 "selectedCount": 2,
I/flutter ( 9202): ║                 "coveredByBalanceCount": 0,
I/flutter ( 9202): ║                 "pendingPaymentCount": 0,
I/flutter ( 9202): ║                 "paidExtraCount": 2,
I/flutter ( 9202): ║                 "totalExtraHalala": 0,
I/flutter ( 9202): ║                 "currency": "SAR"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "paymentRequirement": {
I/flutter ( 9202): ║                 "status": "satisfied",
I/flutter ( 9202): ║                 "requiresPayment": false,
I/flutter ( 9202): ║                 "pricingStatus": "not_required",
I/flutter ( 9202): ║                 "blockingReason": null,
I/flutter ( 9202): ║                 "canCreatePayment": false,
I/flutter ( 9202): ║                 "premiumSelectedCount": 2,
I/flutter ( 9202): ║                 "premiumPendingPaymentCount": 0,
I/flutter ( 9202): ║                 "addonSelectedCount": 2,
I/flutter ( 9202): ║                 "addonPendingPaymentCount": 0,
I/flutter ( 9202): ║                 "pendingAmountHalala": 0,
I/flutter ( 9202): ║                 "amountHalala": 0,
I/flutter ( 9202): ║                 "currency": "SAR",
I/flutter ( 9202): ║                 "pricingStatusLabel": "غير مطلوب",
I/flutter ( 9202): ║                 "blockingReasonLabel": null
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "commercialState": "confirmed",
I/flutter ( 9202): ║             "isFulfillable": true,
I/flutter ( 9202): ║             "canBePrepared": true,
I/flutter ( 9202): ║             "pickupPrepared": false,
I/flutter ( 9202): ║             "pickupPreparationFlowStatus": "waiting_for_prepare",
I/flutter ( 9202): ║             "fulfillmentMode": "customer_selected",
I/flutter ( 9202): ║             "consumptionState": "pending_day",
I/flutter ( 9202): ║             "requiredMealCount": 1,
I/flutter ( 9202): ║             "specifiedMealCount": 1,
I/flutter ( 9202): ║             "unspecifiedMealCount": 0,
I/flutter ( 9202): ║             "hasCustomerSelections": true,
I/flutter ( 9202): ║             "requiresMealTypeKnowledge": true,
I/flutter ( 9202): ║             "mealTypesSpecified": true,
I/flutter ( 9202): ║             "planningReady": true,
I/flutter ( 9202): ║             "fulfillmentReady": false,
I/flutter ( 9202): ║             "deliveryMode": "pickup",
I/flutter ( 9202): ║             "pickupLocation": null,
I/flutter ( 9202): ║             "deliveryAddress": null,
I/flutter ( 9202): ║             "deliveryWindow": null,
I/flutter ( 9202): ║             "deliverySlot": {type: pickup, slotId: , window: , label: },
I/flutter ( 9202): ║             "fulfillmentSummary": {
I/flutter ( 9202): ║                 "mode": "pickup",
I/flutter ( 9202): ║                 "title": "الاستلام من الفرع",
I/flutter ( 9202): ║                 "status": "open",
I/flutter ( 9202): ║                 "statusLabel": "مفتوح",
I/flutter ( 9202): ║                 "message": "تفاصيل الفرع غير متاحة حاليا",
I/flutter ( 9202): ║                 "nextAction": "",
I/flutter ( 9202): ║                 "isEditable": false,
I/flutter ( 9202): ║                 "isFulfillable": true,
I/flutter ( 9202): ║                 "planningReady": true,
I/flutter ( 9202): ║                 "fulfillmentReady": false,
I/flutter ( 9202): ║                 "lockedReason": "PICKUP_LOCATION_MISSING",
I/flutter ( 9202): ║                 "lockedMessage": "تفاصيل الفرع غير متاحة حاليا"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "lockedReason": "PICKUP_LOCATION_MISSING",
I/flutter ( 9202): ║             "lockedMessage": "تفاصيل الفرع غير متاحة حاليا",
I/flutter ( 9202): ║             "mealBalance": {
I/flutter ( 9202): ║                 "totalMeals": 7,
I/flutter ( 9202): ║                 "remainingMeals": 7,
I/flutter ( 9202): ║                 "consumedMeals": 0,
I/flutter ( 9202): ║                 "canConsumeNow": true,
I/flutter ( 9202): ║                 "maxConsumableMealsNow": 7,
I/flutter ( 9202): ║                 "mealBalancePolicy": "TOTAL_BALANCE_WITHIN_VALIDITY",
I/flutter ( 9202): ║                 "dailyMealLimitEnforced": false,
I/flutter ( 9202): ║                 "dailyMealsDefault": 1
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "rules": {
I/flutter ( 9202): ║                 "version": "meal_planner_rules.v3",
I/flutter ( 9202): ║                 "beef": {proteinFamilyKey: beef, maxSlotsPerDay: 1},
I/flutter ( 9202): ║                 "standardCarbs": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
I/flutter ( 9202): ║                 "premiumCarbs": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
I/flutter ( 9202): ║                 "proteinGroups": [
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "chicken",
I/flutter ( 9202): ║                         "name": {ar: دجاج, en: Chicken},
I/flutter ( 9202): ║                         "sortOrder": 10
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "beef",
I/flutter ( 9202): ║                         "name": {ar: لحم, en: Beef},
I/flutter ( 9202): ║                         "sortOrder": 20
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "fish",
I/flutter ( 9202): ║                         "name": {ar: أسماك, en: Fish},
I/flutter ( 9202): ║                         "sortOrder": 30
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "eggs",
I/flutter ( 9202): ║                         "name": {ar: بيض, en: Eggs},
I/flutter ( 9202): ║                         "sortOrder": 40
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "premium",
I/flutter ( 9202): ║                         "name": {ar: بريميوم, en: Premium},
I/flutter ( 9202): ║                         "sortOrder": 50
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "other",
I/flutter ( 9202): ║                         "name": {ar: أخرى, en: Other},
I/flutter ( 9202): ║                         "sortOrder": 60
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                 ],
I/flutter ( 9202): ║                 "premiumLargeSalad": {
I/flutter ( 9202): ║                     "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                     "presetKey": "large_salad",
I/flutter ( 9202): ║                     "extraFeeHalala": 2900,
I/flutter ( 9202): ║                     "groups": [
I/flutter ( 9202): ║                      {key: leafy_greens, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                      {key: vegetables, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                      {key: protein, minSelect: 1, maxSelect: 1},
I/flutter ( 9202): ║                      {key: cheese_nuts, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                      {key: fruits, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                      {key: sauce, minSelect: 1, maxSelect: 1}
I/flutter ( 9202): ║                     ]
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "commercialStateLabel": "مؤكد"
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ GET
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/6a19c41387785860771917e7/days/2026-06-02
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
E/libEGL  ( 9202): called unimplemented OpenGL ES API
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 572 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/subscriptions/6a19c41387785860771917e7/days/2026-06-02
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:03:50 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef89e2aee708c-MRS]
I/flutter ( 9202): ╟ etag: [W/"2305-wuedt2KUkO2G77bCckO0uMN2Z0s"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ rndr-id: [35f9d10f-1ab4-4ba6]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "_id": "6a19c41387785860771917f2",
I/flutter ( 9202): ║             "subscriptionId": "6a19c41387785860771917e7",
I/flutter ( 9202): ║             "date": "2026-06-02",
I/flutter ( 9202): ║             "status": "open",
I/flutter ( 9202): ║             "selections": [6a19bd7b0f6ac4f0db96ecc6, 6a19c0176864369ee0a8c0b9]
I/flutter ( 9202): ║             "skippedByUser": false,
I/flutter ( 9202): ║             "skipCompensated": false,
I/flutter ( 9202): ║             "assignedByKitchen": false,
I/flutter ( 9202): ║             "pickupRequested": false,
I/flutter ( 9202): ║             "pickupRequestedAt": null,
I/flutter ( 9202): ║             "pickupPreparationStartedAt": null,
I/flutter ( 9202): ║             "pickupPreparedAt": null,
I/flutter ( 9202): ║             "pickupCode": null,
I/flutter ( 9202): ║             "pickupCodeIssuedAt": null,
I/flutter ( 9202): ║             "pickupVerifiedAt": null,
I/flutter ( 9202): ║             "pickupVerifiedByDashboardUserId": null,
I/flutter ( 9202): ║             "pickupNoShowAt": null,
I/flutter ( 9202): ║             "dayEndConsumptionReason": null,
I/flutter ( 9202): ║             "autoSettled": false,
I/flutter ( 9202): ║             "settledAt": null,
I/flutter ( 9202): ║             "settlementReason": null,
I/flutter ( 9202): ║             "settledBy": null,
I/flutter ( 9202): ║             "cancellationReason": null,
I/flutter ( 9202): ║             "cancellationCategory": null,
I/flutter ( 9202): ║             "cancellationNote": null,
I/flutter ( 9202): ║             "canceledBy": null,
I/flutter ( 9202): ║             "canceledAt": null,
I/flutter ( 9202): ║             "creditsDeducted": false,
I/flutter ( 9202): ║             "autoLocked": false,
I/flutter ( 9202): ║             "plannerRevisionHash": "c3e8c58fe5993112422e10b1fe5aebe6f49d33843e3dbae5172fac20ee50b728",
I/flutter ( 9202): ║             "mealReminderSentAt": null,
I/flutter ( 9202): ║             "addonSelections": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "addonId": "6a19c03c6864369ee0a8c203",
I/flutter ( 9202): ║                     "name": "Classic Green",
I/flutter ( 9202): ║                     "category": "juice",
I/flutter ( 9202): ║                     "source": "subscription",
I/flutter ( 9202): ║                     "priceHalala": 0,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "paymentId": null,
I/flutter ( 9202): ║                     "consumedAt": "2026-05-30T16:03:02.618Z",
I/flutter ( 9202): ║                     "_id": "6a1b0a368e060b5e369a90b2"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "addonId": "6a19c03c6864369ee0a8c202",
I/flutter ( 9202): ║                     "name": "Berry Blast",
I/flutter ( 9202): ║                     "category": "juice",
I/flutter ( 9202): ║                     "source": "paid",
I/flutter ( 9202): ║                     "priceHalala": 1100,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "paymentId": "6a1b0a388e060b5e369a90ed",
I/flutter ( 9202): ║                     "consumedAt": "2026-05-30T16:03:02.618Z",
I/flutter ( 9202): ║                     "_id": "6a1b0a368e060b5e369a90b3"
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "premiumUpgradeSelections": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "baseSlotKey": "slot_1",
I/flutter ( 9202): ║                     "proteinId": "6a19bd7b0f6ac4f0db96ecc6",
I/flutter ( 9202): ║                     "premiumKey": "shrimp",
I/flutter ( 9202): ║                     "unitExtraFeeHalala": 2000,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "premiumSource": "paid_extra",
I/flutter ( 9202): ║                     "consumedAt": "2026-05-30T16:03:49.554Z",
I/flutter ( 9202): ║                     "_id": "6a1b0a658e060b5e369a919a"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "baseSlotKey": "slot_2",
I/flutter ( 9202): ║                     "proteinId": "6a19c0176864369ee0a8c0b9",
I/flutter ( 9202): ║                     "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                     "unitExtraFeeHalala": 2900,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "premiumSource": "paid_extra",
I/flutter ( 9202): ║                     "consumedAt": "2026-05-30T16:03:49.554Z",
I/flutter ( 9202): ║                     "_id": "6a1b0a658e060b5e369a919b"
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "operationAuditLog": []
I/flutter ( 9202): ║             "customSalads": []
I/flutter ( 9202): ║             "customMeals": []
I/flutter ( 9202): ║             "baseMealSlots": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "slotKey": "slot_1",
I/flutter ( 9202): ║                     "mealId": "6a19bd7b0f6ac4f0db96ecc6",
I/flutter ( 9202): ║                     "assignmentSource": "client",
I/flutter ( 9202): ║                     "assignedAt": "2026-05-30T16:03:49.552Z",
I/flutter ( 9202): ║                     "_id": "6a1b0a658e060b5e369a919c"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "slotKey": "slot_2",
I/flutter ( 9202): ║                     "mealId": "6a19c0176864369ee0a8c0b9",
I/flutter ( 9202): ║                     "assignmentSource": "client",
I/flutter ( 9202): ║                     "assignedAt": "2026-05-30T16:03:49.552Z",
I/flutter ( 9202): ║                     "_id": "6a1b0a658e060b5e369a919d"
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "__v": 3,
I/flutter ( 9202): ║             "createdAt": "2026-05-29T16:51:31.803Z",
I/flutter ( 9202): ║             "updatedAt": "2026-05-30T16:03:49.557Z",
I/flutter ( 9202): ║             "materializedMeals": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "slotKey": "slot_1",
I/flutter ( 9202): ║                     "selectionType": "premium_meal",
I/flutter ( 9202): ║                     "sandwichId": null,
I/flutter ( 9202): ║                     "proteinId": "6a19bd7b0f6ac4f0db96ecc6",
I/flutter ( 9202): ║                     "carbId": "6a19c0196864369ee0a8c0c2",
I/flutter ( 9202): ║                     "isPremium": true,
I/flutter ( 9202): ║                     "premiumSource": "paid_extra",
I/flutter ( 9202): ║                     "premiumKey": "shrimp",
I/flutter ( 9202): ║                     "premiumExtraFeeHalala": 2000,
I/flutter ( 9202): ║                     "comboKey": "6a19bd7b0f6ac4f0db96ecc6:6a19c0196864369ee0a8c0c2"
I/flutter ( 9202): ║                     "operationalSku": "6a19bd7b0f6ac4f0db96ecc6:6a19c0196864369ee0a8c0c2"
I/flutter ( 9202): ║                     "generatedAt": "2026-05-30T16:03:49.552Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "slotKey": "slot_2",
I/flutter ( 9202): ║                     "selectionType": "premium_large_salad",
I/flutter ( 9202): ║                     "sandwichId": null,
I/flutter ( 9202): ║                     "proteinId": "6a19c0176864369ee0a8c0b9",
I/flutter ( 9202): ║                     "carbId": null,
I/flutter ( 9202): ║                     "isPremium": true,
I/flutter ( 9202): ║                     "premiumSource": "paid_extra",
I/flutter ( 9202): ║                     "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                     "premiumExtraFeeHalala": 2900,
I/flutter ( 9202): ║                     "comboKey": null,
I/flutter ( 9202): ║                     "operationalSku": "salad:premium_large_salad",
I/flutter ( 9202): ║                     "generatedAt": "2026-05-30T16:03:49.552Z"
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "mealSlots": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "slotIndex": 1,
I/flutter ( 9202): ║                     "slotKey": "slot_1",
I/flutter ( 9202): ║                     "status": "complete",
I/flutter ( 9202): ║                     "selectionType": "premium_meal",
I/flutter ( 9202): ║                     "proteinId": "6a19bd7b0f6ac4f0db96ecc6",
I/flutter ( 9202): ║                     "carbs": [{carbId: 6a19c0196864369ee0a8c0c2, grams: 150}]
I/flutter ( 9202): ║                     "sandwichId": null,
I/flutter ( 9202): ║                     "salad": null,
I/flutter ( 9202): ║                     "isPremium": true,
I/flutter ( 9202): ║                     "premiumKey": "shrimp",
I/flutter ( 9202): ║                     "premiumSource": "paid_extra",
I/flutter ( 9202): ║                     "premiumExtraFeeHalala": 2000
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "slotIndex": 2,
I/flutter ( 9202): ║                     "slotKey": "slot_2",
I/flutter ( 9202): ║                     "status": "complete",
I/flutter ( 9202): ║                     "selectionType": "premium_large_salad",
I/flutter ( 9202): ║                     "proteinId": "6a19c0176864369ee0a8c0b9",
I/flutter ( 9202): ║                     "carbs": []
I/flutter ( 9202): ║                     "sandwichId": null,
I/flutter ( 9202): ║                     "salad": {
I/flutter ( 9202): ║                         "presetKey": "premium_large_salad",
I/flutter ( 9202): ║                         "groups": {
I/flutter ( 9202): ║                             "leafy_greens": []
I/flutter ( 9202): ║                             "vegetables": []
I/flutter ( 9202): ║                             "protein": [6a19c0176864369ee0a8c0b9]
I/flutter ( 9202): ║                             "cheese_nuts": []
I/flutter ( 9202): ║                             "fruits": []
I/flutter ( 9202): ║                             "sauce": [6a19c01c6864369ee0a8c0da]
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "isPremium": true,
I/flutter ( 9202): ║                     "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                     "premiumSource": "paid_extra",
I/flutter ( 9202): ║                     "premiumExtraFeeHalala": 2900
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "plannerMeta": {
I/flutter ( 9202): ║                 "requiredSlotCount": 1,
I/flutter ( 9202): ║                 "emptySlotCount": 0,
I/flutter ( 9202): ║                 "partialSlotCount": 0,
I/flutter ( 9202): ║                 "completeSlotCount": 2,
I/flutter ( 9202): ║                 "beefSlotCount": 0,
I/flutter ( 9202): ║                 "premiumSlotCount": 2,
I/flutter ( 9202): ║                 "premiumCoveredByBalanceCount": 0,
I/flutter ( 9202): ║                 "premiumPendingPaymentCount": 0,
I/flutter ( 9202): ║                 "premiumPaidExtraCount": 2,
I/flutter ( 9202): ║                 "premiumTotalHalala": 0,
I/flutter ( 9202): ║                 "isDraftValid": true,
I/flutter ( 9202): ║                 "isConfirmable": true,
I/flutter ( 9202): ║                 "lastEditedAt": "2026-05-30T16:03:49.551Z",
I/flutter ( 9202): ║                 "confirmedAt": "2026-05-30T16:03:49.555Z",
I/flutter ( 9202): ║                 "confirmedByRole": "client"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "plannerState": "confirmed",
I/flutter ( 9202): ║             "plannerVersion": "v1",
I/flutter ( 9202): ║             "premiumExtraPayment": {
I/flutter ( 9202): ║                 "status": "paid",
I/flutter ( 9202): ║                 "paymentId": "6a1b0a388e060b5e369a90ed",
I/flutter ( 9202): ║                 "providerInvoiceId": "05e483cb-6813-4e8e-8535-2d14c6d20b26",
I/flutter ( 9202): ║                 "amountHalala": 4900,
I/flutter ( 9202): ║                 "currency": "SAR",
I/flutter ( 9202): ║                 "expiresAt": null,
I/flutter ( 9202): ║                 "reused": false,
I/flutter ( 9202): ║                 "revisionHash": "c3e8c58fe5993112422e10b1fe5aebe6f49d33843e3dbae5172fac20ee50b728"
I/flutter ( 9202): ║                 "createdAt": "2026-05-30T16:03:04.853Z",
I/flutter ( 9202): ║                 "paidAt": "2026-05-30T16:03:24.088Z",
I/flutter ( 9202): ║                 "extraPremiumCount": 2,
I/flutter ( 9202): ║                 "statusLabel": "مدفوع"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "planningMeta": {
I/flutter ( 9202): ║                 "requiredMealCount": 1,
I/flutter ( 9202): ║                 "selectedBaseMealCount": 0,
I/flutter ( 9202): ║                 "selectedPremiumMealCount": 2,
I/flutter ( 9202): ║                 "selectedTotalMealCount": 2,
I/flutter ( 9202): ║                 "isExactCountSatisfied": true,
I/flutter ( 9202): ║                 "lastEditedAt": "2026-05-30T16:03:02.822Z",
I/flutter ( 9202): ║                 "confirmedAt": "2026-05-30T16:03:49.555Z",
I/flutter ( 9202): ║                 "confirmedByRole": "client"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "planningState": "confirmed",
I/flutter ( 9202): ║             "planningVersion": "subscription_day_planning.v1",
I/flutter ( 9202): ║             "planning": {
I/flutter ( 9202): ║                 "version": "subscription_day_planning.v1",
I/flutter ( 9202): ║                 "state": "confirmed",
I/flutter ( 9202): ║                 "requiredMealCount": 1,
I/flutter ( 9202): ║                 "selectedBaseMealCount": 0,
I/flutter ( 9202): ║                 "selectedPremiumMealCount": 2,
I/flutter ( 9202): ║                 "selectedTotalMealCount": 2,
I/flutter ( 9202): ║                 "isThresholdMet": true,
I/flutter ( 9202): ║                 "isExactCountSatisfied": true,
I/flutter ( 9202): ║                 "isBalanceExceeded": false,
I/flutter ( 9202): ║                 "maxConsumableMealsNow": 7,
I/flutter ( 9202): ║                 "confirmedAt": "2026-05-30T16:03:49.555Z",
I/flutter ( 9202): ║                 "confirmedByRole": "client",
I/flutter ( 9202): ║                 "baseMealSlots": [
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "slotKey": "slot_1",
I/flutter ( 9202): ║                         "mealId": "6a19bd7b0f6ac4f0db96ecc6",
I/flutter ( 9202): ║                         "assignmentSource": "client",
I/flutter ( 9202): ║                         "assignedAt": "2026-05-30T16:03:49.552Z",
I/flutter ( 9202): ║                         "_id": "6a1b0a658e060b5e369a919c"
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "slotKey": "slot_2",
I/flutter ( 9202): ║                         "mealId": "6a19c0176864369ee0a8c0b9",
I/flutter ( 9202): ║                         "assignmentSource": "client",
I/flutter ( 9202): ║                         "assignedAt": "2026-05-30T16:03:49.552Z",
I/flutter ( 9202): ║                         "_id": "6a1b0a658e060b5e369a919d"
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                 ],
I/flutter ( 9202): ║                 "premiumOverageCount": 0,
I/flutter ( 9202): ║                 "premiumOverageStatus": null,
I/flutter ( 9202): ║                 "stateLabel": "مؤكد",
I/flutter ( 9202): ║                 "premiumOverageStatusLabel": ""
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "statusLabel": "مفتوح",
I/flutter ( 9202): ║             "premiumSummary": {
I/flutter ( 9202): ║                 "selectedCount": 2,
I/flutter ( 9202): ║                 "coveredByBalanceCount": 0,
I/flutter ( 9202): ║                 "pendingPaymentCount": 0,
I/flutter ( 9202): ║                 "paidExtraCount": 2,
I/flutter ( 9202): ║                 "totalExtraHalala": 0,
I/flutter ( 9202): ║                 "currency": "SAR"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "paymentRequirement": {
I/flutter ( 9202): ║                 "status": "satisfied",
I/flutter ( 9202): ║                 "requiresPayment": false,
I/flutter ( 9202): ║                 "pricingStatus": "not_required",
I/flutter ( 9202): ║                 "blockingReason": null,
I/flutter ( 9202): ║                 "canCreatePayment": false,
I/flutter ( 9202): ║                 "premiumSelectedCount": 2,
I/flutter ( 9202): ║                 "premiumPendingPaymentCount": 0,
I/flutter ( 9202): ║                 "addonSelectedCount": 2,
I/flutter ( 9202): ║                 "addonPendingPaymentCount": 0,
I/flutter ( 9202): ║                 "pendingAmountHalala": 0,
I/flutter ( 9202): ║                 "amountHalala": 0,
I/flutter ( 9202): ║                 "currency": "SAR",
I/flutter ( 9202): ║                 "pricingStatusLabel": "غير مطلوب",
I/flutter ( 9202): ║                 "blockingReasonLabel": null
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "commercialState": "confirmed",
I/flutter ( 9202): ║             "isFulfillable": true,
I/flutter ( 9202): ║             "canBePrepared": true,
I/flutter ( 9202): ║             "pickupPrepared": false,
I/flutter ( 9202): ║             "pickupPreparationFlowStatus": "waiting_for_prepare",
I/flutter ( 9202): ║             "fulfillmentMode": "customer_selected",
I/flutter ( 9202): ║             "consumptionState": "pending_day",
I/flutter ( 9202): ║             "requiredMealCount": 1,
I/flutter ( 9202): ║             "specifiedMealCount": 1,
I/flutter ( 9202): ║             "unspecifiedMealCount": 0,
I/flutter ( 9202): ║             "hasCustomerSelections": true,
I/flutter ( 9202): ║             "requiresMealTypeKnowledge": true,
I/flutter ( 9202): ║             "mealTypesSpecified": true,
I/flutter ( 9202): ║             "planningReady": true,
I/flutter ( 9202): ║             "fulfillmentReady": false,
I/flutter ( 9202): ║             "deliveryMode": "pickup",
I/flutter ( 9202): ║             "pickupLocation": {
I/flutter ( 9202): ║                 "id": "main",
I/flutter ( 9202): ║                 "name": "[object Object]",
I/flutter ( 9202): ║                 "address": "[object Object]",
I/flutter ( 9202): ║                 "phone": "",
I/flutter ( 9202): ║                 "city": "",
I/flutter ( 9202): ║                 "district": "",
I/flutter ( 9202): ║                 "workingHours": "",
I/flutter ( 9202): ║                 "latitude": null,
I/flutter ( 9202): ║                 "longitude": null,
I/flutter ( 9202): ║                 "mapUrl": null
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "deliveryAddress": null,
I/flutter ( 9202): ║             "deliveryWindow": null,
I/flutter ( 9202): ║             "deliverySlot": {type: pickup, slotId: , window: , label: },
I/flutter ( 9202): ║             "fulfillmentSummary": {
I/flutter ( 9202): ║                 "mode": "pickup",
I/flutter ( 9202): ║                 "title": "الاستلام من الفرع",
I/flutter ( 9202): ║                 "status": "open",
I/flutter ( 9202): ║                 "statusLabel": "مفتوح",
I/flutter ( 9202): ║                 "message": "راجع اختيارات اليوم واطلب التجهيز عندما تكون جاهزا",
I/flutter ( 9202): ║                 "nextAction": "",
I/flutter ( 9202): ║                 "isEditable": true,
I/flutter ( 9202): ║                 "isFulfillable": true,
I/flutter ( 9202): ║                 "planningReady": true,
I/flutter ( 9202): ║                 "fulfillmentReady": false,
I/flutter ( 9202): ║                 "lockedReason": null,
I/flutter ( 9202): ║                 "lockedMessage": null
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "lockedReason": null,
I/flutter ( 9202): ║             "lockedMessage": null,
I/flutter ( 9202): ║             "mealBalance": {
I/flutter ( 9202): ║                 "totalMeals": 7,
I/flutter ( 9202): ║                 "remainingMeals": 7,
I/flutter ( 9202): ║                 "consumedMeals": 0,
I/flutter ( 9202): ║                 "canConsumeNow": true,
I/flutter ( 9202): ║                 "maxConsumableMealsNow": 7,
I/flutter ( 9202): ║                 "mealBalancePolicy": "TOTAL_BALANCE_WITHIN_VALIDITY",
I/flutter ( 9202): ║                 "dailyMealLimitEnforced": false,
I/flutter ( 9202): ║                 "dailyMealsDefault": 1
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "rules": {
I/flutter ( 9202): ║                 "version": "meal_planner_rules.v3",
I/flutter ( 9202): ║                 "beef": {proteinFamilyKey: beef, maxSlotsPerDay: 1},
I/flutter ( 9202): ║                 "standardCarbs": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
I/flutter ( 9202): ║                 "premiumCarbs": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
I/flutter ( 9202): ║                 "proteinGroups": [
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "chicken",
I/flutter ( 9202): ║                         "name": {ar: دجاج, en: Chicken},
I/flutter ( 9202): ║                         "sortOrder": 10
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "beef",
I/flutter ( 9202): ║                         "name": {ar: لحم, en: Beef},
I/flutter ( 9202): ║                         "sortOrder": 20
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "fish",
I/flutter ( 9202): ║                         "name": {ar: أسماك, en: Fish},
I/flutter ( 9202): ║                         "sortOrder": 30
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "eggs",
I/flutter ( 9202): ║                         "name": {ar: بيض, en: Eggs},
I/flutter ( 9202): ║                         "sortOrder": 40
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "premium",
I/flutter ( 9202): ║                         "name": {ar: بريميوم, en: Premium},
I/flutter ( 9202): ║                         "sortOrder": 50
I/flutter ( 9202): ║                    },
I/flutter ( 9202): ║                    {
I/flutter ( 9202): ║                         "key": "other",
I/flutter ( 9202): ║                         "name": {ar: أخرى, en: Other},
I/flutter ( 9202): ║                         "sortOrder": 60
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                 ],
I/flutter ( 9202): ║                 "premiumLargeSalad": {
I/flutter ( 9202): ║                     "premiumKey": "premium_large_salad",
I/flutter ( 9202): ║                     "presetKey": "large_salad",
I/flutter ( 9202): ║                     "extraFeeHalala": 2900,
I/flutter ( 9202): ║                     "groups": [
I/flutter ( 9202): ║                      {key: leafy_greens, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                      {key: vegetables, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                      {key: protein, minSelect: 1, maxSelect: 1},
I/flutter ( 9202): ║                      {key: cheese_nuts, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                      {key: fruits, minSelect: 0, maxSelect: 99},
I/flutter ( 9202): ║                      {key: sauce, minSelect: 1, maxSelect: 1}
I/flutter ( 9202): ║                     ]
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "commercialStateLabel": "مؤكد"
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): onChange -- MealPlannerBloc, Change { currentState: MealPlannerLoaded([Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel'], Instance of 'MealPlannerMenuModel', [AddOnModel(6a19c03c6864369ee0a8c203, كلاسيك جرين, juice, , , SAR, 1100, 11.0, 11 SAR, item, flat_once, one_time, item, AddOnUiModel(كلاسيك جرين, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03c6864369ee0a8c202, بيري بلاست, juice, , , SAR, 1100, 11.0, 11 SAR, item, flat_once, one_time, item, AddOnUiModel(بيري بلاست, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03b6864369ee0a8c201, براونيز داكن, snack, , , SAR, 1300, 13.0, 13 SAR, item, flat_once, one_time, item, AddOnUiModel(براونيز داكن, , أضف, إضافة مرة واحدة)), AddOnModel(6a19c03b6864369ee0a8c200, تشيز كيك بالتوت, sn
E/flutter ( 9202): [ERROR:flutter/runtime/dart_vm_initializer.cc(40)] Unhandled Exception: Looking up a deactivated widget's ancestor is unsafe.
E/flutter ( 9202): At this point the state of the widget's element tree is no longer stable.
E/flutter ( 9202): To safely refer to a widget's ancestor in its dispose() method, save a reference to the ancestor by calling dependOnInheritedWidgetOfExactType() in the widget's didChangeDependencies() method.
E/flutter ( 9202): #0      Element._debugCheckStateIsActiveForAncestorLookup.<anonymous closure> (package:flutter/src/widgets/framework.dart:4963:9)
E/flutter ( 9202): #1      Element._debugCheckStateIsActiveForAncestorLookup (package:flutter/src/widgets/framework.dart:4977:6)
E/flutter ( 9202): #2      Element.findAncestorStateOfType (package:flutter/src/widgets/framework.dart:5048:12)
E/flutter ( 9202): #3      ScaffoldMessengerState._isRoot (package:flutter/src/material/scaffold.dart:252:52)
E/flutter ( 9202): #4      ScaffoldMessengerState._updateScaffolds (package:flutter/src/material/scaffold.dart:242:11)
E/flutter ( 9202): #5      ScaffoldMessengerState.showSnackBar (package:flutter/src/material/scaffold.dart:359:7)
E/flutter ( 9202): #6      TimeLineScreen._buildDayItem.<anonymous closure> (package:basic_diet/presentation/plans/timeline/time_line_screen.dart:302:41)
E/flutter ( 9202): <asynchronous suspension>
E/flutter ( 9202):

======== Exception caught by animation library =====================================================
The following assertion was thrown while notifying status listeners for AnimationController:
Looking up a deactivated widget's ancestor is unsafe.

At this point the state of the widget's element tree is no longer stable.

To safely refer to a widget's ancestor in its dispose() method, save a reference to the ancestor by calling dependOnInheritedWidgetOfExactType() in the widget's didChangeDependencies() method.

When the exception was thrown, this was the stack:
#0      Element._debugCheckStateIsActiveForAncestorLookup.<anonymous closure> (package:flutter/src/widgets/framework.dart:4963:9)
#1      Element._debugCheckStateIsActiveForAncestorLookup (package:flutter/src/widgets/framework.dart:4977:6)
#2      Element.findAncestorStateOfType (package:flutter/src/widgets/framework.dart:5048:12)
#3      ScaffoldMessengerState._isRoot (package:flutter/src/material/scaffold.dart:252:52)
#4      ScaffoldMessengerState._updateScaffolds (package:flutter/src/material/scaffold.dart:242:11)
#5      ScaffoldMessengerState._handleSnackBarStatusChanged (package:flutter/src/material/scaffold.dart:421:9)
#6      AnimationLocalStatusListenersMixin.notifyStatusListeners (package:flutter/src/animation/listener_helpers.dart:243:19)
#7      AnimationController._checkStatusChanged (package:flutter/src/animation/animation_controller.dart:964:7)
#8      AnimationController._tick (package:flutter/src/animation/animation_controller.dart:982:5)
#9      Ticker._tick (package:flutter/src/scheduler/ticker.dart:277:12)
#10     SchedulerBinding._invokeFrameCallback (package:flutter/src/scheduler/binding.dart:1442:15)
#11     SchedulerBinding.handleBeginFrame.<anonymous closure> (package:flutter/src/scheduler/binding.dart:1273:11)
#12     _LinkedHashMapMixin.forEach (dart:_compact_hash:763:13)
#13     SchedulerBinding.handleBeginFrame (package:flutter/src/scheduler/binding.dart:1271:17)
#14     SchedulerBinding._handleBeginFrame (package:flutter/src/scheduler/binding.dart:1187:5)
#15     _invoke1 (dart:ui/hooks.dart:332:13)
#16     PlatformDispatcher._beginFrame (dart:ui/platform_dispatcher.dart:410:5)
#17     _beginFrame (dart:ui/hooks.dart:277:31)
The AnimationController notifying status listeners was: AnimationController#4bb4a(⏭ 1.000; paused; for SnackBar)
====================================================================================================
I/flutter ( 9202): onClose -- MealPlannerBloc
E/libEGL  ( 9202): called unimplemented OpenGL ES API

======== Exception caught by animation library =====================================================
The following assertion was thrown while notifying status listeners for AnimationController:
Looking up a deactivated widget's ancestor is unsafe.

At this point the state of the widget's element tree is no longer stable.

To safely refer to a widget's ancestor in its dispose() method, save a reference to the ancestor by calling dependOnInheritedWidgetOfExactType() in the widget's didChangeDependencies() method.

When the exception was thrown, this was the stack:
#0      Element._debugCheckStateIsActiveForAncestorLookup.<anonymous closure> (package:flutter/src/widgets/framework.dart:4963:9)
#1      Element._debugCheckStateIsActiveForAncestorLookup (package:flutter/src/widgets/framework.dart:4977:6)
#2      Element.findAncestorStateOfType (package:flutter/src/widgets/framework.dart:5048:12)
#3      ScaffoldMessengerState._isRoot (package:flutter/src/material/scaffold.dart:252:52)
#4      ScaffoldMessengerState._updateScaffolds (package:flutter/src/material/scaffold.dart:242:11)
#5      ScaffoldMessengerState._handleSnackBarStatusChanged (package:flutter/src/material/scaffold.dart:412:9)
#6      AnimationLocalStatusListenersMixin.notifyStatusListeners (package:flutter/src/animation/listener_helpers.dart:243:19)
#7      AnimationController._checkStatusChanged (package:flutter/src/animation/animation_controller.dart:964:7)
#8      AnimationController._tick (package:flutter/src/animation/animation_controller.dart:982:5)
#9      Ticker._tick (package:flutter/src/scheduler/ticker.dart:277:12)
#10     SchedulerBinding._invokeFrameCallback (package:flutter/src/scheduler/binding.dart:1442:15)
#11     SchedulerBinding.handleBeginFrame.<anonymous closure> (package:flutter/src/scheduler/binding.dart:1273:11)
#12     _LinkedHashMapMixin.forEach (dart:_compact_hash:763:13)
#13     SchedulerBinding.handleBeginFrame (package:flutter/src/scheduler/binding.dart:1271:17)
#14     SchedulerBinding._handleBeginFrame (package:flutter/src/scheduler/binding.dart:1187:5)
#15     _invoke1 (dart:ui/hooks.dart:332:13)
#16     PlatformDispatcher._beginFrame (dart:ui/platform_dispatcher.dart:410:5)
#17     _beginFrame (dart:ui/hooks.dart:277:31)
The AnimationController notifying status listeners was: AnimationController#4bb4a(⏮ 0.000; paused; for SnackBar)
====================================================================================================
I/flutter ( 9202): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingSuccess(Instance of 'OrderModel', Instance of 'OrderTimelineModel'), nextState: OrderTrackingRefreshing(Instance of 'OrderModel', Instance of 'OrderTimelineModel') }
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ GET
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 545 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:03:54 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef8b77c3c3d73-MRS]
I/flutter ( 9202): ╟ etag: [W/"1036-VS3kx2U23+609sfingsdoMMMtSk"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ rndr-id: [81160236-63f1-4194]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "id": "6a1b09cd8e060b5e369a8f61",
I/flutter ( 9202): ║             "orderId": "6a1b09cd8e060b5e369a8f61",
I/flutter ( 9202): ║             "orderNumber": "ORD-369A8F60",
I/flutter ( 9202): ║             "source": "one_time_order",
I/flutter ( 9202): ║             "status": "confirmed",
I/flutter ( 9202): ║             "paymentStatus": "paid",
I/flutter ( 9202): ║             "allowedActions": []
I/flutter ( 9202): ║             "timeline_endpoint": "/api/orders/6a1b09cd8e060b5e369a8f61/timeline",
I/flutter ( 9202): ║             "cancelled_by": null,
I/flutter ( 9202): ║             "cancellation_reason": null,
I/flutter ( 9202): ║             "cancellation_source": null,
I/flutter ( 9202): ║             "cancelled_at": null,
I/flutter ( 9202): ║             "expiresAt": null,
I/flutter ( 9202): ║             "fulfillmentMethod": "pickup",
I/flutter ( 9202): ║             "fulfillmentDate": "2026-05-30",
I/flutter ( 9202): ║             "requestedFulfillmentDate": "2026-05-30",
I/flutter ( 9202): ║             "items": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "itemType": "basic_salad",
I/flutter ( 9202): ║                     "catalogRef": {model: MenuProduct, id: 6a19c0226864369ee0a8c0de},
I/flutter ( 9202): ║                     "name": {ar: سلطة بيسك, en: Basic Salad},
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 8700,
I/flutter ( 9202): ║                     "lineTotalHalala": 8700,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "selections": {
I/flutter ( 9202): ║                         "salad": {
I/flutter ( 9202): ║                             "ingredients": []
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                         "proteinName": {ar: , en: },
I/flutter ( 9202): ║                         "carbs": []
I/flutter ( 9202): ║                         "selectedOptions": [
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c0196864369ee0a8c0c4",
I/flutter ( 9202): ║                                 "groupName": {ar: ورقيات, en: Leafy Greens},
I/flutter ( 9202): ║                                 "optionId": "6a19c0196864369ee0a8c0c8",
I/flutter ( 9202): ║                                 "name": {ar: سبانخ, en: Spinach},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            },
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c0196864369ee0a8c0c4",
I/flutter ( 9202): ║                                 "groupName": {ar: ورقيات, en: Leafy Greens},
I/flutter ( 9202): ║                                 "optionId": "6a19c0196864369ee0a8c0c7",
I/flutter ( 9202): ║                                 "name": {ar: جرجير, en: Arugula},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            },
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c0166864369ee0a8c0b3",
I/flutter ( 9202): ║                                 "groupName": {ar: بروتينات, en: Proteins},
I/flutter ( 9202): ║                                 "optionId": "6a19c0176864369ee0a8c0b7",
I/flutter ( 9202): ║                                 "name": {ar: سمك, en: Fish},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            },
I/flutter ( 9202): ║                            {
I/flutter ( 9202): ║                                 "groupId": "6a19c01c6864369ee0a8c0d7",
I/flutter ( 9202): ║                                 "groupName": {ar: الصوصات, en: Sauces},
I/flutter ( 9202): ║                                 "optionId": "6a19c01c6864369ee0a8c0da",
I/flutter ( 9202): ║                                 "name": {ar: ليمون وخردل, en: Lemon Mustard},
I/flutter ( 9202): ║                                 "qty": 1,
I/flutter ( 9202): ║                                 "extraPriceHalala": 0,
I/flutter ( 9202): ║                                 "extraWeightGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 9202): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 9202): ║                                 "totalHalala": 0
I/flutter ( 9202): ║                            }
I/flutter ( 9202): ║                         ]
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "nutrition": {},
I/flutter ( 9202): ║                     "productSnapshot": {
I/flutter ( 9202): ║                         "productId": "6a19c0226864369ee0a8c0de",
I/flutter ( 9202): ║                         "categoryId": "6a19c0156864369ee0a8c0ab",
I/flutter ( 9202): ║                         "categoryName": {ar: اطلب على مزاجك, en: Custom Order},
I/flutter ( 9202): ║                         "key": "basic_salad",
I/flutter ( 9202): ║                         "name": {ar: سلطة بيسك, en: Basic Salad},
I/flutter ( 9202): ║                         "itemType": "basic_salad",
I/flutter ( 9202): ║                         "pricingModel": "per_100g",
I/flutter ( 9202): ║                         "priceHalala": 2900,
I/flutter ( 9202): ║                         "baseUnitGrams": 100,
I/flutter ( 9202): ║                         "weightGrams": 300
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "itemType": "dessert",
I/flutter ( 9202): ║                     "catalogRef": {model: MenuProduct, id: 6a19c0386864369ee0a8c1f3},
I/flutter ( 9202): ║                     "name": {ar: تشيز كيك بالتوت, en: Berry Cheesecake},
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 1900,
I/flutter ( 9202): ║                     "lineTotalHalala": 1900,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "selections": {
I/flutter ( 9202): ║                         "salad": {
I/flutter ( 9202): ║                             "ingredients": []
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                         "proteinName": {ar: , en: },
I/flutter ( 9202): ║                         "carbs": []
I/flutter ( 9202): ║                         "selectedOptions": []
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "nutrition": {},
I/flutter ( 9202): ║                     "productSnapshot": {
I/flutter ( 9202): ║                         "productId": "6a19c0386864369ee0a8c1f3",
I/flutter ( 9202): ║                         "categoryId": "6a19c0166864369ee0a8c0af",
I/flutter ( 9202): ║                         "categoryName": {ar: الحلويات, en: Desserts},
I/flutter ( 9202): ║                         "key": "berry_cheesecake",
I/flutter ( 9202): ║                         "name": {ar: تشيز كيك بالتوت, en: Berry Cheesecake},
I/flutter ( 9202): ║                         "itemType": "dessert",
I/flutter ( 9202): ║                         "pricingModel": "fixed",
I/flutter ( 9202): ║                         "priceHalala": 1900,
I/flutter ( 9202): ║                         "baseUnitGrams": 100,
I/flutter ( 9202): ║                         "weightGrams": 0
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "itemType": "dessert",
I/flutter ( 9202): ║                     "catalogRef": {model: MenuProduct, id: 6a19c0386864369ee0a8c1f4},
I/flutter ( 9202): ║                     "name": {ar: براونيز داكن, en: Dark Brownies},
I/flutter ( 9202): ║                     "qty": 1,
I/flutter ( 9202): ║                     "unitPriceHalala": 1300,
I/flutter ( 9202): ║                     "lineTotalHalala": 1300,
I/flutter ( 9202): ║                     "currency": "SAR",
I/flutter ( 9202): ║                     "selections": {
I/flutter ( 9202): ║                         "salad": {
I/flutter ( 9202): ║                             "ingredients": []
I/flutter ( 9202): ║                        }
I/flutter ( 9202): ║                         "proteinName": {ar: , en: },
I/flutter ( 9202): ║                         "carbs": []
I/flutter ( 9202): ║                         "selectedOptions": []
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                     "nutrition": {},
I/flutter ( 9202): ║                     "productSnapshot": {
I/flutter ( 9202): ║                         "productId": "6a19c0386864369ee0a8c1f4",
I/flutter ( 9202): ║                         "categoryId": "6a19c0166864369ee0a8c0af",
I/flutter ( 9202): ║                         "categoryName": {ar: الحلويات, en: Desserts},
I/flutter ( 9202): ║                         "key": "dark_brownies",
I/flutter ( 9202): ║                         "name": {ar: براونيز داكن, en: Dark Brownies},
I/flutter ( 9202): ║                         "itemType": "dessert",
I/flutter ( 9202): ║                         "pricingModel": "fixed",
I/flutter ( 9202): ║                         "priceHalala": 1300,
I/flutter ( 9202): ║                         "baseUnitGrams": 100,
I/flutter ( 9202): ║                         "weightGrams": 0
I/flutter ( 9202): ║                    }
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ],
I/flutter ( 9202): ║             "pricing": {
I/flutter ( 9202): ║                 "subtotalHalala": 11900,
I/flutter ( 9202): ║                 "deliveryFeeHalala": 0,
I/flutter ( 9202): ║                 "discountHalala": 0,
I/flutter ( 9202): ║                 "totalHalala": 11900,
I/flutter ( 9202): ║                 "vatPercentage": 16,
I/flutter ( 9202): ║                 "vatHalala": 1641,
I/flutter ( 9202): ║                 "vatIncluded": true,
I/flutter ( 9202): ║                 "currency": "SAR"
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "pickup": {
I/flutter ( 9202): ║                 "branchId": "main",
I/flutter ( 9202): ║                 "pickupWindow": "18:00-20:00",
I/flutter ( 9202): ║                 "branchName": {ar: , en: },
I/flutter ( 9202): ║                 "pickupCode": null,
I/flutter ( 9202): ║                 "pickupCodeIssuedAt": null,
I/flutter ( 9202): ║                 "pickupVerifiedAt": null
I/flutter ( 9202): ║            }
I/flutter ( 9202): ║             "createdAt": "2026-05-30T16:01:18.052Z",
I/flutter ( 9202): ║             "updatedAt": "2026-05-30T16:01:43.056Z"
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Request ║ GET
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61/timeline
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ accept: application/json
I/flutter ( 9202): ╟ content-type: application/json
I/flutter ( 9202): ╟ authorization:
I/flutter ( 9202): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTE5YzE3MGJiYzc0NTRhZjk1NzZmMW
I/flutter ( 9202): ║ MiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDE1NjUzMywiZXhwIjox
I/flutter ( 9202): ║ NzgwMTU3NDMzfQ.JGvDJKwC3QEg9MmVVrhoBsb6BXoIpyQ5IBCBME7YR5U
I/flutter ( 9202): ╟ Accept-Language: ar
I/flutter ( 9202): ╟ contentType: application/json
I/flutter ( 9202): ╟ responseType: ResponseType.json
I/flutter ( 9202): ╟ followRedirects: true
I/flutter ( 9202): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 9202): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202):
I/flutter ( 9202): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 388 ms
I/flutter ( 9202): ║  https://basicdiet145.onrender.com/api/orders/6a1b09cd8e060b5e369a8f61/timeline
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Headers
I/flutter ( 9202): ╟ x-dns-prefetch-control: [off]
I/flutter ( 9202): ╟ x-render-origin-server: [Render]
I/flutter ( 9202): ╟ date: [Sat, 30 May 2026 16:03:54 GMT]
I/flutter ( 9202): ╟ transfer-encoding: [chunked]
I/flutter ( 9202): ╟ origin-agent-cluster: [?1]
I/flutter ( 9202): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 9202): ╟ content-encoding: [gzip]
I/flutter ( 9202): ╟ server: [cloudflare]
I/flutter ( 9202): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 9202): ╟ cf-ray: [a03ef8b9ea963d73-MRS]
I/flutter ( 9202): ╟ etag: [W/"300-s0mUrNnipiNw5O9miV03dPeMkfU"]
I/flutter ( 9202): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 9202): ╟ content-security-policy:
I/flutter ( 9202): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 9202): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 9202): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 9202): ╟ connection: [keep-alive]
I/flutter ( 9202): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 9202): ╟ referrer-policy: [no-referrer]
I/flutter ( 9202): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 9202): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 9202): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 9202): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 9202): ╟ rndr-id: [032aa8a7-db42-4076]
I/flutter ( 9202): ╟ x-xss-protection: [0]
I/flutter ( 9202): ╟ access-control-allow-credentials: [true]
I/flutter ( 9202): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 9202): ╟ x-download-options: [noopen]
I/flutter ( 9202): ╟ x-content-type-options: [nosniff]
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): ╔ Body
I/flutter ( 9202): ║
I/flutter ( 9202): ║    {
I/flutter ( 9202): ║         "status": true,
I/flutter ( 9202): ║         "data": {
I/flutter ( 9202): ║             "order_id": "6a1b09cd8e060b5e369a8f61",
I/flutter ( 9202): ║             "current_status": "confirmed",
I/flutter ( 9202): ║             "timeline": [
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "order_created",
I/flutter ( 9202): ║                     "label_ar": "تم إنشاء الطلب",
I/flutter ( 9202): ║                     "label_en": "Order Created",
I/flutter ( 9202): ║                     "state": "completed",
I/flutter ( 9202): ║                     "time": "2026-05-30T16:01:18.052Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "payment_confirmed",
I/flutter ( 9202): ║                     "label_ar": "تم تأكيد الطلب",
I/flutter ( 9202): ║                     "label_en": "Payment Confirmed",
I/flutter ( 9202): ║                     "state": "active",
I/flutter ( 9202): ║                     "time": "2026-05-30T16:01:42.857Z"
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "preparing",
I/flutter ( 9202): ║                     "label_ar": "جاري تجهيز الطلب",
I/flutter ( 9202): ║                     "label_en": "Preparing",
I/flutter ( 9202): ║                     "state": "pending",
I/flutter ( 9202): ║                     "time": null
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "ready_for_pickup",
I/flutter ( 9202): ║                     "label_ar": "الطلب جاهز للاستلام",
I/flutter ( 9202): ║                     "label_en": "Ready for Pickup",
I/flutter ( 9202): ║                     "state": "pending",
I/flutter ( 9202): ║                     "time": null
I/flutter ( 9202): ║                },
I/flutter ( 9202): ║                {
I/flutter ( 9202): ║                     "key": "fulfilled",
I/flutter ( 9202): ║                     "label_ar": "تم استلام الطلب",
I/flutter ( 9202): ║                     "label_en": "Picked Up",
I/flutter ( 9202): ║                     "state": "pending",
I/flutter ( 9202): ║                     "time": null
I/flutter ( 9202): ║                }
I/flutter ( 9202): ║             ]
I/flutter ( 9202): ║        }
I/flutter ( 9202): ║    }
I/flutter ( 9202): ║
I/flutter ( 9202): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 9202): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingRefreshing(Instance of 'OrderModel', Instance of 'OrderTimelineModel'), nextState: OrderTrackingSuccess(Instance of 'OrderModel', Instance of 'OrderTimelineModel') }
