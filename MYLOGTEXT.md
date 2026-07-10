I/flutter ( 6449): onCreate -- MealPlannerBloc
E/libEGL  ( 6449): called unimplemented OpenGL ES API
I/flutter ( 6449): onChange -- MealPlannerBloc, Change { currentState: MealPlannerLoaded([Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel'], Instance of 'MealPlannerMenuModel', AddonChoicesModel([]), [Instance of 'AddonSubscriptionModel', Instance of 'AddonSubscriptionModel', Instance of 'AddonSubscriptionModel'], [Instance of 'PremiumSummaryModel', Instance of 'PremiumSummaryModel', Instance of 'PremiumSummaryModel', Instance of 'PremiumSummaryModel'], 1, {}, {}, {}, {}, {}, false, false, false, , 4, false, 0, null, null, null, null, null, null), nextState: MealPlannerLoading() }
D/EGL_emulation( 6449): app_time_stats: avg=127.34ms min=1.15ms max=2369.32ms count=19
I/flutter ( 6449):
I/flutter ( 6449): ╔╣ Request ║ GET
I/flutter ( 6449): ║  https://basicdiet145-production-51e9.up.railway.app/api/subscriptions/meal-planner-menu?lang=en
I/flutter ( 6449): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6449): ╔ Query Parameters
I/flutter ( 6449): ╟ lang: en
I/flutter ( 6449): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6449): ╔ Headers
I/flutter ( 6449): ╟ accept: application/json
I/flutter ( 6449): ╟ content-type: application/json
I/flutter ( 6449): ╟ authorization:
I/flutter ( 6449): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTRmNjNjYTc4NDYzMGQ0OWExZjQ2ZD
I/flutter ( 6449): ║ UiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MzcwMzYyOSwiZXhwIjox
I/flutter ( 6449): ║ NzgzNzA0NTI5fQ.znBYq1YXp0iv7MbKQcpaHJg-s2zTP9H8E1LclWDJ99w
I/flutter ( 6449): ╟ Accept-Language: en
I/flutter ( 6449): ╟ contentType: application/json
I/flutter ( 6449): ╟ responseType: ResponseType.json
I/flutter ( 6449): ╟ followRedirects: true
I/flutter ( 6449): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 6449): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 6449): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6449):
I/flutter ( 6449): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 728 ms
I/flutter ( 6449): ║  https://basicdiet145-production-51e9.up.railway.app/api/subscriptions/meal-planner-menu?lang=en
I/flutter ( 6449): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6449): ╔ Headers
I/flutter ( 6449): ╟ x-dns-prefetch-control: [off]
I/flutter ( 6449): ╟ date: [Fri, 10 Jul 2026 17:15:16 GMT]
I/flutter ( 6449): ╟ transfer-encoding: [chunked]
I/flutter ( 6449): ╟ vary: [Origin, accept-encoding]
I/flutter ( 6449): ╟ origin-agent-cluster: [?1]
I/flutter ( 6449): ╟ content-encoding: [gzip]
I/flutter ( 6449): ╟ x-hikari-trace: [cdg1.8vsn]
I/flutter ( 6449): ╟ server: [railway-hikari]
I/flutter ( 6449): ╟ x-request-id: [59931894-785d-4a94-b39b-e5694f17e4e1]
I/flutter ( 6449): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 6449): ╟ etag: [W/"168ed-rNXugD5ZkQOHoZOCsJLcgSX3L20"]
I/flutter ( 6449): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 6449): ╟ content-security-policy:
I/flutter ( 6449): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 6449): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 6449): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 6449): ╟ x-railway-request-id: [J2OYBrlhSb2_o_-pAXC71g]
I/flutter ( 6449): ╟ connection: [keep-alive]
I/flutter ( 6449): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 6449): ╟ referrer-policy: [no-referrer]
I/flutter ( 6449): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 6449): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 6449): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 6449): ╟ x-xss-protection: [0]
I/flutter ( 6449): ╟ x-railway-edge: [cdg1]
I/flutter ( 6449): ╟ access-control-allow-credentials: [true]
I/flutter ( 6449): ╟ x-download-options: [noopen]
I/flutter ( 6449): ╟ x-content-type-options: [nosniff]
I/flutter ( 6449): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6449): ╔ Body
I/flutter ( 6449): ║
I/flutter ( 6449): ║    {
I/flutter ( 6449): ║         "status": true,
I/flutter ( 6449): ║         "data": {
I/flutter ( 6449): ║             "builderCatalog": {
I/flutter ( 6449): ║                 "contractVersion": "meal_planner_menu.v3",
I/flutter ( 6449): ║                 "currency": "SAR",
I/flutter ( 6449): ║                 "sections": [
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "section:full_meal_product",
I/flutter ( 6449): ║                         "key": "full_meal_product",
I/flutter ( 6449): ║                         "type": "product_list",
I/flutter ( 6449): ║                         "builderSectionType": "product_list",
I/flutter ( 6449): ║                         "source": {kind: product_category},
I/flutter ( 6449): ║                         "name": "meals",
I/flutter ( 6449): ║                         "nameI18n": {ar: وجبات, en: meals},
I/flutter ( 6449): ║                         "sortOrder": 1,
I/flutter ( 6449): ║                         "ui": {requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                         "rules": {carbsRequired: false},
I/flutter ( 6449): ║                         "products": [
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4a2e4bf2c4fb19d41b7df2",
I/flutter ( 6449): ║                                 "productId": "6a4a2e4bf2c4fb19d41b7df2",
I/flutter ( 6449): ║                                 "key": "moussaka_with_minced_meat"
I/flutter ( 6449): ║                                 "name": "Moussaka with minced meat"
I/flutter ( 6449): ║                                 "nameI18n": {ar: مسقعة باللحمة المفروم, en: Moussaka with minced meat},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "product",
I/flutter ( 6449): ║                                 "selectionType": "full_meal_product",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 2500, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 0
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4a2f76f2c4fb19d41b7e0b",
I/flutter ( 6449): ║                                 "productId": "6a4a2f76f2c4fb19d41b7e0b",
I/flutter ( 6449): ║                                 "key": "lasagna_with_minced_meat",
I/flutter ( 6449): ║                                 "name": "Lasagna with minced meat",
I/flutter ( 6449): ║                                 "nameI18n": {ar: لازانيا باللحم المفروم, en: Lasagna with minced meat},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "product",
I/flutter ( 6449): ║                                 "selectionType": "full_meal_product",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 2500, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 0
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4a301ff2c4fb19d41b7e22",
I/flutter ( 6449): ║                                 "productId": "6a4a301ff2c4fb19d41b7e22",
I/flutter ( 6449): ║                                 "key": "bechamel_pasta_with_minced_meat"
I/flutter ( 6449): ║                                 "name": "Bechamel pasta with minced meat"
I/flutter ( 6449): ║                                 "nameI18n": {ar: مكرونة بشاميل باللحم المفروم, en: Bechamel pasta with minced meat},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "product",
I/flutter ( 6449): ║                                 "selectionType": "full_meal_product",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 2500, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 0
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4a307cf2c4fb19d41b7e30",
I/flutter ( 6449): ║                                 "productId": "6a4a307cf2c4fb19d41b7e30",
I/flutter ( 6449): ║                                 "key": "stuffed_zucchini_with_minced_meat"
I/flutter ( 6449): ║                                 "name": "Stuffed zucchini with minced meat"
I/flutter ( 6449): ║                                 "nameI18n": {ar: محشى كوسه باللحم المفروم, en: Stuffed zucchini with minced meat},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "product",
I/flutter ( 6449): ║                                 "selectionType": "full_meal_product",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 2491, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 0
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4a3122f2c4fb19d41b7e40",
I/flutter ( 6449): ║                                 "productId": "6a4a3122f2c4fb19d41b7e40",
I/flutter ( 6449): ║                                 "key": "kofta_with_tahini_and_white_rice"
I/flutter ( 6449): ║                                 "name": "Kofta with tahini and white rice"
I/flutter ( 6449): ║                                 "nameI18n": {ar: كفتة بالطحينة وارز ابيض, en: Kofta with tahini and white rice},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "product",
I/flutter ( 6449): ║                                 "selectionType": "full_meal_product",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 2500, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 0
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4a314cf2c4fb19d41b7e4c",
I/flutter ( 6449): ║                                 "productId": "6a4a314cf2c4fb19d41b7e4c",
I/flutter ( 6449): ║                                 "key": "chicken_fettuccine",
I/flutter ( 6449): ║                                 "name": "Chicken fettuccine",
I/flutter ( 6449): ║                                 "nameI18n": {ar: فوتوتشيني بالدجاج, en: Chicken fettuccine},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "product",
I/flutter ( 6449): ║                                 "selectionType": "full_meal_product",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 2500, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 0
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4a317bf2c4fb19d41b7e58",
I/flutter ( 6449): ║                                 "productId": "6a4a317bf2c4fb19d41b7e58",
I/flutter ( 6449): ║                                 "key": "white_sauce_pasta_with_chicken"
I/flutter ( 6449): ║                                 "name": "White sauce pasta with chicken"
I/flutter ( 6449): ║                                 "nameI18n": {ar: باستا وايت صوص بالدجاج, en: White sauce pasta with chicken},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "product",
I/flutter ( 6449): ║                                 "selectionType": "full_meal_product",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 2500, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 0
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4a31b3f2c4fb19d41b7e66",
I/flutter ( 6449): ║                                 "productId": "6a4a31b3f2c4fb19d41b7e66",
I/flutter ( 6449): ║                                 "key": "pasta_with_red_sauce_chicken"
I/flutter ( 6449): ║                                 "name": "Pasta with red sauce chicken"
I/flutter ( 6449): ║                                 "nameI18n": {ar: باستا رد صوص دجاج, en: Pasta with red sauce chicken},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "product",
I/flutter ( 6449): ║                                 "selectionType": "full_meal_product",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 2500, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 0
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4a31eaf2c4fb19d41b7e72",
I/flutter ( 6449): ║                                 "productId": "6a4a31eaf2c4fb19d41b7e72",
I/flutter ( 6449): ║                                 "key": "pasta_with_pink_sauce_and_chicken"
I/flutter ( 6449): ║                                 "name": "Pasta with pink sauce and chicken"
I/flutter ( 6449): ║                                 "nameI18n": {ar: باستا بينك صوص دجاج, en: Pasta with pink sauce and chicken},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "product",
I/flutter ( 6449): ║                                 "selectionType": "full_meal_product",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 2492, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 0
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4a3307f2c4fb19d41b7ec9",
I/flutter ( 6449): ║                                 "productId": "6a4a3307f2c4fb19d41b7ec9",
I/flutter ( 6449): ║                                 "key": "meat_kabsa",
I/flutter ( 6449): ║                                 "name": "Meat Kabsa",
I/flutter ( 6449): ║                                 "nameI18n": {ar: كبسة لحم, en: Meat Kabsa},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "product",
I/flutter ( 6449): ║                                 "selectionType": "full_meal_product",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 3500, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 0
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4a332ff2c4fb19d41b7ed5",
I/flutter ( 6449): ║                                 "productId": "6a4a332ff2c4fb19d41b7ed5",
I/flutter ( 6449): ║                                 "key": "chicken_kabsa",
I/flutter ( 6449): ║                                 "name": "Chicken Kabsa",
I/flutter ( 6449): ║                                 "nameI18n": {ar: كبسة دجاج, en: Chicken Kabsa},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "product",
I/flutter ( 6449): ║                                 "selectionType": "full_meal_product",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 2500, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 0
I/flutter ( 6449): ║                            }
I/flutter ( 6449): ║                         ]
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "section:premium",
I/flutter ( 6449): ║                         "key": "premium",
I/flutter ( 6449): ║                         "type": "configurable_product",
I/flutter ( 6449): ║                         "builderSectionType": "mixed",
I/flutter ( 6449): ║                         "source": {kind: premium_mixed},
I/flutter ( 6449): ║                         "name": "Premium",
I/flutter ( 6449): ║                         "nameI18n": {ar: مميز, en: Premium},
I/flutter ( 6449): ║                         "sortOrder": 2,
I/flutter ( 6449): ║                         "ui": {
I/flutter ( 6449): ║                             "visualRole": "premium",
I/flutter ( 6449): ║                             "includedProductKeys": [premium_large_salad]
I/flutter ( 6449): ║                             "optionKeys": [beef_steak, shrimp, salmon]
I/flutter ( 6449): ║                        }
I/flutter ( 6449): ║                         "rules": {
I/flutter ( 6449): ║                             "premiumLargeSaladSelectionType": "premium_large_salad",
I/flutter ( 6449): ║                             "excludedGroupKeys": [extra_protein_50g]
I/flutter ( 6449): ║                             "premium_meal": {
I/flutter ( 6449): ║                                 "upgradeType": "premium_protein",
I/flutter ( 6449): ║                                 "linkedProductKey": "basic_meal",
I/flutter ( 6449): ║                                 "premiumProteinOptions": [
I/flutter ( 6449): ║                                  {optionKey: beef_steak, extraFeeHalala: 2000, enabled: true, sortOrder: 50},
I/flutter ( 6449): ║                                  {optionKey: shrimp, extraFeeHalala: 2000, enabled: true, sortOrder: 60},
I/flutter ( 6449): ║                                  {optionKey: salmon, extraFeeHalala: 2000, enabled: true, sortOrder: 70}
I/flutter ( 6449): ║                                 ]
I/flutter ( 6449): ║                            }
I/flutter ( 6449): ║                             "premium_large_salad": {
I/flutter ( 6449): ║                                 "upgradeType": "premium_large_salad",
I/flutter ( 6449): ║                                 "linkedProductKey": "premium_large_salad",
I/flutter ( 6449): ║                                 "extraFeeHalala": 2900,
I/flutter ( 6449): ║                                 "blockedGroupKeys": [extra_protein_50g]
I/flutter ( 6449): ║                                 "groups": [
I/flutter ( 6449): ║                                    {
I/flutter ( 6449): ║                                         "groupKey": "leafy_greens"
I/flutter ( 6449): ║                                         "enabled": true,
I/flutter ( 6449): ║                                         "minSelections": 0,
I/flutter ( 6449): ║                                         "maxSelections": 2,
I/flutter ( 6449): ║                                         "allowedOptionKeys": []
I/flutter ( 6449): ║                                    },
I/flutter ( 6449): ║                                    {
I/flutter ( 6449): ║                                         "groupKey": "vegetables_legumes"
I/flutter ( 6449): ║                                         "enabled": true,
I/flutter ( 6449): ║                                         "minSelections": 0,
I/flutter ( 6449): ║                                         "maxSelections": 19,
I/flutter ( 6449): ║                                         "allowedOptionKeys": []
I/flutter ( 6449): ║                                    },
I/flutter ( 6449): ║                                    {
I/flutter ( 6449): ║                                         "groupKey": "proteins",
I/flutter ( 6449): ║                                         "enabled": true,
I/flutter ( 6449): ║                                         "minSelections": 1,
I/flutter ( 6449): ║                                         "maxSelections": 1,
I/flutter ( 6449): ║                                         "allowedOptionKeys": [
I/flutter ( 6449): ║                                                 boiled_eggs,
I/flutter ( 6449): ║                                                 tuna,
I/flutter ( 6449): ║                                                 chicken_fajita,
I/flutter ( 6449): ║                                                 spicy_chicken,
I/flutter ( 6449): ║                                                 italian_spiced_chicken,
I/flutter ( 6449): ║                                                 chicken_tikka,
I/flutter ( 6449): ║                                                 asian_chicken,
I/flutter ( 6449): ║                                                 chicken_strips,
I/flutter ( 6449): ║                                                 grilled_chicken,
I/flutter ( 6449): ║                                                 mexican_chicken,
I/flutter ( 6449): ║                                                 fish_fillet
I/flutter ( 6449): ║                                         ]
I/flutter ( 6449): ║                                    }
I/flutter ( 6449): ║                                 ]
I/flutter ( 6449): ║                            }
I/flutter ( 6449): ║                        }
I/flutter ( 6449): ║                         "products": [
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a49582e991f8d73bc7a22ec",
I/flutter ( 6449): ║                                 "productId": "6a49582e991f8d73bc7a22ec",
I/flutter ( 6449): ║                                 "key": "basic_meal",
I/flutter ( 6449): ║                                 "name": "Basic Meal",
I/flutter ( 6449): ║                                 "nameI18n": {ar: وجبة بيسك, en: Basic Meal},
I/flutter ( 6449): ║                                 "itemType": "basic_meal",
I/flutter ( 6449): ║                                 "selectionType": "premium_meal",
I/flutter ( 6449): ║                                 "pricing": {model: per_100g, basePriceHalala: 1900, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: open_builder, requiresBuilder: true},
I/flutter ( 6449): ║                                 "optionGroups": [
I/flutter ( 6449): ║                                    {
I/flutter ( 6449): ║                                         "id": "6a49575a991f8d73bc7a1ff5"
I/flutter ( 6449): ║                                         "groupId": "6a49575a991f8d73bc7a1ff5"
I/flutter ( 6449): ║                                         "key": "proteins",
I/flutter ( 6449): ║                                         "sourceKey": "proteins",
I/flutter ( 6449): ║                                         "name": "Premium",
I/flutter ( 6449): ║                                         "nameI18n": {ar: مميز, en: Premium},
I/flutter ( 6449): ║                                         "minSelections": 1,
I/flutter ( 6449): ║                                         "maxSelections": 1,
I/flutter ( 6449): ║                                         "required": true,
I/flutter ( 6449): ║                                         "isRequired": true,
I/flutter ( 6449): ║                                         "sortOrder": 2,
I/flutter ( 6449): ║                                         "options": [
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49575e991f8d73bc7a2004"
I/flutter ( 6449): ║                                                 "optionId": "6a49575e991f8d73bc7a2004"
I/flutter ( 6449): ║                                                 "key": "beef_steak"
I/flutter ( 6449): ║                                                 "name": "Beef Steak"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: ستيك لحم, en: Beef Steak},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_meal"
I/flutter ( 6449): ║                                                 "isPremium": true
I/flutter ( 6449): ║                                                 "premiumKey": "beef_steak"
I/flutter ( 6449): ║                                                 "premiumKind": "premium_protein"
I/flutter ( 6449): ║                                                 "extraPriceHalala": 2000
I/flutter ( 6449): ║                                                 "extraFeeHalala": 2000
I/flutter ( 6449): ║                                                 "sortOrder": 50
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49575f991f8d73bc7a2007"
I/flutter ( 6449): ║                                                 "optionId": "6a49575f991f8d73bc7a2007"
I/flutter ( 6449): ║                                                 "key": "shrimp"
I/flutter ( 6449): ║                                                 "name": "Shrimp"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: جمبري, en: Shrimp},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_meal"
I/flutter ( 6449): ║                                                 "isPremium": true
I/flutter ( 6449): ║                                                 "premiumKey": "shrimp"
I/flutter ( 6449): ║                                                 "premiumKind": "premium_protein"
I/flutter ( 6449): ║                                                 "extraPriceHalala": 2000
I/flutter ( 6449): ║                                                 "extraFeeHalala": 2000
I/flutter ( 6449): ║                                                 "sortOrder": 60
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495760991f8d73bc7a200a"
I/flutter ( 6449): ║                                                 "optionId": "6a495760991f8d73bc7a200a"
I/flutter ( 6449): ║                                                 "key": "salmon"
I/flutter ( 6449): ║                                                 "name": "Salmon"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: سالمون, en: Salmon},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_meal"
I/flutter ( 6449): ║                                                 "isPremium": true
I/flutter ( 6449): ║                                                 "premiumKey": "salmon"
I/flutter ( 6449): ║                                                 "premiumKind": "premium_protein"
I/flutter ( 6449): ║                                                 "extraPriceHalala": 2000
I/flutter ( 6449): ║                                                 "extraFeeHalala": 2000
I/flutter ( 6449): ║                                                 "sortOrder": 70
I/flutter ( 6449): ║                                            }
I/flutter ( 6449): ║                                         ]
I/flutter ( 6449): ║                                    }
I/flutter ( 6449): ║                                 ]
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a495842991f8d73bc7a2346",
I/flutter ( 6449): ║                                 "productId": "6a495842991f8d73bc7a2346",
I/flutter ( 6449): ║                                 "key": "premium_large_salad",
I/flutter ( 6449): ║                                 "name": "Premium Large Salad",
I/flutter ( 6449): ║                                 "nameI18n": {ar: سلطة كبيرة مميزة, en: Premium Large Salad},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "basic_salad",
I/flutter ( 6449): ║                                 "selectionType": "premium_large_salad",
I/flutter ( 6449): ║                                 "premiumKey": "premium_large_salad",
I/flutter ( 6449): ║                                 "premiumKind": "premium_large_salad",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 2900, extraFeeHalala: 2900, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: open_builder, requiresBuilder: true},
I/flutter ( 6449): ║                                 "optionGroups": [
I/flutter ( 6449): ║                                    {
I/flutter ( 6449): ║                                         "id": "6a495778991f8d73bc7a2055"
I/flutter ( 6449): ║                                         "groupId": "6a495778991f8d73bc7a2055"
I/flutter ( 6449): ║                                         "key": "leafy_greens"
I/flutter ( 6449): ║                                         "sourceKey": "leafy_greens"
I/flutter ( 6449): ║                                         "name": "Leafy Greens"
I/flutter ( 6449): ║                                         "nameI18n": {ar: ورقيات, en: Leafy Greens},
I/flutter ( 6449): ║                                         "minSelections": 0,
I/flutter ( 6449): ║                                         "maxSelections": 2,
I/flutter ( 6449): ║                                         "required": false,
I/flutter ( 6449): ║                                         "isRequired": false,
I/flutter ( 6449): ║                                         "sortOrder": 10,
I/flutter ( 6449): ║                                         "options": [
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495779991f8d73bc7a2058"
I/flutter ( 6449): ║                                                 "optionId": "6a495779991f8d73bc7a2058"
I/flutter ( 6449): ║                                                 "key": "lettuce"
I/flutter ( 6449): ║                                                 "name": "Lettuce"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: خس, en: Lettuce},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 10
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495779991f8d73bc7a205b"
I/flutter ( 6449): ║                                                 "optionId": "6a495779991f8d73bc7a205b"
I/flutter ( 6449): ║                                                 "key": "arugula"
I/flutter ( 6449): ║                                                 "name": "Arugula"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: جرجير, en: Arugula},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 20
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49577a991f8d73bc7a205e"
I/flutter ( 6449): ║                                                 "optionId": "6a49577a991f8d73bc7a205e"
I/flutter ( 6449): ║                                                 "key": "cabbage"
I/flutter ( 6449): ║                                                 "name": "Cabbage"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: ملفوف, en: Cabbage},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 30
I/flutter ( 6449): ║                                            }
I/flutter ( 6449): ║                                         ]
I/flutter ( 6449): ║                                    },
I/flutter ( 6449): ║                                    {
I/flutter ( 6449): ║                                         "id": "6a49577d991f8d73bc7a2064"
I/flutter ( 6449): ║                                         "groupId": "6a49577d991f8d73bc7a2064"
I/flutter ( 6449): ║                                         "key": "vegetables_legumes"
I/flutter ( 6449): ║                                         "sourceKey": "vegetables_legumes"
I/flutter ( 6449): ║                                         "name": "Vegetables & Legumes"
I/flutter ( 6449): ║                                         "nameI18n": {ar: خضراوات وبقوليات, en: Vegetables & Legumes},
I/flutter ( 6449): ║                                         "minSelections": 0,
I/flutter ( 6449): ║                                         "maxSelections": 19,
I/flutter ( 6449): ║                                         "required": false,
I/flutter ( 6449): ║                                         "isRequired": false,
I/flutter ( 6449): ║                                         "sortOrder": 20,
I/flutter ( 6449): ║                                         "options": [
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49577e991f8d73bc7a2067"
I/flutter ( 6449): ║                                                 "optionId": "6a49577e991f8d73bc7a2067"
I/flutter ( 6449): ║                                                 "key": "tomato"
I/flutter ( 6449): ║                                                 "name": "Tomato"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: طماطم, en: Tomato},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 10
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49577f991f8d73bc7a206a"
I/flutter ( 6449): ║                                                 "optionId": "6a49577f991f8d73bc7a206a"
I/flutter ( 6449): ║                                                 "key": "carrot"
I/flutter ( 6449): ║                                                 "name": "Carrot"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: جزر, en: Carrot},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 20
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495781991f8d73bc7a206d"
I/flutter ( 6449): ║                                                 "optionId": "6a495781991f8d73bc7a206d"
I/flutter ( 6449): ║                                                 "key": "cucumber"
I/flutter ( 6449): ║                                                 "name": "Cucumber"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: خيار, en: Cucumber},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 30
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495783991f8d73bc7a2070"
I/flutter ( 6449): ║                                                 "optionId": "6a495783991f8d73bc7a2070"
I/flutter ( 6449): ║                                                 "key": "corn"
I/flutter ( 6449): ║                                                 "name": "Corn"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: ذرة, en: Corn},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 40
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495786991f8d73bc7a2073"
I/flutter ( 6449): ║                                                 "optionId": "6a495786991f8d73bc7a2073"
I/flutter ( 6449): ║                                                 "key": "hummus"
I/flutter ( 6449): ║                                                 "name": "Hummus"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: حمص, en: Hummus},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 50
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495789991f8d73bc7a2076"
I/flutter ( 6449): ║                                                 "optionId": "6a495789991f8d73bc7a2076"
I/flutter ( 6449): ║                                                 "key": "jalapeno"
I/flutter ( 6449): ║                                                 "name": "Jalapeno"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: هالبينو, en: Jalapeno},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 60
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49578b991f8d73bc7a2079"
I/flutter ( 6449): ║                                                 "optionId": "6a49578b991f8d73bc7a2079"
I/flutter ( 6449): ║                                                 "key": "red_beans"
I/flutter ( 6449): ║                                                 "name": "Red Beans"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: فاصوليا حمراء, en: Red Beans},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 70
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49578c991f8d73bc7a207c"
I/flutter ( 6449): ║                                                 "optionId": "6a49578c991f8d73bc7a207c"
I/flutter ( 6449): ║                                                 "key": "beetroot"
I/flutter ( 6449): ║                                                 "name": "Beetroot"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: بنجر, en: Beetroot},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 80
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49578f991f8d73bc7a207f"
I/flutter ( 6449): ║                                                 "optionId": "6a49578f991f8d73bc7a207f"
I/flutter ( 6449): ║                                                 "key": "hot_pepper"
I/flutter ( 6449): ║                                                 "name": "Hot Pepper"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: فلفل حار, en: Hot Pepper},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 90
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495790991f8d73bc7a2082"
I/flutter ( 6449): ║                                                 "optionId": "6a495790991f8d73bc7a2082"
I/flutter ( 6449): ║                                                 "key": "coriander"
I/flutter ( 6449): ║                                                 "name": "Coriander"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: كزبرة, en: Coriander},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 100
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495791991f8d73bc7a2085"
I/flutter ( 6449): ║                                                 "optionId": "6a495791991f8d73bc7a2085"
I/flutter ( 6449): ║                                                 "key": "mushroom"
I/flutter ( 6449): ║                                                 "name": "Mushroom"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: فطر, en: Mushroom},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 110
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495791991f8d73bc7a2088"
I/flutter ( 6449): ║                                                 "optionId": "6a495791991f8d73bc7a2088"
I/flutter ( 6449): ║                                                 "key": "broccoli"
I/flutter ( 6449): ║                                                 "name": "Broccoli"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: بروكلي, en: Broccoli},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 120
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495793991f8d73bc7a208b"
I/flutter ( 6449): ║                                                 "optionId": "6a495793991f8d73bc7a208b"
I/flutter ( 6449): ║                                                 "key": "salad_grilled_mixed_vegetables"
I/flutter ( 6449): ║                                                 "name": "Grilled Mixed Vegetables"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: خضار مشكل مشوي, en: Grilled Mixed Vegetables},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 130
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495794991f8d73bc7a208e"
I/flutter ( 6449): ║                                                 "optionId": "6a495794991f8d73bc7a208e"
I/flutter ( 6449): ║                                                 "key": "red_onion"
I/flutter ( 6449): ║                                                 "name": "Red Onion"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: بصل احمر, en: Red Onion},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 140
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495795991f8d73bc7a2091"
I/flutter ( 6449): ║                                                 "optionId": "6a495795991f8d73bc7a2091"
I/flutter ( 6449): ║                                                 "key": "green_onion"
I/flutter ( 6449): ║                                                 "name": "Green Onion"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: بصل اخضر, en: Green Onion},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 150
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495795991f8d73bc7a2094"
I/flutter ( 6449): ║                                                 "optionId": "6a495795991f8d73bc7a2094"
I/flutter ( 6449): ║                                                 "key": "green_olives"
I/flutter ( 6449): ║                                                 "name": "Green Olives"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: زيتون اخضر, en: Green Olives},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 160
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495796991f8d73bc7a2097"
I/flutter ( 6449): ║                                                 "optionId": "6a495796991f8d73bc7a2097"
I/flutter ( 6449): ║                                                 "key": "black_olives"
I/flutter ( 6449): ║                                                 "name": "Black Olives"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: زيتون اسود, en: Black Olives},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 170
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495797991f8d73bc7a209a"
I/flutter ( 6449): ║                                                 "optionId": "6a495797991f8d73bc7a209a"
I/flutter ( 6449): ║                                                 "key": "mint"
I/flutter ( 6449): ║                                                 "name": "Mint"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: نعناع, en: Mint},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 180
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495798991f8d73bc7a209d"
I/flutter ( 6449): ║                                                 "optionId": "6a495798991f8d73bc7a209d"
I/flutter ( 6449): ║                                                 "key": "pickled_onion"
I/flutter ( 6449): ║                                                 "name": "Pickled Onion"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: بصل مخلل, en: Pickled Onion},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 190
I/flutter ( 6449): ║                                            }
I/flutter ( 6449): ║                                         ]
I/flutter ( 6449): ║                                    },
I/flutter ( 6449): ║                                    {
I/flutter ( 6449): ║                                         "id": "6a4957a0991f8d73bc7a20b8"
I/flutter ( 6449): ║                                         "groupId": "6a4957a0991f8d73bc7a20b8"
I/flutter ( 6449): ║                                         "key": "fruits",
I/flutter ( 6449): ║                                         "sourceKey": "fruits",
I/flutter ( 6449): ║                                         "name": "Fruits",
I/flutter ( 6449): ║                                         "nameI18n": {ar: فواكه, en: Fruits},
I/flutter ( 6449): ║                                         "minSelections": 0,
I/flutter ( 6449): ║                                         "maxSelections": 4,
I/flutter ( 6449): ║                                         "required": false,
I/flutter ( 6449): ║                                         "isRequired": false,
I/flutter ( 6449): ║                                         "sortOrder": 30,
I/flutter ( 6449): ║                                         "options": [
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957a2991f8d73bc7a20bb"
I/flutter ( 6449): ║                                                 "optionId": "6a4957a2991f8d73bc7a20bb"
I/flutter ( 6449): ║                                                 "key": "mango"
I/flutter ( 6449): ║                                                 "name": "Mango"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: مانجا, en: Mango},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 10
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957a4991f8d73bc7a20be"
I/flutter ( 6449): ║                                                 "optionId": "6a4957a4991f8d73bc7a20be"
I/flutter ( 6449): ║                                                 "key": "green_apple"
I/flutter ( 6449): ║                                                 "name": "Green Apple"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: تفاح اخضر, en: Green Apple},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 20
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957a4991f8d73bc7a20c1"
I/flutter ( 6449): ║                                                 "optionId": "6a4957a4991f8d73bc7a20c1"
I/flutter ( 6449): ║                                                 "key": "pomegranate"
I/flutter ( 6449): ║                                                 "name": "Pomegranate"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: رمان, en: Pomegranate},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 30
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957a6991f8d73bc7a20c4"
I/flutter ( 6449): ║                                                 "optionId": "6a4957a6991f8d73bc7a20c4"
I/flutter ( 6449): ║                                                 "key": "strawberry"
I/flutter ( 6449): ║                                                 "name": "Strawberry"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: فراولة, en: Strawberry},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 40
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957a7991f8d73bc7a20c7"
I/flutter ( 6449): ║                                                 "optionId": "6a4957a7991f8d73bc7a20c7"
I/flutter ( 6449): ║                                                 "key": "blueberry"
I/flutter ( 6449): ║                                                 "name": "Blueberry"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: توت ازرق, en: Blueberry},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 50
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957a8991f8d73bc7a20ca"
I/flutter ( 6449): ║                                                 "optionId": "6a4957a8991f8d73bc7a20ca"
I/flutter ( 6449): ║                                                 "key": "raspberry"
I/flutter ( 6449): ║                                                 "name": "Raspberry"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: توت احمر, en: Raspberry},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 60
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957a8991f8d73bc7a20cd"
I/flutter ( 6449): ║                                                 "optionId": "6a4957a8991f8d73bc7a20cd"
I/flutter ( 6449): ║                                                 "key": "watermelon"
I/flutter ( 6449): ║                                                 "name": "Watermelon"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: بطيخ, en: Watermelon},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 70
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957a9991f8d73bc7a20d0"
I/flutter ( 6449): ║                                                 "optionId": "6a4957a9991f8d73bc7a20d0"
I/flutter ( 6449): ║                                                 "key": "cantaloupe"
I/flutter ( 6449): ║                                                 "name": "Cantaloupe"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: شمام, en: Cantaloupe},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 80
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957aa991f8d73bc7a20d3"
I/flutter ( 6449): ║                                                 "optionId": "6a4957aa991f8d73bc7a20d3"
I/flutter ( 6449): ║                                                 "key": "dates"
I/flutter ( 6449): ║                                                 "name": "Dates"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: تمر, en: Dates},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 90
I/flutter ( 6449): ║                                            }
I/flutter ( 6449): ║                                         ]
I/flutter ( 6449): ║                                    },
I/flutter ( 6449): ║                                    {
I/flutter ( 6449): ║                                         "id": "6a49575a991f8d73bc7a1ff5"
I/flutter ( 6449): ║                                         "groupId": "6a49575a991f8d73bc7a1ff5"
I/flutter ( 6449): ║                                         "key": "proteins",
I/flutter ( 6449): ║                                         "sourceKey": "proteins",
I/flutter ( 6449): ║                                         "name": "Proteins",
I/flutter ( 6449): ║                                         "nameI18n": {ar: بروتينات, en: Proteins},
I/flutter ( 6449): ║                                         "minSelections": 1,
I/flutter ( 6449): ║                                         "maxSelections": 1,
I/flutter ( 6449): ║                                         "required": true,
I/flutter ( 6449): ║                                         "isRequired": true,
I/flutter ( 6449): ║                                         "sortOrder": 40,
I/flutter ( 6449): ║                                         "options": [
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495761991f8d73bc7a200d"
I/flutter ( 6449): ║                                                 "optionId": "6a495761991f8d73bc7a200d"
I/flutter ( 6449): ║                                                 "key": "boiled_eggs"
I/flutter ( 6449): ║                                                 "name": "Boiled Eggs"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: بيض مسلوق, en: Boiled Eggs},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 10
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495762991f8d73bc7a2013"
I/flutter ( 6449): ║                                                 "optionId": "6a495762991f8d73bc7a2013"
I/flutter ( 6449): ║                                                 "key": "chicken_fajita"
I/flutter ( 6449): ║                                                 "name": "Chicken Fajita"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: فاهيتا, en: Chicken Fajita},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 30
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495763991f8d73bc7a2016"
I/flutter ( 6449): ║                                                 "optionId": "6a495763991f8d73bc7a2016"
I/flutter ( 6449): ║                                                 "key": "spicy_chicken"
I/flutter ( 6449): ║                                                 "name": "Spicy Chicken"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: دجاج سبايسي, en: Spicy Chicken},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 40
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495764991f8d73bc7a2019"
I/flutter ( 6449): ║                                                 "optionId": "6a495764991f8d73bc7a2019"
I/flutter ( 6449): ║                                                 "key": "italian_spiced_chicken"
I/flutter ( 6449): ║                                                 "name": "Italian Spiced Chicken"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: دجاج توابل إيطالية, en: Italian Spiced Chicken},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 50
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495765991f8d73bc7a201c"
I/flutter ( 6449): ║                                                 "optionId": "6a495765991f8d73bc7a201c"
I/flutter ( 6449): ║                                                 "key": "chicken_tikka"
I/flutter ( 6449): ║                                                 "name": "Chicken Tikka"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: دجاج تكا, en: Chicken Tikka},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 60
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495766991f8d73bc7a201f"
I/flutter ( 6449): ║                                                 "optionId": "6a495766991f8d73bc7a201f"
I/flutter ( 6449): ║                                                 "key": "asian_chicken"
I/flutter ( 6449): ║                                                 "name": "Asian Chicken"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: دجاج آسيوي, en: Asian Chicken},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 70
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495767991f8d73bc7a2022"
I/flutter ( 6449): ║                                                 "optionId": "6a495767991f8d73bc7a2022"
I/flutter ( 6449): ║                                                 "key": "chicken_strips"
I/flutter ( 6449): ║                                                 "name": "Chicken Strips"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: استربس, en: Chicken Strips},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 80
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495767991f8d73bc7a2025"
I/flutter ( 6449): ║                                                 "optionId": "6a495767991f8d73bc7a2025"
I/flutter ( 6449): ║                                                 "key": "grilled_chicken"
I/flutter ( 6449): ║                                                 "name": "Grilled Chicken"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: دجاج مشوي, en: Grilled Chicken},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 90
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495768991f8d73bc7a2028"
I/flutter ( 6449): ║                                                 "optionId": "6a495768991f8d73bc7a2028"
I/flutter ( 6449): ║                                                 "key": "mexican_chicken"
I/flutter ( 6449): ║                                                 "name": "Mexican Chicken"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: دجاج مكسيكي, en: Mexican Chicken},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 100
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49576a991f8d73bc7a2031"
I/flutter ( 6449): ║                                                 "optionId": "6a49576a991f8d73bc7a2031"
I/flutter ( 6449): ║                                                 "key": "fish_fillet"
I/flutter ( 6449): ║                                                 "name": "Fish Fillet"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: سمك فيليه, en: Fish Fillet},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 110
I/flutter ( 6449): ║                                            }
I/flutter ( 6449): ║                                         ]
I/flutter ( 6449): ║                                    },
I/flutter ( 6449): ║                                    {
I/flutter ( 6449): ║                                         "id": "6a495798991f8d73bc7a20a0"
I/flutter ( 6449): ║                                         "groupId": "6a495798991f8d73bc7a20a0"
I/flutter ( 6449): ║                                         "key": "cheese_nuts"
I/flutter ( 6449): ║                                         "sourceKey": "cheese_nuts"
I/flutter ( 6449): ║                                         "name": "Cheese & Nuts"
I/flutter ( 6449): ║                                         "nameI18n": {ar: الاجبان و المكسرات, en: Cheese & Nuts},
I/flutter ( 6449): ║                                         "minSelections": 0,
I/flutter ( 6449): ║                                         "maxSelections": 2,
I/flutter ( 6449): ║                                         "required": false,
I/flutter ( 6449): ║                                         "isRequired": false,
I/flutter ( 6449): ║                                         "sortOrder": 50,
I/flutter ( 6449): ║                                         "options": [
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495799991f8d73bc7a20a3"
I/flutter ( 6449): ║                                                 "optionId": "6a495799991f8d73bc7a20a3"
I/flutter ( 6449): ║                                                 "key": "cashew"
I/flutter ( 6449): ║                                                 "name": "Cashew"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: كاجو, en: Cashew},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 10
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49579a991f8d73bc7a20a6"
I/flutter ( 6449): ║                                                 "optionId": "6a49579a991f8d73bc7a20a6"
I/flutter ( 6449): ║                                                 "key": "walnut"
I/flutter ( 6449): ║                                                 "name": "Walnut"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: عين الجمل, en: Walnut},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 20
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49579b991f8d73bc7a20a9"
I/flutter ( 6449): ║                                                 "optionId": "6a49579b991f8d73bc7a20a9"
I/flutter ( 6449): ║                                                 "key": "sesame"
I/flutter ( 6449): ║                                                 "name": "Sesame"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: سمسم, en: Sesame},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 30
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49579b991f8d73bc7a20ac"
I/flutter ( 6449): ║                                                 "optionId": "6a49579b991f8d73bc7a20ac"
I/flutter ( 6449): ║                                                 "key": "feta"
I/flutter ( 6449): ║                                                 "name": "Feta"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: فيتا, en: Feta},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 40
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49579c991f8d73bc7a20af"
I/flutter ( 6449): ║                                                 "optionId": "6a49579c991f8d73bc7a20af"
I/flutter ( 6449): ║                                                 "key": "parmesan"
I/flutter ( 6449): ║                                                 "name": "Parmesan"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: بارميزان, en: Parmesan},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 50
I/flutter ( 6449): ║                                            }
I/flutter ( 6449): ║                                         ]
I/flutter ( 6449): ║                                    },
I/flutter ( 6449): ║                                    {
I/flutter ( 6449): ║                                         "id": "6a4957ac991f8d73bc7a20d9"
I/flutter ( 6449): ║                                         "groupId": "6a4957ac991f8d73bc7a20d9"
I/flutter ( 6449): ║                                         "key": "sauces",
I/flutter ( 6449): ║                                         "sourceKey": "sauces",
I/flutter ( 6449): ║                                         "name": "Sauces",
I/flutter ( 6449): ║                                         "nameI18n": {ar: الصوصات, en: Sauces},
I/flutter ( 6449): ║                                         "minSelections": 1,
I/flutter ( 6449): ║                                         "maxSelections": 1,
I/flutter ( 6449): ║                                         "required": true,
I/flutter ( 6449): ║                                         "isRequired": true,
I/flutter ( 6449): ║                                         "sortOrder": 60,
I/flutter ( 6449): ║                                         "options": [
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957ad991f8d73bc7a20dc"
I/flutter ( 6449): ║                                                 "optionId": "6a4957ad991f8d73bc7a20dc"
I/flutter ( 6449): ║                                                 "key": "ranch"
I/flutter ( 6449): ║                                                 "name": "Ranch"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: رانش, en: Ranch},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 10
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957ad991f8d73bc7a20df"
I/flutter ( 6449): ║                                                 "optionId": "6a4957ad991f8d73bc7a20df"
I/flutter ( 6449): ║                                                 "key": "spicy_ranch"
I/flutter ( 6449): ║                                                 "name": "Spicy Ranch"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: سبايسي رانش, en: Spicy Ranch},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 20
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957ae991f8d73bc7a20e2"
I/flutter ( 6449): ║                                                 "optionId": "6a4957ae991f8d73bc7a20e2"
I/flutter ( 6449): ║                                                 "key": "pesto_sauce"
I/flutter ( 6449): ║                                                 "name": "Pesto Sauce"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: صوص بيستو, en: Pesto Sauce},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 30
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957af991f8d73bc7a20e5"
I/flutter ( 6449): ║                                                 "optionId": "6a4957af991f8d73bc7a20e5"
I/flutter ( 6449): ║                                                 "key": "balsamic"
I/flutter ( 6449): ║                                                 "name": "Balsamic"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: بالسميك, en: Balsamic},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 40
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957af991f8d73bc7a20e8"
I/flutter ( 6449): ║                                                 "optionId": "6a4957af991f8d73bc7a20e8"
I/flutter ( 6449): ║                                                 "key": "caesar"
I/flutter ( 6449): ║                                                 "name": "Caesar"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: سيزر, en: Caesar},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 50
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957b0991f8d73bc7a20eb"
I/flutter ( 6449): ║                                                 "optionId": "6a4957b0991f8d73bc7a20eb"
I/flutter ( 6449): ║                                                 "key": "honey_mustard"
I/flutter ( 6449): ║                                                 "name": "Honey Mustard"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: هاني ماستر, en: Honey Mustard},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 60
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957b1991f8d73bc7a20ee"
I/flutter ( 6449): ║                                                 "optionId": "6a4957b1991f8d73bc7a20ee"
I/flutter ( 6449): ║                                                 "key": "yogurt_mint"
I/flutter ( 6449): ║                                                 "name": "Yogurt Mint"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: زبادي بالنعناع, en: Yogurt Mint},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 70
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957b1991f8d73bc7a20f1"
I/flutter ( 6449): ║                                                 "optionId": "6a4957b1991f8d73bc7a20f1"
I/flutter ( 6449): ║                                                 "key": "honey_garlic"
I/flutter ( 6449): ║                                                 "name": "Honey Garlic"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: عسل بالثوم, en: Honey Garlic},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 80
I/flutter ( 6449): ║                                            }
I/flutter ( 6449): ║                                         ]
I/flutter ( 6449): ║                                    }
I/flutter ( 6449): ║                                 ],
I/flutter ( 6449): ║                                 "sortOrder": 30
I/flutter ( 6449): ║                            }
I/flutter ( 6449): ║                         ]
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "section:sandwich",
I/flutter ( 6449): ║                         "key": "sandwich",
I/flutter ( 6449): ║                         "type": "product_list",
I/flutter ( 6449): ║                         "builderSectionType": "product_list",
I/flutter ( 6449): ║                         "source": {kind: product_category, categoryKey: sandwich},
I/flutter ( 6449): ║                         "name": "Sandwiches",
I/flutter ( 6449): ║                         "nameI18n": {ar: ساندوتشات, en: Sandwiches},
I/flutter ( 6449): ║                         "sortOrder": 3,
I/flutter ( 6449): ║                         "ui": {requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                         "rules": {carbsRequired: false},
I/flutter ( 6449): ║                         "products": [
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4958a6991f8d73bc7a24e7",
I/flutter ( 6449): ║                                 "productId": "6a4958a6991f8d73bc7a24e7",
I/flutter ( 6449): ║                                 "key": "turkey_cold_sandwich",
I/flutter ( 6449): ║                                 "name": "Turkey",
I/flutter ( 6449): ║                                 "nameI18n": {ar: تركي, en: Turkey},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "cold_sandwich",
I/flutter ( 6449): ║                                 "selectionType": "sandwich",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 1300, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 200
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4958a7991f8d73bc7a24ea",
I/flutter ( 6449): ║                                 "productId": "6a4958a7991f8d73bc7a24ea",
I/flutter ( 6449): ║                                 "key": "boiled_egg_cold_sandwich",
I/flutter ( 6449): ║                                 "name": "Boiled Egg",
I/flutter ( 6449): ║                                 "nameI18n": {ar: بيض مسلوق, en: Boiled Egg},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "cold_sandwich",
I/flutter ( 6449): ║                                 "selectionType": "sandwich",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 900, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 210
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4958a7991f8d73bc7a24ed",
I/flutter ( 6449): ║                                 "productId": "6a4958a7991f8d73bc7a24ed",
I/flutter ( 6449): ║                                 "key": "tuna_cold_sandwich",
I/flutter ( 6449): ║                                 "name": "Tuna",
I/flutter ( 6449): ║                                 "nameI18n": {ar: تونا, en: Tuna},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "cold_sandwich",
I/flutter ( 6449): ║                                 "selectionType": "sandwich",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 1300, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 220
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4958a8991f8d73bc7a24f0",
I/flutter ( 6449): ║                                 "productId": "6a4958a8991f8d73bc7a24f0",
I/flutter ( 6449): ║                                 "key": "scrambled_egg_cold_sandwich"
I/flutter ( 6449): ║                                 "name": "Scrambled Egg",
I/flutter ( 6449): ║                                 "nameI18n": {ar: بيض مخفوق, en: Scrambled Egg},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "cold_sandwich",
I/flutter ( 6449): ║                                 "selectionType": "sandwich",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 900, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 230
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4958a9991f8d73bc7a24f3",
I/flutter ( 6449): ║                                 "productId": "6a4958a9991f8d73bc7a24f3",
I/flutter ( 6449): ║                                 "key": "classic_halloumi_cold_sandwich"
I/flutter ( 6449): ║                                 "name": "Classic Halloumi",
I/flutter ( 6449): ║                                 "nameI18n": {ar: حلوم كلاسيك, en: Classic Halloumi},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "cold_sandwich",
I/flutter ( 6449): ║                                 "selectionType": "sandwich",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 1100, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 240
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4958aa991f8d73bc7a24f6",
I/flutter ( 6449): ║                                 "productId": "6a4958aa991f8d73bc7a24f6",
I/flutter ( 6449): ║                                 "key": "chicken_fajita_cold_sandwich"
I/flutter ( 6449): ║                                 "name": "Chicken Fajita",
I/flutter ( 6449): ║                                 "nameI18n": {ar: دجاج فاهيتا, en: Chicken Fajita},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "cold_sandwich",
I/flutter ( 6449): ║                                 "selectionType": "sandwich",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 1300, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 250
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4958aa991f8d73bc7a24f9",
I/flutter ( 6449): ║                                 "productId": "6a4958aa991f8d73bc7a24f9",
I/flutter ( 6449): ║                                 "key": "mexican_chicken_cold_sandwich"
I/flutter ( 6449): ║                                 "name": "Mexican Chicken",
I/flutter ( 6449): ║                                 "nameI18n": {ar: دجاج مكسيكي, en: Mexican Chicken},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "cold_sandwich",
I/flutter ( 6449): ║                                 "selectionType": "sandwich",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 1300, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 260
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4958ab991f8d73bc7a24fc",
I/flutter ( 6449): ║                                 "productId": "6a4958ab991f8d73bc7a24fc",
I/flutter ( 6449): ║                                 "key": "grilled_chicken_cold_sandwich"
I/flutter ( 6449): ║                                 "name": "Grilled Chicken",
I/flutter ( 6449): ║                                 "nameI18n": {ar: دجاج مشوي, en: Grilled Chicken},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "cold_sandwich",
I/flutter ( 6449): ║                                 "selectionType": "sandwich",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 1300, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 270
I/flutter ( 6449): ║                            }
I/flutter ( 6449): ║                         ]
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "section:chicken",
I/flutter ( 6449): ║                         "key": "chicken",
I/flutter ( 6449): ║                         "type": "configurable_product",
I/flutter ( 6449): ║                         "builderSectionType": "option_family",
I/flutter ( 6449): ║                         "source": {kind: option_family, groupKey: proteins, displayCategoryKey: chicken},
I/flutter ( 6449): ║                         "name": "Chicken",
I/flutter ( 6449): ║                         "nameI18n": {ar: دجاج, en: Chicken},
I/flutter ( 6449): ║                         "sortOrder": 4,
I/flutter ( 6449): ║                         "ui": {visualRole: protein_family, proteinFamilyKey: chicken},
I/flutter ( 6449): ║                         "rules": {},
I/flutter ( 6449): ║                         "products": [
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a49582e991f8d73bc7a22ec",
I/flutter ( 6449): ║                                 "productId": "6a49582e991f8d73bc7a22ec",
I/flutter ( 6449): ║                                 "key": "basic_meal",
I/flutter ( 6449): ║                                 "name": "Basic Meal",
I/flutter ( 6449): ║                                 "nameI18n": {ar: وجبة بيسك, en: Basic Meal},
I/flutter ( 6449): ║                                 "itemType": "basic_meal",
I/flutter ( 6449): ║                                 "selectionType": "standard_meal",
I/flutter ( 6449): ║                                 "pricing": {model: per_100g, basePriceHalala: 1900, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: open_builder, requiresBuilder: true},
I/flutter ( 6449): ║                                 "optionGroups": [
I/flutter ( 6449): ║                                    {
I/flutter ( 6449): ║                                         "id": "6a49575a991f8d73bc7a1ff5"
I/flutter ( 6449): ║                                         "groupId": "6a49575a991f8d73bc7a1ff5"
I/flutter ( 6449): ║                                         "key": "proteins",
I/flutter ( 6449): ║                                         "sourceKey": "proteins",
I/flutter ( 6449): ║                                         "name": "Chicken",
I/flutter ( 6449): ║                                         "nameI18n": {ar: دجاج, en: Chicken},
I/flutter ( 6449): ║                                         "minSelections": 1,
I/flutter ( 6449): ║                                         "maxSelections": 1,
I/flutter ( 6449): ║                                         "required": true,
I/flutter ( 6449): ║                                         "isRequired": true,
I/flutter ( 6449): ║                                         "sortOrder": 4,
I/flutter ( 6449): ║                                         "options": [
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49575b991f8d73bc7a1ff8"
I/flutter ( 6449): ║                                                 "optionId": "6a49575b991f8d73bc7a1ff8"
I/flutter ( 6449): ║                                                 "key": "chicken"
I/flutter ( 6449): ║                                                 "name": "Chicken"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: دجاج, en: Chicken},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 10
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495762991f8d73bc7a2013"
I/flutter ( 6449): ║                                                 "optionId": "6a495762991f8d73bc7a2013"
I/flutter ( 6449): ║                                                 "key": "chicken_fajita"
I/flutter ( 6449): ║                                                 "name": "Chicken Fajita"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: فاهيتا, en: Chicken Fajita},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 100
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495763991f8d73bc7a2016"
I/flutter ( 6449): ║                                                 "optionId": "6a495763991f8d73bc7a2016"
I/flutter ( 6449): ║                                                 "key": "spicy_chicken"
I/flutter ( 6449): ║                                                 "name": "Spicy Chicken"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: دجاج سبايسي, en: Spicy Chicken},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 110
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495764991f8d73bc7a2019"
I/flutter ( 6449): ║                                                 "optionId": "6a495764991f8d73bc7a2019"
I/flutter ( 6449): ║                                                 "key": "italian_spiced_chicken"
I/flutter ( 6449): ║                                                 "name": "Italian Spiced Chicken"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: دجاج توابل إيطالية, en: Italian Spiced Chicken},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 120
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495765991f8d73bc7a201c"
I/flutter ( 6449): ║                                                 "optionId": "6a495765991f8d73bc7a201c"
I/flutter ( 6449): ║                                                 "key": "chicken_tikka"
I/flutter ( 6449): ║                                                 "name": "Chicken Tikka"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: دجاج تكا, en: Chicken Tikka},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 130
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495766991f8d73bc7a201f"
I/flutter ( 6449): ║                                                 "optionId": "6a495766991f8d73bc7a201f"
I/flutter ( 6449): ║                                                 "key": "asian_chicken"
I/flutter ( 6449): ║                                                 "name": "Asian Chicken"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: دجاج آسيوي, en: Asian Chicken},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 140
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495767991f8d73bc7a2022"
I/flutter ( 6449): ║                                                 "optionId": "6a495767991f8d73bc7a2022"
I/flutter ( 6449): ║                                                 "key": "chicken_strips"
I/flutter ( 6449): ║                                                 "name": "Chicken Strips"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: استربس, en: Chicken Strips},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 150
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495767991f8d73bc7a2025"
I/flutter ( 6449): ║                                                 "optionId": "6a495767991f8d73bc7a2025"
I/flutter ( 6449): ║                                                 "key": "grilled_chicken"
I/flutter ( 6449): ║                                                 "name": "Grilled Chicken"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: دجاج مشوي, en: Grilled Chicken},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 160
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495768991f8d73bc7a2028"
I/flutter ( 6449): ║                                                 "optionId": "6a495768991f8d73bc7a2028"
I/flutter ( 6449): ║                                                 "key": "mexican_chicken"
I/flutter ( 6449): ║                                                 "name": "Mexican Chicken"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: دجاج مكسيكي, en: Mexican Chicken},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 170
I/flutter ( 6449): ║                                            }
I/flutter ( 6449): ║                                         ]
I/flutter ( 6449): ║                                    }
I/flutter ( 6449): ║                                 ]
I/flutter ( 6449): ║                            }
I/flutter ( 6449): ║                         ]
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "section:beef",
I/flutter ( 6449): ║                         "key": "beef",
I/flutter ( 6449): ║                         "type": "configurable_product",
I/flutter ( 6449): ║                         "builderSectionType": "option_family",
I/flutter ( 6449): ║                         "source": {kind: option_family, groupKey: proteins, displayCategoryKey: beef},
I/flutter ( 6449): ║                         "name": "Beef",
I/flutter ( 6449): ║                         "nameI18n": {ar: لحم, en: Beef},
I/flutter ( 6449): ║                         "sortOrder": 5,
I/flutter ( 6449): ║                         "ui": {visualRole: protein_family, proteinFamilyKey: beef},
I/flutter ( 6449): ║                         "rules": {ruleKey: beef_daily_limit, maxSlotsPerDay: 1, unit: slots},
I/flutter ( 6449): ║                         "products": [
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a49582e991f8d73bc7a22ec",
I/flutter ( 6449): ║                                 "productId": "6a49582e991f8d73bc7a22ec",
I/flutter ( 6449): ║                                 "key": "basic_meal",
I/flutter ( 6449): ║                                 "name": "Basic Meal",
I/flutter ( 6449): ║                                 "nameI18n": {ar: وجبة بيسك, en: Basic Meal},
I/flutter ( 6449): ║                                 "itemType": "basic_meal",
I/flutter ( 6449): ║                                 "selectionType": "standard_meal",
I/flutter ( 6449): ║                                 "pricing": {model: per_100g, basePriceHalala: 1900, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: open_builder, requiresBuilder: true},
I/flutter ( 6449): ║                                 "optionGroups": [
I/flutter ( 6449): ║                                    {
I/flutter ( 6449): ║                                         "id": "6a49575a991f8d73bc7a1ff5"
I/flutter ( 6449): ║                                         "groupId": "6a49575a991f8d73bc7a1ff5"
I/flutter ( 6449): ║                                         "key": "proteins",
I/flutter ( 6449): ║                                         "sourceKey": "proteins",
I/flutter ( 6449): ║                                         "name": "Beef",
I/flutter ( 6449): ║                                         "nameI18n": {ar: لحم, en: Beef},
I/flutter ( 6449): ║                                         "minSelections": 1,
I/flutter ( 6449): ║                                         "maxSelections": 1,
I/flutter ( 6449): ║                                         "required": true,
I/flutter ( 6449): ║                                         "isRequired": true,
I/flutter ( 6449): ║                                         "sortOrder": 5,
I/flutter ( 6449): ║                                         "options": [
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49575b991f8d73bc7a1ffb"
I/flutter ( 6449): ║                                                 "optionId": "6a49575b991f8d73bc7a1ffb"
I/flutter ( 6449): ║                                                 "key": "beef"
I/flutter ( 6449): ║                                                 "name": "Beef"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: لحم, en: Beef},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 20
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495768991f8d73bc7a202b"
I/flutter ( 6449): ║                                                 "optionId": "6a495768991f8d73bc7a202b"
I/flutter ( 6449): ║                                                 "key": "meatballs"
I/flutter ( 6449): ║                                                 "name": "Meatballs"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: كرات لحم, en: Meatballs},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 180
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495769991f8d73bc7a202e"
I/flutter ( 6449): ║                                                 "optionId": "6a495769991f8d73bc7a202e"
I/flutter ( 6449): ║                                                 "key": "beef_stroganoff"
I/flutter ( 6449): ║                                                 "name": "Beef Stroganoff"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: لحم استرغانوف, en: Beef Stroganoff},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 190
I/flutter ( 6449): ║                                            }
I/flutter ( 6449): ║                                         ]
I/flutter ( 6449): ║                                    }
I/flutter ( 6449): ║                                 ]
I/flutter ( 6449): ║                            }
I/flutter ( 6449): ║                         ]
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "section:fish",
I/flutter ( 6449): ║                         "key": "fish",
I/flutter ( 6449): ║                         "type": "configurable_product",
I/flutter ( 6449): ║                         "builderSectionType": "option_family",
I/flutter ( 6449): ║                         "source": {kind: option_family, groupKey: proteins, displayCategoryKey: fish},
I/flutter ( 6449): ║                         "name": "Fish",
I/flutter ( 6449): ║                         "nameI18n": {ar: سمك, en: Fish},
I/flutter ( 6449): ║                         "sortOrder": 6,
I/flutter ( 6449): ║                         "ui": {visualRole: protein_family, proteinFamilyKey: fish},
I/flutter ( 6449): ║                         "rules": {},
I/flutter ( 6449): ║                         "products": [
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a49582e991f8d73bc7a22ec",
I/flutter ( 6449): ║                                 "productId": "6a49582e991f8d73bc7a22ec",
I/flutter ( 6449): ║                                 "key": "basic_meal",
I/flutter ( 6449): ║                                 "name": "Basic Meal",
I/flutter ( 6449): ║                                 "nameI18n": {ar: وجبة بيسك, en: Basic Meal},
I/flutter ( 6449): ║                                 "itemType": "basic_meal",
I/flutter ( 6449): ║                                 "selectionType": "standard_meal",
I/flutter ( 6449): ║                                 "pricing": {model: per_100g, basePriceHalala: 1900, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: open_builder, requiresBuilder: true},
I/flutter ( 6449): ║                                 "optionGroups": [
I/flutter ( 6449): ║                                    {
I/flutter ( 6449): ║                                         "id": "6a49575a991f8d73bc7a1ff5"
I/flutter ( 6449): ║                                         "groupId": "6a49575a991f8d73bc7a1ff5"
I/flutter ( 6449): ║                                         "key": "proteins",
I/flutter ( 6449): ║                                         "sourceKey": "proteins",
I/flutter ( 6449): ║                                         "name": "Fish",
I/flutter ( 6449): ║                                         "nameI18n": {ar: سمك, en: Fish},
I/flutter ( 6449): ║                                         "minSelections": 1,
I/flutter ( 6449): ║                                         "maxSelections": 1,
I/flutter ( 6449): ║                                         "required": true,
I/flutter ( 6449): ║                                         "isRequired": true,
I/flutter ( 6449): ║                                         "sortOrder": 6,
I/flutter ( 6449): ║                                         "options": [
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49575c991f8d73bc7a1ffe"
I/flutter ( 6449): ║                                                 "optionId": "6a49575c991f8d73bc7a1ffe"
I/flutter ( 6449): ║                                                 "key": "fish"
I/flutter ( 6449): ║                                                 "name": "Fish"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: سمك, en: Fish},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 30
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49576a991f8d73bc7a2031"
I/flutter ( 6449): ║                                                 "optionId": "6a49576a991f8d73bc7a2031"
I/flutter ( 6449): ║                                                 "key": "fish_fillet"
I/flutter ( 6449): ║                                                 "name": "Fish Fillet"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: سمك فيليه, en: Fish Fillet},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 200
I/flutter ( 6449): ║                                            }
I/flutter ( 6449): ║                                         ]
I/flutter ( 6449): ║                                    }
I/flutter ( 6449): ║                                 ]
I/flutter ( 6449): ║                            }
I/flutter ( 6449): ║                         ]
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "section:eggs",
I/flutter ( 6449): ║                         "key": "eggs",
I/flutter ( 6449): ║                         "type": "configurable_product",
I/flutter ( 6449): ║                         "builderSectionType": "option_family",
I/flutter ( 6449): ║                         "source": {kind: option_family, groupKey: proteins, displayCategoryKey: eggs},
I/flutter ( 6449): ║                         "name": "Eggs",
I/flutter ( 6449): ║                         "nameI18n": {ar: بيض, en: Eggs},
I/flutter ( 6449): ║                         "sortOrder": 7,
I/flutter ( 6449): ║                         "ui": {visualRole: protein_family, proteinFamilyKey: eggs},
I/flutter ( 6449): ║                         "rules": {},
I/flutter ( 6449): ║                         "products": [
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a49582e991f8d73bc7a22ec",
I/flutter ( 6449): ║                                 "productId": "6a49582e991f8d73bc7a22ec",
I/flutter ( 6449): ║                                 "key": "basic_meal",
I/flutter ( 6449): ║                                 "name": "Basic Meal",
I/flutter ( 6449): ║                                 "nameI18n": {ar: وجبة بيسك, en: Basic Meal},
I/flutter ( 6449): ║                                 "itemType": "basic_meal",
I/flutter ( 6449): ║                                 "selectionType": "standard_meal",
I/flutter ( 6449): ║                                 "pricing": {model: per_100g, basePriceHalala: 1900, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: open_builder, requiresBuilder: true},
I/flutter ( 6449): ║                                 "optionGroups": [
I/flutter ( 6449): ║                                    {
I/flutter ( 6449): ║                                         "id": "6a49575a991f8d73bc7a1ff5"
I/flutter ( 6449): ║                                         "groupId": "6a49575a991f8d73bc7a1ff5"
I/flutter ( 6449): ║                                         "key": "proteins",
I/flutter ( 6449): ║                                         "sourceKey": "proteins",
I/flutter ( 6449): ║                                         "name": "Eggs",
I/flutter ( 6449): ║                                         "nameI18n": {ar: بيض, en: Eggs},
I/flutter ( 6449): ║                                         "minSelections": 1,
I/flutter ( 6449): ║                                         "maxSelections": 1,
I/flutter ( 6449): ║                                         "required": true,
I/flutter ( 6449): ║                                         "isRequired": true,
I/flutter ( 6449): ║                                         "sortOrder": 7,
I/flutter ( 6449): ║                                         "options": [
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49575d991f8d73bc7a2001"
I/flutter ( 6449): ║                                                 "optionId": "6a49575d991f8d73bc7a2001"
I/flutter ( 6449): ║                                                 "key": "eggs"
I/flutter ( 6449): ║                                                 "name": "Eggs"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: بيض, en: Eggs},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 40
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495761991f8d73bc7a200d"
I/flutter ( 6449): ║                                                 "optionId": "6a495761991f8d73bc7a200d"
I/flutter ( 6449): ║                                                 "key": "boiled_eggs"
I/flutter ( 6449): ║                                                 "name": "Boiled Eggs"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: بيض مسلوق, en: Boiled Eggs},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 80
I/flutter ( 6449): ║                                            }
I/flutter ( 6449): ║                                         ]
I/flutter ( 6449): ║                                    }
I/flutter ( 6449): ║                                 ]
I/flutter ( 6449): ║                            }
I/flutter ( 6449): ║                         ]
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "section:carbs",
I/flutter ( 6449): ║                         "key": "carbs",
I/flutter ( 6449): ║                         "type": "configurable_product",
I/flutter ( 6449): ║                         "builderSectionType": "option_group",
I/flutter ( 6449): ║                         "source": {kind: option_group, groupKey: carbs},
I/flutter ( 6449): ║                         "name": "Carbs",
I/flutter ( 6449): ║                         "nameI18n": {ar: نشويات, en: Carbs},
I/flutter ( 6449): ║                         "sortOrder": 8,
I/flutter ( 6449): ║                         "ui": {
I/flutter ( 6449): ║                             "visualRole": "carbs",
I/flutter ( 6449): ║                             "appliesTo": [configurable_plate_meal]
I/flutter ( 6449): ║                             "excludesSelectionTypes": [sandwich]
I/flutter ( 6449): ║                        }
I/flutter ( 6449): ║                         "rules": {
I/flutter ( 6449): ║                             "maxTypes": 2,
I/flutter ( 6449): ║                             "maxTotalGrams": 300,
I/flutter ( 6449): ║                             "unit": "grams",
I/flutter ( 6449): ║                             "onlyForSelectionTypes": [standard_meal, premium_meal]
I/flutter ( 6449): ║                        }
I/flutter ( 6449): ║                         "products": [
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a49582e991f8d73bc7a22ec",
I/flutter ( 6449): ║                                 "productId": "6a49582e991f8d73bc7a22ec",
I/flutter ( 6449): ║                                 "key": "basic_meal",
I/flutter ( 6449): ║                                 "name": "Basic Meal",
I/flutter ( 6449): ║                                 "nameI18n": {ar: وجبة بيسك, en: Basic Meal},
I/flutter ( 6449): ║                                 "itemType": "basic_meal",
I/flutter ( 6449): ║                                 "selectionType": "standard_meal",
I/flutter ( 6449): ║                                 "pricing": {model: per_100g, basePriceHalala: 1900, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: open_builder, requiresBuilder: true},
I/flutter ( 6449): ║                                 "optionGroups": [
I/flutter ( 6449): ║                                    {
I/flutter ( 6449): ║                                         "id": "6a49576b991f8d73bc7a2034"
I/flutter ( 6449): ║                                         "groupId": "6a49576b991f8d73bc7a2034"
I/flutter ( 6449): ║                                         "key": "carbs",
I/flutter ( 6449): ║                                         "sourceKey": "carbs",
I/flutter ( 6449): ║                                         "name": "Carbs",
I/flutter ( 6449): ║                                         "nameI18n": {ar: نشويات, en: Carbs},
I/flutter ( 6449): ║                                         "minSelections": 1,
I/flutter ( 6449): ║                                         "maxSelections": 2,
I/flutter ( 6449): ║                                         "required": true,
I/flutter ( 6449): ║                                         "isRequired": true,
I/flutter ( 6449): ║                                         "sortOrder": 8,
I/flutter ( 6449): ║                                         "options": [
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49576c991f8d73bc7a2037"
I/flutter ( 6449): ║                                                 "optionId": "6a49576c991f8d73bc7a2037"
I/flutter ( 6449): ║                                                 "key": "white_rice"
I/flutter ( 6449): ║                                                 "name": "White Rice"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: رز أبيض, en: White Rice},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 10
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49576d991f8d73bc7a203a"
I/flutter ( 6449): ║                                                 "optionId": "6a49576d991f8d73bc7a203a"
I/flutter ( 6449): ║                                                 "key": "turmeric_rice"
I/flutter ( 6449): ║                                                 "name": "Turmeric Rice"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: رز بالكركم, en: Turmeric Rice},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 20
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49576e991f8d73bc7a203d"
I/flutter ( 6449): ║                                                 "optionId": "6a49576e991f8d73bc7a203d"
I/flutter ( 6449): ║                                                 "key": "alfredo_pasta"
I/flutter ( 6449): ║                                                 "name": "Alfredo Pasta"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: باستا الفريدو, en: Alfredo Pasta},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 30
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495770991f8d73bc7a2040"
I/flutter ( 6449): ║                                                 "optionId": "6a495770991f8d73bc7a2040"
I/flutter ( 6449): ║                                                 "key": "red_sauce_pasta"
I/flutter ( 6449): ║                                                 "name": "Red Sauce Pasta"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: باستا صوص احمر, en: Red Sauce Pasta},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 40
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495771991f8d73bc7a2043"
I/flutter ( 6449): ║                                                 "optionId": "6a495771991f8d73bc7a2043"
I/flutter ( 6449): ║                                                 "key": "roasted_potato"
I/flutter ( 6449): ║                                                 "name": "Roasted Potato"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: بطاطا مشوية, en: Roasted Potato},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 50
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495772991f8d73bc7a2046"
I/flutter ( 6449): ║                                                 "optionId": "6a495772991f8d73bc7a2046"
I/flutter ( 6449): ║                                                 "key": "sweet_potato"
I/flutter ( 6449): ║                                                 "name": "Sweet Potato"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: بطاطا حلوة, en: Sweet Potato},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 60
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495774991f8d73bc7a2049"
I/flutter ( 6449): ║                                                 "optionId": "6a495774991f8d73bc7a2049"
I/flutter ( 6449): ║                                                 "key": "grilled_mixed_vegetables"
I/flutter ( 6449): ║                                                 "name": "Grilled Mixed Vegetables"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: خضار مشكلة مشوية, en: Grilled Mixed Vegetables},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 70
I/flutter ( 6449): ║                                            }
I/flutter ( 6449): ║                                         ]
I/flutter ( 6449): ║                                    }
I/flutter ( 6449): ║                                 ]
I/flutter ( 6449): ║                            }
I/flutter ( 6449): ║                         ]
I/flutter ( 6449): ║                    }
I/flutter ( 6449): ║                 ],
I/flutter ( 6449): ║                 "rules": {
I/flutter ( 6449): ║                     "version": "meal_planner_rules.v3",
I/flutter ( 6449): ║                     "beef": {proteinFamilyKey: beef, maxSlotsPerDay: 1},
I/flutter ( 6449): ║                     "standardCarbs": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
I/flutter ( 6449): ║                     "premiumCarbs": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
I/flutter ( 6449): ║                     "proteinGroups": [
I/flutter ( 6449): ║                        {
I/flutter ( 6449): ║                             "key": "chicken",
I/flutter ( 6449): ║                             "name": {ar: دجاج, en: Chicken},
I/flutter ( 6449): ║                             "sortOrder": 10
I/flutter ( 6449): ║                        },
I/flutter ( 6449): ║                        {
I/flutter ( 6449): ║                             "key": "beef",
I/flutter ( 6449): ║                             "name": {ar: لحم, en: Beef},
I/flutter ( 6449): ║                             "sortOrder": 20
I/flutter ( 6449): ║                        },
I/flutter ( 6449): ║                        {
I/flutter ( 6449): ║                             "key": "fish",
I/flutter ( 6449): ║                             "name": {ar: سمك, en: Fish},
I/flutter ( 6449): ║                             "sortOrder": 30
I/flutter ( 6449): ║                        },
I/flutter ( 6449): ║                        {
I/flutter ( 6449): ║                             "key": "eggs",
I/flutter ( 6449): ║                             "name": {ar: بيض, en: Eggs},
I/flutter ( 6449): ║                             "sortOrder": 40
I/flutter ( 6449): ║                        },
I/flutter ( 6449): ║                        {
I/flutter ( 6449): ║                             "key": "premium",
I/flutter ( 6449): ║                             "name": {ar: بريميوم, en: Premium},
I/flutter ( 6449): ║                             "sortOrder": 50
I/flutter ( 6449): ║                        },
I/flutter ( 6449): ║                        {
I/flutter ( 6449): ║                             "key": "other",
I/flutter ( 6449): ║                             "name": {ar: أخرى, en: Other},
I/flutter ( 6449): ║                             "sortOrder": 60
I/flutter ( 6449): ║                        }
I/flutter ( 6449): ║                     ],
I/flutter ( 6449): ║                     "premiumLargeSalad": {
I/flutter ( 6449): ║                         "premiumKey": "premium_large_salad",
I/flutter ( 6449): ║                         "presetKey": "large_salad",
I/flutter ( 6449): ║                         "extraFeeHalala": 2900,
I/flutter ( 6449): ║                         "groups": [
I/flutter ( 6449): ║                          {key: leafy_greens, minSelect: 0, maxSelect: 2},
I/flutter ( 6449): ║                          {key: vegetables, minSelect: 0, maxSelect: 19},
I/flutter ( 6449): ║                          {key: protein, minSelect: 1, maxSelect: 1},
I/flutter ( 6449): ║                          {key: cheese_nuts, minSelect: 0, maxSelect: 2},
I/flutter ( 6449): ║                          {key: fruits, minSelect: 0, maxSelect: 4},
I/flutter ( 6449): ║                          {key: sauce, minSelect: 1, maxSelect: 1}
I/flutter ( 6449): ║                         ],
I/flutter ( 6449): ║                         "allowedProteinKeys": [
I/flutter ( 6449): ║                                 boiled_eggs,
I/flutter ( 6449): ║                                 tuna,
I/flutter ( 6449): ║                                 chicken_fajita,
I/flutter ( 6449): ║                                 spicy_chicken,
I/flutter ( 6449): ║                                 italian_spiced_chicken,
I/flutter ( 6449): ║                                 chicken_tikka,
I/flutter ( 6449): ║                                 asian_chicken,
I/flutter ( 6449): ║                                 chicken_strips,
I/flutter ( 6449): ║                                 grilled_chicken,
I/flutter ( 6449): ║                                 mexican_chicken,
I/flutter ( 6449): ║                                 fish_fillet
I/flutter ( 6449): ║                         ],
I/flutter ( 6449): ║                         "excludedGroupKeys": [extra_protein_50g]
I/flutter ( 6449): ║                    }
I/flutter ( 6449): ║                     "source": "meal_builder_config",
I/flutter ( 6449): ║                     "builderRevisionHash": "sha256:5f337bb42ad7cf1b1f4329e767380cb6821134dd2bdcd328d30e0590e5be56
I/flutter ( 6449): ║                      4e"
I/flutter ( 6449): ║                }
I/flutter ( 6449): ║                 "catalogHash": "sha256:b11607be88d80ba06348585a2e3ac04e22c68fd17fb9201628dcc23cc8f2972a"
I/flutter ( 6449): ║                 "publishedVersionId": null,
I/flutter ( 6449): ║                 "builderRevisionHash": "sha256:5f337bb42ad7cf1b1f4329e767380cb6821134dd2bdcd328d30e0590e5be564e"
I/flutter ( 6449): ║                 "source": "dashboard"
I/flutter ( 6449): ║            }
I/flutter ( 6449): ║             "addonCatalog": {
I/flutter ( 6449): ║                 "items": [
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a4958e5991f8d73bc7a25fb",
I/flutter ( 6449): ║                         "name": "Snack Box",
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "priceHalala": 1500,
I/flutter ( 6449): ║                         "priceSar": 15,
I/flutter ( 6449): ║                         "priceLabel": "15 SAR",
I/flutter ( 6449): ║                         "kind": "item",
I/flutter ( 6449): ║                         "category": "snack",
I/flutter ( 6449): ║                         "type": "one_time",
I/flutter ( 6449): ║                         "billingMode": "flat_once",
I/flutter ( 6449): ║                         "pricingModel": "one_time",
I/flutter ( 6449): ║                         "billingUnit": "item",
I/flutter ( 6449): ║                         "ui": {title: Snack Box, subtitle: , ctaLabel: Add, badge: One-time add-on}
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a4958e5991f8d73bc7a25f8",
I/flutter ( 6449): ║                         "name": "Healthy Dessert",
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "priceHalala": 1500,
I/flutter ( 6449): ║                         "priceSar": 15,
I/flutter ( 6449): ║                         "priceLabel": "15 SAR",
I/flutter ( 6449): ║                         "kind": "item",
I/flutter ( 6449): ║                         "category": "snack",
I/flutter ( 6449): ║                         "type": "one_time",
I/flutter ( 6449): ║                         "billingMode": "flat_once",
I/flutter ( 6449): ║                         "pricingModel": "one_time",
I/flutter ( 6449): ║                         "billingUnit": "item",
I/flutter ( 6449): ║                         "ui": {title: Healthy Dessert, subtitle: , ctaLabel: Add, badge: One-time add-on}
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a4958e3991f8d73bc7a25f5",
I/flutter ( 6449): ║                         "name": "Protein Snack",
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "priceHalala": 1500,
I/flutter ( 6449): ║                         "priceSar": 15,
I/flutter ( 6449): ║                         "priceLabel": "15 SAR",
I/flutter ( 6449): ║                         "kind": "item",
I/flutter ( 6449): ║                         "category": "snack",
I/flutter ( 6449): ║                         "type": "one_time",
I/flutter ( 6449): ║                         "billingMode": "flat_once",
I/flutter ( 6449): ║                         "pricingModel": "one_time",
I/flutter ( 6449): ║                         "billingUnit": "item",
I/flutter ( 6449): ║                         "ui": {title: Protein Snack, subtitle: , ctaLabel: Add, badge: One-time add-on}
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a4958e3991f8d73bc7a25f2",
I/flutter ( 6449): ║                         "name": "Mango Juice",
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "priceHalala": 1000,
I/flutter ( 6449): ║                         "priceSar": 10,
I/flutter ( 6449): ║                         "priceLabel": "10 SAR",
I/flutter ( 6449): ║                         "kind": "item",
I/flutter ( 6449): ║                         "category": "juice",
I/flutter ( 6449): ║                         "type": "one_time",
I/flutter ( 6449): ║                         "billingMode": "flat_once",
I/flutter ( 6449): ║                         "pricingModel": "one_time",
I/flutter ( 6449): ║                         "billingUnit": "item",
I/flutter ( 6449): ║                         "ui": {title: Mango Juice, subtitle: , ctaLabel: Add, badge: One-time add-on}
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a4958e2991f8d73bc7a25ef",
I/flutter ( 6449): ║                         "name": "Apple Juice",
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "priceHalala": 1000,
I/flutter ( 6449): ║                         "priceSar": 10,
I/flutter ( 6449): ║                         "priceLabel": "10 SAR",
I/flutter ( 6449): ║                         "kind": "item",
I/flutter ( 6449): ║                         "category": "juice",
I/flutter ( 6449): ║                         "type": "one_time",
I/flutter ( 6449): ║                         "billingMode": "flat_once",
I/flutter ( 6449): ║                         "pricingModel": "one_time",
I/flutter ( 6449): ║                         "billingUnit": "item",
I/flutter ( 6449): ║                         "ui": {title: Apple Juice, subtitle: , ctaLabel: Add, badge: One-time add-on}
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a4958e1991f8d73bc7a25ec",
I/flutter ( 6449): ║                         "name": "Orange Juice",
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "priceHalala": 1000,
I/flutter ( 6449): ║                         "priceSar": 10,
I/flutter ( 6449): ║                         "priceLabel": "10 SAR",
I/flutter ( 6449): ║                         "kind": "item",
I/flutter ( 6449): ║                         "category": "juice",
I/flutter ( 6449): ║                         "type": "one_time",
I/flutter ( 6449): ║                         "billingMode": "flat_once",
I/flutter ( 6449): ║                         "pricingModel": "one_time",
I/flutter ( 6449): ║                         "billingUnit": "item",
I/flutter ( 6449): ║                         "ui": {title: Orange Juice, subtitle: , ctaLabel: Add, badge: One-time add-on}
I/flutter ( 6449): ║                    }
I/flutter ( 6449): ║                 ],
I/flutter ( 6449): ║                 "byCategory": {
I/flutter ( 6449): ║                     "snack": [
I/flutter ( 6449): ║                        {
I/flutter ( 6449): ║                             "id": "6a4958e5991f8d73bc7a25fb",
I/flutter ( 6449): ║                             "name": "Snack Box",
I/flutter ( 6449): ║                             "description": "",
I/flutter ( 6449): ║                             "imageUrl": "",
I/flutter ( 6449): ║                             "currency": "SAR",
I/flutter ( 6449): ║                             "priceHalala": 1500,
I/flutter ( 6449): ║                             "priceSar": 15,
I/flutter ( 6449): ║                             "priceLabel": "15 SAR",
I/flutter ( 6449): ║                             "kind": "item",
I/flutter ( 6449): ║                             "category": "snack",
I/flutter ( 6449): ║                             "type": "one_time",
I/flutter ( 6449): ║                             "billingMode": "flat_once",
I/flutter ( 6449): ║                             "pricingModel": "one_time",
I/flutter ( 6449): ║                             "billingUnit": "item",
I/flutter ( 6449): ║                             "ui": {title: Snack Box, subtitle: , ctaLabel: Add, badge: One-time add-on}
I/flutter ( 6449): ║                        },
I/flutter ( 6449): ║                        {
I/flutter ( 6449): ║                             "id": "6a4958e5991f8d73bc7a25f8",
I/flutter ( 6449): ║                             "name": "Healthy Dessert",
I/flutter ( 6449): ║                             "description": "",
I/flutter ( 6449): ║                             "imageUrl": "",
I/flutter ( 6449): ║                             "currency": "SAR",
I/flutter ( 6449): ║                             "priceHalala": 1500,
I/flutter ( 6449): ║                             "priceSar": 15,
I/flutter ( 6449): ║                             "priceLabel": "15 SAR",
I/flutter ( 6449): ║                             "kind": "item",
I/flutter ( 6449): ║                             "category": "snack",
I/flutter ( 6449): ║                             "type": "one_time",
I/flutter ( 6449): ║                             "billingMode": "flat_once",
I/flutter ( 6449): ║                             "pricingModel": "one_time",
I/flutter ( 6449): ║                             "billingUnit": "item",
I/flutter ( 6449): ║                             "ui": {title: Healthy Dessert, subtitle: , ctaLabel: Add, badge: One-time add-on}
I/flutter ( 6449): ║                        },
I/flutter ( 6449): ║                        {
I/flutter ( 6449): ║                             "id": "6a4958e3991f8d73bc7a25f5",
I/flutter ( 6449): ║                             "name": "Protein Snack",
I/flutter ( 6449): ║                             "description": "",
I/flutter ( 6449): ║                             "imageUrl": "",
I/flutter ( 6449): ║                             "currency": "SAR",
I/flutter ( 6449): ║                             "priceHalala": 1500,
I/flutter ( 6449): ║                             "priceSar": 15,
I/flutter ( 6449): ║                             "priceLabel": "15 SAR",
I/flutter ( 6449): ║                             "kind": "item",
I/flutter ( 6449): ║                             "category": "snack",
I/flutter ( 6449): ║                             "type": "one_time",
I/flutter ( 6449): ║                             "billingMode": "flat_once",
I/flutter ( 6449): ║                             "pricingModel": "one_time",
I/flutter ( 6449): ║                             "billingUnit": "item",
I/flutter ( 6449): ║                             "ui": {title: Protein Snack, subtitle: , ctaLabel: Add, badge: One-time add-on}
I/flutter ( 6449): ║                        }
I/flutter ( 6449): ║                     ],
I/flutter ( 6449): ║                     "juice": [
I/flutter ( 6449): ║                        {
I/flutter ( 6449): ║                             "id": "6a4958e3991f8d73bc7a25f2",
I/flutter ( 6449): ║                             "name": "Mango Juice",
I/flutter ( 6449): ║                             "description": "",
I/flutter ( 6449): ║                             "imageUrl": "",
I/flutter ( 6449): ║                             "currency": "SAR",
I/flutter ( 6449): ║                             "priceHalala": 1000,
I/flutter ( 6449): ║                             "priceSar": 10,
I/flutter ( 6449): ║                             "priceLabel": "10 SAR",
I/flutter ( 6449): ║                             "kind": "item",
I/flutter ( 6449): ║                             "category": "juice",
I/flutter ( 6449): ║                             "type": "one_time",
I/flutter ( 6449): ║                             "billingMode": "flat_once",
I/flutter ( 6449): ║                             "pricingModel": "one_time",
I/flutter ( 6449): ║                             "billingUnit": "item",
I/flutter ( 6449): ║                             "ui": {title: Mango Juice, subtitle: , ctaLabel: Add, badge: One-time add-on}
I/flutter ( 6449): ║                        },
I/flutter ( 6449): ║                        {
I/flutter ( 6449): ║                             "id": "6a4958e2991f8d73bc7a25ef",
I/flutter ( 6449): ║                             "name": "Apple Juice",
I/flutter ( 6449): ║                             "description": "",
I/flutter ( 6449): ║                             "imageUrl": "",
I/flutter ( 6449): ║                             "currency": "SAR",
I/flutter ( 6449): ║                             "priceHalala": 1000,
I/flutter ( 6449): ║                             "priceSar": 10,
I/flutter ( 6449): ║                             "priceLabel": "10 SAR",
I/flutter ( 6449): ║                             "kind": "item",
I/flutter ( 6449): ║                             "category": "juice",
I/flutter ( 6449): ║                             "type": "one_time",
I/flutter ( 6449): ║                             "billingMode": "flat_once",
I/flutter ( 6449): ║                             "pricingModel": "one_time",
I/flutter ( 6449): ║                             "billingUnit": "item",
I/flutter ( 6449): ║                             "ui": {title: Apple Juice, subtitle: , ctaLabel: Add, badge: One-time add-on}
I/flutter ( 6449): ║                        },
I/flutter ( 6449): ║                        {
I/flutter ( 6449): ║                             "id": "6a4958e1991f8d73bc7a25ec",
I/flutter ( 6449): ║                             "name": "Orange Juice",
I/flutter ( 6449): ║                             "description": "",
I/flutter ( 6449): ║                             "imageUrl": "",
I/flutter ( 6449): ║                             "currency": "SAR",
I/flutter ( 6449): ║                             "priceHalala": 1000,
I/flutter ( 6449): ║                             "priceSar": 10,
I/flutter ( 6449): ║                             "priceLabel": "10 SAR",
I/flutter ( 6449): ║                             "kind": "item",
I/flutter ( 6449): ║                             "category": "juice",
I/flutter ( 6449): ║                             "type": "one_time",
I/flutter ( 6449): ║                             "billingMode": "flat_once",
I/flutter ( 6449): ║                             "pricingModel": "one_time",
I/flutter ( 6449): ║                             "billingUnit": "item",
I/flutter ( 6449): ║                             "ui": {title: Orange Juice, subtitle: , ctaLabel: Add, badge: One-time add-on}
I/flutter ( 6449): ║                        }
I/flutter ( 6449): ║                     ]
I/flutter ( 6449): ║                }
I/flutter ( 6449): ║                 "totalCount": 6
I/flutter ( 6449): ║            }
I/flutter ( 6449): ║             "plannerCatalog": {
I/flutter ( 6449): ║                 "contractVersion": "meal_planner_menu.v3",
I/flutter ( 6449): ║                 "currency": "SAR",
I/flutter ( 6449): ║                 "sections": [
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "section:full_meal_product",
I/flutter ( 6449): ║                         "key": "full_meal_product",
I/flutter ( 6449): ║                         "type": "product_list",
I/flutter ( 6449): ║                         "builderSectionType": "product_list",
I/flutter ( 6449): ║                         "source": {kind: product_category},
I/flutter ( 6449): ║                         "name": "meals",
I/flutter ( 6449): ║                         "nameI18n": {ar: وجبات, en: meals},
I/flutter ( 6449): ║                         "sortOrder": 1,
I/flutter ( 6449): ║                         "ui": {requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                         "rules": {carbsRequired: false},
I/flutter ( 6449): ║                         "products": [
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4a2e4bf2c4fb19d41b7df2",
I/flutter ( 6449): ║                                 "productId": "6a4a2e4bf2c4fb19d41b7df2",
I/flutter ( 6449): ║                                 "key": "moussaka_with_minced_meat"
I/flutter ( 6449): ║                                 "name": "Moussaka with minced meat"
I/flutter ( 6449): ║                                 "nameI18n": {ar: مسقعة باللحمة المفروم, en: Moussaka with minced meat},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "product",
I/flutter ( 6449): ║                                 "selectionType": "full_meal_product",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 2500, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 0
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4a2f76f2c4fb19d41b7e0b",
I/flutter ( 6449): ║                                 "productId": "6a4a2f76f2c4fb19d41b7e0b",
I/flutter ( 6449): ║                                 "key": "lasagna_with_minced_meat",
I/flutter ( 6449): ║                                 "name": "Lasagna with minced meat",
I/flutter ( 6449): ║                                 "nameI18n": {ar: لازانيا باللحم المفروم, en: Lasagna with minced meat},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "product",
I/flutter ( 6449): ║                                 "selectionType": "full_meal_product",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 2500, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 0
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4a301ff2c4fb19d41b7e22",
I/flutter ( 6449): ║                                 "productId": "6a4a301ff2c4fb19d41b7e22",
I/flutter ( 6449): ║                                 "key": "bechamel_pasta_with_minced_meat"
I/flutter ( 6449): ║                                 "name": "Bechamel pasta with minced meat"
I/flutter ( 6449): ║                                 "nameI18n": {ar: مكرونة بشاميل باللحم المفروم, en: Bechamel pasta with minced meat},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "product",
I/flutter ( 6449): ║                                 "selectionType": "full_meal_product",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 2500, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 0
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4a307cf2c4fb19d41b7e30",
I/flutter ( 6449): ║                                 "productId": "6a4a307cf2c4fb19d41b7e30",
I/flutter ( 6449): ║                                 "key": "stuffed_zucchini_with_minced_meat"
I/flutter ( 6449): ║                                 "name": "Stuffed zucchini with minced meat"
I/flutter ( 6449): ║                                 "nameI18n": {ar: محشى كوسه باللحم المفروم, en: Stuffed zucchini with minced meat},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "product",
I/flutter ( 6449): ║                                 "selectionType": "full_meal_product",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 2491, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 0
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4a3122f2c4fb19d41b7e40",
I/flutter ( 6449): ║                                 "productId": "6a4a3122f2c4fb19d41b7e40",
I/flutter ( 6449): ║                                 "key": "kofta_with_tahini_and_white_rice"
I/flutter ( 6449): ║                                 "name": "Kofta with tahini and white rice"
I/flutter ( 6449): ║                                 "nameI18n": {ar: كفتة بالطحينة وارز ابيض, en: Kofta with tahini and white rice},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "product",
I/flutter ( 6449): ║                                 "selectionType": "full_meal_product",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 2500, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 0
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4a314cf2c4fb19d41b7e4c",
I/flutter ( 6449): ║                                 "productId": "6a4a314cf2c4fb19d41b7e4c",
I/flutter ( 6449): ║                                 "key": "chicken_fettuccine",
I/flutter ( 6449): ║                                 "name": "Chicken fettuccine",
I/flutter ( 6449): ║                                 "nameI18n": {ar: فوتوتشيني بالدجاج, en: Chicken fettuccine},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "product",
I/flutter ( 6449): ║                                 "selectionType": "full_meal_product",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 2500, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 0
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4a317bf2c4fb19d41b7e58",
I/flutter ( 6449): ║                                 "productId": "6a4a317bf2c4fb19d41b7e58",
I/flutter ( 6449): ║                                 "key": "white_sauce_pasta_with_chicken"
I/flutter ( 6449): ║                                 "name": "White sauce pasta with chicken"
I/flutter ( 6449): ║                                 "nameI18n": {ar: باستا وايت صوص بالدجاج, en: White sauce pasta with chicken},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "product",
I/flutter ( 6449): ║                                 "selectionType": "full_meal_product",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 2500, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 0
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4a31b3f2c4fb19d41b7e66",
I/flutter ( 6449): ║                                 "productId": "6a4a31b3f2c4fb19d41b7e66",
I/flutter ( 6449): ║                                 "key": "pasta_with_red_sauce_chicken"
I/flutter ( 6449): ║                                 "name": "Pasta with red sauce chicken"
I/flutter ( 6449): ║                                 "nameI18n": {ar: باستا رد صوص دجاج, en: Pasta with red sauce chicken},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "product",
I/flutter ( 6449): ║                                 "selectionType": "full_meal_product",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 2500, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 0
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4a31eaf2c4fb19d41b7e72",
I/flutter ( 6449): ║                                 "productId": "6a4a31eaf2c4fb19d41b7e72",
I/flutter ( 6449): ║                                 "key": "pasta_with_pink_sauce_and_chicken"
I/flutter ( 6449): ║                                 "name": "Pasta with pink sauce and chicken"
I/flutter ( 6449): ║                                 "nameI18n": {ar: باستا بينك صوص دجاج, en: Pasta with pink sauce and chicken},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "product",
I/flutter ( 6449): ║                                 "selectionType": "full_meal_product",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 2492, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 0
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4a3307f2c4fb19d41b7ec9",
I/flutter ( 6449): ║                                 "productId": "6a4a3307f2c4fb19d41b7ec9",
I/flutter ( 6449): ║                                 "key": "meat_kabsa",
I/flutter ( 6449): ║                                 "name": "Meat Kabsa",
I/flutter ( 6449): ║                                 "nameI18n": {ar: كبسة لحم, en: Meat Kabsa},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "product",
I/flutter ( 6449): ║                                 "selectionType": "full_meal_product",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 3500, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 0
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4a332ff2c4fb19d41b7ed5",
I/flutter ( 6449): ║                                 "productId": "6a4a332ff2c4fb19d41b7ed5",
I/flutter ( 6449): ║                                 "key": "chicken_kabsa",
I/flutter ( 6449): ║                                 "name": "Chicken Kabsa",
I/flutter ( 6449): ║                                 "nameI18n": {ar: كبسة دجاج, en: Chicken Kabsa},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "product",
I/flutter ( 6449): ║                                 "selectionType": "full_meal_product",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 2500, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 0
I/flutter ( 6449): ║                            }
I/flutter ( 6449): ║                         ]
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "section:premium",
I/flutter ( 6449): ║                         "key": "premium",
I/flutter ( 6449): ║                         "type": "configurable_product",
I/flutter ( 6449): ║                         "builderSectionType": "mixed",
I/flutter ( 6449): ║                         "source": {kind: premium_mixed},
I/flutter ( 6449): ║                         "name": "Premium",
I/flutter ( 6449): ║                         "nameI18n": {ar: مميز, en: Premium},
I/flutter ( 6449): ║                         "sortOrder": 2,
I/flutter ( 6449): ║                         "ui": {
I/flutter ( 6449): ║                             "visualRole": "premium",
I/flutter ( 6449): ║                             "includedProductKeys": [premium_large_salad]
I/flutter ( 6449): ║                             "optionKeys": [beef_steak, shrimp, salmon]
I/flutter ( 6449): ║                        }
I/flutter ( 6449): ║                         "rules": {
I/flutter ( 6449): ║                             "premiumLargeSaladSelectionType": "premium_large_salad",
I/flutter ( 6449): ║                             "excludedGroupKeys": [extra_protein_50g]
I/flutter ( 6449): ║                             "premium_meal": {
I/flutter ( 6449): ║                                 "upgradeType": "premium_protein",
I/flutter ( 6449): ║                                 "linkedProductKey": "basic_meal",
I/flutter ( 6449): ║                                 "premiumProteinOptions": [
I/flutter ( 6449): ║                                  {optionKey: beef_steak, extraFeeHalala: 2000, enabled: true, sortOrder: 50},
I/flutter ( 6449): ║                                  {optionKey: shrimp, extraFeeHalala: 2000, enabled: true, sortOrder: 60},
I/flutter ( 6449): ║                                  {optionKey: salmon, extraFeeHalala: 2000, enabled: true, sortOrder: 70}
I/flutter ( 6449): ║                                 ]
I/flutter ( 6449): ║                            }
I/flutter ( 6449): ║                             "premium_large_salad": {
I/flutter ( 6449): ║                                 "upgradeType": "premium_large_salad",
I/flutter ( 6449): ║                                 "linkedProductKey": "premium_large_salad",
I/flutter ( 6449): ║                                 "extraFeeHalala": 2900,
I/flutter ( 6449): ║                                 "blockedGroupKeys": [extra_protein_50g]
I/flutter ( 6449): ║                                 "groups": [
I/flutter ( 6449): ║                                    {
I/flutter ( 6449): ║                                         "groupKey": "leafy_greens"
I/flutter ( 6449): ║                                         "enabled": true,
I/flutter ( 6449): ║                                         "minSelections": 0,
I/flutter ( 6449): ║                                         "maxSelections": 2,
I/flutter ( 6449): ║                                         "allowedOptionKeys": []
I/flutter ( 6449): ║                                    },
I/flutter ( 6449): ║                                    {
I/flutter ( 6449): ║                                         "groupKey": "vegetables_legumes"
I/flutter ( 6449): ║                                         "enabled": true,
I/flutter ( 6449): ║                                         "minSelections": 0,
I/flutter ( 6449): ║                                         "maxSelections": 19,
I/flutter ( 6449): ║                                         "allowedOptionKeys": []
I/flutter ( 6449): ║                                    },
I/flutter ( 6449): ║                                    {
I/flutter ( 6449): ║                                         "groupKey": "proteins",
I/flutter ( 6449): ║                                         "enabled": true,
I/flutter ( 6449): ║                                         "minSelections": 1,
I/flutter ( 6449): ║                                         "maxSelections": 1,
I/flutter ( 6449): ║                                         "allowedOptionKeys": [
I/flutter ( 6449): ║                                                 boiled_eggs,
I/flutter ( 6449): ║                                                 tuna,
I/flutter ( 6449): ║                                                 chicken_fajita,
I/flutter ( 6449): ║                                                 spicy_chicken,
I/flutter ( 6449): ║                                                 italian_spiced_chicken,
I/flutter ( 6449): ║                                                 chicken_tikka,
I/flutter ( 6449): ║                                                 asian_chicken,
I/flutter ( 6449): ║                                                 chicken_strips,
I/flutter ( 6449): ║                                                 grilled_chicken,
I/flutter ( 6449): ║                                                 mexican_chicken,
I/flutter ( 6449): ║                                                 fish_fillet
I/flutter ( 6449): ║                                         ]
I/flutter ( 6449): ║                                    }
I/flutter ( 6449): ║                                 ]
I/flutter ( 6449): ║                            }
I/flutter ( 6449): ║                        }
I/flutter ( 6449): ║                         "products": [
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a49582e991f8d73bc7a22ec",
I/flutter ( 6449): ║                                 "productId": "6a49582e991f8d73bc7a22ec",
I/flutter ( 6449): ║                                 "key": "basic_meal",
I/flutter ( 6449): ║                                 "name": "Basic Meal",
I/flutter ( 6449): ║                                 "nameI18n": {ar: وجبة بيسك, en: Basic Meal},
I/flutter ( 6449): ║                                 "itemType": "basic_meal",
I/flutter ( 6449): ║                                 "selectionType": "premium_meal",
I/flutter ( 6449): ║                                 "pricing": {model: per_100g, basePriceHalala: 1900, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: open_builder, requiresBuilder: true},
I/flutter ( 6449): ║                                 "optionGroups": [
I/flutter ( 6449): ║                                    {
I/flutter ( 6449): ║                                         "id": "6a49575a991f8d73bc7a1ff5"
I/flutter ( 6449): ║                                         "groupId": "6a49575a991f8d73bc7a1ff5"
I/flutter ( 6449): ║                                         "key": "proteins",
I/flutter ( 6449): ║                                         "sourceKey": "proteins",
I/flutter ( 6449): ║                                         "name": "Premium",
I/flutter ( 6449): ║                                         "nameI18n": {ar: مميز, en: Premium},
I/flutter ( 6449): ║                                         "minSelections": 1,
I/flutter ( 6449): ║                                         "maxSelections": 1,
I/flutter ( 6449): ║                                         "required": true,
I/flutter ( 6449): ║                                         "isRequired": true,
I/flutter ( 6449): ║                                         "sortOrder": 2,
I/flutter ( 6449): ║                                         "options": [
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49575e991f8d73bc7a2004"
I/flutter ( 6449): ║                                                 "optionId": "6a49575e991f8d73bc7a2004"
I/flutter ( 6449): ║                                                 "key": "beef_steak"
I/flutter ( 6449): ║                                                 "name": "Beef Steak"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: ستيك لحم, en: Beef Steak},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_meal"
I/flutter ( 6449): ║                                                 "isPremium": true
I/flutter ( 6449): ║                                                 "premiumKey": "beef_steak"
I/flutter ( 6449): ║                                                 "premiumKind": "premium_protein"
I/flutter ( 6449): ║                                                 "extraPriceHalala": 2000
I/flutter ( 6449): ║                                                 "extraFeeHalala": 2000
I/flutter ( 6449): ║                                                 "sortOrder": 50
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49575f991f8d73bc7a2007"
I/flutter ( 6449): ║                                                 "optionId": "6a49575f991f8d73bc7a2007"
I/flutter ( 6449): ║                                                 "key": "shrimp"
I/flutter ( 6449): ║                                                 "name": "Shrimp"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: جمبري, en: Shrimp},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_meal"
I/flutter ( 6449): ║                                                 "isPremium": true
I/flutter ( 6449): ║                                                 "premiumKey": "shrimp"
I/flutter ( 6449): ║                                                 "premiumKind": "premium_protein"
I/flutter ( 6449): ║                                                 "extraPriceHalala": 2000
I/flutter ( 6449): ║                                                 "extraFeeHalala": 2000
I/flutter ( 6449): ║                                                 "sortOrder": 60
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495760991f8d73bc7a200a"
I/flutter ( 6449): ║                                                 "optionId": "6a495760991f8d73bc7a200a"
I/flutter ( 6449): ║                                                 "key": "salmon"
I/flutter ( 6449): ║                                                 "name": "Salmon"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: سالمون, en: Salmon},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_meal"
I/flutter ( 6449): ║                                                 "isPremium": true
I/flutter ( 6449): ║                                                 "premiumKey": "salmon"
I/flutter ( 6449): ║                                                 "premiumKind": "premium_protein"
I/flutter ( 6449): ║                                                 "extraPriceHalala": 2000
I/flutter ( 6449): ║                                                 "extraFeeHalala": 2000
I/flutter ( 6449): ║                                                 "sortOrder": 70
I/flutter ( 6449): ║                                            }
I/flutter ( 6449): ║                                         ]
I/flutter ( 6449): ║                                    }
I/flutter ( 6449): ║                                 ]
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a495842991f8d73bc7a2346",
I/flutter ( 6449): ║                                 "productId": "6a495842991f8d73bc7a2346",
I/flutter ( 6449): ║                                 "key": "premium_large_salad",
I/flutter ( 6449): ║                                 "name": "Premium Large Salad",
I/flutter ( 6449): ║                                 "nameI18n": {ar: سلطة كبيرة مميزة, en: Premium Large Salad},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "basic_salad",
I/flutter ( 6449): ║                                 "selectionType": "premium_large_salad",
I/flutter ( 6449): ║                                 "premiumKey": "premium_large_salad",
I/flutter ( 6449): ║                                 "premiumKind": "premium_large_salad",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 2900, extraFeeHalala: 2900, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: open_builder, requiresBuilder: true},
I/flutter ( 6449): ║                                 "optionGroups": [
I/flutter ( 6449): ║                                    {
I/flutter ( 6449): ║                                         "id": "6a495778991f8d73bc7a2055"
I/flutter ( 6449): ║                                         "groupId": "6a495778991f8d73bc7a2055"
I/flutter ( 6449): ║                                         "key": "leafy_greens"
I/flutter ( 6449): ║                                         "sourceKey": "leafy_greens"
I/flutter ( 6449): ║                                         "name": "Leafy Greens"
I/flutter ( 6449): ║                                         "nameI18n": {ar: ورقيات, en: Leafy Greens},
I/flutter ( 6449): ║                                         "minSelections": 0,
I/flutter ( 6449): ║                                         "maxSelections": 2,
I/flutter ( 6449): ║                                         "required": false,
I/flutter ( 6449): ║                                         "isRequired": false,
I/flutter ( 6449): ║                                         "sortOrder": 10,
I/flutter ( 6449): ║                                         "options": [
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495779991f8d73bc7a2058"
I/flutter ( 6449): ║                                                 "optionId": "6a495779991f8d73bc7a2058"
I/flutter ( 6449): ║                                                 "key": "lettuce"
I/flutter ( 6449): ║                                                 "name": "Lettuce"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: خس, en: Lettuce},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 10
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495779991f8d73bc7a205b"
I/flutter ( 6449): ║                                                 "optionId": "6a495779991f8d73bc7a205b"
I/flutter ( 6449): ║                                                 "key": "arugula"
I/flutter ( 6449): ║                                                 "name": "Arugula"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: جرجير, en: Arugula},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 20
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49577a991f8d73bc7a205e"
I/flutter ( 6449): ║                                                 "optionId": "6a49577a991f8d73bc7a205e"
I/flutter ( 6449): ║                                                 "key": "cabbage"
I/flutter ( 6449): ║                                                 "name": "Cabbage"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: ملفوف, en: Cabbage},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 30
I/flutter ( 6449): ║                                            }
I/flutter ( 6449): ║                                         ]
I/flutter ( 6449): ║                                    },
I/flutter ( 6449): ║                                    {
I/flutter ( 6449): ║                                         "id": "6a49577d991f8d73bc7a2064"
I/flutter ( 6449): ║                                         "groupId": "6a49577d991f8d73bc7a2064"
I/flutter ( 6449): ║                                         "key": "vegetables_legumes"
I/flutter ( 6449): ║                                         "sourceKey": "vegetables_legumes"
I/flutter ( 6449): ║                                         "name": "Vegetables & Legumes"
I/flutter ( 6449): ║                                         "nameI18n": {ar: خضراوات وبقوليات, en: Vegetables & Legumes},
I/flutter ( 6449): ║                                         "minSelections": 0,
I/flutter ( 6449): ║                                         "maxSelections": 19,
I/flutter ( 6449): ║                                         "required": false,
I/flutter ( 6449): ║                                         "isRequired": false,
I/flutter ( 6449): ║                                         "sortOrder": 20,
I/flutter ( 6449): ║                                         "options": [
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49577e991f8d73bc7a2067"
I/flutter ( 6449): ║                                                 "optionId": "6a49577e991f8d73bc7a2067"
I/flutter ( 6449): ║                                                 "key": "tomato"
I/flutter ( 6449): ║                                                 "name": "Tomato"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: طماطم, en: Tomato},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 10
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49577f991f8d73bc7a206a"
I/flutter ( 6449): ║                                                 "optionId": "6a49577f991f8d73bc7a206a"
I/flutter ( 6449): ║                                                 "key": "carrot"
I/flutter ( 6449): ║                                                 "name": "Carrot"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: جزر, en: Carrot},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 20
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495781991f8d73bc7a206d"
I/flutter ( 6449): ║                                                 "optionId": "6a495781991f8d73bc7a206d"
I/flutter ( 6449): ║                                                 "key": "cucumber"
I/flutter ( 6449): ║                                                 "name": "Cucumber"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: خيار, en: Cucumber},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 30
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495783991f8d73bc7a2070"
I/flutter ( 6449): ║                                                 "optionId": "6a495783991f8d73bc7a2070"
I/flutter ( 6449): ║                                                 "key": "corn"
I/flutter ( 6449): ║                                                 "name": "Corn"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: ذرة, en: Corn},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 40
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495786991f8d73bc7a2073"
I/flutter ( 6449): ║                                                 "optionId": "6a495786991f8d73bc7a2073"
I/flutter ( 6449): ║                                                 "key": "hummus"
I/flutter ( 6449): ║                                                 "name": "Hummus"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: حمص, en: Hummus},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 50
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495789991f8d73bc7a2076"
I/flutter ( 6449): ║                                                 "optionId": "6a495789991f8d73bc7a2076"
I/flutter ( 6449): ║                                                 "key": "jalapeno"
I/flutter ( 6449): ║                                                 "name": "Jalapeno"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: هالبينو, en: Jalapeno},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 60
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49578b991f8d73bc7a2079"
I/flutter ( 6449): ║                                                 "optionId": "6a49578b991f8d73bc7a2079"
I/flutter ( 6449): ║                                                 "key": "red_beans"
I/flutter ( 6449): ║                                                 "name": "Red Beans"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: فاصوليا حمراء, en: Red Beans},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 70
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49578c991f8d73bc7a207c"
I/flutter ( 6449): ║                                                 "optionId": "6a49578c991f8d73bc7a207c"
I/flutter ( 6449): ║                                                 "key": "beetroot"
I/flutter ( 6449): ║                                                 "name": "Beetroot"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: بنجر, en: Beetroot},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 80
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49578f991f8d73bc7a207f"
I/flutter ( 6449): ║                                                 "optionId": "6a49578f991f8d73bc7a207f"
I/flutter ( 6449): ║                                                 "key": "hot_pepper"
I/flutter ( 6449): ║                                                 "name": "Hot Pepper"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: فلفل حار, en: Hot Pepper},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 90
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495790991f8d73bc7a2082"
I/flutter ( 6449): ║                                                 "optionId": "6a495790991f8d73bc7a2082"
I/flutter ( 6449): ║                                                 "key": "coriander"
I/flutter ( 6449): ║                                                 "name": "Coriander"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: كزبرة, en: Coriander},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 100
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495791991f8d73bc7a2085"
I/flutter ( 6449): ║                                                 "optionId": "6a495791991f8d73bc7a2085"
I/flutter ( 6449): ║                                                 "key": "mushroom"
I/flutter ( 6449): ║                                                 "name": "Mushroom"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: فطر, en: Mushroom},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 110
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495791991f8d73bc7a2088"
I/flutter ( 6449): ║                                                 "optionId": "6a495791991f8d73bc7a2088"
I/flutter ( 6449): ║                                                 "key": "broccoli"
I/flutter ( 6449): ║                                                 "name": "Broccoli"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: بروكلي, en: Broccoli},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 120
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495793991f8d73bc7a208b"
I/flutter ( 6449): ║                                                 "optionId": "6a495793991f8d73bc7a208b"
I/flutter ( 6449): ║                                                 "key": "salad_grilled_mixed_vegetables"
I/flutter ( 6449): ║                                                 "name": "Grilled Mixed Vegetables"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: خضار مشكل مشوي, en: Grilled Mixed Vegetables},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 130
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495794991f8d73bc7a208e"
I/flutter ( 6449): ║                                                 "optionId": "6a495794991f8d73bc7a208e"
I/flutter ( 6449): ║                                                 "key": "red_onion"
I/flutter ( 6449): ║                                                 "name": "Red Onion"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: بصل احمر, en: Red Onion},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 140
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495795991f8d73bc7a2091"
I/flutter ( 6449): ║                                                 "optionId": "6a495795991f8d73bc7a2091"
I/flutter ( 6449): ║                                                 "key": "green_onion"
I/flutter ( 6449): ║                                                 "name": "Green Onion"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: بصل اخضر, en: Green Onion},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 150
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495795991f8d73bc7a2094"
I/flutter ( 6449): ║                                                 "optionId": "6a495795991f8d73bc7a2094"
I/flutter ( 6449): ║                                                 "key": "green_olives"
I/flutter ( 6449): ║                                                 "name": "Green Olives"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: زيتون اخضر, en: Green Olives},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 160
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495796991f8d73bc7a2097"
I/flutter ( 6449): ║                                                 "optionId": "6a495796991f8d73bc7a2097"
I/flutter ( 6449): ║                                                 "key": "black_olives"
I/flutter ( 6449): ║                                                 "name": "Black Olives"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: زيتون اسود, en: Black Olives},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 170
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495797991f8d73bc7a209a"
I/flutter ( 6449): ║                                                 "optionId": "6a495797991f8d73bc7a209a"
I/flutter ( 6449): ║                                                 "key": "mint"
I/flutter ( 6449): ║                                                 "name": "Mint"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: نعناع, en: Mint},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 180
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495798991f8d73bc7a209d"
I/flutter ( 6449): ║                                                 "optionId": "6a495798991f8d73bc7a209d"
I/flutter ( 6449): ║                                                 "key": "pickled_onion"
I/flutter ( 6449): ║                                                 "name": "Pickled Onion"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: بصل مخلل, en: Pickled Onion},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 190
I/flutter ( 6449): ║                                            }
I/flutter ( 6449): ║                                         ]
I/flutter ( 6449): ║                                    },
I/flutter ( 6449): ║                                    {
I/flutter ( 6449): ║                                         "id": "6a4957a0991f8d73bc7a20b8"
I/flutter ( 6449): ║                                         "groupId": "6a4957a0991f8d73bc7a20b8"
I/flutter ( 6449): ║                                         "key": "fruits",
I/flutter ( 6449): ║                                         "sourceKey": "fruits",
I/flutter ( 6449): ║                                         "name": "Fruits",
I/flutter ( 6449): ║                                         "nameI18n": {ar: فواكه, en: Fruits},
I/flutter ( 6449): ║                                         "minSelections": 0,
I/flutter ( 6449): ║                                         "maxSelections": 4,
I/flutter ( 6449): ║                                         "required": false,
I/flutter ( 6449): ║                                         "isRequired": false,
I/flutter ( 6449): ║                                         "sortOrder": 30,
I/flutter ( 6449): ║                                         "options": [
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957a2991f8d73bc7a20bb"
I/flutter ( 6449): ║                                                 "optionId": "6a4957a2991f8d73bc7a20bb"
I/flutter ( 6449): ║                                                 "key": "mango"
I/flutter ( 6449): ║                                                 "name": "Mango"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: مانجا, en: Mango},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 10
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957a4991f8d73bc7a20be"
I/flutter ( 6449): ║                                                 "optionId": "6a4957a4991f8d73bc7a20be"
I/flutter ( 6449): ║                                                 "key": "green_apple"
I/flutter ( 6449): ║                                                 "name": "Green Apple"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: تفاح اخضر, en: Green Apple},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 20
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957a4991f8d73bc7a20c1"
I/flutter ( 6449): ║                                                 "optionId": "6a4957a4991f8d73bc7a20c1"
I/flutter ( 6449): ║                                                 "key": "pomegranate"
I/flutter ( 6449): ║                                                 "name": "Pomegranate"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: رمان, en: Pomegranate},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 30
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957a6991f8d73bc7a20c4"
I/flutter ( 6449): ║                                                 "optionId": "6a4957a6991f8d73bc7a20c4"
I/flutter ( 6449): ║                                                 "key": "strawberry"
I/flutter ( 6449): ║                                                 "name": "Strawberry"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: فراولة, en: Strawberry},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 40
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957a7991f8d73bc7a20c7"
I/flutter ( 6449): ║                                                 "optionId": "6a4957a7991f8d73bc7a20c7"
I/flutter ( 6449): ║                                                 "key": "blueberry"
I/flutter ( 6449): ║                                                 "name": "Blueberry"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: توت ازرق, en: Blueberry},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 50
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957a8991f8d73bc7a20ca"
I/flutter ( 6449): ║                                                 "optionId": "6a4957a8991f8d73bc7a20ca"
I/flutter ( 6449): ║                                                 "key": "raspberry"
I/flutter ( 6449): ║                                                 "name": "Raspberry"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: توت احمر, en: Raspberry},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 60
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957a8991f8d73bc7a20cd"
I/flutter ( 6449): ║                                                 "optionId": "6a4957a8991f8d73bc7a20cd"
I/flutter ( 6449): ║                                                 "key": "watermelon"
I/flutter ( 6449): ║                                                 "name": "Watermelon"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: بطيخ, en: Watermelon},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 70
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957a9991f8d73bc7a20d0"
I/flutter ( 6449): ║                                                 "optionId": "6a4957a9991f8d73bc7a20d0"
I/flutter ( 6449): ║                                                 "key": "cantaloupe"
I/flutter ( 6449): ║                                                 "name": "Cantaloupe"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: شمام, en: Cantaloupe},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 80
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957aa991f8d73bc7a20d3"
I/flutter ( 6449): ║                                                 "optionId": "6a4957aa991f8d73bc7a20d3"
I/flutter ( 6449): ║                                                 "key": "dates"
I/flutter ( 6449): ║                                                 "name": "Dates"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: تمر, en: Dates},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 90
I/flutter ( 6449): ║                                            }
I/flutter ( 6449): ║                                         ]
I/flutter ( 6449): ║                                    },
I/flutter ( 6449): ║                                    {
I/flutter ( 6449): ║                                         "id": "6a49575a991f8d73bc7a1ff5"
I/flutter ( 6449): ║                                         "groupId": "6a49575a991f8d73bc7a1ff5"
I/flutter ( 6449): ║                                         "key": "proteins",
I/flutter ( 6449): ║                                         "sourceKey": "proteins",
I/flutter ( 6449): ║                                         "name": "Proteins",
I/flutter ( 6449): ║                                         "nameI18n": {ar: بروتينات, en: Proteins},
I/flutter ( 6449): ║                                         "minSelections": 1,
I/flutter ( 6449): ║                                         "maxSelections": 1,
I/flutter ( 6449): ║                                         "required": true,
I/flutter ( 6449): ║                                         "isRequired": true,
I/flutter ( 6449): ║                                         "sortOrder": 40,
I/flutter ( 6449): ║                                         "options": [
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495761991f8d73bc7a200d"
I/flutter ( 6449): ║                                                 "optionId": "6a495761991f8d73bc7a200d"
I/flutter ( 6449): ║                                                 "key": "boiled_eggs"
I/flutter ( 6449): ║                                                 "name": "Boiled Eggs"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: بيض مسلوق, en: Boiled Eggs},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 10
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495762991f8d73bc7a2013"
I/flutter ( 6449): ║                                                 "optionId": "6a495762991f8d73bc7a2013"
I/flutter ( 6449): ║                                                 "key": "chicken_fajita"
I/flutter ( 6449): ║                                                 "name": "Chicken Fajita"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: فاهيتا, en: Chicken Fajita},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 30
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495763991f8d73bc7a2016"
I/flutter ( 6449): ║                                                 "optionId": "6a495763991f8d73bc7a2016"
I/flutter ( 6449): ║                                                 "key": "spicy_chicken"
I/flutter ( 6449): ║                                                 "name": "Spicy Chicken"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: دجاج سبايسي, en: Spicy Chicken},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 40
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495764991f8d73bc7a2019"
I/flutter ( 6449): ║                                                 "optionId": "6a495764991f8d73bc7a2019"
I/flutter ( 6449): ║                                                 "key": "italian_spiced_chicken"
I/flutter ( 6449): ║                                                 "name": "Italian Spiced Chicken"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: دجاج توابل إيطالية, en: Italian Spiced Chicken},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 50
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495765991f8d73bc7a201c"
I/flutter ( 6449): ║                                                 "optionId": "6a495765991f8d73bc7a201c"
I/flutter ( 6449): ║                                                 "key": "chicken_tikka"
I/flutter ( 6449): ║                                                 "name": "Chicken Tikka"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: دجاج تكا, en: Chicken Tikka},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 60
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495766991f8d73bc7a201f"
I/flutter ( 6449): ║                                                 "optionId": "6a495766991f8d73bc7a201f"
I/flutter ( 6449): ║                                                 "key": "asian_chicken"
I/flutter ( 6449): ║                                                 "name": "Asian Chicken"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: دجاج آسيوي, en: Asian Chicken},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 70
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495767991f8d73bc7a2022"
I/flutter ( 6449): ║                                                 "optionId": "6a495767991f8d73bc7a2022"
I/flutter ( 6449): ║                                                 "key": "chicken_strips"
I/flutter ( 6449): ║                                                 "name": "Chicken Strips"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: استربس, en: Chicken Strips},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 80
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495767991f8d73bc7a2025"
I/flutter ( 6449): ║                                                 "optionId": "6a495767991f8d73bc7a2025"
I/flutter ( 6449): ║                                                 "key": "grilled_chicken"
I/flutter ( 6449): ║                                                 "name": "Grilled Chicken"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: دجاج مشوي, en: Grilled Chicken},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 90
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495768991f8d73bc7a2028"
I/flutter ( 6449): ║                                                 "optionId": "6a495768991f8d73bc7a2028"
I/flutter ( 6449): ║                                                 "key": "mexican_chicken"
I/flutter ( 6449): ║                                                 "name": "Mexican Chicken"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: دجاج مكسيكي, en: Mexican Chicken},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 100
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49576a991f8d73bc7a2031"
I/flutter ( 6449): ║                                                 "optionId": "6a49576a991f8d73bc7a2031"
I/flutter ( 6449): ║                                                 "key": "fish_fillet"
I/flutter ( 6449): ║                                                 "name": "Fish Fillet"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: سمك فيليه, en: Fish Fillet},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 110
I/flutter ( 6449): ║                                            }
I/flutter ( 6449): ║                                         ]
I/flutter ( 6449): ║                                    },
I/flutter ( 6449): ║                                    {
I/flutter ( 6449): ║                                         "id": "6a495798991f8d73bc7a20a0"
I/flutter ( 6449): ║                                         "groupId": "6a495798991f8d73bc7a20a0"
I/flutter ( 6449): ║                                         "key": "cheese_nuts"
I/flutter ( 6449): ║                                         "sourceKey": "cheese_nuts"
I/flutter ( 6449): ║                                         "name": "Cheese & Nuts"
I/flutter ( 6449): ║                                         "nameI18n": {ar: الاجبان و المكسرات, en: Cheese & Nuts},
I/flutter ( 6449): ║                                         "minSelections": 0,
I/flutter ( 6449): ║                                         "maxSelections": 2,
I/flutter ( 6449): ║                                         "required": false,
I/flutter ( 6449): ║                                         "isRequired": false,
I/flutter ( 6449): ║                                         "sortOrder": 50,
I/flutter ( 6449): ║                                         "options": [
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495799991f8d73bc7a20a3"
I/flutter ( 6449): ║                                                 "optionId": "6a495799991f8d73bc7a20a3"
I/flutter ( 6449): ║                                                 "key": "cashew"
I/flutter ( 6449): ║                                                 "name": "Cashew"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: كاجو, en: Cashew},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 10
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49579a991f8d73bc7a20a6"
I/flutter ( 6449): ║                                                 "optionId": "6a49579a991f8d73bc7a20a6"
I/flutter ( 6449): ║                                                 "key": "walnut"
I/flutter ( 6449): ║                                                 "name": "Walnut"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: عين الجمل, en: Walnut},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 20
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49579b991f8d73bc7a20a9"
I/flutter ( 6449): ║                                                 "optionId": "6a49579b991f8d73bc7a20a9"
I/flutter ( 6449): ║                                                 "key": "sesame"
I/flutter ( 6449): ║                                                 "name": "Sesame"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: سمسم, en: Sesame},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 30
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49579b991f8d73bc7a20ac"
I/flutter ( 6449): ║                                                 "optionId": "6a49579b991f8d73bc7a20ac"
I/flutter ( 6449): ║                                                 "key": "feta"
I/flutter ( 6449): ║                                                 "name": "Feta"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: فيتا, en: Feta},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 40
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49579c991f8d73bc7a20af"
I/flutter ( 6449): ║                                                 "optionId": "6a49579c991f8d73bc7a20af"
I/flutter ( 6449): ║                                                 "key": "parmesan"
I/flutter ( 6449): ║                                                 "name": "Parmesan"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: بارميزان, en: Parmesan},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 50
I/flutter ( 6449): ║                                            }
I/flutter ( 6449): ║                                         ]
I/flutter ( 6449): ║                                    },
I/flutter ( 6449): ║                                    {
I/flutter ( 6449): ║                                         "id": "6a4957ac991f8d73bc7a20d9"
I/flutter ( 6449): ║                                         "groupId": "6a4957ac991f8d73bc7a20d9"
I/flutter ( 6449): ║                                         "key": "sauces",
I/flutter ( 6449): ║                                         "sourceKey": "sauces",
I/flutter ( 6449): ║                                         "name": "Sauces",
I/flutter ( 6449): ║                                         "nameI18n": {ar: الصوصات, en: Sauces},
I/flutter ( 6449): ║                                         "minSelections": 1,
I/flutter ( 6449): ║                                         "maxSelections": 1,
I/flutter ( 6449): ║                                         "required": true,
I/flutter ( 6449): ║                                         "isRequired": true,
I/flutter ( 6449): ║                                         "sortOrder": 60,
I/flutter ( 6449): ║                                         "options": [
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957ad991f8d73bc7a20dc"
I/flutter ( 6449): ║                                                 "optionId": "6a4957ad991f8d73bc7a20dc"
I/flutter ( 6449): ║                                                 "key": "ranch"
I/flutter ( 6449): ║                                                 "name": "Ranch"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: رانش, en: Ranch},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 10
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957ad991f8d73bc7a20df"
I/flutter ( 6449): ║                                                 "optionId": "6a4957ad991f8d73bc7a20df"
I/flutter ( 6449): ║                                                 "key": "spicy_ranch"
I/flutter ( 6449): ║                                                 "name": "Spicy Ranch"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: سبايسي رانش, en: Spicy Ranch},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 20
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957ae991f8d73bc7a20e2"
I/flutter ( 6449): ║                                                 "optionId": "6a4957ae991f8d73bc7a20e2"
I/flutter ( 6449): ║                                                 "key": "pesto_sauce"
I/flutter ( 6449): ║                                                 "name": "Pesto Sauce"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: صوص بيستو, en: Pesto Sauce},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 30
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957af991f8d73bc7a20e5"
I/flutter ( 6449): ║                                                 "optionId": "6a4957af991f8d73bc7a20e5"
I/flutter ( 6449): ║                                                 "key": "balsamic"
I/flutter ( 6449): ║                                                 "name": "Balsamic"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: بالسميك, en: Balsamic},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 40
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957af991f8d73bc7a20e8"
I/flutter ( 6449): ║                                                 "optionId": "6a4957af991f8d73bc7a20e8"
I/flutter ( 6449): ║                                                 "key": "caesar"
I/flutter ( 6449): ║                                                 "name": "Caesar"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: سيزر, en: Caesar},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 50
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957b0991f8d73bc7a20eb"
I/flutter ( 6449): ║                                                 "optionId": "6a4957b0991f8d73bc7a20eb"
I/flutter ( 6449): ║                                                 "key": "honey_mustard"
I/flutter ( 6449): ║                                                 "name": "Honey Mustard"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: هاني ماستر, en: Honey Mustard},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 60
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957b1991f8d73bc7a20ee"
I/flutter ( 6449): ║                                                 "optionId": "6a4957b1991f8d73bc7a20ee"
I/flutter ( 6449): ║                                                 "key": "yogurt_mint"
I/flutter ( 6449): ║                                                 "name": "Yogurt Mint"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: زبادي بالنعناع, en: Yogurt Mint},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 70
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a4957b1991f8d73bc7a20f1"
I/flutter ( 6449): ║                                                 "optionId": "6a4957b1991f8d73bc7a20f1"
I/flutter ( 6449): ║                                                 "key": "honey_garlic"
I/flutter ( 6449): ║                                                 "name": "Honey Garlic"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: عسل بالثوم, en: Honey Garlic},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "premium_large_salad"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 80
I/flutter ( 6449): ║                                            }
I/flutter ( 6449): ║                                         ]
I/flutter ( 6449): ║                                    }
I/flutter ( 6449): ║                                 ],
I/flutter ( 6449): ║                                 "sortOrder": 30
I/flutter ( 6449): ║                            }
I/flutter ( 6449): ║                         ]
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "section:sandwich",
I/flutter ( 6449): ║                         "key": "sandwich",
I/flutter ( 6449): ║                         "type": "product_list",
I/flutter ( 6449): ║                         "builderSectionType": "product_list",
I/flutter ( 6449): ║                         "source": {kind: product_category, categoryKey: sandwich},
I/flutter ( 6449): ║                         "name": "Sandwiches",
I/flutter ( 6449): ║                         "nameI18n": {ar: ساندوتشات, en: Sandwiches},
I/flutter ( 6449): ║                         "sortOrder": 3,
I/flutter ( 6449): ║                         "ui": {requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                         "rules": {carbsRequired: false},
I/flutter ( 6449): ║                         "products": [
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4958a6991f8d73bc7a24e7",
I/flutter ( 6449): ║                                 "productId": "6a4958a6991f8d73bc7a24e7",
I/flutter ( 6449): ║                                 "key": "turkey_cold_sandwich",
I/flutter ( 6449): ║                                 "name": "Turkey",
I/flutter ( 6449): ║                                 "nameI18n": {ar: تركي, en: Turkey},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "cold_sandwich",
I/flutter ( 6449): ║                                 "selectionType": "sandwich",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 1300, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 200
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4958a7991f8d73bc7a24ea",
I/flutter ( 6449): ║                                 "productId": "6a4958a7991f8d73bc7a24ea",
I/flutter ( 6449): ║                                 "key": "boiled_egg_cold_sandwich",
I/flutter ( 6449): ║                                 "name": "Boiled Egg",
I/flutter ( 6449): ║                                 "nameI18n": {ar: بيض مسلوق, en: Boiled Egg},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "cold_sandwich",
I/flutter ( 6449): ║                                 "selectionType": "sandwich",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 900, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 210
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4958a7991f8d73bc7a24ed",
I/flutter ( 6449): ║                                 "productId": "6a4958a7991f8d73bc7a24ed",
I/flutter ( 6449): ║                                 "key": "tuna_cold_sandwich",
I/flutter ( 6449): ║                                 "name": "Tuna",
I/flutter ( 6449): ║                                 "nameI18n": {ar: تونا, en: Tuna},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "cold_sandwich",
I/flutter ( 6449): ║                                 "selectionType": "sandwich",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 1300, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 220
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4958a8991f8d73bc7a24f0",
I/flutter ( 6449): ║                                 "productId": "6a4958a8991f8d73bc7a24f0",
I/flutter ( 6449): ║                                 "key": "scrambled_egg_cold_sandwich"
I/flutter ( 6449): ║                                 "name": "Scrambled Egg",
I/flutter ( 6449): ║                                 "nameI18n": {ar: بيض مخفوق, en: Scrambled Egg},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "cold_sandwich",
I/flutter ( 6449): ║                                 "selectionType": "sandwich",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 900, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 230
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4958a9991f8d73bc7a24f3",
I/flutter ( 6449): ║                                 "productId": "6a4958a9991f8d73bc7a24f3",
I/flutter ( 6449): ║                                 "key": "classic_halloumi_cold_sandwich"
I/flutter ( 6449): ║                                 "name": "Classic Halloumi",
I/flutter ( 6449): ║                                 "nameI18n": {ar: حلوم كلاسيك, en: Classic Halloumi},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "cold_sandwich",
I/flutter ( 6449): ║                                 "selectionType": "sandwich",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 1100, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 240
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4958aa991f8d73bc7a24f6",
I/flutter ( 6449): ║                                 "productId": "6a4958aa991f8d73bc7a24f6",
I/flutter ( 6449): ║                                 "key": "chicken_fajita_cold_sandwich"
I/flutter ( 6449): ║                                 "name": "Chicken Fajita",
I/flutter ( 6449): ║                                 "nameI18n": {ar: دجاج فاهيتا, en: Chicken Fajita},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "cold_sandwich",
I/flutter ( 6449): ║                                 "selectionType": "sandwich",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 1300, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 250
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4958aa991f8d73bc7a24f9",
I/flutter ( 6449): ║                                 "productId": "6a4958aa991f8d73bc7a24f9",
I/flutter ( 6449): ║                                 "key": "mexican_chicken_cold_sandwich"
I/flutter ( 6449): ║                                 "name": "Mexican Chicken",
I/flutter ( 6449): ║                                 "nameI18n": {ar: دجاج مكسيكي, en: Mexican Chicken},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "cold_sandwich",
I/flutter ( 6449): ║                                 "selectionType": "sandwich",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 1300, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 260
I/flutter ( 6449): ║                            },
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a4958ab991f8d73bc7a24fc",
I/flutter ( 6449): ║                                 "productId": "6a4958ab991f8d73bc7a24fc",
I/flutter ( 6449): ║                                 "key": "grilled_chicken_cold_sandwich"
I/flutter ( 6449): ║                                 "name": "Grilled Chicken",
I/flutter ( 6449): ║                                 "nameI18n": {ar: دجاج مشوي, en: Grilled Chicken},
I/flutter ( 6449): ║                                 "imageUrl": "",
I/flutter ( 6449): ║                                 "itemType": "cold_sandwich",
I/flutter ( 6449): ║                                 "selectionType": "sandwich",
I/flutter ( 6449): ║                                 "pricing": {priceHalala: 1300, extraFeeHalala: 0, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
I/flutter ( 6449): ║                                 "optionGroups": []
I/flutter ( 6449): ║                                 "sortOrder": 270
I/flutter ( 6449): ║                            }
I/flutter ( 6449): ║                         ]
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "section:chicken",
I/flutter ( 6449): ║                         "key": "chicken",
I/flutter ( 6449): ║                         "type": "configurable_product",
I/flutter ( 6449): ║                         "builderSectionType": "option_family",
I/flutter ( 6449): ║                         "source": {kind: option_family, groupKey: proteins, displayCategoryKey: chicken},
I/flutter ( 6449): ║                         "name": "Chicken",
I/flutter ( 6449): ║                         "nameI18n": {ar: دجاج, en: Chicken},
I/flutter ( 6449): ║                         "sortOrder": 4,
I/flutter ( 6449): ║                         "ui": {visualRole: protein_family, proteinFamilyKey: chicken},
I/flutter ( 6449): ║                         "rules": {},
I/flutter ( 6449): ║                         "products": [
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a49582e991f8d73bc7a22ec",
I/flutter ( 6449): ║                                 "productId": "6a49582e991f8d73bc7a22ec",
I/flutter ( 6449): ║                                 "key": "basic_meal",
I/flutter ( 6449): ║                                 "name": "Basic Meal",
I/flutter ( 6449): ║                                 "nameI18n": {ar: وجبة بيسك, en: Basic Meal},
I/flutter ( 6449): ║                                 "itemType": "basic_meal",
I/flutter ( 6449): ║                                 "selectionType": "standard_meal",
I/flutter ( 6449): ║                                 "pricing": {model: per_100g, basePriceHalala: 1900, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: open_builder, requiresBuilder: true},
I/flutter ( 6449): ║                                 "optionGroups": [
I/flutter ( 6449): ║                                    {
I/flutter ( 6449): ║                                         "id": "6a49575a991f8d73bc7a1ff5"
I/flutter ( 6449): ║                                         "groupId": "6a49575a991f8d73bc7a1ff5"
I/flutter ( 6449): ║                                         "key": "proteins",
I/flutter ( 6449): ║                                         "sourceKey": "proteins",
I/flutter ( 6449): ║                                         "name": "Chicken",
I/flutter ( 6449): ║                                         "nameI18n": {ar: دجاج, en: Chicken},
I/flutter ( 6449): ║                                         "minSelections": 1,
I/flutter ( 6449): ║                                         "maxSelections": 1,
I/flutter ( 6449): ║                                         "required": true,
I/flutter ( 6449): ║                                         "isRequired": true,
I/flutter ( 6449): ║                                         "sortOrder": 4,
I/flutter ( 6449): ║                                         "options": [
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49575b991f8d73bc7a1ff8"
I/flutter ( 6449): ║                                                 "optionId": "6a49575b991f8d73bc7a1ff8"
I/flutter ( 6449): ║                                                 "key": "chicken"
I/flutter ( 6449): ║                                                 "name": "Chicken"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: دجاج, en: Chicken},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 10
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495762991f8d73bc7a2013"
I/flutter ( 6449): ║                                                 "optionId": "6a495762991f8d73bc7a2013"
I/flutter ( 6449): ║                                                 "key": "chicken_fajita"
I/flutter ( 6449): ║                                                 "name": "Chicken Fajita"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: فاهيتا, en: Chicken Fajita},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 100
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495763991f8d73bc7a2016"
I/flutter ( 6449): ║                                                 "optionId": "6a495763991f8d73bc7a2016"
I/flutter ( 6449): ║                                                 "key": "spicy_chicken"
I/flutter ( 6449): ║                                                 "name": "Spicy Chicken"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: دجاج سبايسي, en: Spicy Chicken},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 110
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495764991f8d73bc7a2019"
I/flutter ( 6449): ║                                                 "optionId": "6a495764991f8d73bc7a2019"
I/flutter ( 6449): ║                                                 "key": "italian_spiced_chicken"
I/flutter ( 6449): ║                                                 "name": "Italian Spiced Chicken"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: دجاج توابل إيطالية, en: Italian Spiced Chicken},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 120
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495765991f8d73bc7a201c"
I/flutter ( 6449): ║                                                 "optionId": "6a495765991f8d73bc7a201c"
I/flutter ( 6449): ║                                                 "key": "chicken_tikka"
I/flutter ( 6449): ║                                                 "name": "Chicken Tikka"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: دجاج تكا, en: Chicken Tikka},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 130
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495766991f8d73bc7a201f"
I/flutter ( 6449): ║                                                 "optionId": "6a495766991f8d73bc7a201f"
I/flutter ( 6449): ║                                                 "key": "asian_chicken"
I/flutter ( 6449): ║                                                 "name": "Asian Chicken"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: دجاج آسيوي, en: Asian Chicken},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 140
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495767991f8d73bc7a2022"
I/flutter ( 6449): ║                                                 "optionId": "6a495767991f8d73bc7a2022"
I/flutter ( 6449): ║                                                 "key": "chicken_strips"
I/flutter ( 6449): ║                                                 "name": "Chicken Strips"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: استربس, en: Chicken Strips},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 150
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495767991f8d73bc7a2025"
I/flutter ( 6449): ║                                                 "optionId": "6a495767991f8d73bc7a2025"
I/flutter ( 6449): ║                                                 "key": "grilled_chicken"
I/flutter ( 6449): ║                                                 "name": "Grilled Chicken"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: دجاج مشوي, en: Grilled Chicken},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 160
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495768991f8d73bc7a2028"
I/flutter ( 6449): ║                                                 "optionId": "6a495768991f8d73bc7a2028"
I/flutter ( 6449): ║                                                 "key": "mexican_chicken"
I/flutter ( 6449): ║                                                 "name": "Mexican Chicken"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: دجاج مكسيكي, en: Mexican Chicken},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 170
I/flutter ( 6449): ║                                            }
I/flutter ( 6449): ║                                         ]
I/flutter ( 6449): ║                                    }
I/flutter ( 6449): ║                                 ]
I/flutter ( 6449): ║                            }
I/flutter ( 6449): ║                         ]
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "section:beef",
I/flutter ( 6449): ║                         "key": "beef",
I/flutter ( 6449): ║                         "type": "configurable_product",
I/flutter ( 6449): ║                         "builderSectionType": "option_family",
I/flutter ( 6449): ║                         "source": {kind: option_family, groupKey: proteins, displayCategoryKey: beef},
I/flutter ( 6449): ║                         "name": "Beef",
I/flutter ( 6449): ║                         "nameI18n": {ar: لحم, en: Beef},
I/flutter ( 6449): ║                         "sortOrder": 5,
I/flutter ( 6449): ║                         "ui": {visualRole: protein_family, proteinFamilyKey: beef},
I/flutter ( 6449): ║                         "rules": {ruleKey: beef_daily_limit, maxSlotsPerDay: 1, unit: slots},
I/flutter ( 6449): ║                         "products": [
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a49582e991f8d73bc7a22ec",
I/flutter ( 6449): ║                                 "productId": "6a49582e991f8d73bc7a22ec",
I/flutter ( 6449): ║                                 "key": "basic_meal",
I/flutter ( 6449): ║                                 "name": "Basic Meal",
I/flutter ( 6449): ║                                 "nameI18n": {ar: وجبة بيسك, en: Basic Meal},
I/flutter ( 6449): ║                                 "itemType": "basic_meal",
I/flutter ( 6449): ║                                 "selectionType": "standard_meal",
I/flutter ( 6449): ║                                 "pricing": {model: per_100g, basePriceHalala: 1900, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: open_builder, requiresBuilder: true},
I/flutter ( 6449): ║                                 "optionGroups": [
I/flutter ( 6449): ║                                    {
I/flutter ( 6449): ║                                         "id": "6a49575a991f8d73bc7a1ff5"
I/flutter ( 6449): ║                                         "groupId": "6a49575a991f8d73bc7a1ff5"
I/flutter ( 6449): ║                                         "key": "proteins",
I/flutter ( 6449): ║                                         "sourceKey": "proteins",
I/flutter ( 6449): ║                                         "name": "Beef",
I/flutter ( 6449): ║                                         "nameI18n": {ar: لحم, en: Beef},
I/flutter ( 6449): ║                                         "minSelections": 1,
I/flutter ( 6449): ║                                         "maxSelections": 1,
I/flutter ( 6449): ║                                         "required": true,
I/flutter ( 6449): ║                                         "isRequired": true,
I/flutter ( 6449): ║                                         "sortOrder": 5,
I/flutter ( 6449): ║                                         "options": [
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49575b991f8d73bc7a1ffb"
I/flutter ( 6449): ║                                                 "optionId": "6a49575b991f8d73bc7a1ffb"
I/flutter ( 6449): ║                                                 "key": "beef"
I/flutter ( 6449): ║                                                 "name": "Beef"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: لحم, en: Beef},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 20
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495768991f8d73bc7a202b"
I/flutter ( 6449): ║                                                 "optionId": "6a495768991f8d73bc7a202b"
I/flutter ( 6449): ║                                                 "key": "meatballs"
I/flutter ( 6449): ║                                                 "name": "Meatballs"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: كرات لحم, en: Meatballs},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 180
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495769991f8d73bc7a202e"
I/flutter ( 6449): ║                                                 "optionId": "6a495769991f8d73bc7a202e"
I/flutter ( 6449): ║                                                 "key": "beef_stroganoff"
I/flutter ( 6449): ║                                                 "name": "Beef Stroganoff"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: لحم استرغانوف, en: Beef Stroganoff},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 190
I/flutter ( 6449): ║                                            }
I/flutter ( 6449): ║                                         ]
I/flutter ( 6449): ║                                    }
I/flutter ( 6449): ║                                 ]
I/flutter ( 6449): ║                            }
I/flutter ( 6449): ║                         ]
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "section:fish",
I/flutter ( 6449): ║                         "key": "fish",
I/flutter ( 6449): ║                         "type": "configurable_product",
I/flutter ( 6449): ║                         "builderSectionType": "option_family",
I/flutter ( 6449): ║                         "source": {kind: option_family, groupKey: proteins, displayCategoryKey: fish},
I/flutter ( 6449): ║                         "name": "Fish",
I/flutter ( 6449): ║                         "nameI18n": {ar: سمك, en: Fish},
I/flutter ( 6449): ║                         "sortOrder": 6,
I/flutter ( 6449): ║                         "ui": {visualRole: protein_family, proteinFamilyKey: fish},
I/flutter ( 6449): ║                         "rules": {},
I/flutter ( 6449): ║                         "products": [
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a49582e991f8d73bc7a22ec",
I/flutter ( 6449): ║                                 "productId": "6a49582e991f8d73bc7a22ec",
I/flutter ( 6449): ║                                 "key": "basic_meal",
I/flutter ( 6449): ║                                 "name": "Basic Meal",
I/flutter ( 6449): ║                                 "nameI18n": {ar: وجبة بيسك, en: Basic Meal},
I/flutter ( 6449): ║                                 "itemType": "basic_meal",
I/flutter ( 6449): ║                                 "selectionType": "standard_meal",
I/flutter ( 6449): ║                                 "pricing": {model: per_100g, basePriceHalala: 1900, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: open_builder, requiresBuilder: true},
I/flutter ( 6449): ║                                 "optionGroups": [
I/flutter ( 6449): ║                                    {
I/flutter ( 6449): ║                                         "id": "6a49575a991f8d73bc7a1ff5"
I/flutter ( 6449): ║                                         "groupId": "6a49575a991f8d73bc7a1ff5"
I/flutter ( 6449): ║                                         "key": "proteins",
I/flutter ( 6449): ║                                         "sourceKey": "proteins",
I/flutter ( 6449): ║                                         "name": "Fish",
I/flutter ( 6449): ║                                         "nameI18n": {ar: سمك, en: Fish},
I/flutter ( 6449): ║                                         "minSelections": 1,
I/flutter ( 6449): ║                                         "maxSelections": 1,
I/flutter ( 6449): ║                                         "required": true,
I/flutter ( 6449): ║                                         "isRequired": true,
I/flutter ( 6449): ║                                         "sortOrder": 6,
I/flutter ( 6449): ║                                         "options": [
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49575c991f8d73bc7a1ffe"
I/flutter ( 6449): ║                                                 "optionId": "6a49575c991f8d73bc7a1ffe"
I/flutter ( 6449): ║                                                 "key": "fish"
I/flutter ( 6449): ║                                                 "name": "Fish"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: سمك, en: Fish},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 30
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49576a991f8d73bc7a2031"
I/flutter ( 6449): ║                                                 "optionId": "6a49576a991f8d73bc7a2031"
I/flutter ( 6449): ║                                                 "key": "fish_fillet"
I/flutter ( 6449): ║                                                 "name": "Fish Fillet"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: سمك فيليه, en: Fish Fillet},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 200
I/flutter ( 6449): ║                                            }
I/flutter ( 6449): ║                                         ]
I/flutter ( 6449): ║                                    }
I/flutter ( 6449): ║                                 ]
I/flutter ( 6449): ║                            }
I/flutter ( 6449): ║                         ]
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "section:eggs",
I/flutter ( 6449): ║                         "key": "eggs",
I/flutter ( 6449): ║                         "type": "configurable_product",
I/flutter ( 6449): ║                         "builderSectionType": "option_family",
I/flutter ( 6449): ║                         "source": {kind: option_family, groupKey: proteins, displayCategoryKey: eggs},
I/flutter ( 6449): ║                         "name": "Eggs",
I/flutter ( 6449): ║                         "nameI18n": {ar: بيض, en: Eggs},
I/flutter ( 6449): ║                         "sortOrder": 7,
I/flutter ( 6449): ║                         "ui": {visualRole: protein_family, proteinFamilyKey: eggs},
I/flutter ( 6449): ║                         "rules": {},
I/flutter ( 6449): ║                         "products": [
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a49582e991f8d73bc7a22ec",
I/flutter ( 6449): ║                                 "productId": "6a49582e991f8d73bc7a22ec",
I/flutter ( 6449): ║                                 "key": "basic_meal",
I/flutter ( 6449): ║                                 "name": "Basic Meal",
I/flutter ( 6449): ║                                 "nameI18n": {ar: وجبة بيسك, en: Basic Meal},
I/flutter ( 6449): ║                                 "itemType": "basic_meal",
I/flutter ( 6449): ║                                 "selectionType": "standard_meal",
I/flutter ( 6449): ║                                 "pricing": {model: per_100g, basePriceHalala: 1900, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: open_builder, requiresBuilder: true},
I/flutter ( 6449): ║                                 "optionGroups": [
I/flutter ( 6449): ║                                    {
I/flutter ( 6449): ║                                         "id": "6a49575a991f8d73bc7a1ff5"
I/flutter ( 6449): ║                                         "groupId": "6a49575a991f8d73bc7a1ff5"
I/flutter ( 6449): ║                                         "key": "proteins",
I/flutter ( 6449): ║                                         "sourceKey": "proteins",
I/flutter ( 6449): ║                                         "name": "Eggs",
I/flutter ( 6449): ║                                         "nameI18n": {ar: بيض, en: Eggs},
I/flutter ( 6449): ║                                         "minSelections": 1,
I/flutter ( 6449): ║                                         "maxSelections": 1,
I/flutter ( 6449): ║                                         "required": true,
I/flutter ( 6449): ║                                         "isRequired": true,
I/flutter ( 6449): ║                                         "sortOrder": 7,
I/flutter ( 6449): ║                                         "options": [
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49575d991f8d73bc7a2001"
I/flutter ( 6449): ║                                                 "optionId": "6a49575d991f8d73bc7a2001"
I/flutter ( 6449): ║                                                 "key": "eggs"
I/flutter ( 6449): ║                                                 "name": "Eggs"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: بيض, en: Eggs},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 40
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495761991f8d73bc7a200d"
I/flutter ( 6449): ║                                                 "optionId": "6a495761991f8d73bc7a200d"
I/flutter ( 6449): ║                                                 "key": "boiled_eggs"
I/flutter ( 6449): ║                                                 "name": "Boiled Eggs"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: بيض مسلوق, en: Boiled Eggs},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 80
I/flutter ( 6449): ║                                            }
I/flutter ( 6449): ║                                         ]
I/flutter ( 6449): ║                                    }
I/flutter ( 6449): ║                                 ]
I/flutter ( 6449): ║                            }
I/flutter ( 6449): ║                         ]
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "section:carbs",
I/flutter ( 6449): ║                         "key": "carbs",
I/flutter ( 6449): ║                         "type": "configurable_product",
I/flutter ( 6449): ║                         "builderSectionType": "option_group",
I/flutter ( 6449): ║                         "source": {kind: option_group, groupKey: carbs},
I/flutter ( 6449): ║                         "name": "Carbs",
I/flutter ( 6449): ║                         "nameI18n": {ar: نشويات, en: Carbs},
I/flutter ( 6449): ║                         "sortOrder": 8,
I/flutter ( 6449): ║                         "ui": {
I/flutter ( 6449): ║                             "visualRole": "carbs",
I/flutter ( 6449): ║                             "appliesTo": [configurable_plate_meal]
I/flutter ( 6449): ║                             "excludesSelectionTypes": [sandwich]
I/flutter ( 6449): ║                        }
I/flutter ( 6449): ║                         "rules": {
I/flutter ( 6449): ║                             "maxTypes": 2,
I/flutter ( 6449): ║                             "maxTotalGrams": 300,
I/flutter ( 6449): ║                             "unit": "grams",
I/flutter ( 6449): ║                             "onlyForSelectionTypes": [standard_meal, premium_meal]
I/flutter ( 6449): ║                        }
I/flutter ( 6449): ║                         "products": [
I/flutter ( 6449): ║                            {
I/flutter ( 6449): ║                                 "id": "6a49582e991f8d73bc7a22ec",
I/flutter ( 6449): ║                                 "productId": "6a49582e991f8d73bc7a22ec",
I/flutter ( 6449): ║                                 "key": "basic_meal",
I/flutter ( 6449): ║                                 "name": "Basic Meal",
I/flutter ( 6449): ║                                 "nameI18n": {ar: وجبة بيسك, en: Basic Meal},
I/flutter ( 6449): ║                                 "itemType": "basic_meal",
I/flutter ( 6449): ║                                 "selectionType": "standard_meal",
I/flutter ( 6449): ║                                 "pricing": {model: per_100g, basePriceHalala: 1900, currency: SAR},
I/flutter ( 6449): ║                                 "action": {type: open_builder, requiresBuilder: true},
I/flutter ( 6449): ║                                 "optionGroups": [
I/flutter ( 6449): ║                                    {
I/flutter ( 6449): ║                                         "id": "6a49576b991f8d73bc7a2034"
I/flutter ( 6449): ║                                         "groupId": "6a49576b991f8d73bc7a2034"
I/flutter ( 6449): ║                                         "key": "carbs",
I/flutter ( 6449): ║                                         "sourceKey": "carbs",
I/flutter ( 6449): ║                                         "name": "Carbs",
I/flutter ( 6449): ║                                         "nameI18n": {ar: نشويات, en: Carbs},
I/flutter ( 6449): ║                                         "minSelections": 1,
I/flutter ( 6449): ║                                         "maxSelections": 2,
I/flutter ( 6449): ║                                         "required": true,
I/flutter ( 6449): ║                                         "isRequired": true,
I/flutter ( 6449): ║                                         "sortOrder": 8,
I/flutter ( 6449): ║                                         "options": [
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49576c991f8d73bc7a2037"
I/flutter ( 6449): ║                                                 "optionId": "6a49576c991f8d73bc7a2037"
I/flutter ( 6449): ║                                                 "key": "white_rice"
I/flutter ( 6449): ║                                                 "name": "White Rice"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: رز أبيض, en: White Rice},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 10
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49576d991f8d73bc7a203a"
I/flutter ( 6449): ║                                                 "optionId": "6a49576d991f8d73bc7a203a"
I/flutter ( 6449): ║                                                 "key": "turmeric_rice"
I/flutter ( 6449): ║                                                 "name": "Turmeric Rice"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: رز بالكركم, en: Turmeric Rice},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 20
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a49576e991f8d73bc7a203d"
I/flutter ( 6449): ║                                                 "optionId": "6a49576e991f8d73bc7a203d"
I/flutter ( 6449): ║                                                 "key": "alfredo_pasta"
I/flutter ( 6449): ║                                                 "name": "Alfredo Pasta"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: باستا الفريدو, en: Alfredo Pasta},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 30
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495770991f8d73bc7a2040"
I/flutter ( 6449): ║                                                 "optionId": "6a495770991f8d73bc7a2040"
I/flutter ( 6449): ║                                                 "key": "red_sauce_pasta"
I/flutter ( 6449): ║                                                 "name": "Red Sauce Pasta"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: باستا صوص احمر, en: Red Sauce Pasta},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 40
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495771991f8d73bc7a2043"
I/flutter ( 6449): ║                                                 "optionId": "6a495771991f8d73bc7a2043"
I/flutter ( 6449): ║                                                 "key": "roasted_potato"
I/flutter ( 6449): ║                                                 "name": "Roasted Potato"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: بطاطا مشوية, en: Roasted Potato},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 50
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495772991f8d73bc7a2046"
I/flutter ( 6449): ║                                                 "optionId": "6a495772991f8d73bc7a2046"
I/flutter ( 6449): ║                                                 "key": "sweet_potato"
I/flutter ( 6449): ║                                                 "name": "Sweet Potato"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: بطاطا حلوة, en: Sweet Potato},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 60
I/flutter ( 6449): ║                                            },
I/flutter ( 6449): ║                                            {
I/flutter ( 6449): ║                                                 "id": "6a495774991f8d73bc7a2049"
I/flutter ( 6449): ║                                                 "optionId": "6a495774991f8d73bc7a2049"
I/flutter ( 6449): ║                                                 "key": "grilled_mixed_vegetables"
I/flutter ( 6449): ║                                                 "name": "Grilled Mixed Vegetables"
I/flutter ( 6449): ║                                                 "nameI18n": {ar: خضار مشكلة مشوية, en: Grilled Mixed Vegetables},
I/flutter ( 6449): ║                                                 "imageUrl": ""
I/flutter ( 6449): ║                                                 "selectionType": "standard_meal"
I/flutter ( 6449): ║                                                 "isPremium": false
I/flutter ( 6449): ║                                                 "extraPriceHalala": 0
I/flutter ( 6449): ║                                                 "extraFeeHalala": 0
I/flutter ( 6449): ║                                                 "sortOrder": 70
I/flutter ( 6449): ║                                            }
I/flutter ( 6449): ║                                         ]
I/flutter ( 6449): ║                                    }
I/flutter ( 6449): ║                                 ]
I/flutter ( 6449): ║                            }
I/flutter ( 6449): ║                         ]
I/flutter ( 6449): ║                    }
I/flutter ( 6449): ║                 ],
I/flutter ( 6449): ║                 "rules": {
I/flutter ( 6449): ║                     "version": "meal_planner_rules.v3",
I/flutter ( 6449): ║                     "beef": {proteinFamilyKey: beef, maxSlotsPerDay: 1},
I/flutter ( 6449): ║                     "standardCarbs": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
I/flutter ( 6449): ║                     "premiumCarbs": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
I/flutter ( 6449): ║                     "proteinGroups": [
I/flutter ( 6449): ║                        {
I/flutter ( 6449): ║                             "key": "chicken",
I/flutter ( 6449): ║                             "name": {ar: دجاج, en: Chicken},
I/flutter ( 6449): ║                             "sortOrder": 10
I/flutter ( 6449): ║                        },
I/flutter ( 6449): ║                        {
I/flutter ( 6449): ║                             "key": "beef",
I/flutter ( 6449): ║                             "name": {ar: لحم, en: Beef},
I/flutter ( 6449): ║                             "sortOrder": 20
I/flutter ( 6449): ║                        },
I/flutter ( 6449): ║                        {
I/flutter ( 6449): ║                             "key": "fish",
I/flutter ( 6449): ║                             "name": {ar: سمك, en: Fish},
I/flutter ( 6449): ║                             "sortOrder": 30
I/flutter ( 6449): ║                        },
I/flutter ( 6449): ║                        {
I/flutter ( 6449): ║                             "key": "eggs",
I/flutter ( 6449): ║                             "name": {ar: بيض, en: Eggs},
I/flutter ( 6449): ║                             "sortOrder": 40
I/flutter ( 6449): ║                        },
I/flutter ( 6449): ║                        {
I/flutter ( 6449): ║                             "key": "premium",
I/flutter ( 6449): ║                             "name": {ar: بريميوم, en: Premium},
I/flutter ( 6449): ║                             "sortOrder": 50
I/flutter ( 6449): ║                        },
I/flutter ( 6449): ║                        {
I/flutter ( 6449): ║                             "key": "other",
I/flutter ( 6449): ║                             "name": {ar: أخرى, en: Other},
I/flutter ( 6449): ║                             "sortOrder": 60
I/flutter ( 6449): ║                        }
I/flutter ( 6449): ║                     ],
I/flutter ( 6449): ║                     "premiumLargeSalad": {
I/flutter ( 6449): ║                         "premiumKey": "premium_large_salad",
I/flutter ( 6449): ║                         "presetKey": "large_salad",
I/flutter ( 6449): ║                         "extraFeeHalala": 2900,
I/flutter ( 6449): ║                         "groups": [
I/flutter ( 6449): ║                          {key: leafy_greens, minSelect: 0, maxSelect: 2},
I/flutter ( 6449): ║                          {key: vegetables, minSelect: 0, maxSelect: 19},
I/flutter ( 6449): ║                          {key: protein, minSelect: 1, maxSelect: 1},
I/flutter ( 6449): ║                          {key: cheese_nuts, minSelect: 0, maxSelect: 2},
I/flutter ( 6449): ║                          {key: fruits, minSelect: 0, maxSelect: 4},
I/flutter ( 6449): ║                          {key: sauce, minSelect: 1, maxSelect: 1}
I/flutter ( 6449): ║                         ],
I/flutter ( 6449): ║                         "allowedProteinKeys": [
I/flutter ( 6449): ║                                 boiled_eggs,
I/flutter ( 6449): ║                                 tuna,
I/flutter ( 6449): ║                                 chicken_fajita,
I/flutter ( 6449): ║                                 spicy_chicken,
I/flutter ( 6449): ║                                 italian_spiced_chicken,
I/flutter ( 6449): ║                                 chicken_tikka,
I/flutter ( 6449): ║                                 asian_chicken,
I/flutter ( 6449): ║                                 chicken_strips,
I/flutter ( 6449): ║                                 grilled_chicken,
I/flutter ( 6449): ║                                 mexican_chicken,
I/flutter ( 6449): ║                                 fish_fillet
I/flutter ( 6449): ║                         ],
I/flutter ( 6449): ║                         "excludedGroupKeys": [extra_protein_50g]
I/flutter ( 6449): ║                    }
I/flutter ( 6449): ║                     "source": "meal_builder_config",
I/flutter ( 6449): ║                     "builderRevisionHash": "sha256:5f337bb42ad7cf1b1f4329e767380cb6821134dd2bdcd328d30e0590e5be56
I/flutter ( 6449): ║                      4e"
I/flutter ( 6449): ║                }
I/flutter ( 6449): ║                 "catalogHash": "sha256:b11607be88d80ba06348585a2e3ac04e22c68fd17fb9201628dcc23cc8f2972a"
I/flutter ( 6449): ║                 "publishedVersionId": null,
I/flutter ( 6449): ║                 "builderRevisionHash": "sha256:5f337bb42ad7cf1b1f4329e767380cb6821134dd2bdcd328d30e0590e5be564e"
I/flutter ( 6449): ║                 "source": "dashboard"
I/flutter ( 6449): ║            }
I/flutter ( 6449): ║        }
I/flutter ( 6449): ║    }
I/flutter ( 6449): ║
I/flutter ( 6449): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6449):
I/flutter ( 6449): ╔╣ Request ║ GET
I/flutter ( 6449): ║  https://basicdiet145-production-51e9.up.railway.app/api/subscriptions/addon-choices
I/flutter ( 6449): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6449): ╔ Headers
I/flutter ( 6449): ╟ accept: application/json
I/flutter ( 6449): ╟ content-type: application/json
I/flutter ( 6449): ╟ authorization:
I/flutter ( 6449): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTRmNjNjYTc4NDYzMGQ0OWExZjQ2ZD
I/flutter ( 6449): ║ UiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MzcwMzYyOSwiZXhwIjox
I/flutter ( 6449): ║ NzgzNzA0NTI5fQ.znBYq1YXp0iv7MbKQcpaHJg-s2zTP9H8E1LclWDJ99w
I/flutter ( 6449): ╟ Accept-Language: en
I/flutter ( 6449): ╟ contentType: application/json
I/flutter ( 6449): ╟ responseType: ResponseType.json
I/flutter ( 6449): ╟ followRedirects: true
I/flutter ( 6449): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 6449): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 6449): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
E/libEGL  ( 6449): called unimplemented OpenGL ES API
D/EGL_emulation( 6449): app_time_stats: avg=13.74ms min=0.85ms max=172.30ms count=50
I/flutter ( 6449):
I/flutter ( 6449): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 242 ms
I/flutter ( 6449): ║  https://basicdiet145-production-51e9.up.railway.app/api/subscriptions/addon-choices
I/flutter ( 6449): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6449): ╔ Headers
I/flutter ( 6449): ╟ x-dns-prefetch-control: [off]
I/flutter ( 6449): ╟ date: [Fri, 10 Jul 2026 17:15:17 GMT]
I/flutter ( 6449): ╟ transfer-encoding: [chunked]
I/flutter ( 6449): ╟ vary: [Origin, accept-encoding]
I/flutter ( 6449): ╟ origin-agent-cluster: [?1]
I/flutter ( 6449): ╟ content-encoding: [gzip]
I/flutter ( 6449): ╟ x-hikari-trace: [cdg1.8vsn]
I/flutter ( 6449): ╟ server: [railway-hikari]
I/flutter ( 6449): ╟ x-request-id: [3faa89a0-6f28-406d-9d04-6de023463b1c]
I/flutter ( 6449): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 6449): ╟ etag: [W/"3f21-Ppk0F3mPxtM4+Qcy2vs5KaRO4BM"]
I/flutter ( 6449): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 6449): ╟ content-security-policy:
I/flutter ( 6449): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 6449): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 6449): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 6449): ╟ x-railway-request-id: [E_z4Eov3SLSN2vDzAXC71g]
I/flutter ( 6449): ╟ connection: [keep-alive]
I/flutter ( 6449): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 6449): ╟ referrer-policy: [no-referrer]
I/flutter ( 6449): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 6449): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 6449): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 6449): ╟ x-xss-protection: [0]
I/flutter ( 6449): ╟ x-railway-edge: [cdg1]
I/flutter ( 6449): ╟ access-control-allow-credentials: [true]
I/flutter ( 6449): ╟ x-download-options: [noopen]
I/flutter ( 6449): ╟ x-content-type-options: [nosniff]
I/flutter ( 6449): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6449): ╔ Body
I/flutter ( 6449): ║
I/flutter ( 6449): ║    {
I/flutter ( 6449): ║         "status": true,
I/flutter ( 6449): ║         "data": {
I/flutter ( 6449): ║             "juice": {
I/flutter ( 6449): ║                 "category": "juice",
I/flutter ( 6449): ║                 "sourceCategories": [juices, drinks]
I/flutter ( 6449): ║                 "choices": [
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a49589f991f8d73bc7a24c9",
I/flutter ( 6449): ║                         "key": "orange_juice",
I/flutter ( 6449): ║                         "name": "Orange Juice",
I/flutter ( 6449): ║                         "nameAr": "عصير برتقال",
I/flutter ( 6449): ║                         "nameI18n": {ar: عصير برتقال, en: Orange Juice},
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "priceHalala": 1000,
I/flutter ( 6449): ║                         "priceSar": 10,
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "calories": null,
I/flutter ( 6449): ║                         "prepTimeMinutes": null,
I/flutter ( 6449): ║                         "categoryKey": "juices",
I/flutter ( 6449): ║                         "itemType": "juice",
I/flutter ( 6449): ║                         "type": "menu_product",
I/flutter ( 6449): ║                         "available": true,
I/flutter ( 6449): ║                         "active": true,
I/flutter ( 6449): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a4958a0991f8d73bc7a24cc",
I/flutter ( 6449): ║                         "key": "apple_juice",
I/flutter ( 6449): ║                         "name": "Apple Juice",
I/flutter ( 6449): ║                         "nameAr": "عصير تفاح",
I/flutter ( 6449): ║                         "nameI18n": {ar: عصير تفاح, en: Apple Juice},
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "priceHalala": 1000,
I/flutter ( 6449): ║                         "priceSar": 10,
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "calories": null,
I/flutter ( 6449): ║                         "prepTimeMinutes": null,
I/flutter ( 6449): ║                         "categoryKey": "juices",
I/flutter ( 6449): ║                         "itemType": "juice",
I/flutter ( 6449): ║                         "type": "menu_product",
I/flutter ( 6449): ║                         "available": true,
I/flutter ( 6449): ║                         "active": true,
I/flutter ( 6449): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a4958a1991f8d73bc7a24cf",
I/flutter ( 6449): ║                         "key": "mango_juice",
I/flutter ( 6449): ║                         "name": "Mango Juice",
I/flutter ( 6449): ║                         "nameAr": "عصير مانجو",
I/flutter ( 6449): ║                         "nameI18n": {ar: عصير مانجو, en: Mango Juice},
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "priceHalala": 1000,
I/flutter ( 6449): ║                         "priceSar": 10,
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "calories": null,
I/flutter ( 6449): ║                         "prepTimeMinutes": null,
I/flutter ( 6449): ║                         "categoryKey": "juices",
I/flutter ( 6449): ║                         "itemType": "juice",
I/flutter ( 6449): ║                         "type": "menu_product",
I/flutter ( 6449): ║                         "available": true,
I/flutter ( 6449): ║                         "active": true,
I/flutter ( 6449): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a4958b2991f8d73bc7a2517",
I/flutter ( 6449): ║                         "key": "berry_blast",
I/flutter ( 6449): ║                         "name": "Berry Blast",
I/flutter ( 6449): ║                         "nameAr": "بيري بلاست",
I/flutter ( 6449): ║                         "nameI18n": {ar: بيري بلاست, en: Berry Blast},
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "priceHalala": 1100,
I/flutter ( 6449): ║                         "priceSar": 11,
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "calories": null,
I/flutter ( 6449): ║                         "prepTimeMinutes": null,
I/flutter ( 6449): ║                         "categoryKey": "juices",
I/flutter ( 6449): ║                         "itemType": "juice",
I/flutter ( 6449): ║                         "type": "menu_product",
I/flutter ( 6449): ║                         "available": true,
I/flutter ( 6449): ║                         "active": true,
I/flutter ( 6449): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a4958b2991f8d73bc7a251a",
I/flutter ( 6449): ║                         "key": "berry_prot",
I/flutter ( 6449): ║                         "name": "Berry Prot",
I/flutter ( 6449): ║                         "nameAr": "بيري بروت",
I/flutter ( 6449): ║                         "nameI18n": {ar: بيري بروت, en: Berry Prot},
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "priceHalala": 1300,
I/flutter ( 6449): ║                         "priceSar": 13,
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "calories": null,
I/flutter ( 6449): ║                         "prepTimeMinutes": null,
I/flutter ( 6449): ║                         "categoryKey": "juices",
I/flutter ( 6449): ║                         "itemType": "juice",
I/flutter ( 6449): ║                         "type": "menu_product",
I/flutter ( 6449): ║                         "available": true,
I/flutter ( 6449): ║                         "active": true,
I/flutter ( 6449): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a4958b3991f8d73bc7a251d",
I/flutter ( 6449): ║                         "key": "classic_green",
I/flutter ( 6449): ║                         "name": "Classic Green",
I/flutter ( 6449): ║                         "nameAr": "كلاسيك جرين",
I/flutter ( 6449): ║                         "nameI18n": {ar: كلاسيك جرين, en: Classic Green},
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "priceHalala": 1100,
I/flutter ( 6449): ║                         "priceSar": 11,
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "calories": null,
I/flutter ( 6449): ║                         "prepTimeMinutes": null,
I/flutter ( 6449): ║                         "categoryKey": "juices",
I/flutter ( 6449): ║                         "itemType": "juice",
I/flutter ( 6449): ║                         "type": "menu_product",
I/flutter ( 6449): ║                         "available": true,
I/flutter ( 6449): ║                         "active": true,
I/flutter ( 6449): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a4958b3991f8d73bc7a2520",
I/flutter ( 6449): ║                         "key": "beet_punch",
I/flutter ( 6449): ║                         "name": "Beet Punch",
I/flutter ( 6449): ║                         "nameAr": "بيت بنش",
I/flutter ( 6449): ║                         "nameI18n": {ar: بيت بنش, en: Beet Punch},
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "priceHalala": 1100,
I/flutter ( 6449): ║                         "priceSar": 11,
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "calories": null,
I/flutter ( 6449): ║                         "prepTimeMinutes": null,
I/flutter ( 6449): ║                         "categoryKey": "juices",
I/flutter ( 6449): ║                         "itemType": "juice",
I/flutter ( 6449): ║                         "type": "menu_product",
I/flutter ( 6449): ║                         "available": true,
I/flutter ( 6449): ║                         "active": true,
I/flutter ( 6449): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a4958b4991f8d73bc7a2523",
I/flutter ( 6449): ║                         "key": "orange_carrot",
I/flutter ( 6449): ║                         "name": "Orange Carrot",
I/flutter ( 6449): ║                         "nameAr": "برتقال وجزر",
I/flutter ( 6449): ║                         "nameI18n": {ar: برتقال وجزر, en: Orange Carrot},
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "priceHalala": 1100,
I/flutter ( 6449): ║                         "priceSar": 11,
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "calories": null,
I/flutter ( 6449): ║                         "prepTimeMinutes": null,
I/flutter ( 6449): ║                         "categoryKey": "juices",
I/flutter ( 6449): ║                         "itemType": "juice",
I/flutter ( 6449): ║                         "type": "menu_product",
I/flutter ( 6449): ║                         "available": true,
I/flutter ( 6449): ║                         "active": true,
I/flutter ( 6449): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a4958b5991f8d73bc7a2526",
I/flutter ( 6449): ║                         "key": "watermelon_mint",
I/flutter ( 6449): ║                         "name": "Watermelon Mint",
I/flutter ( 6449): ║                         "nameAr": "بطيخ بالنعناع",
I/flutter ( 6449): ║                         "nameI18n": {ar: بطيخ بالنعناع, en: Watermelon Mint},
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "priceHalala": 1100,
I/flutter ( 6449): ║                         "priceSar": 11,
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "calories": null,
I/flutter ( 6449): ║                         "prepTimeMinutes": null,
I/flutter ( 6449): ║                         "categoryKey": "juices",
I/flutter ( 6449): ║                         "itemType": "juice",
I/flutter ( 6449): ║                         "type": "menu_product",
I/flutter ( 6449): ║                         "available": true,
I/flutter ( 6449): ║                         "active": true,
I/flutter ( 6449): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a4958b8991f8d73bc7a2532",
I/flutter ( 6449): ║                         "key": "protein_drink",
I/flutter ( 6449): ║                         "name": "Protein Drink",
I/flutter ( 6449): ║                         "nameAr": "مشروب بروتين",
I/flutter ( 6449): ║                         "nameI18n": {ar: مشروب بروتين, en: Protein Drink},
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "priceHalala": 1900,
I/flutter ( 6449): ║                         "priceSar": 19,
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "calories": null,
I/flutter ( 6449): ║                         "prepTimeMinutes": null,
I/flutter ( 6449): ║                         "categoryKey": "drinks",
I/flutter ( 6449): ║                         "itemType": "drink",
I/flutter ( 6449): ║                         "type": "menu_product",
I/flutter ( 6449): ║                         "available": true,
I/flutter ( 6449): ║                         "active": true,
I/flutter ( 6449): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a4958b8991f8d73bc7a2535",
I/flutter ( 6449): ║                         "key": "diet_iced_tea",
I/flutter ( 6449): ║                         "name": "Diet Iced Tea",
I/flutter ( 6449): ║                         "nameAr": "ايس تى دايت",
I/flutter ( 6449): ║                         "nameI18n": {ar: ايس تى دايت, en: Diet Iced Tea},
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "priceHalala": 400,
I/flutter ( 6449): ║                         "priceSar": 4,
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "calories": null,
I/flutter ( 6449): ║                         "prepTimeMinutes": null,
I/flutter ( 6449): ║                         "categoryKey": "drinks",
I/flutter ( 6449): ║                         "itemType": "drink",
I/flutter ( 6449): ║                         "type": "menu_product",
I/flutter ( 6449): ║                         "available": true,
I/flutter ( 6449): ║                         "active": true,
I/flutter ( 6449): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a4958b9991f8d73bc7a2538",
I/flutter ( 6449): ║                         "key": "diet_soda",
I/flutter ( 6449): ║                         "name": "Diet Soda",
I/flutter ( 6449): ║                         "nameAr": "صودا دايت",
I/flutter ( 6449): ║                         "nameI18n": {ar: صودا دايت, en: Diet Soda},
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "priceHalala": 300,
I/flutter ( 6449): ║                         "priceSar": 3,
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "calories": null,
I/flutter ( 6449): ║                         "prepTimeMinutes": null,
I/flutter ( 6449): ║                         "categoryKey": "drinks",
I/flutter ( 6449): ║                         "itemType": "drink",
I/flutter ( 6449): ║                         "type": "menu_product",
I/flutter ( 6449): ║                         "available": true,
I/flutter ( 6449): ║                         "active": true,
I/flutter ( 6449): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a4958ba991f8d73bc7a253b",
I/flutter ( 6449): ║                         "key": "water",
I/flutter ( 6449): ║                         "name": "Water",
I/flutter ( 6449): ║                         "nameAr": "مياه عادية",
I/flutter ( 6449): ║                         "nameI18n": {ar: مياه عادية, en: Water},
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "priceHalala": 200,
I/flutter ( 6449): ║                         "priceSar": 2,
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "calories": null,
I/flutter ( 6449): ║                         "prepTimeMinutes": null,
I/flutter ( 6449): ║                         "categoryKey": "drinks",
I/flutter ( 6449): ║                         "itemType": "drink",
I/flutter ( 6449): ║                         "type": "menu_product",
I/flutter ( 6449): ║                         "available": true,
I/flutter ( 6449): ║                         "active": true,
I/flutter ( 6449): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 6449): ║                    }
I/flutter ( 6449): ║                 ]
I/flutter ( 6449): ║            }
I/flutter ( 6449): ║             "snack": {
I/flutter ( 6449): ║                 "category": "snack",
I/flutter ( 6449): ║                 "sourceCategories": [desserts]
I/flutter ( 6449): ║                 "choices": [
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a4958a3991f8d73bc7a24db",
I/flutter ( 6449): ║                         "key": "protein_snack",
I/flutter ( 6449): ║                         "name": "Protein Snack",
I/flutter ( 6449): ║                         "nameAr": "سناك بروتين",
I/flutter ( 6449): ║                         "nameI18n": {ar: سناك بروتين, en: Protein Snack},
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "priceHalala": 1500,
I/flutter ( 6449): ║                         "priceSar": 15,
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "calories": null,
I/flutter ( 6449): ║                         "prepTimeMinutes": null,
I/flutter ( 6449): ║                         "categoryKey": "desserts",
I/flutter ( 6449): ║                         "itemType": "dessert",
I/flutter ( 6449): ║                         "type": "menu_product",
I/flutter ( 6449): ║                         "available": true,
I/flutter ( 6449): ║                         "active": true,
I/flutter ( 6449): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a4958a4991f8d73bc7a24de",
I/flutter ( 6449): ║                         "key": "healthy_dessert",
I/flutter ( 6449): ║                         "name": "Healthy Dessert",
I/flutter ( 6449): ║                         "nameAr": "حلوى صحية",
I/flutter ( 6449): ║                         "nameI18n": {ar: حلوى صحية, en: Healthy Dessert},
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "priceHalala": 1500,
I/flutter ( 6449): ║                         "priceSar": 15,
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "calories": null,
I/flutter ( 6449): ║                         "prepTimeMinutes": null,
I/flutter ( 6449): ║                         "categoryKey": "desserts",
I/flutter ( 6449): ║                         "itemType": "dessert",
I/flutter ( 6449): ║                         "type": "menu_product",
I/flutter ( 6449): ║                         "available": true,
I/flutter ( 6449): ║                         "active": true,
I/flutter ( 6449): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a4958a5991f8d73bc7a24e1",
I/flutter ( 6449): ║                         "key": "snack_box",
I/flutter ( 6449): ║                         "name": "Snack Box",
I/flutter ( 6449): ║                         "nameAr": "صندوق سناك",
I/flutter ( 6449): ║                         "nameI18n": {ar: صندوق سناك, en: Snack Box},
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "priceHalala": 1500,
I/flutter ( 6449): ║                         "priceSar": 15,
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "calories": null,
I/flutter ( 6449): ║                         "prepTimeMinutes": null,
I/flutter ( 6449): ║                         "categoryKey": "desserts",
I/flutter ( 6449): ║                         "itemType": "dessert",
I/flutter ( 6449): ║                         "type": "menu_product",
I/flutter ( 6449): ║                         "available": true,
I/flutter ( 6449): ║                         "active": true,
I/flutter ( 6449): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a4958ac991f8d73bc7a24ff",
I/flutter ( 6449): ║                         "key": "orange_cake",
I/flutter ( 6449): ║                         "name": "Orange Cake",
I/flutter ( 6449): ║                         "nameAr": "كيكة البرتقال",
I/flutter ( 6449): ║                         "nameI18n": {ar: كيكة البرتقال, en: Orange Cake},
I/flutter ( 6449): ║                         "description": "Healthy orange cake made with light ingredients, natural refreshi
I/flutter ( 6449): ║                          ng orange flavor, soft texture, and no sugar."
I/flutter ( 6449): ║                         "descriptionI18n": {
I/flutter ( 6449): ║                             "ar": "كيكة برتقال صحية محضرة بمكونات خفيفة، بطعم برتقال طبيعي منعش
I/flutter ( 6449): ║                              وقوام ناعم، بدون سكر."
I/flutter ( 6449): ║                             "en": "Healthy orange cake made with light ingredients, natural refr
I/flutter ( 6449): ║                              eshing orange flavor, soft texture, and no sugar."
I/flutter ( 6449): ║                        }
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "priceHalala": 900,
I/flutter ( 6449): ║                         "priceSar": 9,
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "calories": null,
I/flutter ( 6449): ║                         "prepTimeMinutes": null,
I/flutter ( 6449): ║                         "categoryKey": "desserts",
I/flutter ( 6449): ║                         "itemType": "dessert",
I/flutter ( 6449): ║                         "type": "menu_product",
I/flutter ( 6449): ║                         "available": true,
I/flutter ( 6449): ║                         "active": true,
I/flutter ( 6449): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a4958ad991f8d73bc7a2502",
I/flutter ( 6449): ║                         "key": "apple_cinnamon_muffin_2pcs",
I/flutter ( 6449): ║                         "name": "Apple Cinnamon Muffin - 2 Pieces",
I/flutter ( 6449): ║                         "nameAr": "مافن التفاح بالقرفة قطعتين",
I/flutter ( 6449): ║                         "nameI18n": {ar: مافن التفاح بالقرفة قطعتين, en: Apple Cinnamon Muffin - 2 Pieces},
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "priceHalala": 1200,
I/flutter ( 6449): ║                         "priceSar": 12,
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "calories": null,
I/flutter ( 6449): ║                         "prepTimeMinutes": null,
I/flutter ( 6449): ║                         "categoryKey": "desserts",
I/flutter ( 6449): ║                         "itemType": "dessert",
I/flutter ( 6449): ║                         "type": "menu_product",
I/flutter ( 6449): ║                         "available": true,
I/flutter ( 6449): ║                         "active": true,
I/flutter ( 6449): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a4958ad991f8d73bc7a2505",
I/flutter ( 6449): ║                         "key": "berry_cheesecake",
I/flutter ( 6449): ║                         "name": "Berry Cheesecake",
I/flutter ( 6449): ║                         "nameAr": "تشيز كيك بالتوت",
I/flutter ( 6449): ║                         "nameI18n": {ar: تشيز كيك بالتوت, en: Berry Cheesecake},
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "priceHalala": 1900,
I/flutter ( 6449): ║                         "priceSar": 19,
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "calories": null,
I/flutter ( 6449): ║                         "prepTimeMinutes": null,
I/flutter ( 6449): ║                         "categoryKey": "desserts",
I/flutter ( 6449): ║                         "itemType": "dessert",
I/flutter ( 6449): ║                         "type": "menu_product",
I/flutter ( 6449): ║                         "available": true,
I/flutter ( 6449): ║                         "active": true,
I/flutter ( 6449): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a4958ae991f8d73bc7a2508",
I/flutter ( 6449): ║                         "key": "strawberry_cheesecake",
I/flutter ( 6449): ║                         "name": "Strawberry Cheesecake",
I/flutter ( 6449): ║                         "nameAr": "تشيز كيك بالفراولة",
I/flutter ( 6449): ║                         "nameI18n": {ar: تشيز كيك بالفراولة, en: Strawberry Cheesecake},
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "priceHalala": 1900,
I/flutter ( 6449): ║                         "priceSar": 19,
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "calories": null,
I/flutter ( 6449): ║                         "prepTimeMinutes": null,
I/flutter ( 6449): ║                         "categoryKey": "desserts",
I/flutter ( 6449): ║                         "itemType": "dessert",
I/flutter ( 6449): ║                         "type": "menu_product",
I/flutter ( 6449): ║                         "available": true,
I/flutter ( 6449): ║                         "active": true,
I/flutter ( 6449): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a4958af991f8d73bc7a250b",
I/flutter ( 6449): ║                         "key": "dark_brownies",
I/flutter ( 6449): ║                         "name": "Dark Brownies",
I/flutter ( 6449): ║                         "nameAr": "براونيز داكن",
I/flutter ( 6449): ║                         "nameI18n": {ar: براونيز داكن, en: Dark Brownies},
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "priceHalala": 1300,
I/flutter ( 6449): ║                         "priceSar": 13,
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "calories": null,
I/flutter ( 6449): ║                         "prepTimeMinutes": null,
I/flutter ( 6449): ║                         "categoryKey": "desserts",
I/flutter ( 6449): ║                         "itemType": "dessert",
I/flutter ( 6449): ║                         "type": "menu_product",
I/flutter ( 6449): ║                         "available": true,
I/flutter ( 6449): ║                         "active": true,
I/flutter ( 6449): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a4958af991f8d73bc7a250e",
I/flutter ( 6449): ║                         "key": "protein_bar",
I/flutter ( 6449): ║                         "name": "Protein Bar",
I/flutter ( 6449): ║                         "nameAr": "بروتين بار",
I/flutter ( 6449): ║                         "nameI18n": {ar: بروتين بار, en: Protein Bar},
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "priceHalala": 1500,
I/flutter ( 6449): ║                         "priceSar": 15,
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "calories": null,
I/flutter ( 6449): ║                         "prepTimeMinutes": null,
I/flutter ( 6449): ║                         "categoryKey": "desserts",
I/flutter ( 6449): ║                         "itemType": "dessert",
I/flutter ( 6449): ║                         "type": "menu_product",
I/flutter ( 6449): ║                         "available": true,
I/flutter ( 6449): ║                         "active": true,
I/flutter ( 6449): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a4958b0991f8d73bc7a2511",
I/flutter ( 6449): ║                         "key": "basic_classic",
I/flutter ( 6449): ║                         "name": "Basic Classic",
I/flutter ( 6449): ║                         "nameAr": "بيسك كلاسيك",
I/flutter ( 6449): ║                         "nameI18n": {ar: بيسك كلاسيك, en: Basic Classic},
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "priceHalala": 1400,
I/flutter ( 6449): ║                         "priceSar": 14,
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "calories": null,
I/flutter ( 6449): ║                         "prepTimeMinutes": null,
I/flutter ( 6449): ║                         "categoryKey": "desserts",
I/flutter ( 6449): ║                         "itemType": "dessert",
I/flutter ( 6449): ║                         "type": "menu_product",
I/flutter ( 6449): ║                         "available": true,
I/flutter ( 6449): ║                         "active": true,
I/flutter ( 6449): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a4958b1991f8d73bc7a2514",
I/flutter ( 6449): ║                         "key": "protein_chocolate_cake",
I/flutter ( 6449): ║                         "name": "Protein Chocolate Cake",
I/flutter ( 6449): ║                         "nameAr": "كيك شوكولاتة بروتين",
I/flutter ( 6449): ║                         "nameI18n": {ar: كيك شوكولاتة بروتين, en: Protein Chocolate Cake},
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "priceHalala": 1900,
I/flutter ( 6449): ║                         "priceSar": 19,
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "calories": null,
I/flutter ( 6449): ║                         "prepTimeMinutes": null,
I/flutter ( 6449): ║                         "categoryKey": "desserts",
I/flutter ( 6449): ║                         "itemType": "dessert",
I/flutter ( 6449): ║                         "type": "menu_product",
I/flutter ( 6449): ║                         "available": true,
I/flutter ( 6449): ║                         "active": true,
I/flutter ( 6449): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 6449): ║                    }
I/flutter ( 6449): ║                 ]
I/flutter ( 6449): ║            }
I/flutter ( 6449): ║             "small_salad": {
I/flutter ( 6449): ║                 "category": "small_salad",
I/flutter ( 6449): ║                 "sourceCategories": [light_options]
I/flutter ( 6449): ║                 "choices": [
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a49586d991f8d73bc7a2403",
I/flutter ( 6449): ║                         "key": "green_salad",
I/flutter ( 6449): ║                         "name": "Green Salad - 100g",
I/flutter ( 6449): ║                         "nameAr": "سلطة خضراء - 100 جرام",
I/flutter ( 6449): ║                         "nameI18n": {ar: سلطة خضراء - 100 جرام, en: Green Salad - 100g},
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "priceHalala": 1500,
I/flutter ( 6449): ║                         "priceSar": 15,
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "calories": null,
I/flutter ( 6449): ║                         "prepTimeMinutes": null,
I/flutter ( 6449): ║                         "categoryKey": "light_options",
I/flutter ( 6449): ║                         "itemType": "green_salad",
I/flutter ( 6449): ║                         "type": "menu_product",
I/flutter ( 6449): ║                         "available": true,
I/flutter ( 6449): ║                         "active": true,
I/flutter ( 6449): ║                         "ui": {cardVariant: compact_builder, cardSize: medium, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a495886991f8d73bc7a2469",
I/flutter ( 6449): ║                         "key": "fruit_salad",
I/flutter ( 6449): ║                         "name": "Fruit Salad – 150g",
I/flutter ( 6449): ║                         "nameAr": "سلطة فواكه – 150 جرام",
I/flutter ( 6449): ║                         "nameI18n": {ar: سلطة فواكه – 150 جرام, en: Fruit Salad – 150g},
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "priceHalala": 1700,
I/flutter ( 6449): ║                         "priceSar": 17,
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "calories": null,
I/flutter ( 6449): ║                         "prepTimeMinutes": null,
I/flutter ( 6449): ║                         "categoryKey": "light_options",
I/flutter ( 6449): ║                         "itemType": "fruit_salad",
I/flutter ( 6449): ║                         "type": "menu_product",
I/flutter ( 6449): ║                         "available": true,
I/flutter ( 6449): ║                         "active": true,
I/flutter ( 6449): ║                         "ui": {cardVariant: compact_builder, cardSize: medium, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a4958a1991f8d73bc7a24d2",
I/flutter ( 6449): ║                         "key": "greek_salad",
I/flutter ( 6449): ║                         "name": "Greek Salad",
I/flutter ( 6449): ║                         "nameAr": "سلطة يونانية",
I/flutter ( 6449): ║                         "nameI18n": {ar: سلطة يونانية, en: Greek Salad},
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "priceHalala": 1200,
I/flutter ( 6449): ║                         "priceSar": 12,
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "calories": null,
I/flutter ( 6449): ║                         "prepTimeMinutes": null,
I/flutter ( 6449): ║                         "categoryKey": "light_options",
I/flutter ( 6449): ║                         "itemType": "green_salad",
I/flutter ( 6449): ║                         "type": "menu_product",
I/flutter ( 6449): ║                         "available": true,
I/flutter ( 6449): ║                         "active": true,
I/flutter ( 6449): ║                         "ui": {cardVariant: addon, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a4958a2991f8d73bc7a24d5",
I/flutter ( 6449): ║                         "key": "fruit_salad_addon",
I/flutter ( 6449): ║                         "name": "Fruit Salad",
I/flutter ( 6449): ║                         "nameAr": "سلطة فواكه",
I/flutter ( 6449): ║                         "nameI18n": {ar: سلطة فواكه, en: Fruit Salad},
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "priceHalala": 1200,
I/flutter ( 6449): ║                         "priceSar": 12,
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "calories": null,
I/flutter ( 6449): ║                         "prepTimeMinutes": null,
I/flutter ( 6449): ║                         "categoryKey": "light_options",
I/flutter ( 6449): ║                         "itemType": "fruit_salad",
I/flutter ( 6449): ║                         "type": "menu_product",
I/flutter ( 6449): ║                         "available": true,
I/flutter ( 6449): ║                         "active": true,
I/flutter ( 6449): ║                         "ui": {cardVariant: addon, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "id": "6a4958a3991f8d73bc7a24d8",
I/flutter ( 6449): ║                         "key": "vegetable_salad",
I/flutter ( 6449): ║                         "name": "Vegetable Salad",
I/flutter ( 6449): ║                         "nameAr": "سلطة خضار",
I/flutter ( 6449): ║                         "nameI18n": {ar: سلطة خضار, en: Vegetable Salad},
I/flutter ( 6449): ║                         "description": "",
I/flutter ( 6449): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 6449): ║                         "imageUrl": "",
I/flutter ( 6449): ║                         "priceHalala": 1200,
I/flutter ( 6449): ║                         "priceSar": 12,
I/flutter ( 6449): ║                         "currency": "SAR",
I/flutter ( 6449): ║                         "calories": null,
I/flutter ( 6449): ║                         "prepTimeMinutes": null,
I/flutter ( 6449): ║                         "categoryKey": "light_options",
I/flutter ( 6449): ║                         "itemType": "green_salad",
I/flutter ( 6449): ║                         "type": "menu_product",
I/flutter ( 6449): ║                         "available": true,
I/flutter ( 6449): ║                         "active": true,
I/flutter ( 6449): ║                         "ui": {cardVariant: addon, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 6449): ║                    }
I/flutter ( 6449): ║                 ]
I/flutter ( 6449): ║            }
I/flutter ( 6449): ║        }
I/flutter ( 6449): ║    }
I/flutter ( 6449): ║
I/flutter ( 6449): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6449): onChange -- MealPlannerBloc, Change { currentState: MealPlannerLoading(), nextState: MealPlannerLoaded([Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel'], Instance of 'MealPlannerMenuModel', AddonChoicesModel([AddonChoiceCategoryModel(juice, [juices, drinks], [AddonChoiceModel(6a49589f991f8d73bc7a24c9, orange_juice, Orange Juice, عصير برتقال, {ar: عصير برتقال, en: Orange Juice}, 1000, 10.0, SAR, null, null, juices, juice, menu_product, true, true, {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}), AddonChoiceModel(6a4958a0991f8d73bc7a24cc, apple_juice, Apple Juice, عصير تفاح, {ar: عصير تفاح, en: Apple Juice}, 1000, 10.0, SAR, null, null, juices, juice, menu_product, true, true, {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}), Addon
I/flutter ( 6449):
I/flutter ( 6449): ╔╣ Request ║ GET
I/flutter ( 6449): ║  https://basicdiet145-production-51e9.up.railway.app/api/subscriptions/6a512509777b130b7590dec3/days/2026-07-11
I/flutter ( 6449): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6449): ╔ Headers
I/flutter ( 6449): ╟ accept: application/json
I/flutter ( 6449): ╟ content-type: application/json
I/flutter ( 6449): ╟ authorization:
I/flutter ( 6449): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTRmNjNjYTc4NDYzMGQ0OWExZjQ2ZD
I/flutter ( 6449): ║ UiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MzcwMzYyOSwiZXhwIjox
I/flutter ( 6449): ║ NzgzNzA0NTI5fQ.znBYq1YXp0iv7MbKQcpaHJg-s2zTP9H8E1LclWDJ99w
I/flutter ( 6449): ╟ Accept-Language: en
I/flutter ( 6449): ╟ contentType: application/json
I/flutter ( 6449): ╟ responseType: ResponseType.json
I/flutter ( 6449): ╟ followRedirects: true
I/flutter ( 6449): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 6449): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 6449): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6449): [🌎 Easy Localization] [WARNING] Localization key [dailyLimitEnforced] not found
I/flutter ( 6449):
I/flutter ( 6449): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 241 ms
I/flutter ( 6449): ║  https://basicdiet145-production-51e9.up.railway.app/api/subscriptions/6a512509777b130b7590dec3/days/2026-07-11
I/flutter ( 6449): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6449): ╔ Headers
I/flutter ( 6449): ╟ x-dns-prefetch-control: [off]
I/flutter ( 6449): ╟ date: [Fri, 10 Jul 2026 17:15:17 GMT]
I/flutter ( 6449): ╟ transfer-encoding: [chunked]
I/flutter ( 6449): ╟ vary: [Origin, accept-encoding]
I/flutter ( 6449): ╟ origin-agent-cluster: [?1]
I/flutter ( 6449): ╟ content-encoding: [gzip]
I/flutter ( 6449): ╟ x-hikari-trace: [cdg1.8vsn]
I/flutter ( 6449): ╟ server: [railway-hikari]
I/flutter ( 6449): ╟ x-request-id: [469e3825-6f45-4f26-961b-42be094055db]
I/flutter ( 6449): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 6449): ╟ etag: [W/"1ad8-ndLMctxMcyTkthSWAAxdgrWbaH4"]
I/flutter ( 6449): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 6449): ╟ content-security-policy:
I/flutter ( 6449): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 6449): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 6449): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 6449): ╟ x-railway-request-id: [xnTyhtdWRci5Hc4OAXC71g]
I/flutter ( 6449): ╟ connection: [keep-alive]
I/flutter ( 6449): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 6449): ╟ referrer-policy: [no-referrer]
I/flutter ( 6449): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 6449): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 6449): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 6449): ╟ x-xss-protection: [0]
I/flutter ( 6449): ╟ x-railway-edge: [cdg1]
I/flutter ( 6449): ╟ access-control-allow-credentials: [true]
I/flutter ( 6449): ╟ x-download-options: [noopen]
I/flutter ( 6449): ╟ x-content-type-options: [nosniff]
I/flutter ( 6449): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6449): ╔ Body
I/flutter ( 6449): ║
I/flutter ( 6449): ║    {
I/flutter ( 6449): ║         "status": true,
I/flutter ( 6449): ║         "data": {
I/flutter ( 6449): ║             "_id": "6a512509777b130b7590dece",
I/flutter ( 6449): ║             "subscriptionId": "6a512509777b130b7590dec3",
I/flutter ( 6449): ║             "date": "2026-07-11",
I/flutter ( 6449): ║             "status": "open",
I/flutter ( 6449): ║             "selections": []
I/flutter ( 6449): ║             "skippedByUser": false,
I/flutter ( 6449): ║             "skipCompensated": false,
I/flutter ( 6449): ║             "assignedByKitchen": false,
I/flutter ( 6449): ║             "pickupRequested": false,
I/flutter ( 6449): ║             "pickupRequestedAt": null,
I/flutter ( 6449): ║             "pickupPreparationStartedAt": null,
I/flutter ( 6449): ║             "pickupPreparedAt": null,
I/flutter ( 6449): ║             "pickupCode": null,
I/flutter ( 6449): ║             "pickupCodeIssuedAt": null,
I/flutter ( 6449): ║             "pickupVerifiedAt": null,
I/flutter ( 6449): ║             "pickupVerifiedByDashboardUserId": null,
I/flutter ( 6449): ║             "pickupNoShowAt": null,
I/flutter ( 6449): ║             "dayEndConsumptionReason": null,
I/flutter ( 6449): ║             "autoSettled": false,
I/flutter ( 6449): ║             "settledAt": null,
I/flutter ( 6449): ║             "settlementReason": null,
I/flutter ( 6449): ║             "settledBy": null,
I/flutter ( 6449): ║             "cancellationReason": null,
I/flutter ( 6449): ║             "cancellationCategory": null,
I/flutter ( 6449): ║             "cancellationNote": null,
I/flutter ( 6449): ║             "canceledBy": null,
I/flutter ( 6449): ║             "canceledAt": null,
I/flutter ( 6449): ║             "creditsDeducted": false,
I/flutter ( 6449): ║             "addonCreditsReleased": false,
I/flutter ( 6449): ║             "premiumCreditsReleased": false,
I/flutter ( 6449): ║             "autoLocked": false,
I/flutter ( 6449): ║             "fulfillmentModeOverride": null,
I/flutter ( 6449): ║             "pickupLocationIdOverride": null,
I/flutter ( 6449): ║             "plannerRevisionHash": "b0ddd7e6b9051b1c961aa465baaa398393149b64baaf0d86503e2b7694ca46e4",
I/flutter ( 6449): ║             "mealReminderSentAt": null,
I/flutter ( 6449): ║             "addonSelections": []
I/flutter ( 6449): ║             "premiumUpgradeSelections": []
I/flutter ( 6449): ║             "operationAuditLog": []
I/flutter ( 6449): ║             "customSalads": []
I/flutter ( 6449): ║             "customMeals": []
I/flutter ( 6449): ║             "baseMealSlots": []
I/flutter ( 6449): ║             "__v": 0,
I/flutter ( 6449): ║             "createdAt": "2026-07-10T16:59:53.233Z",
I/flutter ( 6449): ║             "updatedAt": "2026-07-10T16:59:53.233Z",
I/flutter ( 6449): ║             "addonEntitlements": {
I/flutter ( 6449): ║                 "juice": {
I/flutter ( 6449): ║                     "category": "juice",
I/flutter ( 6449): ║                     "subscribed": true,
I/flutter ( 6449): ║                     "addonPlanId": "6a4958e8991f8d73bc7a2605",
I/flutter ( 6449): ║                     "name": "Juice Subscription",
I/flutter ( 6449): ║                     "maxPerDay": 1,
I/flutter ( 6449): ║                     "selectedItem": null,
I/flutter ( 6449): ║                     "status": "pending_selection"
I/flutter ( 6449): ║                }
I/flutter ( 6449): ║                 "snack": {
I/flutter ( 6449): ║                     "category": "snack",
I/flutter ( 6449): ║                     "subscribed": true,
I/flutter ( 6449): ║                     "addonPlanId": "6a4958e8991f8d73bc7a2608",
I/flutter ( 6449): ║                     "name": "Snack Subscription",
I/flutter ( 6449): ║                     "maxPerDay": 1,
I/flutter ( 6449): ║                     "selectedItem": null,
I/flutter ( 6449): ║                     "status": "pending_selection"
I/flutter ( 6449): ║                }
I/flutter ( 6449): ║                 "small_salad": {
I/flutter ( 6449): ║                     "category": "small_salad",
I/flutter ( 6449): ║                     "subscribed": true,
I/flutter ( 6449): ║                     "addonPlanId": "6a4958e9991f8d73bc7a260b",
I/flutter ( 6449): ║                     "name": "Small Salad Subscription",
I/flutter ( 6449): ║                     "maxPerDay": 1,
I/flutter ( 6449): ║                     "selectedItem": null,
I/flutter ( 6449): ║                     "status": "pending_selection"
I/flutter ( 6449): ║                }
I/flutter ( 6449): ║            }
I/flutter ( 6449): ║             "planning": {
I/flutter ( 6449): ║                 "version": "subscription_day_planning.v1",
I/flutter ( 6449): ║                 "state": "draft",
I/flutter ( 6449): ║                 "requiredMealCount": 2,
I/flutter ( 6449): ║                 "selectedBaseMealCount": 0,
I/flutter ( 6449): ║                 "selectedPremiumMealCount": 0,
I/flutter ( 6449): ║                 "selectedTotalMealCount": 0,
I/flutter ( 6449): ║                 "isThresholdMet": false,
I/flutter ( 6449): ║                 "isExactCountSatisfied": false,
I/flutter ( 6449): ║                 "isBalanceExceeded": false,
I/flutter ( 6449): ║                 "maxConsumableMealsNow": 14,
I/flutter ( 6449): ║                 "confirmedAt": null,
I/flutter ( 6449): ║                 "confirmedByRole": null,
I/flutter ( 6449): ║                 "baseMealSlots": []
I/flutter ( 6449): ║                 "premiumOverageCount": 0,
I/flutter ( 6449): ║                 "premiumOverageStatus": null,
I/flutter ( 6449): ║                 "stateLabel": "Draft",
I/flutter ( 6449): ║                 "premiumOverageStatusLabel": ""
I/flutter ( 6449): ║            }
I/flutter ( 6449): ║             "statusLabel": "Open",
I/flutter ( 6449): ║             "premiumSummary": {
I/flutter ( 6449): ║                 "selectedCount": 0,
I/flutter ( 6449): ║                 "coveredByBalanceCount": 0,
I/flutter ( 6449): ║                 "pendingPaymentCount": 0,
I/flutter ( 6449): ║                 "paidExtraCount": 0,
I/flutter ( 6449): ║                 "totalExtraHalala": 0,
I/flutter ( 6449): ║                 "currency": "SAR"
I/flutter ( 6449): ║            }
I/flutter ( 6449): ║             "addonSummary": {
I/flutter ( 6449): ║                 "selectedCount": 0,
I/flutter ( 6449): ║                 "inclusiveCount": 0,
I/flutter ( 6449): ║                 "pendingPaymentCount": 0,
I/flutter ( 6449): ║                 "paidCount": 0,
I/flutter ( 6449): ║                 "totalExtraHalala": 0,
I/flutter ( 6449): ║                 "currency": "SAR"
I/flutter ( 6449): ║            }
I/flutter ( 6449): ║             "addonCategoryAllowances": [
I/flutter ( 6449): ║                {
I/flutter ( 6449): ║                     "category": "juice",
I/flutter ( 6449): ║                     "includedTotalQty": 7,
I/flutter ( 6449): ║                     "consumedQty": 3,
I/flutter ( 6449): ║                     "reservedQty": 0,
I/flutter ( 6449): ║                     "remainingIncludedQty": 4,
I/flutter ( 6449): ║                     "overageUnitPriceHalala": 10000,
I/flutter ( 6449): ║                     "currency": "SAR"
I/flutter ( 6449): ║                },
I/flutter ( 6449): ║                {
I/flutter ( 6449): ║                     "category": "small_salad",
I/flutter ( 6449): ║                     "includedTotalQty": 7,
I/flutter ( 6449): ║                     "consumedQty": 0,
I/flutter ( 6449): ║                     "reservedQty": 0,
I/flutter ( 6449): ║                     "remainingIncludedQty": 7,
I/flutter ( 6449): ║                     "overageUnitPriceHalala": 9000,
I/flutter ( 6449): ║                     "currency": "SAR"
I/flutter ( 6449): ║                },
I/flutter ( 6449): ║                {
I/flutter ( 6449): ║                     "category": "snack",
I/flutter ( 6449): ║                     "includedTotalQty": 7,
I/flutter ( 6449): ║                     "consumedQty": 0,
I/flutter ( 6449): ║                     "reservedQty": 0,
I/flutter ( 6449): ║                     "remainingIncludedQty": 7,
I/flutter ( 6449): ║                     "overageUnitPriceHalala": 8000,
I/flutter ( 6449): ║                     "currency": "SAR"
I/flutter ( 6449): ║                }
I/flutter ( 6449): ║             ],
I/flutter ( 6449): ║             "premiumExtraPayment": {
I/flutter ( 6449): ║                 "status": "none",
I/flutter ( 6449): ║                 "paymentId": null,
I/flutter ( 6449): ║                 "providerInvoiceId": null,
I/flutter ( 6449): ║                 "amountHalala": 0,
I/flutter ( 6449): ║                 "currency": "SAR",
I/flutter ( 6449): ║                 "expiresAt": null,
I/flutter ( 6449): ║                 "reused": false,
I/flutter ( 6449): ║                 "revisionHash": "b0ddd7e6b9051b1c961aa465baaa398393149b64baaf0d86503e2b7694ca46e4"
I/flutter ( 6449): ║                 "createdAt": null,
I/flutter ( 6449): ║                 "paidAt": null,
I/flutter ( 6449): ║                 "extraPremiumCount": 0,
I/flutter ( 6449): ║                 "statusLabel": "No payment"
I/flutter ( 6449): ║            }
I/flutter ( 6449): ║             "paymentRequirement": {
I/flutter ( 6449): ║                 "status": "satisfied",
I/flutter ( 6449): ║                 "requiresPayment": false,
I/flutter ( 6449): ║                 "pricingStatus": "not_required",
I/flutter ( 6449): ║                 "blockingReason": "PLANNING_INCOMPLETE",
I/flutter ( 6449): ║                 "canCreatePayment": false,
I/flutter ( 6449): ║                 "premiumSelectedCount": 0,
I/flutter ( 6449): ║                 "premiumPendingPaymentCount": 0,
I/flutter ( 6449): ║                 "addonSelectedCount": 0,
I/flutter ( 6449): ║                 "addonPendingPaymentCount": 0,
I/flutter ( 6449): ║                 "pendingAmountHalala": 0,
I/flutter ( 6449): ║                 "amountHalala": 0,
I/flutter ( 6449): ║                 "currency": "SAR",
I/flutter ( 6449): ║                 "pricingStatusLabel": "Not required",
I/flutter ( 6449): ║                 "blockingReasonLabel": ""
I/flutter ( 6449): ║            }
I/flutter ( 6449): ║             "commercialState": "draft",
I/flutter ( 6449): ║             "isFulfillable": false,
I/flutter ( 6449): ║             "canBePrepared": false,
I/flutter ( 6449): ║             "pickupPrepared": false,
I/flutter ( 6449): ║             "pickupPreparationFlowStatus": "waiting_for_prepare",
I/flutter ( 6449): ║             "fulfillmentMode": "no_service",
I/flutter ( 6449): ║             "consumptionState": "pending_day",
I/flutter ( 6449): ║             "requiredMealCount": 2,
I/flutter ( 6449): ║             "specifiedMealCount": 0,
I/flutter ( 6449): ║             "unspecifiedMealCount": 2,
I/flutter ( 6449): ║             "hasCustomerSelections": false,
I/flutter ( 6449): ║             "requiresMealTypeKnowledge": false,
I/flutter ( 6449): ║             "mealTypesSpecified": false,
I/flutter ( 6449): ║             "planningReady": false,
I/flutter ( 6449): ║             "fulfillmentReady": false,
I/flutter ( 6449): ║             "deliveryMode": "pickup",
I/flutter ( 6449): ║             "effectiveFulfillmentMode": "pickup",
I/flutter ( 6449): ║             "firstDayFulfillmentOverride": false,
I/flutter ( 6449): ║             "pickupLocation": {
I/flutter ( 6449): ║                 "id": "main",
I/flutter ( 6449): ║                 "name": "Main Branch",
I/flutter ( 6449): ║                 "address": "H4GX+JF7, As Salamah, Jeddah 23436, Saudi Arabia",
I/flutter ( 6449): ║                 "phone": "",
I/flutter ( 6449): ║                 "city": "",
I/flutter ( 6449): ║                 "district": "",
I/flutter ( 6449): ║                 "workingHours": "",
I/flutter ( 6449): ║                 "latitude": null,
I/flutter ( 6449): ║                 "longitude": null,
I/flutter ( 6449): ║                 "mapUrl": null
I/flutter ( 6449): ║            }
I/flutter ( 6449): ║             "deliveryAddress": null,
I/flutter ( 6449): ║             "deliveryWindow": null,
I/flutter ( 6449): ║             "deliverySlot": {type: pickup, slotId: , window: , label: },
I/flutter ( 6449): ║             "fulfillmentSummary": {
I/flutter ( 6449): ║                 "mode": "pickup",
I/flutter ( 6449): ║                 "title": "Pickup from branch",
I/flutter ( 6449): ║                 "status": "open",
I/flutter ( 6449): ║                 "statusLabel": "Open",
I/flutter ( 6449): ║                 "message": "Review today's selections and request preparation when ready"
I/flutter ( 6449): ║                 "nextAction": "",
I/flutter ( 6449): ║                 "isEditable": true,
I/flutter ( 6449): ║                 "isFulfillable": false,
I/flutter ( 6449): ║                 "planningReady": false,
I/flutter ( 6449): ║                 "fulfillmentReady": false,
I/flutter ( 6449): ║                 "lockedReason": null,
I/flutter ( 6449): ║                 "lockedMessage": null
I/flutter ( 6449): ║            }
I/flutter ( 6449): ║             "lockedReason": null,
I/flutter ( 6449): ║             "lockedMessage": null,
I/flutter ( 6449): ║             "mealBalance": {
I/flutter ( 6449): ║                 "totalMeals": 14,
I/flutter ( 6449): ║                 "remainingMeals": 14,
I/flutter ( 6449): ║                 "consumedMeals": 0,
I/flutter ( 6449): ║                 "canConsumeNow": true,
I/flutter ( 6449): ║                 "maxConsumableMealsNow": 14,
I/flutter ( 6449): ║                 "mealBalancePolicy": "TOTAL_BALANCE_WITHIN_VALIDITY",
I/flutter ( 6449): ║                 "dailyMealLimitEnforced": false,
I/flutter ( 6449): ║                 "dailyMealsDefault": 2
I/flutter ( 6449): ║            }
I/flutter ( 6449): ║             "addonBalance": {
I/flutter ( 6449): ║                 "juice": {
I/flutter ( 6449): ║                     "totalUnits": 7,
I/flutter ( 6449): ║                     "remainingUnits": 4,
I/flutter ( 6449): ║                     "consumedUnits": 3,
I/flutter ( 6449): ║                     "canConsumeNow": true,
I/flutter ( 6449): ║                     "unitPolicy": "TOTAL_BALANCE_WITHIN_VALIDITY"
I/flutter ( 6449): ║                }
I/flutter ( 6449): ║                 "snack": {
I/flutter ( 6449): ║                     "totalUnits": 7,
I/flutter ( 6449): ║                     "remainingUnits": 7,
I/flutter ( 6449): ║                     "consumedUnits": 0,
I/flutter ( 6449): ║                     "canConsumeNow": true,
I/flutter ( 6449): ║                     "unitPolicy": "TOTAL_BALANCE_WITHIN_VALIDITY"
I/flutter ( 6449): ║                }
I/flutter ( 6449): ║                 "small_salad": {
I/flutter ( 6449): ║                     "totalUnits": 7,
I/flutter ( 6449): ║                     "remainingUnits": 7,
I/flutter ( 6449): ║                     "consumedUnits": 0,
I/flutter ( 6449): ║                     "canConsumeNow": true,
I/flutter ( 6449): ║                     "unitPolicy": "TOTAL_BALANCE_WITHIN_VALIDITY"
I/flutter ( 6449): ║                }
I/flutter ( 6449): ║            }
I/flutter ( 6449): ║             "addonBalanceNeedsReview": false,
I/flutter ( 6449): ║             "rules": {
I/flutter ( 6449): ║                 "version": "meal_planner_rules.v3",
I/flutter ( 6449): ║                 "beef": {proteinFamilyKey: beef, maxSlotsPerDay: 1},
I/flutter ( 6449): ║                 "standardCarbs": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
I/flutter ( 6449): ║                 "premiumCarbs": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
I/flutter ( 6449): ║                 "proteinGroups": [
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "key": "chicken",
I/flutter ( 6449): ║                         "name": {ar: دجاج, en: Chicken},
I/flutter ( 6449): ║                         "sortOrder": 10
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "key": "beef",
I/flutter ( 6449): ║                         "name": {ar: لحم, en: Beef},
I/flutter ( 6449): ║                         "sortOrder": 20
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "key": "fish",
I/flutter ( 6449): ║                         "name": {ar: سمك, en: Fish},
I/flutter ( 6449): ║                         "sortOrder": 30
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "key": "eggs",
I/flutter ( 6449): ║                         "name": {ar: بيض, en: Eggs},
I/flutter ( 6449): ║                         "sortOrder": 40
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "key": "premium",
I/flutter ( 6449): ║                         "name": {ar: بريميوم, en: Premium},
I/flutter ( 6449): ║                         "sortOrder": 50
I/flutter ( 6449): ║                    },
I/flutter ( 6449): ║                    {
I/flutter ( 6449): ║                         "key": "other",
I/flutter ( 6449): ║                         "name": {ar: أخرى, en: Other},
I/flutter ( 6449): ║                         "sortOrder": 60
I/flutter ( 6449): ║                    }
I/flutter ( 6449): ║                 ],
I/flutter ( 6449): ║                 "premiumLargeSalad": {
I/flutter ( 6449): ║                     "premiumKey": "premium_large_salad",
I/flutter ( 6449): ║                     "presetKey": "large_salad",
I/flutter ( 6449): ║                     "extraFeeHalala": 2900,
I/flutter ( 6449): ║                     "groups": [
I/flutter ( 6449): ║                      {key: leafy_greens, minSelect: 0, maxSelect: 2},
I/flutter ( 6449): ║                      {key: vegetables, minSelect: 0, maxSelect: 19},
I/flutter ( 6449): ║                      {key: protein, minSelect: 1, maxSelect: 1},
I/flutter ( 6449): ║                      {key: cheese_nuts, minSelect: 0, maxSelect: 2},
I/flutter ( 6449): ║                      {key: fruits, minSelect: 0, maxSelect: 4},
I/flutter ( 6449): ║                      {key: sauce, minSelect: 1, maxSelect: 1}
I/flutter ( 6449): ║                     ],
I/flutter ( 6449): ║                     "allowedProteinKeys": [
I/flutter ( 6449): ║                             boiled_eggs,
I/flutter ( 6449): ║                             tuna,
I/flutter ( 6449): ║                             chicken_fajita,
I/flutter ( 6449): ║                             spicy_chicken,
I/flutter ( 6449): ║                             italian_spiced_chicken,
I/flutter ( 6449): ║                             chicken_tikka,
I/flutter ( 6449): ║                             asian_chicken,
I/flutter ( 6449): ║                             chicken_strips,
I/flutter ( 6449): ║                             grilled_chicken,
I/flutter ( 6449): ║                             mexican_chicken,
I/flutter ( 6449): ║                             fish_fillet
I/flutter ( 6449): ║                     ],
I/flutter ( 6449): ║                     "excludedGroupKeys": [extra_protein_50g]
I/flutter ( 6449): ║                }
I/flutter ( 6449): ║            }
I/flutter ( 6449): ║             "commercialStateLabel": "Draft"
I/flutter ( 6449): ║        }
I/flutter ( 6449): ║    }
I/flutter ( 6449): ║
I/flutter ( 6449): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6449): onChange -- MealPlannerBloc, Change { currentState: MealPlannerLoaded([Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel'], Instance of 'MealPlannerMenuModel', AddonChoicesModel([AddonChoiceCategoryModel(juice, [juices, drinks], [AddonChoiceModel(6a49589f991f8d73bc7a24c9, orange_juice, Orange Juice, عصير برتقال, {ar: عصير برتقال, en: Orange Juice}, 1000, 10.0, SAR, null, null, juices, juice, menu_product, true, true, {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}), AddonChoiceModel(6a4958a0991f8d73bc7a24cc, apple_juice, Apple Juice, عصير تفاح, {ar: عصير تفاح, en: Apple Juice}, 1000, 10.0, SAR, null, null, juices, juice, menu_product, true, true, {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}), AddonChoiceModel(6a4958a1991f8d73bc7a2

======== Exception caught by rendering library =====================================================
The following assertion was thrown during layout:
A RenderFlex overflowed by 14 pixels on the right.

The relevant error-causing widget was:
Row Row:file:///Users/moali/AndroidStudioProjects/basic/mobile_app/lib/presentation/plans/timeline/meal_planner/widgets/meal_planner_progress_indicator.dart:71:25
I/flutter ( 6449):
I/flutter ( 6449): ╔╣ Request ║ GET
I/flutter ( 6449): ║  https://basicdiet145-production-51e9.up.railway.app/api/subscriptions/6a512509777b130b7590dec3/pickup-requests?date=2026-07-10&status=active
I/flutter ( 6449): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6449): ╔ Query Parameters
I/flutter ( 6449): ╟ date: 2026-07-10
I/flutter ( 6449): ╟ status: active
I/flutter ( 6449): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6449): ╔ Headers
I/flutter ( 6449): ╟ accept: application/json
I/flutter ( 6449): ╟ content-type: application/json
I/flutter ( 6449): ╟ authorization:
I/flutter ( 6449): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTRmNjNjYTc4NDYzMGQ0OWExZjQ2ZD
I/flutter ( 6449): ║ UiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MzcwMzYyOSwiZXhwIjox
I/flutter ( 6449): ║ NzgzNzA0NTI5fQ.znBYq1YXp0iv7MbKQcpaHJg-s2zTP9H8E1LclWDJ99w
I/flutter ( 6449): ╟ Accept-Language: en
I/flutter ( 6449): ╟ contentType: application/json
I/flutter ( 6449): ╟ responseType: ResponseType.json
I/flutter ( 6449): ╟ followRedirects: true
I/flutter ( 6449): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 6449): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 6449): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6449):
I/flutter ( 6449): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 248 ms
I/flutter ( 6449): ║  https://basicdiet145-production-51e9.up.railway.app/api/subscriptions/6a512509777b130b7590dec3/pickup-requests?date=2026-07-10&status=active
I/flutter ( 6449): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6449): ╔ Headers
I/flutter ( 6449): ╟ connection: [keep-alive]
I/flutter ( 6449): ╟ x-dns-prefetch-control: [off]
I/flutter ( 6449): ╟ date: [Fri, 10 Jul 2026 17:15:19 GMT]
I/flutter ( 6449): ╟ origin-agent-cluster: [?1]
I/flutter ( 6449): ╟ vary: [Origin]
I/flutter ( 6449): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 6449): ╟ referrer-policy: [no-referrer]
I/flutter ( 6449): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 6449): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 6449): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 6449): ╟ x-xss-protection: [0]
I/flutter ( 6449): ╟ x-hikari-trace: [cdg1.8vsn]
I/flutter ( 6449): ╟ x-railway-edge: [cdg1]
I/flutter ( 6449): ╟ server: [railway-hikari]
I/flutter ( 6449): ╟ x-request-id: [41416922-62d8-4242-a0f4-917b62f5a7bc]
I/flutter ( 6449): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 6449): ╟ access-control-allow-credentials: [true]
I/flutter ( 6449): ╟ content-length: [38]
I/flutter ( 6449): ╟ x-download-options: [noopen]
I/flutter ( 6449): ╟ etag: [W/"26-vUJLOZzgmo3420bhPQar8b5PMRI"]
I/flutter ( 6449): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 6449): ╟ x-content-type-options: [nosniff]
I/flutter ( 6449): ╟ content-security-policy:
I/flutter ( 6449): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 6449): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 6449): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 6449): ╟ x-railway-request-id: [Eefox-loQzqVdYIJAXC71g]
I/flutter ( 6449): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6449): ╔ Body
I/flutter ( 6449): ║
I/flutter ( 6449): ║    {
I/flutter ( 6449): ║         "status": true,
I/flutter ( 6449): ║         "data": {
I/flutter ( 6449): ║             "requests": []
I/flutter ( 6449): ║        }
I/flutter ( 6449): ║    }
I/flutter ( 6449): ║
I/flutter ( 6449): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6449):
I/flutter ( 6449): ╔╣ Request ║ GET
I/flutter ( 6449): ║  https://basicdiet145-production-51e9.up.railway.app/api/subscriptions/6a512509777b130b7590dec3/pickup-requests?date=2026-07-10&status=active
I/flutter ( 6449): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6449): ╔ Query Parameters
I/flutter ( 6449): ╟ date: 2026-07-10
I/flutter ( 6449): ╟ status: active
I/flutter ( 6449): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6449): ╔ Headers
I/flutter ( 6449): ╟ accept: application/json
I/flutter ( 6449): ╟ content-type: application/json
I/flutter ( 6449): ╟ authorization:
I/flutter ( 6449): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTRmNjNjYTc4NDYzMGQ0OWExZjQ2ZD
I/flutter ( 6449): ║ UiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MzcwMzYyOSwiZXhwIjox
I/flutter ( 6449): ║ NzgzNzA0NTI5fQ.znBYq1YXp0iv7MbKQcpaHJg-s2zTP9H8E1LclWDJ99w
I/flutter ( 6449): ╟ Accept-Language: en
I/flutter ( 6449): ╟ contentType: application/json
I/flutter ( 6449): ╟ responseType: ResponseType.json
I/flutter ( 6449): ╟ followRedirects: true
I/flutter ( 6449): ╟ connectTimeout: 0:01:00.000000
I/flutter ( 6449): ╟ receiveTimeout: 0:01:00.000000
I/flutter ( 6449): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
