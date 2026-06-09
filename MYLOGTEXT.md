flutter: onCreate -- MealPlannerBloc
flutter: onChange -- MealPlannerBloc, Change { currentState: MealPlannerLoaded([Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel'], Instance of 'MealPlannerMenuModel', AddonChoicesModel([]), [Instance of 'AddonSubscriptionModel'], [Instance of 'PremiumSummaryModel'], 5, {}, {}, {}, {}, {}, false, false, false, , 0, false, 0, null, null, null, null, null, null), nextState: MealPlannerLoading() }
flutter:
flutter: ╔╣ Request ║ GET
flutter: ║  https://basicdiet145.onrender.com/api/subscriptions/meal-planner-menu?lang=ar
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: ╔ Query Parameters
flutter: ╟ lang: ar
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: ╔ Headers
flutter: ╟ accept: application/json
flutter: ╟ content-type: application/json
flutter: ╟ authorization:
flutter: ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTI0NTNiMmYwMWVhMmI0MDg3Y2Q2Nj
flutter: ║ kiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MTAxNTM0MCwiZXhwIjox
flutter: ║ NzgxMDE2MjQwfQ.tqQDXvewU_eyA6VNcF3QeRjaB2weeAZ9C_BER1ptcKA
flutter: ╟ Accept-Language: ar
flutter: ╟ contentType: application/json
flutter: ╟ responseType: ResponseType.json
flutter: ╟ followRedirects: true
flutter: ╟ connectTimeout: 0:01:00.000000
flutter: ╟ receiveTimeout: 0:01:00.000000
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter:
flutter: ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 4554 ms
flutter: ║  https://basicdiet145.onrender.com/api/subscriptions/meal-planner-menu?lang=ar
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: ╔ Headers
flutter: ╟ x-dns-prefetch-control: [off]
flutter: ╟ x-render-origin-server: [Render]
flutter: ╟ date: [Tue, 09 Jun 2026 14:40:07 GMT]
flutter: ╟ transfer-encoding: [chunked]
flutter: ╟ origin-agent-cluster: [?1]
flutter: ╟ vary: [Origin, Accept-Encoding]
flutter: ╟ content-encoding: [gzip]
flutter: ╟ server: [cloudflare]
flutter: ╟ x-request-id: [b6dc79b2-0198-4438-9dd0-900c5cfa8c00]
flutter: ╟ cross-origin-resource-policy: [same-origin]
flutter: ╟ cf-ray: [a090e3a76f7ae28c-MRS]
flutter: ╟ etag: [W/"9662-1FAeNA+GH91ZI6WtQMPsL419fZs"]
flutter: ╟ x-frame-options: [SAMEORIGIN]
flutter: ╟ content-security-policy:
flutter: ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
flutter: ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
flutter: ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
flutter: ╟ connection: [keep-alive]
flutter: ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
flutter: ╟ referrer-policy: [no-referrer]
flutter: ╟ cf-cache-status: [DYNAMIC]
flutter: ╟ x-permitted-cross-domain-policies: [none]
flutter: ╟ content-type: [application/json; charset=utf-8]
flutter: ╟ cross-origin-opener-policy: [same-origin]
flutter: ╟ rndr-id: [71cd3d30-2d89-421b]
flutter: ╟ x-xss-protection: [0]
flutter: ╟ access-control-allow-credentials: [true]
flutter: ╟ alt-svc: [h3=":443"; ma=86400]
flutter: ╟ x-download-options: [noopen]
flutter: ╟ x-content-type-options: [nosniff]
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: ╔ Body
flutter: ║
flutter: ║    {
flutter: ║         "status": true,
flutter: ║         "data": {
flutter: ║             "builderCatalog": {
flutter: ║                 "contractVersion": "meal_planner_menu.v3",
flutter: ║                 "currency": "SAR",
flutter: ║                 "sections": [
flutter: ║                    {
flutter: ║                         "id": "section:premium",
flutter: ║                         "key": "premium",
flutter: ║                         "type": "configurable_product",
flutter: ║                         "builderSectionType": "mixed",
flutter: ║                         "source": {kind: premium_mixed},
flutter: ║                         "name": "مميز",
flutter: ║                         "nameI18n": {ar: مميز, en: Premium},
flutter: ║                         "sortOrder": 10,
flutter: ║                         "ui": {
flutter: ║                             "visualRole": "premium",
flutter: ║                             "includedProductKeys": [premium_large_salad]
flutter: ║                             "optionKeys": [beef_steak, shrimp, salmon]
flutter: ║                        }
flutter: ║                         "rules": {
flutter: ║                             "premiumLargeSaladSelectionType": "premium_large_salad",
flutter: ║                             "excludedGroupKeys": [extra_protein_50g]
flutter: ║                        }
flutter: ║                         "products": [
flutter: ║                            {
flutter: ║                                 "id": "6a2454474a2465a2f7a07426",
flutter: ║                                 "productId": "6a2454474a2465a2f7a07426",
flutter: ║                                 "key": "basic_meal",
flutter: ║                                 "name": "وجبة بيسك",
flutter: ║                                 "nameI18n": {ar: وجبة بيسك, en: Basic Meal},
flutter: ║                                 "itemType": "basic_meal",
flutter: ║                                 "selectionType": "premium_meal",
flutter: ║                                 "pricing": {model: per_100g, basePriceHalala: 1900, currency: SAR},
flutter: ║                                 "action": {type: open_builder, requiresBuilder: true},
flutter: ║                                 "optionGroups": [
flutter: ║                                    {
flutter: ║                                         "id": "6a2453e84a2465a2f7a07126"
flutter: ║                                         "groupId": "6a2453e84a2465a2f7a07126"
flutter: ║                                         "key": "proteins",
flutter: ║                                         "sourceKey": "proteins",
flutter: ║                                         "name": "مميز",
flutter: ║                                         "nameI18n": {ar: مميز, en: Premium},
flutter: ║                                         "minSelections": 1,
flutter: ║                                         "maxSelections": 1,
flutter: ║                                         "required": true,
flutter: ║                                         "isRequired": true,
flutter: ║                                         "sortOrder": 10,
flutter: ║                                         "options": [
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453ea4a2465a2f7a07135"
flutter: ║                                                 "optionId": "6a2453ea4a2465a2f7a07135"
flutter: ║                                                 "key": "beef_steak"
flutter: ║                                                 "name": "ستيك لحم"
flutter: ║                                                 "nameI18n": {ar: ستيك لحم, en: Beef Steak},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_meal"
flutter: ║                                                 "isPremium": true
flutter: ║                                                 "premiumKey": "beef_steak"
flutter: ║                                                 "premiumKind": "premium_protein"
flutter: ║                                                 "extraPriceHalala": 2000
flutter: ║                                                 "extraFeeHalala": 2000
flutter: ║                                                 "sortOrder": 50
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453ea4a2465a2f7a07138"
flutter: ║                                                 "optionId": "6a2453ea4a2465a2f7a07138"
flutter: ║                                                 "key": "shrimp"
flutter: ║                                                 "name": "جمبري"
flutter: ║                                                 "nameI18n": {ar: جمبري, en: Shrimp},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_meal"
flutter: ║                                                 "isPremium": true
flutter: ║                                                 "premiumKey": "shrimp"
flutter: ║                                                 "premiumKind": "premium_protein"
flutter: ║                                                 "extraPriceHalala": 2000
flutter: ║                                                 "extraFeeHalala": 2000
flutter: ║                                                 "sortOrder": 60
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453ea4a2465a2f7a0713b"
flutter: ║                                                 "optionId": "6a2453ea4a2465a2f7a0713b"
flutter: ║                                                 "key": "salmon"
flutter: ║                                                 "name": "سالمون"
flutter: ║                                                 "nameI18n": {ar: سالمون, en: Salmon},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_meal"
flutter: ║                                                 "isPremium": true
flutter: ║                                                 "premiumKey": "salmon"
flutter: ║                                                 "premiumKind": "premium_protein"
flutter: ║                                                 "extraPriceHalala": 2000
flutter: ║                                                 "extraFeeHalala": 2000
flutter: ║                                                 "sortOrder": 70
flutter: ║                                            }
flutter: ║                                         ]
flutter: ║                                    }
flutter: ║                                 ]
flutter: ║                            },
flutter: ║                            {
flutter: ║                                 "id": "6a24544e4a2465a2f7a0745d",
flutter: ║                                 "productId": "6a24544e4a2465a2f7a0745d",
flutter: ║                                 "key": "premium_large_salad",
flutter: ║                                 "name": "سلطة كبيرة مميزة",
flutter: ║                                 "nameI18n": {ar: سلطة كبيرة مميزة, en: Premium Large Salad},
flutter: ║                                 "imageUrl": "",
flutter: ║                                 "itemType": "basic_salad",
flutter: ║                                 "selectionType": "premium_large_salad",
flutter: ║                                 "premiumKey": "premium_large_salad",
flutter: ║                                 "premiumKind": "premium_large_salad",
flutter: ║                                 "pricing": {priceHalala: 2900, extraFeeHalala: 2900, currency: SAR},
flutter: ║                                 "action": {type: open_builder, requiresBuilder: true},
flutter: ║                                 "optionGroups": [
flutter: ║                                    {
flutter: ║                                         "id": "6a2453f34a2465a2f7a07186"
flutter: ║                                         "groupId": "6a2453f34a2465a2f7a07186"
flutter: ║                                         "key": "leafy_greens"
flutter: ║                                         "sourceKey": "leafy_greens"
flutter: ║                                         "name": "ورقيات",
flutter: ║                                         "nameI18n": {ar: ورقيات, en: Leafy Greens},
flutter: ║                                         "minSelections": 0,
flutter: ║                                         "maxSelections": 2,
flutter: ║                                         "required": false,
flutter: ║                                         "isRequired": false,
flutter: ║                                         "sortOrder": 10,
flutter: ║                                         "options": [
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453f44a2465a2f7a07189"
flutter: ║                                                 "optionId": "6a2453f44a2465a2f7a07189"
flutter: ║                                                 "key": "lettuce"
flutter: ║                                                 "name": "خس"
flutter: ║                                                 "nameI18n": {ar: خس, en: Lettuce},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 10
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453f44a2465a2f7a0718c"
flutter: ║                                                 "optionId": "6a2453f44a2465a2f7a0718c"
flutter: ║                                                 "key": "arugula"
flutter: ║                                                 "name": "جرجير"
flutter: ║                                                 "nameI18n": {ar: جرجير, en: Arugula},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 20
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453f44a2465a2f7a0718f"
flutter: ║                                                 "optionId": "6a2453f44a2465a2f7a0718f"
flutter: ║                                                 "key": "cabbage"
flutter: ║                                                 "name": "ملفوف"
flutter: ║                                                 "nameI18n": {ar: ملفوف, en: Cabbage},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 30
flutter: ║                                            }
flutter: ║                                         ]
flutter: ║                                    },
flutter: ║                                    {
flutter: ║                                         "id": "6a2453f54a2465a2f7a07195"
flutter: ║                                         "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                         "key": "vegetables_legumes"
flutter: ║                                         "sourceKey": "vegetables_legumes"
flutter: ║                                         "name": "خضراوات وبقوليات"
flutter: ║                                         "nameI18n": {ar: خضراوات وبقوليات, en: Vegetables & Legumes},
flutter: ║                                         "minSelections": 0,
flutter: ║                                         "maxSelections": 19,
flutter: ║                                         "required": false,
flutter: ║                                         "isRequired": false,
flutter: ║                                         "sortOrder": 20,
flutter: ║                                         "options": [
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453f54a2465a2f7a07198"
flutter: ║                                                 "optionId": "6a2453f54a2465a2f7a07198"
flutter: ║                                                 "key": "tomato"
flutter: ║                                                 "name": "طماطم"
flutter: ║                                                 "nameI18n": {ar: طماطم, en: Tomato},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 10
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453f64a2465a2f7a0719b"
flutter: ║                                                 "optionId": "6a2453f64a2465a2f7a0719b"
flutter: ║                                                 "key": "carrot"
flutter: ║                                                 "name": "جزر"
flutter: ║                                                 "nameI18n": {ar: جزر, en: Carrot},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 20
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453f64a2465a2f7a0719e"
flutter: ║                                                 "optionId": "6a2453f64a2465a2f7a0719e"
flutter: ║                                                 "key": "cucumber"
flutter: ║                                                 "name": "خيار"
flutter: ║                                                 "nameI18n": {ar: خيار, en: Cucumber},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 30
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453f74a2465a2f7a071a1"
flutter: ║                                                 "optionId": "6a2453f74a2465a2f7a071a1"
flutter: ║                                                 "key": "corn"
flutter: ║                                                 "name": "ذرة"
flutter: ║                                                 "nameI18n": {ar: ذرة, en: Corn},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 40
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453f74a2465a2f7a071a4"
flutter: ║                                                 "optionId": "6a2453f74a2465a2f7a071a4"
flutter: ║                                                 "key": "hummus"
flutter: ║                                                 "name": "حمص"
flutter: ║                                                 "nameI18n": {ar: حمص, en: Hummus},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 50
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453f74a2465a2f7a071a7"
flutter: ║                                                 "optionId": "6a2453f74a2465a2f7a071a7"
flutter: ║                                                 "key": "jalapeno"
flutter: ║                                                 "name": "هالبينو"
flutter: ║                                                 "nameI18n": {ar: هالبينو, en: Jalapeno},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 60
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453f84a2465a2f7a071aa"
flutter: ║                                                 "optionId": "6a2453f84a2465a2f7a071aa"
flutter: ║                                                 "key": "red_beans"
flutter: ║                                                 "name": "فاصوليا حمراء"
flutter: ║                                                 "nameI18n": {ar: فاصوليا حمراء, en: Red Beans},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 70
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453f84a2465a2f7a071ad"
flutter: ║                                                 "optionId": "6a2453f84a2465a2f7a071ad"
flutter: ║                                                 "key": "beetroot"
flutter: ║                                                 "name": "بنجر"
flutter: ║                                                 "nameI18n": {ar: بنجر, en: Beetroot},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 80
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453f84a2465a2f7a071b0"
flutter: ║                                                 "optionId": "6a2453f84a2465a2f7a071b0"
flutter: ║                                                 "key": "hot_pepper"
flutter: ║                                                 "name": "فلفل حار"
flutter: ║                                                 "nameI18n": {ar: فلفل حار, en: Hot Pepper},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 90
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453f84a2465a2f7a071b3"
flutter: ║                                                 "optionId": "6a2453f84a2465a2f7a071b3"
flutter: ║                                                 "key": "coriander"
flutter: ║                                                 "name": "كزبرة"
flutter: ║                                                 "nameI18n": {ar: كزبرة, en: Coriander},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 100
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453f94a2465a2f7a071b6"
flutter: ║                                                 "optionId": "6a2453f94a2465a2f7a071b6"
flutter: ║                                                 "key": "mushroom"
flutter: ║                                                 "name": "فطر"
flutter: ║                                                 "nameI18n": {ar: فطر, en: Mushroom},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 110
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453f94a2465a2f7a071b9"
flutter: ║                                                 "optionId": "6a2453f94a2465a2f7a071b9"
flutter: ║                                                 "key": "broccoli"
flutter: ║                                                 "name": "بروكلي"
flutter: ║                                                 "nameI18n": {ar: بروكلي, en: Broccoli},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 120
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453f94a2465a2f7a071bc"
flutter: ║                                                 "optionId": "6a2453f94a2465a2f7a071bc"
flutter: ║                                                 "key": "salad_grilled_mixed_vegetables"
flutter: ║                                                 "name": "خضار مشكل مشوي"
flutter: ║                                                 "nameI18n": {ar: خضار مشكل مشوي, en: Grilled Mixed Vegetables},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 130
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453fa4a2465a2f7a071bf"
flutter: ║                                                 "optionId": "6a2453fa4a2465a2f7a071bf"
flutter: ║                                                 "key": "red_onion"
flutter: ║                                                 "name": "بصل احمر"
flutter: ║                                                 "nameI18n": {ar: بصل احمر, en: Red Onion},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 140
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453fa4a2465a2f7a071c2"
flutter: ║                                                 "optionId": "6a2453fa4a2465a2f7a071c2"
flutter: ║                                                 "key": "green_onion"
flutter: ║                                                 "name": "بصل اخضر"
flutter: ║                                                 "nameI18n": {ar: بصل اخضر, en: Green Onion},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 150
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453fa4a2465a2f7a071c5"
flutter: ║                                                 "optionId": "6a2453fa4a2465a2f7a071c5"
flutter: ║                                                 "key": "green_olives"
flutter: ║                                                 "name": "زيتون اخضر"
flutter: ║                                                 "nameI18n": {ar: زيتون اخضر, en: Green Olives},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 160
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453fb4a2465a2f7a071c8"
flutter: ║                                                 "optionId": "6a2453fb4a2465a2f7a071c8"
flutter: ║                                                 "key": "black_olives"
flutter: ║                                                 "name": "زيتون اسود"
flutter: ║                                                 "nameI18n": {ar: زيتون اسود, en: Black Olives},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 170
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453fb4a2465a2f7a071cb"
flutter: ║                                                 "optionId": "6a2453fb4a2465a2f7a071cb"
flutter: ║                                                 "key": "mint"
flutter: ║                                                 "name": "نعناع"
flutter: ║                                                 "nameI18n": {ar: نعناع, en: Mint},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 180
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453fc4a2465a2f7a071ce"
flutter: ║                                                 "optionId": "6a2453fc4a2465a2f7a071ce"
flutter: ║                                                 "key": "pickled_onion"
flutter: ║                                                 "name": "بصل مخلل"
flutter: ║                                                 "nameI18n": {ar: بصل مخلل, en: Pickled Onion},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 190
flutter: ║                                            }
flutter: ║                                         ]
flutter: ║                                    },
flutter: ║                                    {
flutter: ║                                         "id": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                         "groupId": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                         "key": "fruits",
flutter: ║                                         "sourceKey": "fruits",
flutter: ║                                         "name": "فواكه",
flutter: ║                                         "nameI18n": {ar: فواكه, en: Fruits},
flutter: ║                                         "minSelections": 0,
flutter: ║                                         "maxSelections": 4,
flutter: ║                                         "required": false,
flutter: ║                                         "isRequired": false,
flutter: ║                                         "sortOrder": 30,
flutter: ║                                         "options": [
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453ff4a2465a2f7a071ec"
flutter: ║                                                 "optionId": "6a2453ff4a2465a2f7a071ec"
flutter: ║                                                 "key": "mango"
flutter: ║                                                 "name": "مانجا"
flutter: ║                                                 "nameI18n": {ar: مانجا, en: Mango},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 10
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2454004a2465a2f7a071ef"
flutter: ║                                                 "optionId": "6a2454004a2465a2f7a071ef"
flutter: ║                                                 "key": "green_apple"
flutter: ║                                                 "name": "تفاح اخضر"
flutter: ║                                                 "nameI18n": {ar: تفاح اخضر, en: Green Apple},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 20
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2454004a2465a2f7a071f2"
flutter: ║                                                 "optionId": "6a2454004a2465a2f7a071f2"
flutter: ║                                                 "key": "pomegranate"
flutter: ║                                                 "name": "رمان"
flutter: ║                                                 "nameI18n": {ar: رمان, en: Pomegranate},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 30
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2454004a2465a2f7a071f5"
flutter: ║                                                 "optionId": "6a2454004a2465a2f7a071f5"
flutter: ║                                                 "key": "strawberry"
flutter: ║                                                 "name": "فراولة"
flutter: ║                                                 "nameI18n": {ar: فراولة, en: Strawberry},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 40
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2454014a2465a2f7a071f8"
flutter: ║                                                 "optionId": "6a2454014a2465a2f7a071f8"
flutter: ║                                                 "key": "blueberry"
flutter: ║                                                 "name": "توت ازرق"
flutter: ║                                                 "nameI18n": {ar: توت ازرق, en: Blueberry},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 50
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2454014a2465a2f7a071fb"
flutter: ║                                                 "optionId": "6a2454014a2465a2f7a071fb"
flutter: ║                                                 "key": "raspberry"
flutter: ║                                                 "name": "توت احمر"
flutter: ║                                                 "nameI18n": {ar: توت احمر, en: Raspberry},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 60
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2454024a2465a2f7a071fe"
flutter: ║                                                 "optionId": "6a2454024a2465a2f7a071fe"
flutter: ║                                                 "key": "watermelon"
flutter: ║                                                 "name": "بطيخ"
flutter: ║                                                 "nameI18n": {ar: بطيخ, en: Watermelon},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 70
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2454024a2465a2f7a07201"
flutter: ║                                                 "optionId": "6a2454024a2465a2f7a07201"
flutter: ║                                                 "key": "cantaloupe"
flutter: ║                                                 "name": "شمام"
flutter: ║                                                 "nameI18n": {ar: شمام, en: Cantaloupe},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 80
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2454024a2465a2f7a07204"
flutter: ║                                                 "optionId": "6a2454024a2465a2f7a07204"
flutter: ║                                                 "key": "dates"
flutter: ║                                                 "name": "تمر"
flutter: ║                                                 "nameI18n": {ar: تمر, en: Dates},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 90
flutter: ║                                            }
flutter: ║                                         ]
flutter: ║                                    },
flutter: ║                                    {
flutter: ║                                         "id": "6a2453e84a2465a2f7a07126"
flutter: ║                                         "groupId": "6a2453e84a2465a2f7a07126"
flutter: ║                                         "key": "proteins",
flutter: ║                                         "sourceKey": "proteins",
flutter: ║                                         "name": "بروتينات",
flutter: ║                                         "nameI18n": {ar: بروتينات, en: Proteins},
flutter: ║                                         "minSelections": 1,
flutter: ║                                         "maxSelections": 1,
flutter: ║                                         "required": true,
flutter: ║                                         "isRequired": true,
flutter: ║                                         "sortOrder": 40,
flutter: ║                                         "options": [
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453ea4a2465a2f7a0713e"
flutter: ║                                                 "optionId": "6a2453ea4a2465a2f7a0713e"
flutter: ║                                                 "key": "boiled_eggs"
flutter: ║                                                 "name": "بيض مسلوق"
flutter: ║                                                 "nameI18n": {ar: بيض مسلوق, en: Boiled Eggs},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 10
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453eb4a2465a2f7a07141"
flutter: ║                                                 "optionId": "6a2453eb4a2465a2f7a07141"
flutter: ║                                                 "key": "tuna"
flutter: ║                                                 "name": "تونا"
flutter: ║                                                 "nameI18n": {ar: تونا, en: Tuna},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 20
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453eb4a2465a2f7a07144"
flutter: ║                                                 "optionId": "6a2453eb4a2465a2f7a07144"
flutter: ║                                                 "key": "chicken_fajita"
flutter: ║                                                 "name": "فاهيتا"
flutter: ║                                                 "nameI18n": {ar: فاهيتا, en: Chicken Fajita},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 30
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453ec4a2465a2f7a07147"
flutter: ║                                                 "optionId": "6a2453ec4a2465a2f7a07147"
flutter: ║                                                 "key": "spicy_chicken"
flutter: ║                                                 "name": "دجاج سبايسي"
flutter: ║                                                 "nameI18n": {ar: دجاج سبايسي, en: Spicy Chicken},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 40
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453ec4a2465a2f7a0714a"
flutter: ║                                                 "optionId": "6a2453ec4a2465a2f7a0714a"
flutter: ║                                                 "key": "italian_spiced_chicken"
flutter: ║                                                 "name": "دجاج توابل إيطالية"
flutter: ║                                                 "nameI18n": {ar: دجاج توابل إيطالية, en: Italian Spiced Chicken},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 50
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453ec4a2465a2f7a0714d"
flutter: ║                                                 "optionId": "6a2453ec4a2465a2f7a0714d"
flutter: ║                                                 "key": "chicken_tikka"
flutter: ║                                                 "name": "دجاج تكا"
flutter: ║                                                 "nameI18n": {ar: دجاج تكا, en: Chicken Tikka},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 60
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453ed4a2465a2f7a07150"
flutter: ║                                                 "optionId": "6a2453ed4a2465a2f7a07150"
flutter: ║                                                 "key": "asian_chicken"
flutter: ║                                                 "name": "دجاج آسيوي"
flutter: ║                                                 "nameI18n": {ar: دجاج آسيوي, en: Asian Chicken},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 70
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453ed4a2465a2f7a07153"
flutter: ║                                                 "optionId": "6a2453ed4a2465a2f7a07153"
flutter: ║                                                 "key": "chicken_strips"
flutter: ║                                                 "name": "استربس"
flutter: ║                                                 "nameI18n": {ar: استربس, en: Chicken Strips},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 80
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453ed4a2465a2f7a07156"
flutter: ║                                                 "optionId": "6a2453ed4a2465a2f7a07156"
flutter: ║                                                 "key": "grilled_chicken"
flutter: ║                                                 "name": "دجاج مشوي"
flutter: ║                                                 "nameI18n": {ar: دجاج مشوي, en: Grilled Chicken},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 90
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453ee4a2465a2f7a07159"
flutter: ║                                                 "optionId": "6a2453ee4a2465a2f7a07159"
flutter: ║                                                 "key": "mexican_chicken"
flutter: ║                                                 "name": "دجاج مكسيكي"
flutter: ║                                                 "nameI18n": {ar: دجاج مكسيكي, en: Mexican Chicken},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 100
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453ef4a2465a2f7a07162"
flutter: ║                                                 "optionId": "6a2453ef4a2465a2f7a07162"
flutter: ║                                                 "key": "fish_fillet"
flutter: ║                                                 "name": "سمك فيليه"
flutter: ║                                                 "nameI18n": {ar: سمك فيليه, en: Fish Fillet},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 110
flutter: ║                                            }
flutter: ║                                         ]
flutter: ║                                    },
flutter: ║                                    {
flutter: ║                                         "id": "6a2453fc4a2465a2f7a071d1"
flutter: ║                                         "groupId": "6a2453fc4a2465a2f7a071d1"
flutter: ║                                         "key": "cheese_nuts"
flutter: ║                                         "sourceKey": "cheese_nuts"
flutter: ║                                         "name": "الاجبان و المكسرات"
flutter: ║                                         "nameI18n": {ar: الاجبان و المكسرات, en: Cheese & Nuts},
flutter: ║                                         "minSelections": 0,
flutter: ║                                         "maxSelections": 2,
flutter: ║                                         "required": false,
flutter: ║                                         "isRequired": false,
flutter: ║                                         "sortOrder": 50,
flutter: ║                                         "options": [
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453fc4a2465a2f7a071d4"
flutter: ║                                                 "optionId": "6a2453fc4a2465a2f7a071d4"
flutter: ║                                                 "key": "cashew"
flutter: ║                                                 "name": "كاجو"
flutter: ║                                                 "nameI18n": {ar: كاجو, en: Cashew},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 10
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453fd4a2465a2f7a071d7"
flutter: ║                                                 "optionId": "6a2453fd4a2465a2f7a071d7"
flutter: ║                                                 "key": "walnut"
flutter: ║                                                 "name": "عين الجمل"
flutter: ║                                                 "nameI18n": {ar: عين الجمل, en: Walnut},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 20
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453fd4a2465a2f7a071da"
flutter: ║                                                 "optionId": "6a2453fd4a2465a2f7a071da"
flutter: ║                                                 "key": "sesame"
flutter: ║                                                 "name": "سمسم"
flutter: ║                                                 "nameI18n": {ar: سمسم, en: Sesame},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 30
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453fd4a2465a2f7a071dd"
flutter: ║                                                 "optionId": "6a2453fd4a2465a2f7a071dd"
flutter: ║                                                 "key": "feta"
flutter: ║                                                 "name": "فيتا"
flutter: ║                                                 "nameI18n": {ar: فيتا, en: Feta},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 40
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453fe4a2465a2f7a071e0"
flutter: ║                                                 "optionId": "6a2453fe4a2465a2f7a071e0"
flutter: ║                                                 "key": "parmesan"
flutter: ║                                                 "name": "بارميزان"
flutter: ║                                                 "nameI18n": {ar: بارميزان, en: Parmesan},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 50
flutter: ║                                            }
flutter: ║                                         ]
flutter: ║                                    },
flutter: ║                                    {
flutter: ║                                         "id": "6a2454034a2465a2f7a0720a"
flutter: ║                                         "groupId": "6a2454034a2465a2f7a0720a"
flutter: ║                                         "key": "sauces",
flutter: ║                                         "sourceKey": "sauces",
flutter: ║                                         "name": "الصوصات",
flutter: ║                                         "nameI18n": {ar: الصوصات, en: Sauces},
flutter: ║                                         "minSelections": 1,
flutter: ║                                         "maxSelections": 1,
flutter: ║                                         "required": true,
flutter: ║                                         "isRequired": true,
flutter: ║                                         "sortOrder": 60,
flutter: ║                                         "options": [
flutter: ║                                            {
flutter: ║                                                 "id": "6a2454044a2465a2f7a0720d"
flutter: ║                                                 "optionId": "6a2454044a2465a2f7a0720d"
flutter: ║                                                 "key": "ranch"
flutter: ║                                                 "name": "رانش"
flutter: ║                                                 "nameI18n": {ar: رانش, en: Ranch},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 10
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2454044a2465a2f7a07210"
flutter: ║                                                 "optionId": "6a2454044a2465a2f7a07210"
flutter: ║                                                 "key": "spicy_ranch"
flutter: ║                                                 "name": "سبايسي رانش"
flutter: ║                                                 "nameI18n": {ar: سبايسي رانش, en: Spicy Ranch},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 20
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2454054a2465a2f7a07213"
flutter: ║                                                 "optionId": "6a2454054a2465a2f7a07213"
flutter: ║                                                 "key": "pesto_sauce"
flutter: ║                                                 "name": "صوص بيستو"
flutter: ║                                                 "nameI18n": {ar: صوص بيستو, en: Pesto Sauce},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 30
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2454054a2465a2f7a07216"
flutter: ║                                                 "optionId": "6a2454054a2465a2f7a07216"
flutter: ║                                                 "key": "balsamic"
flutter: ║                                                 "name": "بالسميك"
flutter: ║                                                 "nameI18n": {ar: بالسميك, en: Balsamic},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 40
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2454054a2465a2f7a07219"
flutter: ║                                                 "optionId": "6a2454054a2465a2f7a07219"
flutter: ║                                                 "key": "caesar"
flutter: ║                                                 "name": "سيزر"
flutter: ║                                                 "nameI18n": {ar: سيزر, en: Caesar},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 50
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2454064a2465a2f7a0721c"
flutter: ║                                                 "optionId": "6a2454064a2465a2f7a0721c"
flutter: ║                                                 "key": "honey_mustard"
flutter: ║                                                 "name": "هاني ماستر"
flutter: ║                                                 "nameI18n": {ar: هاني ماستر, en: Honey Mustard},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 60
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2454064a2465a2f7a0721f"
flutter: ║                                                 "optionId": "6a2454064a2465a2f7a0721f"
flutter: ║                                                 "key": "yogurt_mint"
flutter: ║                                                 "name": "زبادي بالنعناع"
flutter: ║                                                 "nameI18n": {ar: زبادي بالنعناع, en: Yogurt Mint},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 70
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2454074a2465a2f7a07222"
flutter: ║                                                 "optionId": "6a2454074a2465a2f7a07222"
flutter: ║                                                 "key": "honey_garlic"
flutter: ║                                                 "name": "عسل بالثوم"
flutter: ║                                                 "nameI18n": {ar: عسل بالثوم, en: Honey Garlic},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "premium_large_salad"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 80
flutter: ║                                            }
flutter: ║                                         ]
flutter: ║                                    }
flutter: ║                                 ],
flutter: ║                                 "sortOrder": 30
flutter: ║                            }
flutter: ║                         ]
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "section:sandwich",
flutter: ║                         "key": "sandwich",
flutter: ║                         "type": "product_list",
flutter: ║                         "builderSectionType": "product_list",
flutter: ║                         "source": {kind: product_category, categoryKey: sandwich, legacyCategoryKey: cold_sandwiches},
flutter: ║                         "name": "ساندوتشات",
flutter: ║                         "nameI18n": {ar: ساندوتشات, en: Sandwiches},
flutter: ║                         "sortOrder": 20,
flutter: ║                         "ui": {requiresBuilder: false, treatAsFullMeal: true},
flutter: ║                         "rules": {carbsRequired: false},
flutter: ║                         "products": [
flutter: ║                            {
flutter: ║                                 "id": "6a2454824a2465a2f7a07601",
flutter: ║                                 "productId": "6a2454824a2465a2f7a07601",
flutter: ║                                 "key": "turkey_cold_sandwich",
flutter: ║                                 "name": "تركي",
flutter: ║                                 "nameI18n": {ar: تركي, en: Turkey},
flutter: ║                                 "imageUrl": "",
flutter: ║                                 "itemType": "cold_sandwich",
flutter: ║                                 "selectionType": "sandwich",
flutter: ║                                 "pricing": {priceHalala: 1300, extraFeeHalala: 0, currency: SAR},
flutter: ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
flutter: ║                                 "optionGroups": []
flutter: ║                                 "sortOrder": 110
flutter: ║                            },
flutter: ║                            {
flutter: ║                                 "id": "6a2454824a2465a2f7a07606",
flutter: ║                                 "productId": "6a2454824a2465a2f7a07606",
flutter: ║                                 "key": "boiled_egg_cold_sandwich",
flutter: ║                                 "name": "بيض مسلوق",
flutter: ║                                 "nameI18n": {ar: بيض مسلوق, en: Boiled Egg},
flutter: ║                                 "imageUrl": "",
flutter: ║                                 "itemType": "cold_sandwich",
flutter: ║                                 "selectionType": "sandwich",
flutter: ║                                 "pricing": {priceHalala: 900, extraFeeHalala: 0, currency: SAR},
flutter: ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
flutter: ║                                 "optionGroups": []
flutter: ║                                 "sortOrder": 120
flutter: ║                            },
flutter: ║                            {
flutter: ║                                 "id": "6a2454834a2465a2f7a0760b",
flutter: ║                                 "productId": "6a2454834a2465a2f7a0760b",
flutter: ║                                 "key": "tuna_cold_sandwich",
flutter: ║                                 "name": "تونا",
flutter: ║                                 "nameI18n": {ar: تونا, en: Tuna},
flutter: ║                                 "imageUrl": "",
flutter: ║                                 "itemType": "cold_sandwich",
flutter: ║                                 "selectionType": "sandwich",
flutter: ║                                 "pricing": {priceHalala: 1300, extraFeeHalala: 0, currency: SAR},
flutter: ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
flutter: ║                                 "optionGroups": []
flutter: ║                                 "sortOrder": 130
flutter: ║                            },
flutter: ║                            {
flutter: ║                                 "id": "6a2454834a2465a2f7a07610",
flutter: ║                                 "productId": "6a2454834a2465a2f7a07610",
flutter: ║                                 "key": "scrambled_egg_cold_sandwich"
flutter: ║                                 "name": "بيض مخفوق",
flutter: ║                                 "nameI18n": {ar: بيض مخفوق, en: Scrambled Egg},
flutter: ║                                 "imageUrl": "",
flutter: ║                                 "itemType": "cold_sandwich",
flutter: ║                                 "selectionType": "sandwich",
flutter: ║                                 "pricing": {priceHalala: 900, extraFeeHalala: 0, currency: SAR},
flutter: ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
flutter: ║                                 "optionGroups": []
flutter: ║                                 "sortOrder": 140
flutter: ║                            },
flutter: ║                            {
flutter: ║                                 "id": "6a2454844a2465a2f7a07615",
flutter: ║                                 "productId": "6a2454844a2465a2f7a07615",
flutter: ║                                 "key": "classic_halloumi_cold_sandwich"
flutter: ║                                 "name": "حلوم كلاسيك",
flutter: ║                                 "nameI18n": {ar: حلوم كلاسيك, en: Classic Halloumi},
flutter: ║                                 "imageUrl": "",
flutter: ║                                 "itemType": "cold_sandwich",
flutter: ║                                 "selectionType": "sandwich",
flutter: ║                                 "pricing": {priceHalala: 1100, extraFeeHalala: 0, currency: SAR},
flutter: ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
flutter: ║                                 "optionGroups": []
flutter: ║                                 "sortOrder": 150
flutter: ║                            },
flutter: ║                            {
flutter: ║                                 "id": "6a2454854a2465a2f7a0761a",
flutter: ║                                 "productId": "6a2454854a2465a2f7a0761a",
flutter: ║                                 "key": "chicken_fajita_cold_sandwich"
flutter: ║                                 "name": "دجاج فاهيتا",
flutter: ║                                 "nameI18n": {ar: دجاج فاهيتا, en: Chicken Fajita},
flutter: ║                                 "imageUrl": "",
flutter: ║                                 "itemType": "cold_sandwich",
flutter: ║                                 "selectionType": "sandwich",
flutter: ║                                 "pricing": {priceHalala: 1300, extraFeeHalala: 0, currency: SAR},
flutter: ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
flutter: ║                                 "optionGroups": []
flutter: ║                                 "sortOrder": 160
flutter: ║                            },
flutter: ║                            {
flutter: ║                                 "id": "6a2454854a2465a2f7a0761f",
flutter: ║                                 "productId": "6a2454854a2465a2f7a0761f",
flutter: ║                                 "key": "mexican_chicken_cold_sandwich"
flutter: ║                                 "name": "دجاج مكسيكي",
flutter: ║                                 "nameI18n": {ar: دجاج مكسيكي, en: Mexican Chicken},
flutter: ║                                 "imageUrl": "",
flutter: ║                                 "itemType": "cold_sandwich",
flutter: ║                                 "selectionType": "sandwich",
flutter: ║                                 "pricing": {priceHalala: 1300, extraFeeHalala: 0, currency: SAR},
flutter: ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
flutter: ║                                 "optionGroups": []
flutter: ║                                 "sortOrder": 170
flutter: ║                            },
flutter: ║                            {
flutter: ║                                 "id": "6a2454864a2465a2f7a07624",
flutter: ║                                 "productId": "6a2454864a2465a2f7a07624",
flutter: ║                                 "key": "grilled_chicken_cold_sandwich"
flutter: ║                                 "name": "دجاج مشوي",
flutter: ║                                 "nameI18n": {ar: دجاج مشوي, en: Grilled Chicken},
flutter: ║                                 "imageUrl": "",
flutter: ║                                 "itemType": "cold_sandwich",
flutter: ║                                 "selectionType": "sandwich",
flutter: ║                                 "pricing": {priceHalala: 1300, extraFeeHalala: 0, currency: SAR},
flutter: ║                                 "action": {type: direct_add, requiresBuilder: false, treatAsFullMeal: true},
flutter: ║                                 "optionGroups": []
flutter: ║                                 "sortOrder": 180
flutter: ║                            }
flutter: ║                         ]
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "section:chicken",
flutter: ║                         "key": "chicken",
flutter: ║                         "type": "configurable_product",
flutter: ║                         "builderSectionType": "option_family",
flutter: ║                         "source": {kind: option_family, groupKey: proteins, displayCategoryKey: chicken},
flutter: ║                         "name": "دجاج",
flutter: ║                         "nameI18n": {ar: دجاج, en: Chicken},
flutter: ║                         "sortOrder": 30,
flutter: ║                         "ui": {visualRole: protein_family, proteinFamilyKey: chicken},
flutter: ║                         "rules": {},
flutter: ║                         "products": [
flutter: ║                            {
flutter: ║                                 "id": "6a2454474a2465a2f7a07426",
flutter: ║                                 "productId": "6a2454474a2465a2f7a07426",
flutter: ║                                 "key": "basic_meal",
flutter: ║                                 "name": "وجبة بيسك",
flutter: ║                                 "nameI18n": {ar: وجبة بيسك, en: Basic Meal},
flutter: ║                                 "itemType": "basic_meal",
flutter: ║                                 "selectionType": "standard_meal",
flutter: ║                                 "pricing": {model: per_100g, basePriceHalala: 1900, currency: SAR},
flutter: ║                                 "action": {type: open_builder, requiresBuilder: true},
flutter: ║                                 "optionGroups": [
flutter: ║                                    {
flutter: ║                                         "id": "6a2453e84a2465a2f7a07126"
flutter: ║                                         "groupId": "6a2453e84a2465a2f7a07126"
flutter: ║                                         "key": "proteins",
flutter: ║                                         "sourceKey": "proteins",
flutter: ║                                         "name": "دجاج",
flutter: ║                                         "nameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                         "minSelections": 1,
flutter: ║                                         "maxSelections": 1,
flutter: ║                                         "required": true,
flutter: ║                                         "isRequired": true,
flutter: ║                                         "sortOrder": 30,
flutter: ║                                         "options": [
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453e84a2465a2f7a07129"
flutter: ║                                                 "optionId": "6a2453e84a2465a2f7a07129"
flutter: ║                                                 "key": "chicken"
flutter: ║                                                 "name": "دجاج"
flutter: ║                                                 "nameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 10
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453eb4a2465a2f7a07144"
flutter: ║                                                 "optionId": "6a2453eb4a2465a2f7a07144"
flutter: ║                                                 "key": "chicken_fajita"
flutter: ║                                                 "name": "فاهيتا"
flutter: ║                                                 "nameI18n": {ar: فاهيتا, en: Chicken Fajita},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 100
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453ec4a2465a2f7a07147"
flutter: ║                                                 "optionId": "6a2453ec4a2465a2f7a07147"
flutter: ║                                                 "key": "spicy_chicken"
flutter: ║                                                 "name": "دجاج سبايسي"
flutter: ║                                                 "nameI18n": {ar: دجاج سبايسي, en: Spicy Chicken},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 110
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453ec4a2465a2f7a0714a"
flutter: ║                                                 "optionId": "6a2453ec4a2465a2f7a0714a"
flutter: ║                                                 "key": "italian_spiced_chicken"
flutter: ║                                                 "name": "دجاج توابل إيطالية"
flutter: ║                                                 "nameI18n": {ar: دجاج توابل إيطالية, en: Italian Spiced Chicken},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 120
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453ec4a2465a2f7a0714d"
flutter: ║                                                 "optionId": "6a2453ec4a2465a2f7a0714d"
flutter: ║                                                 "key": "chicken_tikka"
flutter: ║                                                 "name": "دجاج تكا"
flutter: ║                                                 "nameI18n": {ar: دجاج تكا, en: Chicken Tikka},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 130
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453ed4a2465a2f7a07150"
flutter: ║                                                 "optionId": "6a2453ed4a2465a2f7a07150"
flutter: ║                                                 "key": "asian_chicken"
flutter: ║                                                 "name": "دجاج آسيوي"
flutter: ║                                                 "nameI18n": {ar: دجاج آسيوي, en: Asian Chicken},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 140
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453ed4a2465a2f7a07153"
flutter: ║                                                 "optionId": "6a2453ed4a2465a2f7a07153"
flutter: ║                                                 "key": "chicken_strips"
flutter: ║                                                 "name": "استربس"
flutter: ║                                                 "nameI18n": {ar: استربس, en: Chicken Strips},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 150
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453ed4a2465a2f7a07156"
flutter: ║                                                 "optionId": "6a2453ed4a2465a2f7a07156"
flutter: ║                                                 "key": "grilled_chicken"
flutter: ║                                                 "name": "دجاج مشوي"
flutter: ║                                                 "nameI18n": {ar: دجاج مشوي, en: Grilled Chicken},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 160
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453ee4a2465a2f7a07159"
flutter: ║                                                 "optionId": "6a2453ee4a2465a2f7a07159"
flutter: ║                                                 "key": "mexican_chicken"
flutter: ║                                                 "name": "دجاج مكسيكي"
flutter: ║                                                 "nameI18n": {ar: دجاج مكسيكي, en: Mexican Chicken},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 170
flutter: ║                                            }
flutter: ║                                         ]
flutter: ║                                    }
flutter: ║                                 ]
flutter: ║                            }
flutter: ║                         ]
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "section:beef",
flutter: ║                         "key": "beef",
flutter: ║                         "type": "configurable_product",
flutter: ║                         "builderSectionType": "option_family",
flutter: ║                         "source": {kind: option_family, groupKey: proteins, displayCategoryKey: beef},
flutter: ║                         "name": "لحم",
flutter: ║                         "nameI18n": {ar: لحم, en: Beef},
flutter: ║                         "sortOrder": 40,
flutter: ║                         "ui": {visualRole: protein_family, proteinFamilyKey: beef},
flutter: ║                         "rules": {ruleKey: beef_daily_limit, maxSlotsPerDay: 1, unit: slots},
flutter: ║                         "products": [
flutter: ║                            {
flutter: ║                                 "id": "6a2454474a2465a2f7a07426",
flutter: ║                                 "productId": "6a2454474a2465a2f7a07426",
flutter: ║                                 "key": "basic_meal",
flutter: ║                                 "name": "وجبة بيسك",
flutter: ║                                 "nameI18n": {ar: وجبة بيسك, en: Basic Meal},
flutter: ║                                 "itemType": "basic_meal",
flutter: ║                                 "selectionType": "standard_meal",
flutter: ║                                 "pricing": {model: per_100g, basePriceHalala: 1900, currency: SAR},
flutter: ║                                 "action": {type: open_builder, requiresBuilder: true},
flutter: ║                                 "optionGroups": [
flutter: ║                                    {
flutter: ║                                         "id": "6a2453e84a2465a2f7a07126"
flutter: ║                                         "groupId": "6a2453e84a2465a2f7a07126"
flutter: ║                                         "key": "proteins",
flutter: ║                                         "sourceKey": "proteins",
flutter: ║                                         "name": "لحم",
flutter: ║                                         "nameI18n": {ar: لحم, en: Beef},
flutter: ║                                         "minSelections": 1,
flutter: ║                                         "maxSelections": 1,
flutter: ║                                         "required": true,
flutter: ║                                         "isRequired": true,
flutter: ║                                         "sortOrder": 40,
flutter: ║                                         "options": [
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453e94a2465a2f7a0712c"
flutter: ║                                                 "optionId": "6a2453e94a2465a2f7a0712c"
flutter: ║                                                 "key": "beef"
flutter: ║                                                 "name": "لحم"
flutter: ║                                                 "nameI18n": {ar: لحم, en: Beef},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 20
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453ee4a2465a2f7a0715c"
flutter: ║                                                 "optionId": "6a2453ee4a2465a2f7a0715c"
flutter: ║                                                 "key": "meatballs"
flutter: ║                                                 "name": "كرات لحم"
flutter: ║                                                 "nameI18n": {ar: كرات لحم, en: Meatballs},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 180
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453ef4a2465a2f7a0715f"
flutter: ║                                                 "optionId": "6a2453ef4a2465a2f7a0715f"
flutter: ║                                                 "key": "beef_stroganoff"
flutter: ║                                                 "name": "لحم استرغانوف"
flutter: ║                                                 "nameI18n": {ar: لحم استرغانوف, en: Beef Stroganoff},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 190
flutter: ║                                            }
flutter: ║                                         ]
flutter: ║                                    }
flutter: ║                                 ]
flutter: ║                            }
flutter: ║                         ]
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "section:fish",
flutter: ║                         "key": "fish",
flutter: ║                         "type": "configurable_product",
flutter: ║                         "builderSectionType": "option_family",
flutter: ║                         "source": {kind: option_family, groupKey: proteins, displayCategoryKey: fish},
flutter: ║                         "name": "سمك",
flutter: ║                         "nameI18n": {ar: سمك, en: Fish},
flutter: ║                         "sortOrder": 50,
flutter: ║                         "ui": {visualRole: protein_family, proteinFamilyKey: fish},
flutter: ║                         "rules": {},
flutter: ║                         "products": [
flutter: ║                            {
flutter: ║                                 "id": "6a2454474a2465a2f7a07426",
flutter: ║                                 "productId": "6a2454474a2465a2f7a07426",
flutter: ║                                 "key": "basic_meal",
flutter: ║                                 "name": "وجبة بيسك",
flutter: ║                                 "nameI18n": {ar: وجبة بيسك, en: Basic Meal},
flutter: ║                                 "itemType": "basic_meal",
flutter: ║                                 "selectionType": "standard_meal",
flutter: ║                                 "pricing": {model: per_100g, basePriceHalala: 1900, currency: SAR},
flutter: ║                                 "action": {type: open_builder, requiresBuilder: true},
flutter: ║                                 "optionGroups": [
flutter: ║                                    {
flutter: ║                                         "id": "6a2453e84a2465a2f7a07126"
flutter: ║                                         "groupId": "6a2453e84a2465a2f7a07126"
flutter: ║                                         "key": "proteins",
flutter: ║                                         "sourceKey": "proteins",
flutter: ║                                         "name": "سمك",
flutter: ║                                         "nameI18n": {ar: سمك, en: Fish},
flutter: ║                                         "minSelections": 1,
flutter: ║                                         "maxSelections": 1,
flutter: ║                                         "required": true,
flutter: ║                                         "isRequired": true,
flutter: ║                                         "sortOrder": 50,
flutter: ║                                         "options": [
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453e94a2465a2f7a0712f"
flutter: ║                                                 "optionId": "6a2453e94a2465a2f7a0712f"
flutter: ║                                                 "key": "fish"
flutter: ║                                                 "name": "سمك"
flutter: ║                                                 "nameI18n": {ar: سمك, en: Fish},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 30
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453eb4a2465a2f7a07141"
flutter: ║                                                 "optionId": "6a2453eb4a2465a2f7a07141"
flutter: ║                                                 "key": "tuna"
flutter: ║                                                 "name": "تونا"
flutter: ║                                                 "nameI18n": {ar: تونا, en: Tuna},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 90
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453ef4a2465a2f7a07162"
flutter: ║                                                 "optionId": "6a2453ef4a2465a2f7a07162"
flutter: ║                                                 "key": "fish_fillet"
flutter: ║                                                 "name": "سمك فيليه"
flutter: ║                                                 "nameI18n": {ar: سمك فيليه, en: Fish Fillet},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 200
flutter: ║                                            }
flutter: ║                                         ]
flutter: ║                                    }
flutter: ║                                 ]
flutter: ║                            }
flutter: ║                         ]
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "section:eggs",
flutter: ║                         "key": "eggs",
flutter: ║                         "type": "configurable_product",
flutter: ║                         "builderSectionType": "option_family",
flutter: ║                         "source": {kind: option_family, groupKey: proteins, displayCategoryKey: eggs},
flutter: ║                         "name": "بيض",
flutter: ║                         "nameI18n": {ar: بيض, en: Eggs},
flutter: ║                         "sortOrder": 60,
flutter: ║                         "ui": {visualRole: protein_family, proteinFamilyKey: eggs},
flutter: ║                         "rules": {},
flutter: ║                         "products": [
flutter: ║                            {
flutter: ║                                 "id": "6a2454474a2465a2f7a07426",
flutter: ║                                 "productId": "6a2454474a2465a2f7a07426",
flutter: ║                                 "key": "basic_meal",
flutter: ║                                 "name": "وجبة بيسك",
flutter: ║                                 "nameI18n": {ar: وجبة بيسك, en: Basic Meal},
flutter: ║                                 "itemType": "basic_meal",
flutter: ║                                 "selectionType": "standard_meal",
flutter: ║                                 "pricing": {model: per_100g, basePriceHalala: 1900, currency: SAR},
flutter: ║                                 "action": {type: open_builder, requiresBuilder: true},
flutter: ║                                 "optionGroups": [
flutter: ║                                    {
flutter: ║                                         "id": "6a2453e84a2465a2f7a07126"
flutter: ║                                         "groupId": "6a2453e84a2465a2f7a07126"
flutter: ║                                         "key": "proteins",
flutter: ║                                         "sourceKey": "proteins",
flutter: ║                                         "name": "بيض",
flutter: ║                                         "nameI18n": {ar: بيض, en: Eggs},
flutter: ║                                         "minSelections": 1,
flutter: ║                                         "maxSelections": 1,
flutter: ║                                         "required": true,
flutter: ║                                         "isRequired": true,
flutter: ║                                         "sortOrder": 60,
flutter: ║                                         "options": [
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453e94a2465a2f7a07132"
flutter: ║                                                 "optionId": "6a2453e94a2465a2f7a07132"
flutter: ║                                                 "key": "eggs"
flutter: ║                                                 "name": "بيض"
flutter: ║                                                 "nameI18n": {ar: بيض, en: Eggs},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 40
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453ea4a2465a2f7a0713e"
flutter: ║                                                 "optionId": "6a2453ea4a2465a2f7a0713e"
flutter: ║                                                 "key": "boiled_eggs"
flutter: ║                                                 "name": "بيض مسلوق"
flutter: ║                                                 "nameI18n": {ar: بيض مسلوق, en: Boiled Eggs},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 80
flutter: ║                                            }
flutter: ║                                         ]
flutter: ║                                    }
flutter: ║                                 ]
flutter: ║                            }
flutter: ║                         ]
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "section:carbs",
flutter: ║                         "key": "carbs",
flutter: ║                         "type": "configurable_product",
flutter: ║                         "builderSectionType": "option_group",
flutter: ║                         "source": {kind: option_group, groupKey: carbs},
flutter: ║                         "name": "نشويات",
flutter: ║                         "nameI18n": {ar: نشويات, en: Carbs},
flutter: ║                         "sortOrder": 70,
flutter: ║                         "ui": {
flutter: ║                             "visualRole": "carbs",
flutter: ║                             "appliesTo": [configurable_plate_meal]
flutter: ║                             "excludesSelectionTypes": [sandwich]
flutter: ║                        }
flutter: ║                         "rules": {
flutter: ║                             "maxTypes": 2,
flutter: ║                             "maxTotalGrams": 300,
flutter: ║                             "unit": "grams",
flutter: ║                             "onlyForSelectionTypes": [standard_meal, premium_meal]
flutter: ║                        }
flutter: ║                         "products": [
flutter: ║                            {
flutter: ║                                 "id": "6a2454474a2465a2f7a07426",
flutter: ║                                 "productId": "6a2454474a2465a2f7a07426",
flutter: ║                                 "key": "basic_meal",
flutter: ║                                 "name": "وجبة بيسك",
flutter: ║                                 "nameI18n": {ar: وجبة بيسك, en: Basic Meal},
flutter: ║                                 "itemType": "basic_meal",
flutter: ║                                 "selectionType": "standard_meal",
flutter: ║                                 "pricing": {model: per_100g, basePriceHalala: 1900, currency: SAR},
flutter: ║                                 "action": {type: open_builder, requiresBuilder: true},
flutter: ║                                 "optionGroups": [
flutter: ║                                    {
flutter: ║                                         "id": "6a2453ef4a2465a2f7a07165"
flutter: ║                                         "groupId": "6a2453ef4a2465a2f7a07165"
flutter: ║                                         "key": "carbs",
flutter: ║                                         "sourceKey": "carbs",
flutter: ║                                         "name": "نشويات",
flutter: ║                                         "nameI18n": {ar: نشويات, en: Carbs},
flutter: ║                                         "minSelections": 1,
flutter: ║                                         "maxSelections": 2,
flutter: ║                                         "required": true,
flutter: ║                                         "isRequired": true,
flutter: ║                                         "sortOrder": 70,
flutter: ║                                         "options": [
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453f04a2465a2f7a07168"
flutter: ║                                                 "optionId": "6a2453f04a2465a2f7a07168"
flutter: ║                                                 "key": "white_rice"
flutter: ║                                                 "name": "رز أبيض"
flutter: ║                                                 "nameI18n": {ar: رز أبيض, en: White Rice},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 10
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453f04a2465a2f7a0716b"
flutter: ║                                                 "optionId": "6a2453f04a2465a2f7a0716b"
flutter: ║                                                 "key": "turmeric_rice"
flutter: ║                                                 "name": "رز بالكركم"
flutter: ║                                                 "nameI18n": {ar: رز بالكركم, en: Turmeric Rice},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 20
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453f04a2465a2f7a0716e"
flutter: ║                                                 "optionId": "6a2453f04a2465a2f7a0716e"
flutter: ║                                                 "key": "alfredo_pasta"
flutter: ║                                                 "name": "باستا الفريدو"
flutter: ║                                                 "nameI18n": {ar: باستا الفريدو, en: Alfredo Pasta},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 30
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453f14a2465a2f7a07171"
flutter: ║                                                 "optionId": "6a2453f14a2465a2f7a07171"
flutter: ║                                                 "key": "red_sauce_pasta"
flutter: ║                                                 "name": "باستا صوص احمر"
flutter: ║                                                 "nameI18n": {ar: باستا صوص احمر, en: Red Sauce Pasta},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 40
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453f14a2465a2f7a07174"
flutter: ║                                                 "optionId": "6a2453f14a2465a2f7a07174"
flutter: ║                                                 "key": "roasted_potato"
flutter: ║                                                 "name": "بطاطا مشوية"
flutter: ║                                                 "nameI18n": {ar: بطاطا مشوية, en: Roasted Potato},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 50
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453f24a2465a2f7a07177"
flutter: ║                                                 "optionId": "6a2453f24a2465a2f7a07177"
flutter: ║                                                 "key": "sweet_potato"
flutter: ║                                                 "name": "بطاطا حلوة"
flutter: ║                                                 "nameI18n": {ar: بطاطا حلوة, en: Sweet Potato},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 60
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2453f24a2465a2f7a0717a"
flutter: ║                                                 "optionId": "6a2453f24a2465a2f7a0717a"
flutter: ║                                                 "key": "grilled_mixed_vegetables"
flutter: ║                                                 "name": "خضار مشكلة مشوية"
flutter: ║                                                 "nameI18n": {ar: خضار مشكلة مشوية, en: Grilled Mixed Vegetables},
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "sortOrder": 70
flutter: ║                                            }
flutter: ║                                         ]
flutter: ║                                    }
flutter: ║                                 ]
flutter: ║                            }
flutter: ║                         ]
flutter: ║                    }
flutter: ║                 ],
flutter: ║                 "rules": {
flutter: ║                     "version": "meal_planner_rules.v3",
flutter: ║                     "beef": {proteinFamilyKey: beef, maxSlotsPerDay: 1},
flutter: ║                     "standardCarbs": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
flutter: ║                     "premiumCarbs": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
flutter: ║                     "proteinGroups": [
flutter: ║                        {
flutter: ║                             "key": "chicken",
flutter: ║                             "name": {ar: دجاج, en: Chicken},
flutter: ║                             "sortOrder": 10
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "key": "beef",
flutter: ║                             "name": {ar: لحم, en: Beef},
flutter: ║                             "sortOrder": 20
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "key": "fish",
flutter: ║                             "name": {ar: سمك, en: Fish},
flutter: ║                             "sortOrder": 30
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "key": "eggs",
flutter: ║                             "name": {ar: بيض, en: Eggs},
flutter: ║                             "sortOrder": 40
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "key": "premium",
flutter: ║                             "name": {ar: بريميوم, en: Premium},
flutter: ║                             "sortOrder": 50
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "key": "other",
flutter: ║                             "name": {ar: أخرى, en: Other},
flutter: ║                             "sortOrder": 60
flutter: ║                        }
flutter: ║                     ],
flutter: ║                     "premiumLargeSalad": {
flutter: ║                         "premiumKey": "premium_large_salad",
flutter: ║                         "presetKey": "large_salad",
flutter: ║                         "extraFeeHalala": 2900,
flutter: ║                         "groups": [
flutter: ║                          {key: leafy_greens, minSelect: 0, maxSelect: 2},
flutter: ║                          {key: vegetables, minSelect: 0, maxSelect: 19},
flutter: ║                          {key: protein, minSelect: 1, maxSelect: 1},
flutter: ║                          {key: cheese_nuts, minSelect: 0, maxSelect: 2},
flutter: ║                          {key: fruits, minSelect: 0, maxSelect: 4},
flutter: ║                          {key: sauce, minSelect: 1, maxSelect: 1}
flutter: ║                         ],
flutter: ║                         "allowedProteinKeys": [
flutter: ║                                 boiled_eggs,
flutter: ║                                 tuna,
flutter: ║                                 chicken_fajita,
flutter: ║                                 spicy_chicken,
flutter: ║                                 italian_spiced_chicken,
flutter: ║                                 chicken_tikka,
flutter: ║                                 asian_chicken,
flutter: ║                                 chicken_strips,
flutter: ║                                 grilled_chicken,
flutter: ║                                 mexican_chicken,
flutter: ║                                 fish_fillet
flutter: ║                         ],
flutter: ║                         "excludedGroupKeys": [extra_protein_50g]
flutter: ║                    }
flutter: ║                     "source": "meal_builder_config",
flutter: ║                     "builderRevisionHash": "sha256:e2ad0d2d2594c8788d7342f560f8cb029af186659cf511ef2d170cb6a488c6
flutter: ║                      6f"
flutter: ║                }
flutter: ║                 "catalogHash": "sha256:98dd4579caecbc4f26c55d3e1bcccfeebe807c3155099377c966108895f43734"
flutter: ║                 "publishedVersionId": null,
flutter: ║                 "builderRevisionHash": "sha256:e2ad0d2d2594c8788d7342f560f8cb029af186659cf511ef2d170cb6a488c66f"
flutter: ║            }
flutter: ║             "addonCatalog": {
flutter: ║                 "items": []
flutter: ║                 "byCategory": {},
flutter: ║                 "totalCount": 0
flutter: ║            }
flutter: ║        }
flutter: ║    }
flutter: ║
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter:
flutter: ╔╣ Request ║ GET
flutter: ║  https://basicdiet145.onrender.com/api/subscriptions/addon-choices
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: ╔ Headers
flutter: ╟ accept: application/json
flutter: ╟ content-type: application/json
flutter: ╟ authorization:
flutter: ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTI0NTNiMmYwMWVhMmI0MDg3Y2Q2Nj
flutter: ║ kiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MTAxNTM0MCwiZXhwIjox
flutter: ║ NzgxMDE2MjQwfQ.tqQDXvewU_eyA6VNcF3QeRjaB2weeAZ9C_BER1ptcKA
flutter: ╟ Accept-Language: ar
flutter: ╟ contentType: application/json
flutter: ╟ responseType: ResponseType.json
flutter: ╟ followRedirects: true
flutter: ╟ connectTimeout: 0:01:00.000000
flutter: ╟ receiveTimeout: 0:01:00.000000
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter:
flutter: ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 665 ms
flutter: ║  https://basicdiet145.onrender.com/api/subscriptions/addon-choices
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: ╔ Headers
flutter: ╟ x-dns-prefetch-control: [off]
flutter: ╟ x-render-origin-server: [Render]
flutter: ╟ date: [Tue, 09 Jun 2026 14:40:08 GMT]
flutter: ╟ transfer-encoding: [chunked]
flutter: ╟ origin-agent-cluster: [?1]
flutter: ╟ vary: [Origin, Accept-Encoding]
flutter: ╟ content-encoding: [gzip]
flutter: ╟ server: [cloudflare]
flutter: ╟ x-request-id: [5a51d792-d16e-4f73-84bb-907b147aaf3c]
flutter: ╟ cross-origin-resource-policy: [same-origin]
flutter: ╟ cf-ray: [a090e3c3a8e0e28c-MRS]
flutter: ╟ etag: [W/"2daf-xBqbKQe4AeBmqJQm7abVg/peMAQ"]
flutter: ╟ x-frame-options: [SAMEORIGIN]
flutter: ╟ content-security-policy:
flutter: ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
flutter: ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
flutter: ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
flutter: ╟ connection: [keep-alive]
flutter: ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
flutter: ╟ referrer-policy: [no-referrer]
flutter: ╟ cf-cache-status: [DYNAMIC]
flutter: ╟ x-permitted-cross-domain-policies: [none]
flutter: ╟ cross-origin-opener-policy: [same-origin]
flutter: ╟ content-type: [application/json; charset=utf-8]
flutter: ╟ rndr-id: [5dee196b-4376-4654]
flutter: ╟ x-xss-protection: [0]
flutter: ╟ access-control-allow-credentials: [true]
flutter: ╟ alt-svc: [h3=":443"; ma=86400]
flutter: ╟ x-download-options: [noopen]
flutter: ╟ x-content-type-options: [nosniff]
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: ╔ Body
flutter: ║
flutter: ║    {
flutter: ║         "status": true,
flutter: ║         "data": {
flutter: ║             "juice": {
flutter: ║                 "category": "juice",
flutter: ║                 "sourceCategories": [juices, drinks]
flutter: ║                 "choices": [
flutter: ║                    {
flutter: ║                         "id": "6a24548b4a2465a2f7a07651",
flutter: ║                         "key": "berry_blast",
flutter: ║                         "name": "بيري بلاست",
flutter: ║                         "nameAr": "بيري بلاست",
flutter: ║                         "nameI18n": {ar: بيري بلاست, en: Berry Blast},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
flutter: ║                         "imageUrl": "",
flutter: ║                         "priceHalala": 1100,
flutter: ║                         "priceSar": 11,
flutter: ║                         "currency": "SAR",
flutter: ║                         "calories": null,
flutter: ║                         "prepTimeMinutes": null,
flutter: ║                         "categoryKey": "juices",
flutter: ║                         "itemType": "juice",
flutter: ║                         "type": "menu_product",
flutter: ║                         "available": true,
flutter: ║                         "active": true,
flutter: ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a24548c4a2465a2f7a07656",
flutter: ║                         "key": "berry_prot",
flutter: ║                         "name": "بيري بروت",
flutter: ║                         "nameAr": "بيري بروت",
flutter: ║                         "nameI18n": {ar: بيري بروت, en: Berry Prot},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
flutter: ║                         "imageUrl": "",
flutter: ║                         "priceHalala": 1300,
flutter: ║                         "priceSar": 13,
flutter: ║                         "currency": "SAR",
flutter: ║                         "calories": null,
flutter: ║                         "prepTimeMinutes": null,
flutter: ║                         "categoryKey": "juices",
flutter: ║                         "itemType": "juice",
flutter: ║                         "type": "menu_product",
flutter: ║                         "available": true,
flutter: ║                         "active": true,
flutter: ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a24548d4a2465a2f7a0765b",
flutter: ║                         "key": "classic_green",
flutter: ║                         "name": "كلاسيك جرين",
flutter: ║                         "nameAr": "كلاسيك جرين",
flutter: ║                         "nameI18n": {ar: كلاسيك جرين, en: Classic Green},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
flutter: ║                         "imageUrl": "",
flutter: ║                         "priceHalala": 1100,
flutter: ║                         "priceSar": 11,
flutter: ║                         "currency": "SAR",
flutter: ║                         "calories": null,
flutter: ║                         "prepTimeMinutes": null,
flutter: ║                         "categoryKey": "juices",
flutter: ║                         "itemType": "juice",
flutter: ║                         "type": "menu_product",
flutter: ║                         "available": true,
flutter: ║                         "active": true,
flutter: ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a24548d4a2465a2f7a07660",
flutter: ║                         "key": "beet_punch",
flutter: ║                         "name": "بيت بنش",
flutter: ║                         "nameAr": "بيت بنش",
flutter: ║                         "nameI18n": {ar: بيت بنش, en: Beet Punch},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
flutter: ║                         "imageUrl": "",
flutter: ║                         "priceHalala": 1100,
flutter: ║                         "priceSar": 11,
flutter: ║                         "currency": "SAR",
flutter: ║                         "calories": null,
flutter: ║                         "prepTimeMinutes": null,
flutter: ║                         "categoryKey": "juices",
flutter: ║                         "itemType": "juice",
flutter: ║                         "type": "menu_product",
flutter: ║                         "available": true,
flutter: ║                         "active": true,
flutter: ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a24548e4a2465a2f7a07665",
flutter: ║                         "key": "orange_carrot",
flutter: ║                         "name": "برتقال وجزر",
flutter: ║                         "nameAr": "برتقال وجزر",
flutter: ║                         "nameI18n": {ar: برتقال وجزر, en: Orange Carrot},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
flutter: ║                         "imageUrl": "",
flutter: ║                         "priceHalala": 1100,
flutter: ║                         "priceSar": 11,
flutter: ║                         "currency": "SAR",
flutter: ║                         "calories": null,
flutter: ║                         "prepTimeMinutes": null,
flutter: ║                         "categoryKey": "juices",
flutter: ║                         "itemType": "juice",
flutter: ║                         "type": "menu_product",
flutter: ║                         "available": true,
flutter: ║                         "active": true,
flutter: ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a24548e4a2465a2f7a0766a",
flutter: ║                         "key": "watermelon_mint",
flutter: ║                         "name": "بطيخ بالنعناع",
flutter: ║                         "nameAr": "بطيخ بالنعناع",
flutter: ║                         "nameI18n": {ar: بطيخ بالنعناع, en: Watermelon Mint},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
flutter: ║                         "imageUrl": "",
flutter: ║                         "priceHalala": 1100,
flutter: ║                         "priceSar": 11,
flutter: ║                         "currency": "SAR",
flutter: ║                         "calories": null,
flutter: ║                         "prepTimeMinutes": null,
flutter: ║                         "categoryKey": "juices",
flutter: ║                         "itemType": "juice",
flutter: ║                         "type": "menu_product",
flutter: ║                         "available": true,
flutter: ║                         "active": true,
flutter: ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2454914a2465a2f7a0767e",
flutter: ║                         "key": "protein_drink",
flutter: ║                         "name": "مشروب بروتين",
flutter: ║                         "nameAr": "مشروب بروتين",
flutter: ║                         "nameI18n": {ar: مشروب بروتين, en: Protein Drink},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
flutter: ║                         "imageUrl": "",
flutter: ║                         "priceHalala": 1900,
flutter: ║                         "priceSar": 19,
flutter: ║                         "currency": "SAR",
flutter: ║                         "calories": null,
flutter: ║                         "prepTimeMinutes": null,
flutter: ║                         "categoryKey": "drinks",
flutter: ║                         "itemType": "drink",
flutter: ║                         "type": "menu_product",
flutter: ║                         "available": true,
flutter: ║                         "active": true,
flutter: ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2454924a2465a2f7a07683",
flutter: ║                         "key": "diet_iced_tea",
flutter: ║                         "name": "ايس تى دايت",
flutter: ║                         "nameAr": "ايس تى دايت",
flutter: ║                         "nameI18n": {ar: ايس تى دايت, en: Diet Iced Tea},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
flutter: ║                         "imageUrl": "",
flutter: ║                         "priceHalala": 400,
flutter: ║                         "priceSar": 4,
flutter: ║                         "currency": "SAR",
flutter: ║                         "calories": null,
flutter: ║                         "prepTimeMinutes": null,
flutter: ║                         "categoryKey": "drinks",
flutter: ║                         "itemType": "drink",
flutter: ║                         "type": "menu_product",
flutter: ║                         "available": true,
flutter: ║                         "active": true,
flutter: ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2454924a2465a2f7a07688",
flutter: ║                         "key": "diet_soda",
flutter: ║                         "name": "صودا دايت",
flutter: ║                         "nameAr": "صودا دايت",
flutter: ║                         "nameI18n": {ar: صودا دايت, en: Diet Soda},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
flutter: ║                         "imageUrl": "",
flutter: ║                         "priceHalala": 300,
flutter: ║                         "priceSar": 3,
flutter: ║                         "currency": "SAR",
flutter: ║                         "calories": null,
flutter: ║                         "prepTimeMinutes": null,
flutter: ║                         "categoryKey": "drinks",
flutter: ║                         "itemType": "drink",
flutter: ║                         "type": "menu_product",
flutter: ║                         "available": true,
flutter: ║                         "active": true,
flutter: ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2454934a2465a2f7a0768d",
flutter: ║                         "key": "water",
flutter: ║                         "name": "مياه عادية",
flutter: ║                         "nameAr": "مياه عادية",
flutter: ║                         "nameI18n": {ar: مياه عادية, en: Water},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
flutter: ║                         "imageUrl": "",
flutter: ║                         "priceHalala": 200,
flutter: ║                         "priceSar": 2,
flutter: ║                         "currency": "SAR",
flutter: ║                         "calories": null,
flutter: ║                         "prepTimeMinutes": null,
flutter: ║                         "categoryKey": "drinks",
flutter: ║                         "itemType": "drink",
flutter: ║                         "type": "menu_product",
flutter: ║                         "available": true,
flutter: ║                         "active": true,
flutter: ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    }
flutter: ║                 ]
flutter: ║            }
flutter: ║             "snack": {
flutter: ║                 "category": "snack",
flutter: ║                 "sourceCategories": [desserts]
flutter: ║                 "choices": [
flutter: ║                    {
flutter: ║                         "id": "6a2454874a2465a2f7a07629",
flutter: ║                         "key": "orange_cake",
flutter: ║                         "name": "كيكة البرتقال",
flutter: ║                         "nameAr": "كيكة البرتقال",
flutter: ║                         "nameI18n": {ar: كيكة البرتقال, en: Orange Cake},
flutter: ║                         "description": "كيكة برتقال صحية محضرة بمكونات خفيفة، بطعم برتقال طبيعي منعش وقوا
flutter: ║                          م ناعم، بدون سكر."
flutter: ║                         "descriptionI18n": {
flutter: ║                             "ar": "كيكة برتقال صحية محضرة بمكونات خفيفة، بطعم برتقال طبيعي منعش
flutter: ║                              وقوام ناعم، بدون سكر."
flutter: ║                             "en": "Healthy orange cake made with light ingredients, natural refr
flutter: ║                              eshing orange flavor, soft texture, and no sugar."
flutter: ║                        }
flutter: ║                         "imageUrl": "",
flutter: ║                         "priceHalala": 900,
flutter: ║                         "priceSar": 9,
flutter: ║                         "currency": "SAR",
flutter: ║                         "calories": null,
flutter: ║                         "prepTimeMinutes": null,
flutter: ║                         "categoryKey": "desserts",
flutter: ║                         "itemType": "dessert",
flutter: ║                         "type": "menu_product",
flutter: ║                         "available": true,
flutter: ║                         "active": true,
flutter: ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2454874a2465a2f7a0762e",
flutter: ║                         "key": "apple_cinnamon_muffin_2pcs",
flutter: ║                         "name": "مافن التفاح بالقرفة قطعتين",
flutter: ║                         "nameAr": "مافن التفاح بالقرفة قطعتين",
flutter: ║                         "nameI18n": {ar: مافن التفاح بالقرفة قطعتين, en: Apple Cinnamon Muffin - 2 Pieces},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
flutter: ║                         "imageUrl": "",
flutter: ║                         "priceHalala": 1200,
flutter: ║                         "priceSar": 12,
flutter: ║                         "currency": "SAR",
flutter: ║                         "calories": null,
flutter: ║                         "prepTimeMinutes": null,
flutter: ║                         "categoryKey": "desserts",
flutter: ║                         "itemType": "dessert",
flutter: ║                         "type": "menu_product",
flutter: ║                         "available": true,
flutter: ║                         "active": true,
flutter: ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2454884a2465a2f7a07633",
flutter: ║                         "key": "berry_cheesecake",
flutter: ║                         "name": "تشيز كيك بالتوت",
flutter: ║                         "nameAr": "تشيز كيك بالتوت",
flutter: ║                         "nameI18n": {ar: تشيز كيك بالتوت, en: Berry Cheesecake},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
flutter: ║                         "imageUrl": "",
flutter: ║                         "priceHalala": 1900,
flutter: ║                         "priceSar": 19,
flutter: ║                         "currency": "SAR",
flutter: ║                         "calories": null,
flutter: ║                         "prepTimeMinutes": null,
flutter: ║                         "categoryKey": "desserts",
flutter: ║                         "itemType": "dessert",
flutter: ║                         "type": "menu_product",
flutter: ║                         "available": true,
flutter: ║                         "active": true,
flutter: ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2454894a2465a2f7a07638",
flutter: ║                         "key": "strawberry_cheesecake",
flutter: ║                         "name": "تشيز كيك بالفراولة",
flutter: ║                         "nameAr": "تشيز كيك بالفراولة",
flutter: ║                         "nameI18n": {ar: تشيز كيك بالفراولة, en: Strawberry Cheesecake},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
flutter: ║                         "imageUrl": "",
flutter: ║                         "priceHalala": 1900,
flutter: ║                         "priceSar": 19,
flutter: ║                         "currency": "SAR",
flutter: ║                         "calories": null,
flutter: ║                         "prepTimeMinutes": null,
flutter: ║                         "categoryKey": "desserts",
flutter: ║                         "itemType": "dessert",
flutter: ║                         "type": "menu_product",
flutter: ║                         "available": true,
flutter: ║                         "active": true,
flutter: ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2454894a2465a2f7a0763d",
flutter: ║                         "key": "dark_brownies",
flutter: ║                         "name": "براونيز داكن",
flutter: ║                         "nameAr": "براونيز داكن",
flutter: ║                         "nameI18n": {ar: براونيز داكن, en: Dark Brownies},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
flutter: ║                         "imageUrl": "",
flutter: ║                         "priceHalala": 1300,
flutter: ║                         "priceSar": 13,
flutter: ║                         "currency": "SAR",
flutter: ║                         "calories": null,
flutter: ║                         "prepTimeMinutes": null,
flutter: ║                         "categoryKey": "desserts",
flutter: ║                         "itemType": "dessert",
flutter: ║                         "type": "menu_product",
flutter: ║                         "available": true,
flutter: ║                         "active": true,
flutter: ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a24548a4a2465a2f7a07642",
flutter: ║                         "key": "protein_bar",
flutter: ║                         "name": "بروتين بار",
flutter: ║                         "nameAr": "بروتين بار",
flutter: ║                         "nameI18n": {ar: بروتين بار, en: Protein Bar},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
flutter: ║                         "imageUrl": "",
flutter: ║                         "priceHalala": 1500,
flutter: ║                         "priceSar": 15,
flutter: ║                         "currency": "SAR",
flutter: ║                         "calories": null,
flutter: ║                         "prepTimeMinutes": null,
flutter: ║                         "categoryKey": "desserts",
flutter: ║                         "itemType": "dessert",
flutter: ║                         "type": "menu_product",
flutter: ║                         "available": true,
flutter: ║                         "active": true,
flutter: ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a24548a4a2465a2f7a07647",
flutter: ║                         "key": "basic_classic",
flutter: ║                         "name": "بيسك كلاسيك",
flutter: ║                         "nameAr": "بيسك كلاسيك",
flutter: ║                         "nameI18n": {ar: بيسك كلاسيك, en: Basic Classic},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
flutter: ║                         "imageUrl": "",
flutter: ║                         "priceHalala": 1400,
flutter: ║                         "priceSar": 14,
flutter: ║                         "currency": "SAR",
flutter: ║                         "calories": null,
flutter: ║                         "prepTimeMinutes": null,
flutter: ║                         "categoryKey": "desserts",
flutter: ║                         "itemType": "dessert",
flutter: ║                         "type": "menu_product",
flutter: ║                         "available": true,
flutter: ║                         "active": true,
flutter: ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a24548b4a2465a2f7a0764c",
flutter: ║                         "key": "protein_chocolate_cake",
flutter: ║                         "name": "كيك شوكولاتة بروتين",
flutter: ║                         "nameAr": "كيك شوكولاتة بروتين",
flutter: ║                         "nameI18n": {ar: كيك شوكولاتة بروتين, en: Protein Chocolate Cake},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
flutter: ║                         "imageUrl": "",
flutter: ║                         "priceHalala": 1900,
flutter: ║                         "priceSar": 19,
flutter: ║                         "currency": "SAR",
flutter: ║                         "calories": null,
flutter: ║                         "prepTimeMinutes": null,
flutter: ║                         "categoryKey": "desserts",
flutter: ║                         "itemType": "dessert",
flutter: ║                         "type": "menu_product",
flutter: ║                         "available": true,
flutter: ║                         "active": true,
flutter: ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    }
flutter: ║                 ]
flutter: ║            }
flutter: ║             "small_salad": {
flutter: ║                 "category": "small_salad",
flutter: ║                 "sourceCategories": [light_options]
flutter: ║                 "choices": [
flutter: ║                    {
flutter: ║                         "id": "6a2454654a2465a2f7a07524",
flutter: ║                         "key": "green_salad",
flutter: ║                         "name": "سلطة خضراء - 100 جرام",
flutter: ║                         "nameAr": "سلطة خضراء - 100 جرام",
flutter: ║                         "nameI18n": {ar: سلطة خضراء - 100 جرام, en: Green Salad - 100g},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
flutter: ║                         "imageUrl": "",
flutter: ║                         "priceHalala": 1500,
flutter: ║                         "priceSar": 15,
flutter: ║                         "currency": "SAR",
flutter: ║                         "calories": null,
flutter: ║                         "prepTimeMinutes": null,
flutter: ║                         "categoryKey": "light_options",
flutter: ║                         "itemType": "green_salad",
flutter: ║                         "type": "menu_product",
flutter: ║                         "available": true,
flutter: ║                         "active": true,
flutter: ║                         "ui": {cardVariant: compact_builder, cardSize: medium, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2454734a2465a2f7a0758f",
flutter: ║                         "key": "fruit_salad",
flutter: ║                         "name": "سلطة فواكه – 150 جرام",
flutter: ║                         "nameAr": "سلطة فواكه – 150 جرام",
flutter: ║                         "nameI18n": {ar: سلطة فواكه – 150 جرام, en: Fruit Salad – 150g},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
flutter: ║                         "imageUrl": "",
flutter: ║                         "priceHalala": 1700,
flutter: ║                         "priceSar": 17,
flutter: ║                         "currency": "SAR",
flutter: ║                         "calories": null,
flutter: ║                         "prepTimeMinutes": null,
flutter: ║                         "categoryKey": "light_options",
flutter: ║                         "itemType": "fruit_salad",
flutter: ║                         "type": "menu_product",
flutter: ║                         "available": true,
flutter: ║                         "active": true,
flutter: ║                         "ui": {cardVariant: compact_builder, cardSize: medium, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    }
flutter: ║                 ]
flutter: ║            }
flutter: ║        }
flutter: ║    }
flutter: ║
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: MealPlannerBloc: Initialized with mealBalance: canConsumeNow=null, limitEnforced=null, maxConsumable=null, remaining=null
flutter: onChange -- MealPlannerBloc, Change { currentState: MealPlannerLoading(), nextState: MealPlannerLoaded([Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel'], Instance of 'MealPlannerMenuModel', AddonChoicesModel([AddonChoiceCategoryModel(juice, [juices, drinks], [AddonChoiceModel(6a24548b4a2465a2f7a07651, berry_blast, بيري بلاست, بيري بلاست, {ar: بيري بلاست, en: Berry Blast}, 1100, 11.0, SAR, null, null, juices, juice, menu_product, true, true, {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}), AddonChoiceModel(6a24548c4a2465a2f7a07656, berry_prot, بيري بروت, بيري بروت, {ar: بيري بروت, en: Berry Prot}, 1300, 13.0, SAR, null, null, juices, juice, menu_product, true, true, {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: ,<…>
flutter: \^[[34m[🌎 Easy Localization] [WARNING] Localization key [dailyLimitEnforced] not found<…>
flutter:
flutter: ╔╣ Request ║ GET
flutter: ║  https://basicdiet145.onrender.com/api/subscriptions/6a2498e0e9ea79c6d966ad1f/days/2026-06-12
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: ╔ Headers
flutter: ╟ accept: application/json
flutter: ╟ content-type: application/json
flutter: ╟ authorization:
flutter: ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTI0NTNiMmYwMWVhMmI0MDg3Y2Q2Nj
flutter: ║ kiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MTAxNTM0MCwiZXhwIjox
flutter: ║ NzgxMDE2MjQwfQ.tqQDXvewU_eyA6VNcF3QeRjaB2weeAZ9C_BER1ptcKA
flutter: ╟ Accept-Language: ar
flutter: ╟ contentType: application/json
flutter: ╟ responseType: ResponseType.json
flutter: ╟ followRedirects: true
flutter: ╟ connectTimeout: 0:01:00.000000
flutter: ╟ receiveTimeout: 0:01:00.000000
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter:
flutter: ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 591 ms
flutter: ║  https://basicdiet145.onrender.com/api/subscriptions/6a2498e0e9ea79c6d966ad1f/days/2026-06-12
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: ╔ Headers
flutter: ╟ x-dns-prefetch-control: [off]
flutter: ╟ x-render-origin-server: [Render]
flutter: ╟ date: [Tue, 09 Jun 2026 14:40:09 GMT]
flutter: ╟ transfer-encoding: [chunked]
flutter: ╟ origin-agent-cluster: [?1]
flutter: ╟ vary: [Origin, Accept-Encoding]
flutter: ╟ content-encoding: [gzip]
flutter: ╟ server: [cloudflare]
flutter: ╟ x-request-id: [e6fb2d22-e02e-4028-9b35-d596c99ee270]
flutter: ╟ cross-origin-resource-policy: [same-origin]
flutter: ╟ cf-ray: [a090e3c85f64e28c-MRS]
flutter: ╟ etag: [W/"1630-szogV8EJY6bqfTNHpgGDZzQRpD8"]
flutter: ╟ x-frame-options: [SAMEORIGIN]
flutter: ╟ content-security-policy:
flutter: ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
flutter: ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
flutter: ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
flutter: ╟ connection: [keep-alive]
flutter: ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
flutter: ╟ referrer-policy: [no-referrer]
flutter: ╟ cf-cache-status: [DYNAMIC]
flutter: ╟ x-permitted-cross-domain-policies: [none]
flutter: ╟ content-type: [application/json; charset=utf-8]
flutter: ╟ cross-origin-opener-policy: [same-origin]
flutter: ╟ rndr-id: [21055aa5-aba0-48a2]
flutter: ╟ x-xss-protection: [0]
flutter: ╟ access-control-allow-credentials: [true]
flutter: ╟ alt-svc: [h3=":443"; ma=86400]
flutter: ╟ x-download-options: [noopen]
flutter: ╟ x-content-type-options: [nosniff]
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: ╔ Body
flutter: ║
flutter: ║    {
flutter: ║         "status": true,
flutter: ║         "data": {
flutter: ║             "_id": "6a2498e0e9ea79c6d966ad28",
flutter: ║             "subscriptionId": "6a2498e0e9ea79c6d966ad1f",
flutter: ║             "date": "2026-06-12",
flutter: ║             "status": "open",
flutter: ║             "selections": []
flutter: ║             "skippedByUser": false,
flutter: ║             "skipCompensated": false,
flutter: ║             "assignedByKitchen": false,
flutter: ║             "pickupRequested": false,
flutter: ║             "pickupRequestedAt": null,
flutter: ║             "pickupPreparationStartedAt": null,
flutter: ║             "pickupPreparedAt": null,
flutter: ║             "pickupCode": null,
flutter: ║             "pickupCodeIssuedAt": null,
flutter: ║             "pickupVerifiedAt": null,
flutter: ║             "pickupVerifiedByDashboardUserId": null,
flutter: ║             "pickupNoShowAt": null,
flutter: ║             "dayEndConsumptionReason": null,
flutter: ║             "autoSettled": false,
flutter: ║             "settledAt": null,
flutter: ║             "settlementReason": null,
flutter: ║             "settledBy": null,
flutter: ║             "cancellationReason": null,
flutter: ║             "cancellationCategory": null,
flutter: ║             "cancellationNote": null,
flutter: ║             "canceledBy": null,
flutter: ║             "canceledAt": null,
flutter: ║             "creditsDeducted": false,
flutter: ║             "autoLocked": false,
flutter: ║             "plannerRevisionHash": "b0ddd7e6b9051b1c961aa465baaa398393149b64baaf0d86503e2b7694ca46e4",
flutter: ║             "mealReminderSentAt": null,
flutter: ║             "addonSelections": []
flutter: ║             "premiumUpgradeSelections": []
flutter: ║             "operationAuditLog": []
flutter: ║             "customSalads": []
flutter: ║             "customMeals": []
flutter: ║             "baseMealSlots": []
flutter: ║             "__v": 0,
flutter: ║             "createdAt": "2026-06-06T22:02:08.187Z",
flutter: ║             "updatedAt": "2026-06-06T22:02:08.187Z",
flutter: ║             "addonEntitlements": {
flutter: ║                 "juice": {
flutter: ║                     "category": "juice",
flutter: ║                     "subscribed": true,
flutter: ║                     "addonPlanId": "6a2454b24a2465a2f7a0778e",
flutter: ║                     "name": "Juice Subscription",
flutter: ║                     "maxPerDay": 1,
flutter: ║                     "selectedItem": null,
flutter: ║                     "status": "pending_selection"
flutter: ║                }
flutter: ║                 "snack": {
flutter: ║                     "category": "snack",
flutter: ║                     "subscribed": false,
flutter: ║                     "addonPlanId": null,
flutter: ║                     "name": "",
flutter: ║                     "maxPerDay": 0,
flutter: ║                     "selectedItem": null,
flutter: ║                     "status": "not_subscribed"
flutter: ║                }
flutter: ║                 "small_salad": {
flutter: ║                     "category": "small_salad",
flutter: ║                     "subscribed": false,
flutter: ║                     "addonPlanId": null,
flutter: ║                     "name": "",
flutter: ║                     "maxPerDay": 0,
flutter: ║                     "selectedItem": null,
flutter: ║                     "status": "not_subscribed"
flutter: ║                }
flutter: ║            }
flutter: ║             "planning": {
flutter: ║                 "version": "subscription_day_planning.v1",
flutter: ║                 "state": "draft",
flutter: ║                 "requiredMealCount": 1,
flutter: ║                 "selectedBaseMealCount": 0,
flutter: ║                 "selectedPremiumMealCount": 0,
flutter: ║                 "selectedTotalMealCount": 0,
flutter: ║                 "isThresholdMet": false,
flutter: ║                 "isExactCountSatisfied": false,
flutter: ║                 "isBalanceExceeded": false,
flutter: ║                 "maxConsumableMealsNow": 6,
flutter: ║                 "confirmedAt": null,
flutter: ║                 "confirmedByRole": null,
flutter: ║                 "baseMealSlots": []
flutter: ║                 "premiumOverageCount": 0,
flutter: ║                 "premiumOverageStatus": null,
flutter: ║                 "stateLabel": "مسودة",
flutter: ║                 "premiumOverageStatusLabel": ""
flutter: ║            }
flutter: ║             "statusLabel": "مفتوح",
flutter: ║             "premiumSummary": {
flutter: ║                 "selectedCount": 0,
flutter: ║                 "coveredByBalanceCount": 0,
flutter: ║                 "pendingPaymentCount": 0,
flutter: ║                 "paidExtraCount": 0,
flutter: ║                 "totalExtraHalala": 0,
flutter: ║                 "currency": "SAR"
flutter: ║            }
flutter: ║             "premiumExtraPayment": {
flutter: ║                 "status": "none",
flutter: ║                 "paymentId": null,
flutter: ║                 "providerInvoiceId": null,
flutter: ║                 "amountHalala": 0,
flutter: ║                 "currency": "SAR",
flutter: ║                 "expiresAt": null,
flutter: ║                 "reused": false,
flutter: ║                 "revisionHash": "b0ddd7e6b9051b1c961aa465baaa398393149b64baaf0d86503e2b7694ca46e4"
flutter: ║                 "createdAt": null,
flutter: ║                 "paidAt": null,
flutter: ║                 "extraPremiumCount": 0,
flutter: ║                 "statusLabel": "لا يوجد دفع"
flutter: ║            }
flutter: ║             "paymentRequirement": {
flutter: ║                 "status": "satisfied",
flutter: ║                 "requiresPayment": false,
flutter: ║                 "pricingStatus": "not_required",
flutter: ║                 "blockingReason": "PLANNING_INCOMPLETE",
flutter: ║                 "canCreatePayment": false,
flutter: ║                 "premiumSelectedCount": 0,
flutter: ║                 "premiumPendingPaymentCount": 0,
flutter: ║                 "addonSelectedCount": 0,
flutter: ║                 "addonPendingPaymentCount": 0,
flutter: ║                 "pendingAmountHalala": 0,
flutter: ║                 "amountHalala": 0,
flutter: ║                 "currency": "SAR",
flutter: ║                 "pricingStatusLabel": "غير مطلوب",
flutter: ║                 "blockingReasonLabel": ""
flutter: ║            }
flutter: ║             "commercialState": "draft",
flutter: ║             "isFulfillable": false,
flutter: ║             "canBePrepared": false,
flutter: ║             "pickupPrepared": false,
flutter: ║             "pickupPreparationFlowStatus": "waiting_for_prepare",
flutter: ║             "fulfillmentMode": "no_service",
flutter: ║             "consumptionState": "pending_day",
flutter: ║             "requiredMealCount": 1,
flutter: ║             "specifiedMealCount": 0,
flutter: ║             "unspecifiedMealCount": 1,
flutter: ║             "hasCustomerSelections": false,
flutter: ║             "requiresMealTypeKnowledge": false,
flutter: ║             "mealTypesSpecified": false,
flutter: ║             "planningReady": false,
flutter: ║             "fulfillmentReady": false,
flutter: ║             "deliveryMode": "pickup",
flutter: ║             "pickupLocation": {
flutter: ║                 "id": "main",
flutter: ║                 "name": "الفرع الرئيسي",
flutter: ║                 "address": "H4GX+JF7، السلامة، جدة 23436، المملكة العربية السعودية",
flutter: ║                 "phone": "",
flutter: ║                 "city": "",
flutter: ║                 "district": "",
flutter: ║                 "workingHours": "",
flutter: ║                 "latitude": null,
flutter: ║                 "longitude": null,
flutter: ║                 "mapUrl": null
flutter: ║            }
flutter: ║             "deliveryAddress": null,
flutter: ║             "deliveryWindow": null,
flutter: ║             "deliverySlot": {type: pickup, slotId: , window: , label: },
flutter: ║             "fulfillmentSummary": {
flutter: ║                 "mode": "pickup",
flutter: ║                 "title": "الاستلام من الفرع",
flutter: ║                 "status": "open",
flutter: ║                 "statusLabel": "مفتوح",
flutter: ║                 "message": "راجع اختيارات اليوم واطلب التجهيز عندما تكون جاهزا",
flutter: ║                 "nextAction": "",
flutter: ║                 "isEditable": true,
flutter: ║                 "isFulfillable": false,
flutter: ║                 "planningReady": false,
flutter: ║                 "fulfillmentReady": false,
flutter: ║                 "lockedReason": null,
flutter: ║                 "lockedMessage": null
flutter: ║            }
flutter: ║             "lockedReason": null,
flutter: ║             "lockedMessage": null,
flutter: ║             "mealBalance": {
flutter: ║                 "totalMeals": 7,
flutter: ║                 "remainingMeals": 6,
flutter: ║                 "consumedMeals": 1,
flutter: ║                 "canConsumeNow": true,
flutter: ║                 "maxConsumableMealsNow": 6,
flutter: ║                 "mealBalancePolicy": "TOTAL_BALANCE_WITHIN_VALIDITY",
flutter: ║                 "dailyMealLimitEnforced": false,
flutter: ║                 "dailyMealsDefault": 1
flutter: ║            }
flutter: ║             "rules": {
flutter: ║                 "version": "meal_planner_rules.v3",
flutter: ║                 "beef": {proteinFamilyKey: beef, maxSlotsPerDay: 1},
flutter: ║                 "standardCarbs": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
flutter: ║                 "premiumCarbs": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
flutter: ║                 "proteinGroups": [
flutter: ║                    {
flutter: ║                         "key": "chicken",
flutter: ║                         "name": {ar: دجاج, en: Chicken},
flutter: ║                         "sortOrder": 10
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "key": "beef",
flutter: ║                         "name": {ar: لحم, en: Beef},
flutter: ║                         "sortOrder": 20
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "key": "fish",
flutter: ║                         "name": {ar: سمك, en: Fish},
flutter: ║                         "sortOrder": 30
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "key": "eggs",
flutter: ║                         "name": {ar: بيض, en: Eggs},
flutter: ║                         "sortOrder": 40
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "key": "premium",
flutter: ║                         "name": {ar: بريميوم, en: Premium},
flutter: ║                         "sortOrder": 50
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "key": "other",
flutter: ║                         "name": {ar: أخرى, en: Other},
flutter: ║                         "sortOrder": 60
flutter: ║                    }
flutter: ║                 ],
flutter: ║                 "premiumLargeSalad": {
flutter: ║                     "premiumKey": "premium_large_salad",
flutter: ║                     "presetKey": "large_salad",
flutter: ║                     "extraFeeHalala": 2900,
flutter: ║                     "groups": [
flutter: ║                      {key: leafy_greens, minSelect: 0, maxSelect: 2},
flutter: ║                      {key: vegetables, minSelect: 0, maxSelect: 19},
flutter: ║                      {key: protein, minSelect: 1, maxSelect: 1},
flutter: ║                      {key: cheese_nuts, minSelect: 0, maxSelect: 2},
flutter: ║                      {key: fruits, minSelect: 0, maxSelect: 4},
flutter: ║                      {key: sauce, minSelect: 1, maxSelect: 1}
flutter: ║                     ],
flutter: ║                     "allowedProteinKeys": [
flutter: ║                             boiled_eggs,
flutter: ║                             tuna,
flutter: ║                             chicken_fajita,
flutter: ║                             spicy_chicken,
flutter: ║                             italian_spiced_chicken,
flutter: ║                             chicken_tikka,
flutter: ║                             asian_chicken,
flutter: ║                             chicken_strips,
flutter: ║                             grilled_chicken,
flutter: ║                             mexican_chicken,
flutter: ║                             fish_fillet
flutter: ║                     ],
flutter: ║                     "excludedGroupKeys": [extra_protein_50g]
flutter: ║                }
flutter: ║            }
flutter: ║             "commercialStateLabel": "مسودة"
flutter: ║        }
flutter: ║    }
flutter: ║
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: onChange -- MealPlannerBloc, Change { currentState: MealPlannerLoaded([Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel'], Instance of 'MealPlannerMenuModel', AddonChoicesModel([AddonChoiceCategoryModel(juice, [juices, drinks], [AddonChoiceModel(6a24548b4a2465a2f7a07651, berry_blast, بيري بلاست, بيري بلاست, {ar: بيري بلاست, en: Berry Blast}, 1100, 11.0, SAR, null, null, juices, juice, menu_product, true, true, {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}), AddonChoiceModel(6a24548c4a2465a2f7a07656, berry_prot, بيري بروت, بيري بروت, {ar: بيري بروت, en: Berry Prot}, 1300, 13.0, SAR, null, null, juices, juice, menu_product, true, true, {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}), AddonChoic<…>
