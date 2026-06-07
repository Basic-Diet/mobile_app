flutter: onChange -- MainBloc, Change { currentState: MainInitialState(0), nextState: MainIndexChangedState(1) }
flutter: onCreate -- MenuBloc
flutter: onChange -- MenuBloc, Change { currentState: MenuInitial(), nextState: MenuLoading() }
flutter: onClose -- HomeBloc
flutter:
flutter: ╔╣ Request ║ GET
flutter: ║  https://basicdiet145.onrender.com/api/orders/menu
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: ╔ Headers
flutter: ╟ accept: application/json
flutter: ╟ content-type: application/json
flutter: ╟ authorization:
flutter: ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTI0NTNiMmYwMWVhMmI0MDg3Y2Q2Nj
flutter: ║ kiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDg1NzQ2NiwiZXhwIjox
flutter: ║ NzgwODU4MzY2fQ.TQ773ldc2sEg9OSEdCkc6DHz0OpDmnuZOKsIckstb6E
flutter: ╟ Accept-Language: en
flutter: ╟ contentType: application/json
flutter: ╟ responseType: ResponseType.json
flutter: ╟ followRedirects: true
flutter: ╟ connectTimeout: 0:01:00.000000
flutter: ╟ receiveTimeout: 0:01:00.000000
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter:
flutter: ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 2117 ms
flutter: ║  https://basicdiet145.onrender.com/api/orders/menu
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: ╔ Headers
flutter: ╟ x-dns-prefetch-control: [off]
flutter: ╟ x-render-origin-server: [Render]
flutter: ╟ date: [Sun, 07 Jun 2026 18:40:01 GMT]
flutter: ╟ transfer-encoding: [chunked]
flutter: ╟ origin-agent-cluster: [?1]
flutter: ╟ vary: [Origin, Accept-Encoding]
flutter: ╟ content-encoding: [gzip]
flutter: ╟ server: [cloudflare]
flutter: ╟ cross-origin-resource-policy: [same-origin]
flutter: ╟ cf-ray: [a081c85c2c88e21d-MRS]
flutter: ╟ etag: [W/"17e23-rVtWMklM4MsKUU5B/ju94drqyyM"]
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
flutter: ╟ rndr-id: [69a2582b-9093-4168]
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
flutter: ║             "source": "one_time_order",
flutter: ║             "fulfillmentMethod": "pickup",
flutter: ║             "currency": "SAR",
flutter: ║             "vatIncluded": true,
flutter: ║             "vatPercentage": 16,
flutter: ║             "categories": [
flutter: ║                {
flutter: ║                     "id": "6a2453e44a2465a2f7a07108",
flutter: ║                     "key": "custom_order",
flutter: ║                     "name": "Custom Order",
flutter: ║                     "nameI18n": {ar: اطلب على مزاجك, en: Custom Order},
flutter: ║                     "description": "",
flutter: ║                     "descriptionI18n": {ar: , en: },
flutter: ║                     "imageUrl": "",
flutter: ║                     "sortOrder": 10,
flutter: ║                     "products": [
flutter: ║                        {
flutter: ║                             "id": "6a2454474a2465a2f7a07426",
flutter: ║                             "key": "basic_meal",
flutter: ║                             "categoryId": "6a2453e44a2465a2f7a07108",
flutter: ║                             "name": "Basic Meal",
flutter: ║                             "nameI18n": {ar: وجبة بيسك, en: Basic Meal},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "basic_meal",
flutter: ║                             "pricingModel": "per_100g",
flutter: ║                             "priceHalala": 1900,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 100,
flutter: ║                             "minWeightGrams": 100,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 20,
flutter: ║                             "ui": {cardSize: large},
flutter: ║                             "isCustomizable": true,
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2453ef4a2465a2f7a07165"
flutter: ║                                     "groupId": "6a2453ef4a2465a2f7a07165"
flutter: ║                                     "key": "carbs",
flutter: ║                                     "name": "Carbs",
flutter: ║                                     "nameI18n": {ar: كارب, en: Carbs},
flutter: ║                                     "minSelections": 1,
flutter: ║                                     "maxSelections": 2,
flutter: ║                                     "isRequired": true,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: chips},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f04a2465a2f7a07168"
flutter: ║                                             "optionId": "6a2453f04a2465a2f7a07168"
flutter: ║                                             "groupId": "6a2453ef4a2465a2f7a07165"
flutter: ║                                             "key": "white_rice"
flutter: ║                                             "name": "White Rice"
flutter: ║                                             "nameI18n": {ar: رز أبيض, en: White Rice},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f04a2465a2f7a0716b"
flutter: ║                                             "optionId": "6a2453f04a2465a2f7a0716b"
flutter: ║                                             "groupId": "6a2453ef4a2465a2f7a07165"
flutter: ║                                             "key": "turmeric_rice"
flutter: ║                                             "name": "Turmeric Rice"
flutter: ║                                             "nameI18n": {ar: رز بالكركم, en: Turmeric Rice},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 20
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f04a2465a2f7a0716e"
flutter: ║                                             "optionId": "6a2453f04a2465a2f7a0716e"
flutter: ║                                             "groupId": "6a2453ef4a2465a2f7a07165"
flutter: ║                                             "key": "alfredo_pasta"
flutter: ║                                             "name": "Alfredo Pasta"
flutter: ║                                             "nameI18n": {ar: باستا الفريدو, en: Alfredo Pasta},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 30
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f14a2465a2f7a07171"
flutter: ║                                             "optionId": "6a2453f14a2465a2f7a07171"
flutter: ║                                             "groupId": "6a2453ef4a2465a2f7a07165"
flutter: ║                                             "key": "red_sauce_pasta"
flutter: ║                                             "name": "Red Sauce Pasta"
flutter: ║                                             "nameI18n": {ar: باستا صوص احمر, en: Red Sauce Pasta},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 40
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f14a2465a2f7a07174"
flutter: ║                                             "optionId": "6a2453f14a2465a2f7a07174"
flutter: ║                                             "groupId": "6a2453ef4a2465a2f7a07165"
flutter: ║                                             "key": "roasted_potato"
flutter: ║                                             "name": "Roasted Potato"
flutter: ║                                             "nameI18n": {ar: بطاطا مشوية, en: Roasted Potato},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 50
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f24a2465a2f7a07177"
flutter: ║                                             "optionId": "6a2453f24a2465a2f7a07177"
flutter: ║                                             "groupId": "6a2453ef4a2465a2f7a07165"
flutter: ║                                             "key": "sweet_potato"
flutter: ║                                             "name": "Sweet Potato"
flutter: ║                                             "nameI18n": {ar: بطاطا حلوة, en: Sweet Potato},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 60
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f24a2465a2f7a0717a"
flutter: ║                                             "optionId": "6a2453f24a2465a2f7a0717a"
flutter: ║                                             "groupId": "6a2453ef4a2465a2f7a07165"
flutter: ║                                             "key": "grilled_mixed_vegetables"
flutter: ║                                             "name": "Grilled Mixed Vegetables"
flutter: ║                                             "nameI18n": {ar: خضار مشكلة مشوية, en: Grilled Mixed Vegetables},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 70
flutter: ║                                        }
flutter: ║                                     ]
flutter: ║                                },
flutter: ║                                {
flutter: ║                                     "id": "6a2453e84a2465a2f7a07126"
flutter: ║                                     "groupId": "6a2453e84a2465a2f7a07126"
flutter: ║                                     "key": "proteins",
flutter: ║                                     "name": "Proteins",
flutter: ║                                     "nameI18n": {ar: بروتينات, en: Proteins},
flutter: ║                                     "minSelections": 1,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": true,
flutter: ║                                     "sortOrder": 20,
flutter: ║                                     "ui": {displayStyle: radio_cards},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2453e84a2465a2f7a07129"
flutter: ║                                             "optionId": "6a2453e84a2465a2f7a07129"
flutter: ║                                             "groupId": "6a2453e84a2465a2f7a07126"
flutter: ║                                             "key": "chicken"
flutter: ║                                             "name": "Chicken"
flutter: ║                                             "nameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10,
flutter: ║                                             "proteinFamilyKey": "chicken"
flutter: ║                                             "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                             "displayCategoryKey": "chicken"
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453e94a2465a2f7a0712c"
flutter: ║                                             "optionId": "6a2453e94a2465a2f7a0712c"
flutter: ║                                             "groupId": "6a2453e84a2465a2f7a07126"
flutter: ║                                             "key": "beef"
flutter: ║                                             "name": "Beef"
flutter: ║                                             "nameI18n": {ar: لحم, en: Beef},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 20,
flutter: ║                                             "proteinFamilyKey": "beef"
flutter: ║                                             "proteinFamilyNameI18n": {ar: لحم, en: Beef},
flutter: ║                                             "displayCategoryKey": "beef"
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453e94a2465a2f7a0712f"
flutter: ║                                             "optionId": "6a2453e94a2465a2f7a0712f"
flutter: ║                                             "groupId": "6a2453e84a2465a2f7a07126"
flutter: ║                                             "key": "fish"
flutter: ║                                             "name": "Fish"
flutter: ║                                             "nameI18n": {ar: سمك, en: Fish},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 30,
flutter: ║                                             "proteinFamilyKey": "fish"
flutter: ║                                             "proteinFamilyNameI18n": {ar: سمك, en: Fish},
flutter: ║                                             "displayCategoryKey": "fish"
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453e94a2465a2f7a07132"
flutter: ║                                             "optionId": "6a2453e94a2465a2f7a07132"
flutter: ║                                             "groupId": "6a2453e84a2465a2f7a07126"
flutter: ║                                             "key": "eggs"
flutter: ║                                             "name": "Eggs"
flutter: ║                                             "nameI18n": {ar: بيض, en: Eggs},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 40,
flutter: ║                                             "proteinFamilyKey": "eggs"
flutter: ║                                             "proteinFamilyNameI18n": {ar: بيض, en: Eggs},
flutter: ║                                             "displayCategoryKey": "eggs"
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453ea4a2465a2f7a07135"
flutter: ║                                             "optionId": "6a2453ea4a2465a2f7a07135"
flutter: ║                                             "groupId": "6a2453e84a2465a2f7a07126"
flutter: ║                                             "key": "beef_steak"
flutter: ║                                             "name": "Beef Steak"
flutter: ║                                             "nameI18n": {ar: ستيك لحم, en: Beef Steak},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 2000
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 50,
flutter: ║                                             "proteinFamilyKey": "premium"
flutter: ║                                             "proteinFamilyNameI18n": {ar: بريميوم, en: Premium},
flutter: ║                                             "displayCategoryKey": "premium"
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453ea4a2465a2f7a07138"
flutter: ║                                             "optionId": "6a2453ea4a2465a2f7a07138"
flutter: ║                                             "groupId": "6a2453e84a2465a2f7a07126"
flutter: ║                                             "key": "shrimp"
flutter: ║                                             "name": "Shrimp"
flutter: ║                                             "nameI18n": {ar: جمبري, en: Shrimp},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 2000
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 60,
flutter: ║                                             "proteinFamilyKey": "premium"
flutter: ║                                             "proteinFamilyNameI18n": {ar: بريميوم, en: Premium},
flutter: ║                                             "displayCategoryKey": "premium"
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453ea4a2465a2f7a0713b"
flutter: ║                                             "optionId": "6a2453ea4a2465a2f7a0713b"
flutter: ║                                             "groupId": "6a2453e84a2465a2f7a07126"
flutter: ║                                             "key": "salmon"
flutter: ║                                             "name": "Salmon"
flutter: ║                                             "nameI18n": {ar: سالمون, en: Salmon},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 2000
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 70,
flutter: ║                                             "proteinFamilyKey": "premium"
flutter: ║                                             "proteinFamilyNameI18n": {ar: بريميوم, en: Premium},
flutter: ║                                             "displayCategoryKey": "premium"
flutter: ║                                        }
flutter: ║                                     ],
flutter: ║                                     "optionSections": [
flutter: ║                                        {
flutter: ║                                             "key": "chicken"
flutter: ║                                             "name": "Chicken"
flutter: ║                                             "nameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                             "optionKeys": [chicken]
flutter: ║                                             "optionIds": [6a2453e84a2465a2f7a07129]
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "key": "beef"
flutter: ║                                             "name": "Beef"
flutter: ║                                             "nameI18n": {ar: لحم, en: Beef},
flutter: ║                                             "optionKeys": [beef]
flutter: ║                                             "optionIds": [6a2453e94a2465a2f7a0712c]
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "key": "fish"
flutter: ║                                             "name": "Fish"
flutter: ║                                             "nameI18n": {ar: سمك, en: Fish},
flutter: ║                                             "optionKeys": [fish]
flutter: ║                                             "optionIds": [6a2453e94a2465a2f7a0712f]
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "key": "eggs"
flutter: ║                                             "name": "Eggs"
flutter: ║                                             "nameI18n": {ar: بيض, en: Eggs},
flutter: ║                                             "optionKeys": [eggs]
flutter: ║                                             "optionIds": [6a2453e94a2465a2f7a07132]
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "key": "premium"
flutter: ║                                             "name": "Premium"
flutter: ║                                             "nameI18n": {ar: بريميوم, en: Premium},
flutter: ║                                             "optionKeys": [beef_steak, shrimp, salmon]
flutter: ║                                             "optionIds": [6a2453ea4a2465a2f7a07135, 6a2453ea4a2465a2f7a07138, 6a2453ea4a2465a2f7a0713b]
flutter: ║                                        }
flutter: ║                                     ]
flutter: ║                                }
flutter: ║                             ]
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a24542c4a2465a2f7a07345",
flutter: ║                             "key": "basic_salad",
flutter: ║                             "categoryId": "6a2453e44a2465a2f7a07108",
flutter: ║                             "name": "Custom Salad – 100g Protein",
flutter: ║                             "nameI18n": {ar: سلطة على مزاجك – 100جرام بروتين, en: Custom Salad – 100g Protein},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "basic_salad",
flutter: ║                             "pricingModel": "per_100g",
flutter: ║                             "priceHalala": 2900,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 100,
flutter: ║                             "minWeightGrams": 100,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 10,
flutter: ║                             "ui": {cardSize: large},
flutter: ║                             "isCustomizable": true,
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2453f34a2465a2f7a07186"
flutter: ║                                     "groupId": "6a2453f34a2465a2f7a07186"
flutter: ║                                     "key": "leafy_greens",
flutter: ║                                     "name": "Leafy Greens",
flutter: ║                                     "nameI18n": {ar: ورقيات, en: Leafy Greens},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 2,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f44a2465a2f7a07189"
flutter: ║                                             "optionId": "6a2453f44a2465a2f7a07189"
flutter: ║                                             "groupId": "6a2453f34a2465a2f7a07186"
flutter: ║                                             "key": "lettuce"
flutter: ║                                             "name": "Lettuce"
flutter: ║                                             "nameI18n": {ar: خس, en: Lettuce},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f44a2465a2f7a0718c"
flutter: ║                                             "optionId": "6a2453f44a2465a2f7a0718c"
flutter: ║                                             "groupId": "6a2453f34a2465a2f7a07186"
flutter: ║                                             "key": "arugula"
flutter: ║                                             "name": "Arugula"
flutter: ║                                             "nameI18n": {ar: جرجير, en: Arugula},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 20
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f44a2465a2f7a0718f"
flutter: ║                                             "optionId": "6a2453f44a2465a2f7a0718f"
flutter: ║                                             "groupId": "6a2453f34a2465a2f7a07186"
flutter: ║                                             "key": "cabbage"
flutter: ║                                             "name": "Cabbage"
flutter: ║                                             "nameI18n": {ar: ملفوف, en: Cabbage},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 30
flutter: ║                                        }
flutter: ║                                     ]
flutter: ║                                },
flutter: ║                                {
flutter: ║                                     "id": "6a2453f54a2465a2f7a07195"
flutter: ║                                     "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                     "key": "vegetables_legumes"
flutter: ║                                     "name": "Vegetables & Legumes"
flutter: ║                                     "nameI18n": {ar: خضراوات وبقوليات, en: Vegetables & Legumes},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 19,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 20,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f54a2465a2f7a07198"
flutter: ║                                             "optionId": "6a2453f54a2465a2f7a07198"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "tomato"
flutter: ║                                             "name": "Tomato"
flutter: ║                                             "nameI18n": {ar: طماطم, en: Tomato},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f64a2465a2f7a0719b"
flutter: ║                                             "optionId": "6a2453f64a2465a2f7a0719b"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "carrot"
flutter: ║                                             "name": "Carrot"
flutter: ║                                             "nameI18n": {ar: جزر, en: Carrot},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 20
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f64a2465a2f7a0719e"
flutter: ║                                             "optionId": "6a2453f64a2465a2f7a0719e"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "cucumber"
flutter: ║                                             "name": "Cucumber"
flutter: ║                                             "nameI18n": {ar: خيار, en: Cucumber},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 30
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f74a2465a2f7a071a1"
flutter: ║                                             "optionId": "6a2453f74a2465a2f7a071a1"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "corn"
flutter: ║                                             "name": "Corn"
flutter: ║                                             "nameI18n": {ar: ذرة, en: Corn},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 40
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f74a2465a2f7a071a4"
flutter: ║                                             "optionId": "6a2453f74a2465a2f7a071a4"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "hummus"
flutter: ║                                             "name": "Hummus"
flutter: ║                                             "nameI18n": {ar: حمص, en: Hummus},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 50
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f74a2465a2f7a071a7"
flutter: ║                                             "optionId": "6a2453f74a2465a2f7a071a7"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "jalapeno"
flutter: ║                                             "name": "Jalapeno"
flutter: ║                                             "nameI18n": {ar: هالبينو, en: Jalapeno},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 60
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f84a2465a2f7a071aa"
flutter: ║                                             "optionId": "6a2453f84a2465a2f7a071aa"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "red_beans"
flutter: ║                                             "name": "Red Beans"
flutter: ║                                             "nameI18n": {ar: فاصوليا حمراء, en: Red Beans},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 70
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f84a2465a2f7a071ad"
flutter: ║                                             "optionId": "6a2453f84a2465a2f7a071ad"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "beetroot"
flutter: ║                                             "name": "Beetroot"
flutter: ║                                             "nameI18n": {ar: بنجر, en: Beetroot},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 80
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f84a2465a2f7a071b0"
flutter: ║                                             "optionId": "6a2453f84a2465a2f7a071b0"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "hot_pepper"
flutter: ║                                             "name": "Hot Pepper"
flutter: ║                                             "nameI18n": {ar: فلفل حار, en: Hot Pepper},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 90
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f84a2465a2f7a071b3"
flutter: ║                                             "optionId": "6a2453f84a2465a2f7a071b3"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "coriander"
flutter: ║                                             "name": "Coriander"
flutter: ║                                             "nameI18n": {ar: كزبرة, en: Coriander},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 100
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f94a2465a2f7a071b6"
flutter: ║                                             "optionId": "6a2453f94a2465a2f7a071b6"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "mushroom"
flutter: ║                                             "name": "Mushroom"
flutter: ║                                             "nameI18n": {ar: فطر, en: Mushroom},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 110
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f94a2465a2f7a071b9"
flutter: ║                                             "optionId": "6a2453f94a2465a2f7a071b9"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "broccoli"
flutter: ║                                             "name": "Broccoli"
flutter: ║                                             "nameI18n": {ar: بروكلي, en: Broccoli},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 120
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f94a2465a2f7a071bc"
flutter: ║                                             "optionId": "6a2453f94a2465a2f7a071bc"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "salad_grilled_mixed_vegetables"
flutter: ║                                             "name": "Grilled Mixed Vegetables"
flutter: ║                                             "nameI18n": {ar: خضار مشكل مشوي, en: Grilled Mixed Vegetables},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 130
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453fa4a2465a2f7a071bf"
flutter: ║                                             "optionId": "6a2453fa4a2465a2f7a071bf"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "red_onion"
flutter: ║                                             "name": "Red Onion"
flutter: ║                                             "nameI18n": {ar: بصل احمر, en: Red Onion},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 140
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453fa4a2465a2f7a071c2"
flutter: ║                                             "optionId": "6a2453fa4a2465a2f7a071c2"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "green_onion"
flutter: ║                                             "name": "Green Onion"
flutter: ║                                             "nameI18n": {ar: بصل اخضر, en: Green Onion},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 150
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453fa4a2465a2f7a071c5"
flutter: ║                                             "optionId": "6a2453fa4a2465a2f7a071c5"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "green_olives"
flutter: ║                                             "name": "Green Olives"
flutter: ║                                             "nameI18n": {ar: زيتون اخضر, en: Green Olives},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 160
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453fb4a2465a2f7a071c8"
flutter: ║                                             "optionId": "6a2453fb4a2465a2f7a071c8"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "black_olives"
flutter: ║                                             "name": "Black Olives"
flutter: ║                                             "nameI18n": {ar: زيتون اسود, en: Black Olives},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 170
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453fb4a2465a2f7a071cb"
flutter: ║                                             "optionId": "6a2453fb4a2465a2f7a071cb"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "mint"
flutter: ║                                             "name": "Mint"
flutter: ║                                             "nameI18n": {ar: نعناع, en: Mint},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 180
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453fc4a2465a2f7a071ce"
flutter: ║                                             "optionId": "6a2453fc4a2465a2f7a071ce"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "pickled_onion"
flutter: ║                                             "name": "Pickled Onion"
flutter: ║                                             "nameI18n": {ar: بصل مخلل, en: Pickled Onion},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 190
flutter: ║                                        }
flutter: ║                                     ]
flutter: ║                                },
flutter: ║                                {
flutter: ║                                     "id": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                     "groupId": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                     "key": "fruits",
flutter: ║                                     "name": "Fruits",
flutter: ║                                     "nameI18n": {ar: فواكه, en: Fruits},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 4,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 30,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2453ff4a2465a2f7a071ec"
flutter: ║                                             "optionId": "6a2453ff4a2465a2f7a071ec"
flutter: ║                                             "groupId": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                             "key": "mango"
flutter: ║                                             "name": "Mango"
flutter: ║                                             "nameI18n": {ar: مانجا, en: Mango},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454004a2465a2f7a071ef"
flutter: ║                                             "optionId": "6a2454004a2465a2f7a071ef"
flutter: ║                                             "groupId": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                             "key": "green_apple"
flutter: ║                                             "name": "Green Apple"
flutter: ║                                             "nameI18n": {ar: تفاح اخضر, en: Green Apple},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 20
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454004a2465a2f7a071f2"
flutter: ║                                             "optionId": "6a2454004a2465a2f7a071f2"
flutter: ║                                             "groupId": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                             "key": "pomegranate"
flutter: ║                                             "name": "Pomegranate"
flutter: ║                                             "nameI18n": {ar: رمان, en: Pomegranate},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 30
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454004a2465a2f7a071f5"
flutter: ║                                             "optionId": "6a2454004a2465a2f7a071f5"
flutter: ║                                             "groupId": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                             "key": "strawberry"
flutter: ║                                             "name": "Strawberry"
flutter: ║                                             "nameI18n": {ar: فراولة, en: Strawberry},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 40
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454014a2465a2f7a071f8"
flutter: ║                                             "optionId": "6a2454014a2465a2f7a071f8"
flutter: ║                                             "groupId": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                             "key": "blueberry"
flutter: ║                                             "name": "Blueberry"
flutter: ║                                             "nameI18n": {ar: توت ازرق, en: Blueberry},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 50
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454014a2465a2f7a071fb"
flutter: ║                                             "optionId": "6a2454014a2465a2f7a071fb"
flutter: ║                                             "groupId": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                             "key": "raspberry"
flutter: ║                                             "name": "Raspberry"
flutter: ║                                             "nameI18n": {ar: توت احمر, en: Raspberry},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 60
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454024a2465a2f7a071fe"
flutter: ║                                             "optionId": "6a2454024a2465a2f7a071fe"
flutter: ║                                             "groupId": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                             "key": "watermelon"
flutter: ║                                             "name": "Watermelon"
flutter: ║                                             "nameI18n": {ar: بطيخ, en: Watermelon},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 70
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454024a2465a2f7a07201"
flutter: ║                                             "optionId": "6a2454024a2465a2f7a07201"
flutter: ║                                             "groupId": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                             "key": "cantaloupe"
flutter: ║                                             "name": "Cantaloupe"
flutter: ║                                             "nameI18n": {ar: شمام, en: Cantaloupe},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 80
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454024a2465a2f7a07204"
flutter: ║                                             "optionId": "6a2454024a2465a2f7a07204"
flutter: ║                                             "groupId": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                             "key": "dates"
flutter: ║                                             "name": "Dates"
flutter: ║                                             "nameI18n": {ar: تمر, en: Dates},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 90
flutter: ║                                        }
flutter: ║                                     ]
flutter: ║                                },
flutter: ║                                {
flutter: ║                                     "id": "6a2453e84a2465a2f7a07126"
flutter: ║                                     "groupId": "6a2453e84a2465a2f7a07126"
flutter: ║                                     "key": "proteins",
flutter: ║                                     "name": "Proteins",
flutter: ║                                     "nameI18n": {ar: بروتينات, en: Proteins},
flutter: ║                                     "minSelections": 1,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": true,
flutter: ║                                     "sortOrder": 40,
flutter: ║                                     "ui": {displayStyle: radio_cards},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2453ea4a2465a2f7a0713e"
flutter: ║                                             "optionId": "6a2453ea4a2465a2f7a0713e"
flutter: ║                                             "groupId": "6a2453e84a2465a2f7a07126"
flutter: ║                                             "key": "boiled_eggs"
flutter: ║                                             "name": "Boiled Eggs"
flutter: ║                                             "nameI18n": {ar: بيض مسلوق, en: Boiled Eggs},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10,
flutter: ║                                             "proteinFamilyKey": "eggs"
flutter: ║                                             "proteinFamilyNameI18n": {ar: بيض, en: Eggs},
flutter: ║                                             "displayCategoryKey": "eggs"
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453eb4a2465a2f7a07141"
flutter: ║                                             "optionId": "6a2453eb4a2465a2f7a07141"
flutter: ║                                             "groupId": "6a2453e84a2465a2f7a07126"
flutter: ║                                             "key": "tuna"
flutter: ║                                             "name": "Tuna"
flutter: ║                                             "nameI18n": {ar: تونا, en: Tuna},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 20,
flutter: ║                                             "proteinFamilyKey": "fish"
flutter: ║                                             "proteinFamilyNameI18n": {ar: سمك, en: Fish},
flutter: ║                                             "displayCategoryKey": "fish"
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453eb4a2465a2f7a07144"
flutter: ║                                             "optionId": "6a2453eb4a2465a2f7a07144"
flutter: ║                                             "groupId": "6a2453e84a2465a2f7a07126"
flutter: ║                                             "key": "chicken_fajita"
flutter: ║                                             "name": "Chicken Fajita"
flutter: ║                                             "nameI18n": {ar: فاهيتا, en: Chicken Fajita},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 30,
flutter: ║                                             "proteinFamilyKey": "chicken"
flutter: ║                                             "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                             "displayCategoryKey": "chicken"
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453ec4a2465a2f7a07147"
flutter: ║                                             "optionId": "6a2453ec4a2465a2f7a07147"
flutter: ║                                             "groupId": "6a2453e84a2465a2f7a07126"
flutter: ║                                             "key": "spicy_chicken"
flutter: ║                                             "name": "Spicy Chicken"
flutter: ║                                             "nameI18n": {ar: دجاج سبايسي, en: Spicy Chicken},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 40,
flutter: ║                                             "proteinFamilyKey": "chicken"
flutter: ║                                             "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                             "displayCategoryKey": "chicken"
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453ec4a2465a2f7a0714a"
flutter: ║                                             "optionId": "6a2453ec4a2465a2f7a0714a"
flutter: ║                                             "groupId": "6a2453e84a2465a2f7a07126"
flutter: ║                                             "key": "italian_spiced_chicken"
flutter: ║                                             "name": "Italian Spiced Chicken"
flutter: ║                                             "nameI18n": {ar: دجاج توابل إيطالية, en: Italian Spiced Chicken},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 50,
flutter: ║                                             "proteinFamilyKey": "chicken"
flutter: ║                                             "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                             "displayCategoryKey": "chicken"
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453ec4a2465a2f7a0714d"
flutter: ║                                             "optionId": "6a2453ec4a2465a2f7a0714d"
flutter: ║                                             "groupId": "6a2453e84a2465a2f7a07126"
flutter: ║                                             "key": "chicken_tikka"
flutter: ║                                             "name": "Chicken Tikka"
flutter: ║                                             "nameI18n": {ar: دجاج تكا, en: Chicken Tikka},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 60,
flutter: ║                                             "proteinFamilyKey": "chicken"
flutter: ║                                             "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                             "displayCategoryKey": "chicken"
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453ed4a2465a2f7a07150"
flutter: ║                                             "optionId": "6a2453ed4a2465a2f7a07150"
flutter: ║                                             "groupId": "6a2453e84a2465a2f7a07126"
flutter: ║                                             "key": "asian_chicken"
flutter: ║                                             "name": "Asian Chicken"
flutter: ║                                             "nameI18n": {ar: دجاج آسيوي, en: Asian Chicken},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 70,
flutter: ║                                             "proteinFamilyKey": "chicken"
flutter: ║                                             "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                             "displayCategoryKey": "chicken"
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453ed4a2465a2f7a07153"
flutter: ║                                             "optionId": "6a2453ed4a2465a2f7a07153"
flutter: ║                                             "groupId": "6a2453e84a2465a2f7a07126"
flutter: ║                                             "key": "chicken_strips"
flutter: ║                                             "name": "Chicken Strips"
flutter: ║                                             "nameI18n": {ar: استربس, en: Chicken Strips},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 80,
flutter: ║                                             "proteinFamilyKey": "chicken"
flutter: ║                                             "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                             "displayCategoryKey": "chicken"
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453ed4a2465a2f7a07156"
flutter: ║                                             "optionId": "6a2453ed4a2465a2f7a07156"
flutter: ║                                             "groupId": "6a2453e84a2465a2f7a07126"
flutter: ║                                             "key": "grilled_chicken"
flutter: ║                                             "name": "Grilled Chicken"
flutter: ║                                             "nameI18n": {ar: دجاج مشوي, en: Grilled Chicken},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 90,
flutter: ║                                             "proteinFamilyKey": "chicken"
flutter: ║                                             "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                             "displayCategoryKey": "chicken"
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453ee4a2465a2f7a07159"
flutter: ║                                             "optionId": "6a2453ee4a2465a2f7a07159"
flutter: ║                                             "groupId": "6a2453e84a2465a2f7a07126"
flutter: ║                                             "key": "mexican_chicken"
flutter: ║                                             "name": "Mexican Chicken"
flutter: ║                                             "nameI18n": {ar: دجاج مكسيكي, en: Mexican Chicken},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 100
flutter: ║                                             "proteinFamilyKey": "chicken"
flutter: ║                                             "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                             "displayCategoryKey": "chicken"
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453ee4a2465a2f7a0715c"
flutter: ║                                             "optionId": "6a2453ee4a2465a2f7a0715c"
flutter: ║                                             "groupId": "6a2453e84a2465a2f7a07126"
flutter: ║                                             "key": "meatballs"
flutter: ║                                             "name": "Meatballs"
flutter: ║                                             "nameI18n": {ar: كرات لحم, en: Meatballs},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 300
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 110
flutter: ║                                             "proteinFamilyKey": "beef"
flutter: ║                                             "proteinFamilyNameI18n": {ar: لحم, en: Beef},
flutter: ║                                             "displayCategoryKey": "beef"
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453ef4a2465a2f7a0715f"
flutter: ║                                             "optionId": "6a2453ef4a2465a2f7a0715f"
flutter: ║                                             "groupId": "6a2453e84a2465a2f7a07126"
flutter: ║                                             "key": "beef_stroganoff"
flutter: ║                                             "name": "Beef Stroganoff"
flutter: ║                                             "nameI18n": {ar: لحم استرغانوف, en: Beef Stroganoff},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 300
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 120
flutter: ║                                             "proteinFamilyKey": "beef"
flutter: ║                                             "proteinFamilyNameI18n": {ar: لحم, en: Beef},
flutter: ║                                             "displayCategoryKey": "beef"
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453ea4a2465a2f7a07135"
flutter: ║                                             "optionId": "6a2453ea4a2465a2f7a07135"
flutter: ║                                             "groupId": "6a2453e84a2465a2f7a07126"
flutter: ║                                             "key": "beef_steak"
flutter: ║                                             "name": "Beef Steak"
flutter: ║                                             "nameI18n": {ar: ستيك لحم, en: Beef Steak},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 1600
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 130
flutter: ║                                             "proteinFamilyKey": "premium"
flutter: ║                                             "proteinFamilyNameI18n": {ar: بريميوم, en: Premium},
flutter: ║                                             "displayCategoryKey": "premium"
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453ea4a2465a2f7a07138"
flutter: ║                                             "optionId": "6a2453ea4a2465a2f7a07138"
flutter: ║                                             "groupId": "6a2453e84a2465a2f7a07126"
flutter: ║                                             "key": "shrimp"
flutter: ║                                             "name": "Shrimp"
flutter: ║                                             "nameI18n": {ar: جمبري, en: Shrimp},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 1600
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 140
flutter: ║                                             "proteinFamilyKey": "premium"
flutter: ║                                             "proteinFamilyNameI18n": {ar: بريميوم, en: Premium},
flutter: ║                                             "displayCategoryKey": "premium"
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453ef4a2465a2f7a07162"
flutter: ║                                             "optionId": "6a2453ef4a2465a2f7a07162"
flutter: ║                                             "groupId": "6a2453e84a2465a2f7a07126"
flutter: ║                                             "key": "fish_fillet"
flutter: ║                                             "name": "Fish Fillet"
flutter: ║                                             "nameI18n": {ar: سمك فيليه, en: Fish Fillet},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 150
flutter: ║                                             "proteinFamilyKey": "fish"
flutter: ║                                             "proteinFamilyNameI18n": {ar: سمك, en: Fish},
flutter: ║                                             "displayCategoryKey": "fish"
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453ea4a2465a2f7a0713b"
flutter: ║                                             "optionId": "6a2453ea4a2465a2f7a0713b"
flutter: ║                                             "groupId": "6a2453e84a2465a2f7a07126"
flutter: ║                                             "key": "salmon"
flutter: ║                                             "name": "Salmon"
flutter: ║                                             "nameI18n": {ar: سالمون, en: Salmon},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 1600
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 160
flutter: ║                                             "proteinFamilyKey": "premium"
flutter: ║                                             "proteinFamilyNameI18n": {ar: بريميوم, en: Premium},
flutter: ║                                             "displayCategoryKey": "premium"
flutter: ║                                        }
flutter: ║                                     ],
flutter: ║                                     "optionSections": [
flutter: ║                                        {
flutter: ║                                             "key": "chicken"
flutter: ║                                             "name": "Chicken"
flutter: ║                                             "nameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                             "optionKeys": [
flutter: ║                                                     chicken_fajita,
flutter: ║                                                     spicy_chicken,
flutter: ║                                                     italian_spiced_chicken,
flutter: ║                                                     chicken_tikka,
flutter: ║                                                     asian_chicken,
flutter: ║                                                     chicken_strips,
flutter: ║                                                     grilled_chicken,
flutter: ║                                                     mexican_chicken
flutter: ║                                             ],
flutter: ║                                             "optionIds": [
flutter: ║                                                     6a2453eb4a2465a2f7a07144,
flutter: ║                                                     6a2453ec4a2465a2f7a07147,
flutter: ║                                                     6a2453ec4a2465a2f7a0714a,
flutter: ║                                                     6a2453ec4a2465a2f7a0714d,
flutter: ║                                                     6a2453ed4a2465a2f7a07150,
flutter: ║                                                     6a2453ed4a2465a2f7a07153,
flutter: ║                                                     6a2453ed4a2465a2f7a07156,
flutter: ║                                                     6a2453ee4a2465a2f7a07159
flutter: ║                                             ]
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "key": "beef"
flutter: ║                                             "name": "Beef"
flutter: ║                                             "nameI18n": {ar: لحم, en: Beef},
flutter: ║                                             "optionKeys": [meatballs, beef_stroganoff]
flutter: ║                                             "optionIds": [6a2453ee4a2465a2f7a0715c, 6a2453ef4a2465a2f7a0715f]
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "key": "fish"
flutter: ║                                             "name": "Fish"
flutter: ║                                             "nameI18n": {ar: سمك, en: Fish},
flutter: ║                                             "optionKeys": [tuna, fish_fillet]
flutter: ║                                             "optionIds": [6a2453eb4a2465a2f7a07141, 6a2453ef4a2465a2f7a07162]
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "key": "eggs"
flutter: ║                                             "name": "Eggs"
flutter: ║                                             "nameI18n": {ar: بيض, en: Eggs},
flutter: ║                                             "optionKeys": [boiled_eggs]
flutter: ║                                             "optionIds": [6a2453ea4a2465a2f7a0713e]
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "key": "premium"
flutter: ║                                             "name": "Premium"
flutter: ║                                             "nameI18n": {ar: بريميوم, en: Premium},
flutter: ║                                             "optionKeys": [beef_steak, shrimp, salmon]
flutter: ║                                             "optionIds": [6a2453ea4a2465a2f7a07135, 6a2453ea4a2465a2f7a07138, 6a2453ea4a2465a2f7a0713b]
flutter: ║                                        }
flutter: ║                                     ]
flutter: ║                                },
flutter: ║                                {
flutter: ║                                     "id": "6a2453fc4a2465a2f7a071d1"
flutter: ║                                     "groupId": "6a2453fc4a2465a2f7a071d1"
flutter: ║                                     "key": "cheese_nuts",
flutter: ║                                     "name": "Cheese & Nuts",
flutter: ║                                     "nameI18n": {ar: الاجبان و المكسرات, en: Cheese & Nuts},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 2,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 50,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2453fc4a2465a2f7a071d4"
flutter: ║                                             "optionId": "6a2453fc4a2465a2f7a071d4"
flutter: ║                                             "groupId": "6a2453fc4a2465a2f7a071d1"
flutter: ║                                             "key": "cashew"
flutter: ║                                             "name": "Cashew"
flutter: ║                                             "nameI18n": {ar: كاجو, en: Cashew},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453fd4a2465a2f7a071d7"
flutter: ║                                             "optionId": "6a2453fd4a2465a2f7a071d7"
flutter: ║                                             "groupId": "6a2453fc4a2465a2f7a071d1"
flutter: ║                                             "key": "walnut"
flutter: ║                                             "name": "Walnut"
flutter: ║                                             "nameI18n": {ar: عين الجمل, en: Walnut},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 20
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453fd4a2465a2f7a071da"
flutter: ║                                             "optionId": "6a2453fd4a2465a2f7a071da"
flutter: ║                                             "groupId": "6a2453fc4a2465a2f7a071d1"
flutter: ║                                             "key": "sesame"
flutter: ║                                             "name": "Sesame"
flutter: ║                                             "nameI18n": {ar: سمسم, en: Sesame},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 30
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453fd4a2465a2f7a071dd"
flutter: ║                                             "optionId": "6a2453fd4a2465a2f7a071dd"
flutter: ║                                             "groupId": "6a2453fc4a2465a2f7a071d1"
flutter: ║                                             "key": "feta"
flutter: ║                                             "name": "Feta"
flutter: ║                                             "nameI18n": {ar: فيتا, en: Feta},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 40
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453fe4a2465a2f7a071e0"
flutter: ║                                             "optionId": "6a2453fe4a2465a2f7a071e0"
flutter: ║                                             "groupId": "6a2453fc4a2465a2f7a071d1"
flutter: ║                                             "key": "parmesan"
flutter: ║                                             "name": "Parmesan"
flutter: ║                                             "nameI18n": {ar: بارميزان, en: Parmesan},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 50
flutter: ║                                        }
flutter: ║                                     ]
flutter: ║                                },
flutter: ║                                {
flutter: ║                                     "id": "6a2454034a2465a2f7a0720a"
flutter: ║                                     "groupId": "6a2454034a2465a2f7a0720a"
flutter: ║                                     "key": "sauces",
flutter: ║                                     "name": "Sauces",
flutter: ║                                     "nameI18n": {ar: الصوصات, en: Sauces},
flutter: ║                                     "minSelections": 1,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": true,
flutter: ║                                     "sortOrder": 60,
flutter: ║                                     "ui": {displayStyle: radio_cards},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2454044a2465a2f7a0720d"
flutter: ║                                             "optionId": "6a2454044a2465a2f7a0720d"
flutter: ║                                             "groupId": "6a2454034a2465a2f7a0720a"
flutter: ║                                             "key": "ranch"
flutter: ║                                             "name": "Ranch"
flutter: ║                                             "nameI18n": {ar: رانش, en: Ranch},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454044a2465a2f7a07210"
flutter: ║                                             "optionId": "6a2454044a2465a2f7a07210"
flutter: ║                                             "groupId": "6a2454034a2465a2f7a0720a"
flutter: ║                                             "key": "spicy_ranch"
flutter: ║                                             "name": "Spicy Ranch"
flutter: ║                                             "nameI18n": {ar: سبايسي رانش, en: Spicy Ranch},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 20
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454054a2465a2f7a07213"
flutter: ║                                             "optionId": "6a2454054a2465a2f7a07213"
flutter: ║                                             "groupId": "6a2454034a2465a2f7a0720a"
flutter: ║                                             "key": "pesto_sauce"
flutter: ║                                             "name": "Pesto Sauce"
flutter: ║                                             "nameI18n": {ar: صوص بيستو, en: Pesto Sauce},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 30
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454054a2465a2f7a07216"
flutter: ║                                             "optionId": "6a2454054a2465a2f7a07216"
flutter: ║                                             "groupId": "6a2454034a2465a2f7a0720a"
flutter: ║                                             "key": "balsamic"
flutter: ║                                             "name": "Balsamic"
flutter: ║                                             "nameI18n": {ar: بالسميك, en: Balsamic},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 40
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454054a2465a2f7a07219"
flutter: ║                                             "optionId": "6a2454054a2465a2f7a07219"
flutter: ║                                             "groupId": "6a2454034a2465a2f7a0720a"
flutter: ║                                             "key": "caesar"
flutter: ║                                             "name": "Caesar"
flutter: ║                                             "nameI18n": {ar: سيزر, en: Caesar},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 50
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454064a2465a2f7a0721c"
flutter: ║                                             "optionId": "6a2454064a2465a2f7a0721c"
flutter: ║                                             "groupId": "6a2454034a2465a2f7a0720a"
flutter: ║                                             "key": "honey_mustard"
flutter: ║                                             "name": "Honey Mustard"
flutter: ║                                             "nameI18n": {ar: هاني ماستر, en: Honey Mustard},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 60
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454064a2465a2f7a0721f"
flutter: ║                                             "optionId": "6a2454064a2465a2f7a0721f"
flutter: ║                                             "groupId": "6a2454034a2465a2f7a0720a"
flutter: ║                                             "key": "yogurt_mint"
flutter: ║                                             "name": "Yogurt Mint"
flutter: ║                                             "nameI18n": {ar: زبادي بالنعناع, en: Yogurt Mint},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 70
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454074a2465a2f7a07222"
flutter: ║                                             "optionId": "6a2454074a2465a2f7a07222"
flutter: ║                                             "groupId": "6a2454034a2465a2f7a0720a"
flutter: ║                                             "key": "honey_garlic"
flutter: ║                                             "name": "Honey Garlic"
flutter: ║                                             "nameI18n": {ar: عسل بالثوم, en: Honey Garlic},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 80
flutter: ║                                        }
flutter: ║                                     ]
flutter: ║                                },
flutter: ║                                {
flutter: ║                                     "id": "6a2454084a2465a2f7a0722b"
flutter: ║                                     "groupId": "6a2454084a2465a2f7a0722b"
flutter: ║                                     "key": "extra_protein_50g"
flutter: ║                                     "name": "Extra Protein",
flutter: ║                                     "nameI18n": {ar: إضافة بروتين, en: Extra Protein},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 70,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2454084a2465a2f7a0722e"
flutter: ║                                             "optionId": "6a2454084a2465a2f7a0722e"
flutter: ║                                             "groupId": "6a2454084a2465a2f7a0722b"
flutter: ║                                             "key": "extra_chicken_50g"
flutter: ║                                             "name": "Extra 50g Chicken"
flutter: ║                                             "nameI18n": {ar: زيادة 50 جرام من الدجاج, en: Extra 50g Chicken},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 500
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454094a2465a2f7a07231"
flutter: ║                                             "optionId": "6a2454094a2465a2f7a07231"
flutter: ║                                             "groupId": "6a2454084a2465a2f7a0722b"
flutter: ║                                             "key": "extra_beef_steak_50g"
flutter: ║                                             "name": "Extra 50g Beef Steak"
flutter: ║                                             "nameI18n": {ar: زيادة 50 جرام ستيك لحم, en: Extra 50g Beef Steak},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 1000
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 20
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454094a2465a2f7a07234"
flutter: ║                                             "optionId": "6a2454094a2465a2f7a07234"
flutter: ║                                             "groupId": "6a2454084a2465a2f7a0722b"
flutter: ║                                             "key": "extra_salmon_50g"
flutter: ║                                             "name": "Extra 50g Salmon"
flutter: ║                                             "nameI18n": {ar: زيادة 50 جرام سالمون, en: Extra 50g Salmon},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 1000
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 30
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a24540a4a2465a2f7a07237"
flutter: ║                                             "optionId": "6a24540a4a2465a2f7a07237"
flutter: ║                                             "groupId": "6a2454084a2465a2f7a0722b"
flutter: ║                                             "key": "extra_shrimp_50g"
flutter: ║                                             "name": "Extra 50g Shrimp"
flutter: ║                                             "nameI18n": {ar: زيادة 50 جرام جمبري, en: Extra 50g Shrimp},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 1000
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 40
flutter: ║                                        }
flutter: ║                                     ]
flutter: ║                                }
flutter: ║                             ]
flutter: ║                        }
flutter: ║                     ]
flutter: ║                },
flutter: ║                {
flutter: ║                     "id": "6a2453e54a2465a2f7a0710b",
flutter: ║                     "key": "meals",
flutter: ║                     "name": "Meals",
flutter: ║                     "nameI18n": {ar: الوجبات, en: Meals},
flutter: ║                     "description": "",
flutter: ║                     "descriptionI18n": {ar: , en: },
flutter: ║                     "imageUrl": "",
flutter: ║                     "sortOrder": 20,
flutter: ║                     "products": [
flutter: ║                        {
flutter: ║                             "id": "6a2454934a2465a2f7a07692",
flutter: ║                             "key": "beef_steak_meal_150g",
flutter: ║                             "categoryId": "6a2453e54a2465a2f7a0710b",
flutter: ║                             "name": "Beef Steak Meal 150g",
flutter: ║                             "nameI18n": {ar: وجبة ستيك لحم 150 جرام, en: Beef Steak Meal 150g},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "product",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 3900,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 150,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 400,
flutter: ║                             "ui": {cardSize: medium},
flutter: ║                             "isCustomizable": true,
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2454084a2465a2f7a0722b"
flutter: ║                                     "groupId": "6a2454084a2465a2f7a0722b"
flutter: ║                                     "key": "extra_protein_50g"
flutter: ║                                     "name": "Extra Protein",
flutter: ║                                     "nameI18n": {ar: إضافة بروتين, en: Extra Protein},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2454094a2465a2f7a07231"
flutter: ║                                             "optionId": "6a2454094a2465a2f7a07231"
flutter: ║                                             "groupId": "6a2454084a2465a2f7a0722b"
flutter: ║                                             "key": "extra_beef_steak_50g"
flutter: ║                                             "name": "Extra 50g Beef Steak"
flutter: ║                                             "nameI18n": {ar: زيادة 50 جرام ستيك لحم, en: Extra 50g Beef Steak},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 1000
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        }
flutter: ║                                     ]
flutter: ║                                }
flutter: ║                             ]
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454954a2465a2f7a0769e",
flutter: ║                             "key": "salmon_meal_100g",
flutter: ║                             "categoryId": "6a2453e54a2465a2f7a0710b",
flutter: ║                             "name": "Salmon Meal 100g",
flutter: ║                             "nameI18n": {ar: وجبة سالمون 100 جرام, en: Salmon Meal 100g},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "product",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 3900,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 100,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 410,
flutter: ║                             "ui": {cardSize: medium},
flutter: ║                             "isCustomizable": true,
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2454084a2465a2f7a0722b"
flutter: ║                                     "groupId": "6a2454084a2465a2f7a0722b"
flutter: ║                                     "key": "extra_protein_50g"
flutter: ║                                     "name": "Extra Protein",
flutter: ║                                     "nameI18n": {ar: إضافة بروتين, en: Extra Protein},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2454094a2465a2f7a07234"
flutter: ║                                             "optionId": "6a2454094a2465a2f7a07234"
flutter: ║                                             "groupId": "6a2454084a2465a2f7a0722b"
flutter: ║                                             "key": "extra_salmon_50g"
flutter: ║                                             "name": "Extra 50g Salmon"
flutter: ║                                             "nameI18n": {ar: زيادة 50 جرام سالمون, en: Extra 50g Salmon},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 1000
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        }
flutter: ║                                     ]
flutter: ║                                }
flutter: ║                             ]
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454974a2465a2f7a076aa",
flutter: ║                             "key": "shrimp_meal_100g",
flutter: ║                             "categoryId": "6a2453e54a2465a2f7a0710b",
flutter: ║                             "name": "Shrimp Meal 100g",
flutter: ║                             "nameI18n": {ar: وجبة جمبري 100 جرام, en: Shrimp Meal 100g},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "product",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 3900,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 100,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 420,
flutter: ║                             "ui": {cardSize: medium},
flutter: ║                             "isCustomizable": true,
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2454084a2465a2f7a0722b"
flutter: ║                                     "groupId": "6a2454084a2465a2f7a0722b"
flutter: ║                                     "key": "extra_protein_50g"
flutter: ║                                     "name": "Extra Protein",
flutter: ║                                     "nameI18n": {ar: إضافة بروتين, en: Extra Protein},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a24540a4a2465a2f7a07237"
flutter: ║                                             "optionId": "6a24540a4a2465a2f7a07237"
flutter: ║                                             "groupId": "6a2454084a2465a2f7a0722b"
flutter: ║                                             "key": "extra_shrimp_50g"
flutter: ║                                             "name": "Extra 50g Shrimp"
flutter: ║                                             "nameI18n": {ar: زيادة 50 جرام جمبري, en: Extra 50g Shrimp},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 1000
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        }
flutter: ║                                     ]
flutter: ║                                }
flutter: ║                             ]
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454984a2465a2f7a076b6",
flutter: ║                             "key": "chicken_fajita_meal_100g",
flutter: ║                             "categoryId": "6a2453e54a2465a2f7a0710b",
flutter: ║                             "name": "Chicken Fajita Meal 100g",
flutter: ║                             "nameI18n": {ar: وجبة دجاج فاهيتا 100 جرام, en: Chicken Fajita Meal 100g},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "product",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1900,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 100,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 430,
flutter: ║                             "ui": {cardSize: medium},
flutter: ║                             "isCustomizable": true,
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2454084a2465a2f7a0722b"
flutter: ║                                     "groupId": "6a2454084a2465a2f7a0722b"
flutter: ║                                     "key": "extra_protein_50g"
flutter: ║                                     "name": "Extra Protein",
flutter: ║                                     "nameI18n": {ar: إضافة بروتين, en: Extra Protein},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a24540a4a2465a2f7a0723a"
flutter: ║                                             "optionId": "6a24540a4a2465a2f7a0723a"
flutter: ║                                             "groupId": "6a2454084a2465a2f7a0722b"
flutter: ║                                             "key": "extra_chicken_fajita_50g"
flutter: ║                                             "name": "Extra 50g Chicken Fajita"
flutter: ║                                             "nameI18n": {ar: زيادة 50 جرام دجاج فاهيتا, en: Extra 50g Chicken Fajita},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 500
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        }
flutter: ║                                     ]
flutter: ║                                }
flutter: ║                             ]
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a24549a4a2465a2f7a076c2",
flutter: ║                             "key": "beef_stroganoff_meal_100g",
flutter: ║                             "categoryId": "6a2453e54a2465a2f7a0710b",
flutter: ║                             "name": "Beef Stroganoff Meal 100g",
flutter: ║                             "nameI18n": {ar: وجبة لحم استرغانوف 100 جرام, en: Beef Stroganoff Meal 100g},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "product",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 2200,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 100,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 440,
flutter: ║                             "ui": {cardSize: medium},
flutter: ║                             "isCustomizable": true,
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2454084a2465a2f7a0722b"
flutter: ║                                     "groupId": "6a2454084a2465a2f7a0722b"
flutter: ║                                     "key": "extra_protein_50g"
flutter: ║                                     "name": "Extra Protein",
flutter: ║                                     "nameI18n": {ar: إضافة بروتين, en: Extra Protein},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a24540a4a2465a2f7a0723d"
flutter: ║                                             "optionId": "6a24540a4a2465a2f7a0723d"
flutter: ║                                             "groupId": "6a2454084a2465a2f7a0722b"
flutter: ║                                             "key": "extra_beef_stroganoff_50g"
flutter: ║                                             "name": "Extra 50g Beef Stroganoff"
flutter: ║                                             "nameI18n": {ar: زيادة 50 جرام لحم استرغانوف, en: Extra 50g Beef Stroganoff},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 600
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        }
flutter: ║                                     ]
flutter: ║                                }
flutter: ║                             ]
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a24549c4a2465a2f7a076ce",
flutter: ║                             "key": "mexican_chicken_meal_100g",
flutter: ║                             "categoryId": "6a2453e54a2465a2f7a0710b",
flutter: ║                             "name": "Mexican Chicken Meal 100g",
flutter: ║                             "nameI18n": {ar: وجبة دجاج مكسيكي 100 جرام, en: Mexican Chicken Meal 100g},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "product",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1900,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 100,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 450,
flutter: ║                             "ui": {cardSize: medium},
flutter: ║                             "isCustomizable": true,
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2454084a2465a2f7a0722b"
flutter: ║                                     "groupId": "6a2454084a2465a2f7a0722b"
flutter: ║                                     "key": "extra_protein_50g"
flutter: ║                                     "name": "Extra Protein",
flutter: ║                                     "nameI18n": {ar: إضافة بروتين, en: Extra Protein},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a24540b4a2465a2f7a07240"
flutter: ║                                             "optionId": "6a24540b4a2465a2f7a07240"
flutter: ║                                             "groupId": "6a2454084a2465a2f7a0722b"
flutter: ║                                             "key": "extra_mexican_chicken_50g"
flutter: ║                                             "name": "Extra 50g Mexican Chicken"
flutter: ║                                             "nameI18n": {ar: زيادة 50 جرام دجاج مكسيكي, en: Extra 50g Mexican Chicken},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 500
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        }
flutter: ║                                     ]
flutter: ║                                }
flutter: ║                             ]
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a24549d4a2465a2f7a076da",
flutter: ║                             "key": "grilled_chicken_meal_100g",
flutter: ║                             "categoryId": "6a2453e54a2465a2f7a0710b",
flutter: ║                             "name": "Grilled Chicken Meal 100g",
flutter: ║                             "nameI18n": {ar: وجبة دجاج مشوي 100 جرام, en: Grilled Chicken Meal 100g},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "product",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1900,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 100,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 460,
flutter: ║                             "ui": {cardSize: medium},
flutter: ║                             "isCustomizable": true,
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2454084a2465a2f7a0722b"
flutter: ║                                     "groupId": "6a2454084a2465a2f7a0722b"
flutter: ║                                     "key": "extra_protein_50g"
flutter: ║                                     "name": "Extra Protein",
flutter: ║                                     "nameI18n": {ar: إضافة بروتين, en: Extra Protein},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a24540b4a2465a2f7a07243"
flutter: ║                                             "optionId": "6a24540b4a2465a2f7a07243"
flutter: ║                                             "groupId": "6a2454084a2465a2f7a0722b"
flutter: ║                                             "key": "extra_grilled_chicken_50g"
flutter: ║                                             "name": "Extra 50g Grilled Chicken"
flutter: ║                                             "nameI18n": {ar: زيادة 50 جرام دجاج مشوي, en: Extra 50g Grilled Chicken},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 500
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        }
flutter: ║                                     ]
flutter: ║                                }
flutter: ║                             ]
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a24549f4a2465a2f7a076e6",
flutter: ║                             "key": "asian_chicken_meal_100g",
flutter: ║                             "categoryId": "6a2453e54a2465a2f7a0710b",
flutter: ║                             "name": "Asian Chicken Meal 100g",
flutter: ║                             "nameI18n": {ar: وجبة دجاج آسيوي 100 جرام, en: Asian Chicken Meal 100g},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "product",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1900,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 100,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 470,
flutter: ║                             "ui": {cardSize: medium},
flutter: ║                             "isCustomizable": true,
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2454084a2465a2f7a0722b"
flutter: ║                                     "groupId": "6a2454084a2465a2f7a0722b"
flutter: ║                                     "key": "extra_protein_50g"
flutter: ║                                     "name": "Extra Protein",
flutter: ║                                     "nameI18n": {ar: إضافة بروتين, en: Extra Protein},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a24540c4a2465a2f7a07246"
flutter: ║                                             "optionId": "6a24540c4a2465a2f7a07246"
flutter: ║                                             "groupId": "6a2454084a2465a2f7a0722b"
flutter: ║                                             "key": "extra_asian_chicken_50g"
flutter: ║                                             "name": "Extra 50g Asian Chicken"
flutter: ║                                             "nameI18n": {ar: زيادة 50 جرام دجاج آسيوي, en: Extra 50g Asian Chicken},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 500
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        }
flutter: ║                                     ]
flutter: ║                                }
flutter: ║                             ]
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454a14a2465a2f7a076f2",
flutter: ║                             "key": "chicken_tikka_meal_100g",
flutter: ║                             "categoryId": "6a2453e54a2465a2f7a0710b",
flutter: ║                             "name": "Chicken Tikka Meal 100g",
flutter: ║                             "nameI18n": {ar: وجبة دجاج تكا 100 جرام, en: Chicken Tikka Meal 100g},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "product",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1900,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 100,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 480,
flutter: ║                             "ui": {cardSize: medium},
flutter: ║                             "isCustomizable": true,
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2454084a2465a2f7a0722b"
flutter: ║                                     "groupId": "6a2454084a2465a2f7a0722b"
flutter: ║                                     "key": "extra_protein_50g"
flutter: ║                                     "name": "Extra Protein",
flutter: ║                                     "nameI18n": {ar: إضافة بروتين, en: Extra Protein},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a24540c4a2465a2f7a07249"
flutter: ║                                             "optionId": "6a24540c4a2465a2f7a07249"
flutter: ║                                             "groupId": "6a2454084a2465a2f7a0722b"
flutter: ║                                             "key": "extra_chicken_tikka_50g"
flutter: ║                                             "name": "Extra 50g Chicken Tikka"
flutter: ║                                             "nameI18n": {ar: زيادة 50 جرام دجاج تكا, en: Extra 50g Chicken Tikka},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 500
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        }
flutter: ║                                     ]
flutter: ║                                }
flutter: ║                             ]
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454a24a2465a2f7a076fe",
flutter: ║                             "key": "italian_spiced_chicken_meal_100g",
flutter: ║                             "categoryId": "6a2453e54a2465a2f7a0710b",
flutter: ║                             "name": "Italian Spiced Chicken Meal 100g",
flutter: ║                             "nameI18n": {ar: وجبة دجاج توابل إيطالية 100 جرام, en: Italian Spiced Chicken Meal 100g},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "product",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1900,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 100,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 490,
flutter: ║                             "ui": {cardSize: medium},
flutter: ║                             "isCustomizable": true,
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2454084a2465a2f7a0722b"
flutter: ║                                     "groupId": "6a2454084a2465a2f7a0722b"
flutter: ║                                     "key": "extra_protein_50g"
flutter: ║                                     "name": "Extra Protein",
flutter: ║                                     "nameI18n": {ar: إضافة بروتين, en: Extra Protein},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a24540c4a2465a2f7a0724c"
flutter: ║                                             "optionId": "6a24540c4a2465a2f7a0724c"
flutter: ║                                             "groupId": "6a2454084a2465a2f7a0722b"
flutter: ║                                             "key": "extra_italian_spiced_chicken_50g"
flutter: ║                                             "name": "Extra 50g Italian Spiced Chicken"
flutter: ║                                             "nameI18n": {ar: زيادة 50 جرام دجاج توابل إيطالية, en: Extra 50g Italian Spiced Chicken},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 500
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        }
flutter: ║                                     ]
flutter: ║                                }
flutter: ║                             ]
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454a34a2465a2f7a0770a",
flutter: ║                             "key": "spicy_chicken_meal_100g",
flutter: ║                             "categoryId": "6a2453e54a2465a2f7a0710b",
flutter: ║                             "name": "Spicy Chicken Meal 100g",
flutter: ║                             "nameI18n": {ar: وجبة دجاج سبايسي 100 جرام, en: Spicy Chicken Meal 100g},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "product",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1900,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 100,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 500,
flutter: ║                             "ui": {cardSize: medium},
flutter: ║                             "isCustomizable": true,
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2454084a2465a2f7a0722b"
flutter: ║                                     "groupId": "6a2454084a2465a2f7a0722b"
flutter: ║                                     "key": "extra_protein_50g"
flutter: ║                                     "name": "Extra Protein",
flutter: ║                                     "nameI18n": {ar: إضافة بروتين, en: Extra Protein},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a24540d4a2465a2f7a0724f"
flutter: ║                                             "optionId": "6a24540d4a2465a2f7a0724f"
flutter: ║                                             "groupId": "6a2454084a2465a2f7a0722b"
flutter: ║                                             "key": "extra_spicy_chicken_50g"
flutter: ║                                             "name": "Extra 50g Spicy Chicken"
flutter: ║                                             "nameI18n": {ar: زيادة 50 جرام دجاج سبايسي, en: Extra 50g Spicy Chicken},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 500
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        }
flutter: ║                                     ]
flutter: ║                                }
flutter: ║                             ]
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454a54a2465a2f7a07716",
flutter: ║                             "key": "creamy_chicken_meal_100g",
flutter: ║                             "categoryId": "6a2453e54a2465a2f7a0710b",
flutter: ║                             "name": "Creamy Chicken Meal 100g",
flutter: ║                             "nameI18n": {ar: وجبة دجاج كريمة 100 جرام, en: Creamy Chicken Meal 100g},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "product",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1900,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 100,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 510,
flutter: ║                             "ui": {cardSize: medium},
flutter: ║                             "isCustomizable": true,
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2454084a2465a2f7a0722b"
flutter: ║                                     "groupId": "6a2454084a2465a2f7a0722b"
flutter: ║                                     "key": "extra_protein_50g"
flutter: ║                                     "name": "Extra Protein",
flutter: ║                                     "nameI18n": {ar: إضافة بروتين, en: Extra Protein},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a24540d4a2465a2f7a07252"
flutter: ║                                             "optionId": "6a24540d4a2465a2f7a07252"
flutter: ║                                             "groupId": "6a2454084a2465a2f7a0722b"
flutter: ║                                             "key": "extra_creamy_chicken_50g"
flutter: ║                                             "name": "Extra 50g Creamy Chicken"
flutter: ║                                             "nameI18n": {ar: زيادة 50 جرام دجاج كريمة, en: Extra 50g Creamy Chicken},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 500
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        }
flutter: ║                                     ]
flutter: ║                                }
flutter: ║                             ]
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454a64a2465a2f7a07722",
flutter: ║                             "key": "chicken_okra_meal",
flutter: ║                             "categoryId": "6a2453e54a2465a2f7a0710b",
flutter: ║                             "name": "Chicken Okra Meal",
flutter: ║                             "nameI18n": {ar: وجبة دجاج بالبامية, en: Chicken Okra Meal},
flutter: ║                             "description": "Tender protein-rich chicken slow-cooked with fresh okra in a
flutter: ║                              healthy flavorful sauce."
flutter: ║                             "descriptionI18n": {
flutter: ║                                 "ar": "طعم البيت الأصيل بلمسة صحية خفيفة، قطع الدجاج الطرية والغ
flutter: ║                                  نية بالبروتين مطهوة ببطء مع البامية الطازجة بصلصة صحية غني
flutter: ║                                  ة بالنكهات."
flutter: ║                                 "en": "Tender protein-rich chicken slow-cooked with fresh okra i
flutter: ║                                  n a healthy flavorful sauce."
flutter: ║                            }
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "product",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1900,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 100,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 520,
flutter: ║                             "ui": {cardSize: medium},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454a74a2465a2f7a07729",
flutter: ║                             "key": "chicken_molokhia_meal",
flutter: ║                             "categoryId": "6a2453e54a2465a2f7a0710b",
flutter: ║                             "name": "Chicken Molokhia Meal",
flutter: ║                             "nameI18n": {ar: وجبة دجاج بالملوخية, en: Chicken Molokhia Meal},
flutter: ║                             "description": "Chicken with flavorful green molokhia prepared with a healthy
flutter: ║                               light touch."
flutter: ║                             "descriptionI18n": {
flutter: ║                                 "ar": "استمتع بنكهة صحية مختلفة دجاج مع الملوخية الخضراء اللذيذة
flutter: ║                                  ، محضرة بلمسة صحية تناسب نظامك الغذائي الصحي."
flutter: ║                                 "en": "Chicken with flavorful green molokhia prepared with a hea
flutter: ║                                  lthy light touch."
flutter: ║                            }
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "product",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1900,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 100,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 530,
flutter: ║                             "ui": {cardSize: medium},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454a84a2465a2f7a07730",
flutter: ║                             "key": "shish_tawook_meal",
flutter: ║                             "categoryId": "6a2453e54a2465a2f7a0710b",
flutter: ║                             "name": "Shish Tawook",
flutter: ║                             "nameI18n": {ar: شيش طاووق, en: Shish Tawook},
flutter: ║                             "description": "Grilled chicken cubes with a traditional marinade, tender tex
flutter: ║                              ture, and rich grilled protein flavor."
flutter: ║                             "descriptionI18n": {
flutter: ║                                 "ar": "مكعبات دجاج مشوية بتتبيلة تقليدية تمنحها طراوة ونكهة مشوي
flutter: ║                                  ة غنية بالبروتين."
flutter: ║                                 "en": "Grilled chicken cubes with a traditional marinade, tender
flutter: ║                                   texture, and rich grilled protein flavor."
flutter: ║                            }
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "product",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1900,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 100,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 540,
flutter: ║                             "ui": {cardSize: medium},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454a94a2465a2f7a07737",
flutter: ║                             "key": "bbq_chicken_meal",
flutter: ║                             "categoryId": "6a2453e54a2465a2f7a0710b",
flutter: ║                             "name": "BBQ Chicken",
flutter: ║                             "nameI18n": {ar: دجاج باربكيو, en: BBQ Chicken},
flutter: ║                             "description": "Healthy grilled chicken pieces seasoned carefully and topped
flutter: ║                              with a light smoky barbecue sauce."
flutter: ║                             "descriptionI18n": {
flutter: ║                                 "ar": "قطع دجاج مشوية وصحية متبلة بعناية ومغطاة بصوص باربيكيو غن
flutter: ║                                  ي بطعم مدخن خفيف يمنحها نكهة لذيذة ومتوازنة"
flutter: ║                                 "en": "Healthy grilled chicken pieces seasoned carefully and top
flutter: ║                                  ped with a light smoky barbecue sauce."
flutter: ║                            }
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "product",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1900,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 100,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 550,
flutter: ║                             "ui": {cardSize: medium},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454aa4a2465a2f7a0773e",
flutter: ║                             "key": "chicken_65_meal",
flutter: ║                             "categoryId": "6a2453e54a2465a2f7a0710b",
flutter: ║                             "name": "Chicken 65",
flutter: ║                             "nameI18n": {ar: دجاج 65, en: Chicken 65},
flutter: ║                             "description": "Chicken pieces seasoned with distinctive spicy Indian-style f
flutter: ║                              lavors in a healthier preparation."
flutter: ║                             "descriptionI18n": {
flutter: ║                                 "ar": "قطع دجاج متبلة بتوابل مميزة بنكهة حارة بطريقة صحية ولمسة
flutter: ║                                  مقرمشة بطابع هندي شهي"
flutter: ║                                 "en": "Chicken pieces seasoned with distinctive spicy Indian-sty
flutter: ║                                  le flavors in a healthier preparation."
flutter: ║                            }
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "product",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1900,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 100,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 560,
flutter: ║                             "ui": {cardSize: medium},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454ab4a2465a2f7a07745",
flutter: ║                             "key": "tuna_meal_100g",
flutter: ║                             "categoryId": "6a2453e54a2465a2f7a0710b",
flutter: ║                             "name": "Tuna Meal 100g",
flutter: ║                             "nameI18n": {ar: وجبة تونا 100 جرام, en: Tuna Meal 100g},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "product",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1900,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 100,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 570,
flutter: ║                             "ui": {cardSize: medium},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454ab4a2465a2f7a0774c",
flutter: ║                             "key": "fish_fillet_meal_100g",
flutter: ║                             "categoryId": "6a2453e54a2465a2f7a0710b",
flutter: ║                             "name": "Fish Fillet Meal 100g",
flutter: ║                             "nameI18n": {ar: وجبة سمك فيليه 100 جرام, en: Fish Fillet Meal 100g},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "product",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1900,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 100,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 580,
flutter: ║                             "ui": {cardSize: medium},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        }
flutter: ║                     ]
flutter: ║                },
flutter: ║                {
flutter: ║                     "id": "6a2453e54a2465a2f7a0710e",
flutter: ║                     "key": "carbs",
flutter: ║                     "name": "Carbs",
flutter: ║                     "nameI18n": {ar: الكارب, en: Carbs},
flutter: ║                     "description": "",
flutter: ║                     "descriptionI18n": {ar: , en: },
flutter: ║                     "imageUrl": "",
flutter: ║                     "sortOrder": 30,
flutter: ║                     "products": [
flutter: ║                        {
flutter: ║                             "id": "6a2454ac4a2465a2f7a07753",
flutter: ║                             "key": "white_rice",
flutter: ║                             "categoryId": "6a2453e54a2465a2f7a0710e",
flutter: ║                             "name": "White Rice 150g",
flutter: ║                             "nameI18n": {ar: رز أبيض من 150 جرام, en: White Rice 150g},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "product",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 700,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 150,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 590,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454ac4a2465a2f7a07758",
flutter: ║                             "key": "turmeric_rice",
flutter: ║                             "categoryId": "6a2453e54a2465a2f7a0710e",
flutter: ║                             "name": "Turmeric Rice 150g",
flutter: ║                             "nameI18n": {ar: رز بالكركم من 150 جرام, en: Turmeric Rice 150g},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "product",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 700,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 150,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 600,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454ad4a2465a2f7a0775d",
flutter: ║                             "key": "alfredo_pasta",
flutter: ║                             "categoryId": "6a2453e54a2465a2f7a0710e",
flutter: ║                             "name": "Alfredo Pasta 150g",
flutter: ║                             "nameI18n": {ar: باستا الفريدو 150 جرام, en: Alfredo Pasta 150g},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "product",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 700,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 150,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 610,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454ad4a2465a2f7a07762",
flutter: ║                             "key": "red_sauce_pasta",
flutter: ║                             "categoryId": "6a2453e54a2465a2f7a0710e",
flutter: ║                             "name": "Red Sauce Pasta 150g",
flutter: ║                             "nameI18n": {ar: باستا صوص احمر 150 جرام, en: Red Sauce Pasta 150g},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "product",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 700,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 150,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 620,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454ae4a2465a2f7a07767",
flutter: ║                             "key": "roasted_potato",
flutter: ║                             "categoryId": "6a2453e54a2465a2f7a0710e",
flutter: ║                             "name": "Roasted Potato 150g",
flutter: ║                             "nameI18n": {ar: بطاطا مشوية 150 جرام, en: Roasted Potato 150g},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "product",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 700,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 150,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 630,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454ae4a2465a2f7a0776c",
flutter: ║                             "key": "sweet_potato",
flutter: ║                             "categoryId": "6a2453e54a2465a2f7a0710e",
flutter: ║                             "name": "Sweet Potato 150g",
flutter: ║                             "nameI18n": {ar: بطاطا حلوة 150 جرام, en: Sweet Potato 150g},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "product",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 700,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 150,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 640,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454af4a2465a2f7a07771",
flutter: ║                             "key": "grilled_mixed_vegetables",
flutter: ║                             "categoryId": "6a2453e54a2465a2f7a0710e",
flutter: ║                             "name": "Grilled Mixed Vegetables 150g",
flutter: ║                             "nameI18n": {ar: خضار مشكلة مشوية 150 جرام, en: Grilled Mixed Vegetables 150g},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "product",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 700,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 150,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 650,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        }
flutter: ║                     ]
flutter: ║                },
flutter: ║                {
flutter: ║                     "id": "6a2453e54a2465a2f7a07111",
flutter: ║                     "key": "light_options",
flutter: ║                     "name": "Light Options",
flutter: ║                     "nameI18n": {ar: اختيارات خفيفة, en: Light Options},
flutter: ║                     "description": "",
flutter: ║                     "descriptionI18n": {ar: , en: },
flutter: ║                     "imageUrl": "",
flutter: ║                     "sortOrder": 40,
flutter: ║                     "products": [
flutter: ║                        {
flutter: ║                             "id": "6a2454654a2465a2f7a07524",
flutter: ║                             "key": "green_salad",
flutter: ║                             "categoryId": "6a2453e54a2465a2f7a07111",
flutter: ║                             "name": "Green Salad - 100g",
flutter: ║                             "nameI18n": {ar: سلطة خضراء - 100 جرام, en: Green Salad - 100g},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "green_salad",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1500,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 100,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 50,
flutter: ║                             "ui": {cardSize: medium},
flutter: ║                             "isCustomizable": true,
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2453f34a2465a2f7a07186"
flutter: ║                                     "groupId": "6a2453f34a2465a2f7a07186"
flutter: ║                                     "key": "leafy_greens",
flutter: ║                                     "name": "Leafy Greens",
flutter: ║                                     "nameI18n": {ar: ورقيات, en: Leafy Greens},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 2,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f44a2465a2f7a07189"
flutter: ║                                             "optionId": "6a2453f44a2465a2f7a07189"
flutter: ║                                             "groupId": "6a2453f34a2465a2f7a07186"
flutter: ║                                             "key": "lettuce"
flutter: ║                                             "name": "Lettuce"
flutter: ║                                             "nameI18n": {ar: خس, en: Lettuce},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f44a2465a2f7a0718c"
flutter: ║                                             "optionId": "6a2453f44a2465a2f7a0718c"
flutter: ║                                             "groupId": "6a2453f34a2465a2f7a07186"
flutter: ║                                             "key": "arugula"
flutter: ║                                             "name": "Arugula"
flutter: ║                                             "nameI18n": {ar: جرجير, en: Arugula},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 20
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f44a2465a2f7a0718f"
flutter: ║                                             "optionId": "6a2453f44a2465a2f7a0718f"
flutter: ║                                             "groupId": "6a2453f34a2465a2f7a07186"
flutter: ║                                             "key": "cabbage"
flutter: ║                                             "name": "Cabbage"
flutter: ║                                             "nameI18n": {ar: ملفوف, en: Cabbage},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 30
flutter: ║                                        }
flutter: ║                                     ]
flutter: ║                                },
flutter: ║                                {
flutter: ║                                     "id": "6a2453f54a2465a2f7a07195"
flutter: ║                                     "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                     "key": "vegetables_legumes"
flutter: ║                                     "name": "Vegetables & Legumes"
flutter: ║                                     "nameI18n": {ar: خضراوات وبقوليات, en: Vegetables & Legumes},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 19,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 20,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f54a2465a2f7a07198"
flutter: ║                                             "optionId": "6a2453f54a2465a2f7a07198"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "tomato"
flutter: ║                                             "name": "Tomato"
flutter: ║                                             "nameI18n": {ar: طماطم, en: Tomato},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f64a2465a2f7a0719b"
flutter: ║                                             "optionId": "6a2453f64a2465a2f7a0719b"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "carrot"
flutter: ║                                             "name": "Carrot"
flutter: ║                                             "nameI18n": {ar: جزر, en: Carrot},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 20
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f64a2465a2f7a0719e"
flutter: ║                                             "optionId": "6a2453f64a2465a2f7a0719e"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "cucumber"
flutter: ║                                             "name": "Cucumber"
flutter: ║                                             "nameI18n": {ar: خيار, en: Cucumber},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 30
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f74a2465a2f7a071a1"
flutter: ║                                             "optionId": "6a2453f74a2465a2f7a071a1"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "corn"
flutter: ║                                             "name": "Corn"
flutter: ║                                             "nameI18n": {ar: ذرة, en: Corn},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 40
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f74a2465a2f7a071a4"
flutter: ║                                             "optionId": "6a2453f74a2465a2f7a071a4"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "hummus"
flutter: ║                                             "name": "Hummus"
flutter: ║                                             "nameI18n": {ar: حمص, en: Hummus},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 50
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f74a2465a2f7a071a7"
flutter: ║                                             "optionId": "6a2453f74a2465a2f7a071a7"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "jalapeno"
flutter: ║                                             "name": "Jalapeno"
flutter: ║                                             "nameI18n": {ar: هالبينو, en: Jalapeno},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 60
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f84a2465a2f7a071aa"
flutter: ║                                             "optionId": "6a2453f84a2465a2f7a071aa"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "red_beans"
flutter: ║                                             "name": "Red Beans"
flutter: ║                                             "nameI18n": {ar: فاصوليا حمراء, en: Red Beans},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 70
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f84a2465a2f7a071ad"
flutter: ║                                             "optionId": "6a2453f84a2465a2f7a071ad"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "beetroot"
flutter: ║                                             "name": "Beetroot"
flutter: ║                                             "nameI18n": {ar: بنجر, en: Beetroot},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 80
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f84a2465a2f7a071b0"
flutter: ║                                             "optionId": "6a2453f84a2465a2f7a071b0"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "hot_pepper"
flutter: ║                                             "name": "Hot Pepper"
flutter: ║                                             "nameI18n": {ar: فلفل حار, en: Hot Pepper},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 90
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f84a2465a2f7a071b3"
flutter: ║                                             "optionId": "6a2453f84a2465a2f7a071b3"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "coriander"
flutter: ║                                             "name": "Coriander"
flutter: ║                                             "nameI18n": {ar: كزبرة, en: Coriander},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 100
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f94a2465a2f7a071b6"
flutter: ║                                             "optionId": "6a2453f94a2465a2f7a071b6"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "mushroom"
flutter: ║                                             "name": "Mushroom"
flutter: ║                                             "nameI18n": {ar: فطر, en: Mushroom},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 110
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f94a2465a2f7a071b9"
flutter: ║                                             "optionId": "6a2453f94a2465a2f7a071b9"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "broccoli"
flutter: ║                                             "name": "Broccoli"
flutter: ║                                             "nameI18n": {ar: بروكلي, en: Broccoli},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 120
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453f94a2465a2f7a071bc"
flutter: ║                                             "optionId": "6a2453f94a2465a2f7a071bc"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "salad_grilled_mixed_vegetables"
flutter: ║                                             "name": "Grilled Mixed Vegetables"
flutter: ║                                             "nameI18n": {ar: خضار مشكل مشوي, en: Grilled Mixed Vegetables},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 130
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453fa4a2465a2f7a071bf"
flutter: ║                                             "optionId": "6a2453fa4a2465a2f7a071bf"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "red_onion"
flutter: ║                                             "name": "Red Onion"
flutter: ║                                             "nameI18n": {ar: بصل احمر, en: Red Onion},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 140
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453fa4a2465a2f7a071c2"
flutter: ║                                             "optionId": "6a2453fa4a2465a2f7a071c2"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "green_onion"
flutter: ║                                             "name": "Green Onion"
flutter: ║                                             "nameI18n": {ar: بصل اخضر, en: Green Onion},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 150
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453fa4a2465a2f7a071c5"
flutter: ║                                             "optionId": "6a2453fa4a2465a2f7a071c5"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "green_olives"
flutter: ║                                             "name": "Green Olives"
flutter: ║                                             "nameI18n": {ar: زيتون اخضر, en: Green Olives},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 160
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453fb4a2465a2f7a071c8"
flutter: ║                                             "optionId": "6a2453fb4a2465a2f7a071c8"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "black_olives"
flutter: ║                                             "name": "Black Olives"
flutter: ║                                             "nameI18n": {ar: زيتون اسود, en: Black Olives},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 170
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453fb4a2465a2f7a071cb"
flutter: ║                                             "optionId": "6a2453fb4a2465a2f7a071cb"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "mint"
flutter: ║                                             "name": "Mint"
flutter: ║                                             "nameI18n": {ar: نعناع, en: Mint},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 180
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453fc4a2465a2f7a071ce"
flutter: ║                                             "optionId": "6a2453fc4a2465a2f7a071ce"
flutter: ║                                             "groupId": "6a2453f54a2465a2f7a07195"
flutter: ║                                             "key": "pickled_onion"
flutter: ║                                             "name": "Pickled Onion"
flutter: ║                                             "nameI18n": {ar: بصل مخلل, en: Pickled Onion},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 190
flutter: ║                                        }
flutter: ║                                     ]
flutter: ║                                },
flutter: ║                                {
flutter: ║                                     "id": "6a2454034a2465a2f7a0720a"
flutter: ║                                     "groupId": "6a2454034a2465a2f7a0720a"
flutter: ║                                     "key": "sauces",
flutter: ║                                     "name": "Sauces",
flutter: ║                                     "nameI18n": {ar: الصوصات, en: Sauces},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 30,
flutter: ║                                     "ui": {displayStyle: radio_cards},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2454044a2465a2f7a0720d"
flutter: ║                                             "optionId": "6a2454044a2465a2f7a0720d"
flutter: ║                                             "groupId": "6a2454034a2465a2f7a0720a"
flutter: ║                                             "key": "ranch"
flutter: ║                                             "name": "Ranch"
flutter: ║                                             "nameI18n": {ar: رانش, en: Ranch},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454044a2465a2f7a07210"
flutter: ║                                             "optionId": "6a2454044a2465a2f7a07210"
flutter: ║                                             "groupId": "6a2454034a2465a2f7a0720a"
flutter: ║                                             "key": "spicy_ranch"
flutter: ║                                             "name": "Spicy Ranch"
flutter: ║                                             "nameI18n": {ar: سبايسي رانش, en: Spicy Ranch},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 20
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454054a2465a2f7a07213"
flutter: ║                                             "optionId": "6a2454054a2465a2f7a07213"
flutter: ║                                             "groupId": "6a2454034a2465a2f7a0720a"
flutter: ║                                             "key": "pesto_sauce"
flutter: ║                                             "name": "Pesto Sauce"
flutter: ║                                             "nameI18n": {ar: صوص بيستو, en: Pesto Sauce},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 30
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454054a2465a2f7a07216"
flutter: ║                                             "optionId": "6a2454054a2465a2f7a07216"
flutter: ║                                             "groupId": "6a2454034a2465a2f7a0720a"
flutter: ║                                             "key": "balsamic"
flutter: ║                                             "name": "Balsamic"
flutter: ║                                             "nameI18n": {ar: بالسميك, en: Balsamic},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 40
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454054a2465a2f7a07219"
flutter: ║                                             "optionId": "6a2454054a2465a2f7a07219"
flutter: ║                                             "groupId": "6a2454034a2465a2f7a0720a"
flutter: ║                                             "key": "caesar"
flutter: ║                                             "name": "Caesar"
flutter: ║                                             "nameI18n": {ar: سيزر, en: Caesar},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 50
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454064a2465a2f7a0721c"
flutter: ║                                             "optionId": "6a2454064a2465a2f7a0721c"
flutter: ║                                             "groupId": "6a2454034a2465a2f7a0720a"
flutter: ║                                             "key": "honey_mustard"
flutter: ║                                             "name": "Honey Mustard"
flutter: ║                                             "nameI18n": {ar: هاني ماستر, en: Honey Mustard},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 60
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454064a2465a2f7a0721f"
flutter: ║                                             "optionId": "6a2454064a2465a2f7a0721f"
flutter: ║                                             "groupId": "6a2454034a2465a2f7a0720a"
flutter: ║                                             "key": "yogurt_mint"
flutter: ║                                             "name": "Yogurt Mint"
flutter: ║                                             "nameI18n": {ar: زبادي بالنعناع, en: Yogurt Mint},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 70
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454074a2465a2f7a07222"
flutter: ║                                             "optionId": "6a2454074a2465a2f7a07222"
flutter: ║                                             "groupId": "6a2454034a2465a2f7a0720a"
flutter: ║                                             "key": "honey_garlic"
flutter: ║                                             "name": "Honey Garlic"
flutter: ║                                             "nameI18n": {ar: عسل بالثوم, en: Honey Garlic},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 80
flutter: ║                                        }
flutter: ║                                     ]
flutter: ║                                }
flutter: ║                             ]
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454734a2465a2f7a0758f",
flutter: ║                             "key": "fruit_salad",
flutter: ║                             "categoryId": "6a2453e54a2465a2f7a07111",
flutter: ║                             "name": "Fruit Salad – 150g",
flutter: ║                             "nameI18n": {ar: سلطة فواكه – 150 جرام, en: Fruit Salad – 150g},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "fruit_salad",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1700,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 150,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 60,
flutter: ║                             "ui": {cardSize: medium},
flutter: ║                             "isCustomizable": true,
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                     "groupId": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                     "key": "fruits",
flutter: ║                                     "name": "Fruits",
flutter: ║                                     "nameI18n": {ar: فواكه, en: Fruits},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 9,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2453ff4a2465a2f7a071ec"
flutter: ║                                             "optionId": "6a2453ff4a2465a2f7a071ec"
flutter: ║                                             "groupId": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                             "key": "mango"
flutter: ║                                             "name": "Mango"
flutter: ║                                             "nameI18n": {ar: مانجا, en: Mango},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454004a2465a2f7a071ef"
flutter: ║                                             "optionId": "6a2454004a2465a2f7a071ef"
flutter: ║                                             "groupId": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                             "key": "green_apple"
flutter: ║                                             "name": "Green Apple"
flutter: ║                                             "nameI18n": {ar: تفاح اخضر, en: Green Apple},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 20
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454004a2465a2f7a071f2"
flutter: ║                                             "optionId": "6a2454004a2465a2f7a071f2"
flutter: ║                                             "groupId": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                             "key": "pomegranate"
flutter: ║                                             "name": "Pomegranate"
flutter: ║                                             "nameI18n": {ar: رمان, en: Pomegranate},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 30
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454004a2465a2f7a071f5"
flutter: ║                                             "optionId": "6a2454004a2465a2f7a071f5"
flutter: ║                                             "groupId": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                             "key": "strawberry"
flutter: ║                                             "name": "Strawberry"
flutter: ║                                             "nameI18n": {ar: فراولة, en: Strawberry},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 40
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454014a2465a2f7a071f8"
flutter: ║                                             "optionId": "6a2454014a2465a2f7a071f8"
flutter: ║                                             "groupId": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                             "key": "blueberry"
flutter: ║                                             "name": "Blueberry"
flutter: ║                                             "nameI18n": {ar: توت ازرق, en: Blueberry},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 50
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454014a2465a2f7a071fb"
flutter: ║                                             "optionId": "6a2454014a2465a2f7a071fb"
flutter: ║                                             "groupId": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                             "key": "raspberry"
flutter: ║                                             "name": "Raspberry"
flutter: ║                                             "nameI18n": {ar: توت احمر, en: Raspberry},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 60
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454024a2465a2f7a071fe"
flutter: ║                                             "optionId": "6a2454024a2465a2f7a071fe"
flutter: ║                                             "groupId": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                             "key": "watermelon"
flutter: ║                                             "name": "Watermelon"
flutter: ║                                             "nameI18n": {ar: بطيخ, en: Watermelon},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 70
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454024a2465a2f7a07201"
flutter: ║                                             "optionId": "6a2454024a2465a2f7a07201"
flutter: ║                                             "groupId": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                             "key": "cantaloupe"
flutter: ║                                             "name": "Cantaloupe"
flutter: ║                                             "nameI18n": {ar: شمام, en: Cantaloupe},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 80
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454024a2465a2f7a07204"
flutter: ║                                             "optionId": "6a2454024a2465a2f7a07204"
flutter: ║                                             "groupId": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                             "key": "dates"
flutter: ║                                             "name": "Dates"
flutter: ║                                             "nameI18n": {ar: تمر, en: Dates},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 90
flutter: ║                                        }
flutter: ║                                     ]
flutter: ║                                },
flutter: ║                                {
flutter: ║                                     "id": "6a2454034a2465a2f7a0720a"
flutter: ║                                     "groupId": "6a2454034a2465a2f7a0720a"
flutter: ║                                     "key": "sauces",
flutter: ║                                     "name": "Sauces",
flutter: ║                                     "nameI18n": {ar: الصوصات, en: Sauces},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 20,
flutter: ║                                     "ui": {displayStyle: radio_cards},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2454074a2465a2f7a07225"
flutter: ║                                             "optionId": "6a2454074a2465a2f7a07225"
flutter: ║                                             "groupId": "6a2454034a2465a2f7a0720a"
flutter: ║                                             "key": "honey"
flutter: ║                                             "name": "Honey"
flutter: ║                                             "nameI18n": {ar: عسل, en: Honey},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        }
flutter: ║                                     ]
flutter: ║                                }
flutter: ║                             ]
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454794a2465a2f7a075ba",
flutter: ║                             "key": "greek_yogurt",
flutter: ║                             "categoryId": "6a2453e54a2465a2f7a07111",
flutter: ║                             "name": "Greek Yogurt - 200g",
flutter: ║                             "nameI18n": {ar: زبادي يوناني - 200 جرام, en: Greek Yogurt - 200g},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "greek_yogurt",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1700,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 200,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 70,
flutter: ║                             "ui": {cardSize: medium},
flutter: ║                             "isCustomizable": true,
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                     "groupId": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                     "key": "fruits",
flutter: ║                                     "name": "Fruits",
flutter: ║                                     "nameI18n": {ar: فواكه, en: Fruits},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 5,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2453ff4a2465a2f7a071ec"
flutter: ║                                             "optionId": "6a2453ff4a2465a2f7a071ec"
flutter: ║                                             "groupId": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                             "key": "mango"
flutter: ║                                             "name": "Mango"
flutter: ║                                             "nameI18n": {ar: مانجا, en: Mango},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454004a2465a2f7a071ef"
flutter: ║                                             "optionId": "6a2454004a2465a2f7a071ef"
flutter: ║                                             "groupId": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                             "key": "green_apple"
flutter: ║                                             "name": "Green Apple"
flutter: ║                                             "nameI18n": {ar: تفاح اخضر, en: Green Apple},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 20
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454004a2465a2f7a071f2"
flutter: ║                                             "optionId": "6a2454004a2465a2f7a071f2"
flutter: ║                                             "groupId": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                             "key": "pomegranate"
flutter: ║                                             "name": "Pomegranate"
flutter: ║                                             "nameI18n": {ar: رمان, en: Pomegranate},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 30
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454004a2465a2f7a071f5"
flutter: ║                                             "optionId": "6a2454004a2465a2f7a071f5"
flutter: ║                                             "groupId": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                             "key": "strawberry"
flutter: ║                                             "name": "Strawberry"
flutter: ║                                             "nameI18n": {ar: فراولة, en: Strawberry},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 40
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454014a2465a2f7a071f8"
flutter: ║                                             "optionId": "6a2454014a2465a2f7a071f8"
flutter: ║                                             "groupId": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                             "key": "blueberry"
flutter: ║                                             "name": "Blueberry"
flutter: ║                                             "nameI18n": {ar: توت ازرق, en: Blueberry},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 50
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454014a2465a2f7a071fb"
flutter: ║                                             "optionId": "6a2454014a2465a2f7a071fb"
flutter: ║                                             "groupId": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                             "key": "raspberry"
flutter: ║                                             "name": "Raspberry"
flutter: ║                                             "nameI18n": {ar: توت احمر, en: Raspberry},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 60
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454024a2465a2f7a071fe"
flutter: ║                                             "optionId": "6a2454024a2465a2f7a071fe"
flutter: ║                                             "groupId": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                             "key": "watermelon"
flutter: ║                                             "name": "Watermelon"
flutter: ║                                             "nameI18n": {ar: بطيخ, en: Watermelon},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 70
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454024a2465a2f7a07201"
flutter: ║                                             "optionId": "6a2454024a2465a2f7a07201"
flutter: ║                                             "groupId": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                             "key": "cantaloupe"
flutter: ║                                             "name": "Cantaloupe"
flutter: ║                                             "nameI18n": {ar: شمام, en: Cantaloupe},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 80
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2454024a2465a2f7a07204"
flutter: ║                                             "optionId": "6a2454024a2465a2f7a07204"
flutter: ║                                             "groupId": "6a2453ff4a2465a2f7a071e9"
flutter: ║                                             "key": "dates"
flutter: ║                                             "name": "Dates"
flutter: ║                                             "nameI18n": {ar: تمر, en: Dates},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 90
flutter: ║                                        }
flutter: ║                                     ]
flutter: ║                                },
flutter: ║                                {
flutter: ║                                     "id": "6a2454034a2465a2f7a0720a"
flutter: ║                                     "groupId": "6a2454034a2465a2f7a0720a"
flutter: ║                                     "key": "sauces",
flutter: ║                                     "name": "Sauces",
flutter: ║                                     "nameI18n": {ar: الصوصات, en: Sauces},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 20,
flutter: ║                                     "ui": {displayStyle: radio_cards},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2454074a2465a2f7a07225"
flutter: ║                                             "optionId": "6a2454074a2465a2f7a07225"
flutter: ║                                             "groupId": "6a2454034a2465a2f7a0720a"
flutter: ║                                             "key": "honey"
flutter: ║                                             "name": "Honey"
flutter: ║                                             "nameI18n": {ar: عسل, en: Honey},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        }
flutter: ║                                     ]
flutter: ║                                },
flutter: ║                                {
flutter: ║                                     "id": "6a2453fc4a2465a2f7a071d1"
flutter: ║                                     "groupId": "6a2453fc4a2465a2f7a071d1"
flutter: ║                                     "key": "cheese_nuts",
flutter: ║                                     "name": "Cheese & Nuts",
flutter: ║                                     "nameI18n": {ar: الاجبان و المكسرات, en: Cheese & Nuts},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 3,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 30,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2453fc4a2465a2f7a071d4"
flutter: ║                                             "optionId": "6a2453fc4a2465a2f7a071d4"
flutter: ║                                             "groupId": "6a2453fc4a2465a2f7a071d1"
flutter: ║                                             "key": "cashew"
flutter: ║                                             "name": "Cashew"
flutter: ║                                             "nameI18n": {ar: كاجو, en: Cashew},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453fd4a2465a2f7a071d7"
flutter: ║                                             "optionId": "6a2453fd4a2465a2f7a071d7"
flutter: ║                                             "groupId": "6a2453fc4a2465a2f7a071d1"
flutter: ║                                             "key": "walnut"
flutter: ║                                             "name": "Walnut"
flutter: ║                                             "nameI18n": {ar: عين الجمل, en: Walnut},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 20
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2453fd4a2465a2f7a071da"
flutter: ║                                             "optionId": "6a2453fd4a2465a2f7a071da"
flutter: ║                                             "groupId": "6a2453fc4a2465a2f7a071d1"
flutter: ║                                             "key": "sesame"
flutter: ║                                             "name": "Sesame"
flutter: ║                                             "nameI18n": {ar: سمسم, en: Sesame},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 30
flutter: ║                                        }
flutter: ║                                     ]
flutter: ║                                }
flutter: ║                             ]
flutter: ║                        }
flutter: ║                     ]
flutter: ║                },
flutter: ║                {
flutter: ║                     "id": "6a2453e64a2465a2f7a07114",
flutter: ║                     "key": "cold_sandwiches",
flutter: ║                     "name": "Cold Sandwiches",
flutter: ║                     "nameI18n": {ar: الساندويتش البارد, en: Cold Sandwiches},
flutter: ║                     "description": "",
flutter: ║                     "descriptionI18n": {ar: , en: },
flutter: ║                     "imageUrl": "",
flutter: ║                     "sortOrder": 50,
flutter: ║                     "products": [
flutter: ║                        {
flutter: ║                             "id": "6a2454814a2465a2f7a075fc",
flutter: ║                             "key": "beef_burger_sandwich",
flutter: ║                             "categoryId": "6a2453e64a2465a2f7a07114",
flutter: ║                             "name": "Beef Burger",
flutter: ║                             "nameI18n": {ar: برجر لحم, en: Beef Burger},
flutter: ║                             "description": "Juicy grilled beef patty in a healthy burger bun with fresh v
flutter: ║                              egetables and fat-free cheese."
flutter: ║                             "descriptionI18n": {
flutter: ║                                 "ar": "شريحة لحم مشوية وغنية بالعصارة، داخل خبز البرجر الصحي مع
flutter: ║                                  الخضار الطازجة والجبن الخالي من الدسم. الوجبة المثالية لتس
flutter: ║                                  تمتع بطعم البرجر الكلاسيكي وتحافظ على نظامك الصحي في نفس ا
flutter: ║                                  لوقت."
flutter: ║                                 "en": "Juicy grilled beef patty in a healthy burger bun with fre
flutter: ║                                  sh vegetables and fat-free cheese."
flutter: ║                            }
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "cold_sandwich",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1800,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 0,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 100,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454824a2465a2f7a07601",
flutter: ║                             "key": "turkey_cold_sandwich",
flutter: ║                             "categoryId": "6a2453e64a2465a2f7a07114",
flutter: ║                             "name": "Turkey",
flutter: ║                             "nameI18n": {ar: تركي, en: Turkey},
flutter: ║                             "description": "",

======== Exception caught by rendering library =====================================================
The following assertion was thrown during performLayout():
RenderFlex children have non-zero flex but incoming height constraints are unbounded.

When a column is in a parent that does not provide a finite height constraint, for example if it is in a vertical scrollable, it will try to shrink-wrap its children along the vertical axis. Setting a flex on a child (e.g. using Expanded) indicates that the child is to expand to fill the remaining space in the vertical direction.
These two directives are mutually exclusive. If a parent is to shrink-wrap its child, the child cannot simultaneously expand to fit its parent.

Consider setting mainAxisSize to MainAxisSize.min and using FlexFit.loose fits for the flexible children (using Flexible rather than Expanded). This will allow the flexible children to size themselves to less than the infinite remaining space they would otherwise be forced to take, and then will cause the RenderFlex to shrink-wrap the children rather than expanding to fit the maximum constraints provided by the parent.

If this message did not help you determine the problem, consider using debugDumpRenderTree():
https://flutter.dev/to/debug-render-layer
https://api.flutter.dev/flutter/rendering/debugDumpRenderTree.html
The affected RenderFlex is: RenderFlex#e4c6a relayoutBoundary=up10 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
parentData: offset=Offset(0.0, 0.0) (can use size)
constraints: BoxConstraints(0.0<=w<=342.6, 0.0<=h<=Infinity)
size: MISSING
direction: vertical
mainAxisAlignment: start
mainAxisSize: max
crossAxisAlignment: end
textDirection: ltr
verticalDirection: down
spacing: 0.0
...  child 1: RenderConstrainedBox#68d88 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...    parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...    constraints: MISSING
...    size: MISSING
...    additionalConstraints: BoxConstraints(w=67.7, 0.0<=h<=Infinity)
...    child: RenderAspectRatio#74dc0 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: <none>
...      constraints: MISSING
...      size: MISSING
...      aspectRatio: 1.0
...      child: RenderClipRRect#ace62 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: <none>
...        constraints: MISSING
...        size: MISSING
...        child: RenderStack#5d6da NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: <none>
...          constraints: MISSING
...          size: MISSING
...          alignment: AlignmentDirectional.topStart
...          textDirection: ltr
...          fit: expand
...  child 2: RenderGap#e2e90 NEEDS-LAYOUT NEEDS-PAINT
...    parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...    constraints: MISSING
...    size: MISSING
...    mainAxisExtent: 10.3
...    crossAxisExtent: 0.0
...    color: null
...    fallbackDirection: vertical
...  child 3: RenderParagraph#1a056 NEEDS-LAYOUT NEEDS-PAINT
...    parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...    constraints: MISSING
...    size: MISSING
...    textAlign: right
...    textDirection: ltr
...    softWrap: wrapping at box width
...    overflow: ellipsis
...    locale: en_US
...    maxLines: 2
...    text: TextSpan
...      debugLabel: ((englishLike bodyMedium 2021).merge(((blackCupertino bodyMedium).apply).apply)).merge(unknown)
...      inherit: false
...      color: Color(alpha: 1.0000, red: 0.0667, green: 0.1686, blue: 0.1333, colorSpace: ColorSpace.sRGB)
...      family: Tajawal
...      size: 14.4
...      weight: 700
...      letterSpacing: 0.3
...      baseline: alphabetic
...      height: 1.4x
...      leadingDistribution: even
...      decoration: Color(alpha: 1.0000, red: 0.0667, green: 0.0941, blue: 0.1529, colorSpace: ColorSpace.sRGB) TextDecoration.none
...      "White Rice 150g"
...  child 4: RenderGap#889c6 NEEDS-LAYOUT NEEDS-PAINT
...    parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...    constraints: MISSING
...    size: MISSING
...    mainAxisExtent: 3.1
...    crossAxisExtent: 0.0
...    color: null
...    fallbackDirection: vertical
...  child 5: RenderConstrainedBox#c4f85 NEEDS-LAYOUT NEEDS-PAINT
...    parentData: offset=Offset(0.0, 0.0); flex=1; fit=FlexFit.tight
...    constraints: MISSING
...    size: MISSING
...    additionalConstraints: BoxConstraints(w=0.0, h=0.0)
...  child 6: RenderGap#6be14 NEEDS-LAYOUT NEEDS-PAINT
...    parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...    constraints: MISSING
...    size: MISSING
...    mainAxisExtent: 4.1
...    crossAxisExtent: 0.0
...    color: null
...    fallbackDirection: vertical
...  child 7: RenderFlex#e4604 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...    parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...    constraints: MISSING
...    size: MISSING
...    direction: horizontal
...    mainAxisAlignment: start
...    mainAxisSize: max
...    crossAxisAlignment: center
...    textDirection: ltr
...    verticalDirection: down
...    spacing: 0.0
...    child 1: RenderPhysicalShape#e92b1 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...      constraints: MISSING
...      size: MISSING
...      elevation: 0.0
...      color: Color(alpha: 1.0000, red: 0.0627, green: 0.7255, blue: 0.5059, colorSpace: ColorSpace.sRGB)
...      shadowColor: Color(alpha: 1.0000, red: 0.0627, green: 0.7255, blue: 0.5059, colorSpace: ColorSpace.sRGB)
...      clipper: ShapeBorderClipper
...      child: RenderCustomPaint#0ff21 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: <none>
...        constraints: MISSING
...        size: MISSING
...        painter: null
...        foregroundPainter: _ShapeBorderPainter#50068()
...        child: _RenderInkFeatures#d33d4 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: <none>
...          constraints: MISSING
...          size: MISSING
...    child 2: RenderGap#48ab8 NEEDS-LAYOUT NEEDS-PAINT
...      parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...      constraints: MISSING
...      size: MISSING
...      mainAxisExtent: 8.2
...      crossAxisExtent: 0.0
...      color: null
...      fallbackDirection: vertical
...    child 3: RenderParagraph#e5df4 NEEDS-LAYOUT NEEDS-PAINT
...      parentData: offset=Offset(0.0, 0.0); flex=1; fit=FlexFit.tight
...      constraints: MISSING
...      size: MISSING
...      textAlign: right
...      textDirection: ltr
...      softWrap: wrapping at box width
...      overflow: clip
...      locale: en_US
...      maxLines: unlimited
...      text: TextSpan
...        debugLabel: ((englishLike bodyMedium 2021).merge(((blackCupertino bodyMedium).apply).apply)).merge(unknown)
...        inherit: false
...        color: Color(alpha: 1.0000, red: 0.0706, green: 0.2196, blue: 0.1725, colorSpace: ColorSpace.sRGB)
...        family: Tajawal
...        size: 13.3
...        weight: 700
...        letterSpacing: 0.3
...        baseline: alphabetic
...        height: 1.4x
...        leadingDistribution: even
...        decoration: Color(alpha: 1.0000, red: 0.0667, green: 0.0941, blue: 0.1529, colorSpace: ColorSpace.sRGB) TextDecoration.none
...        "7 SAR"
The creator information is set to: Column ← Padding ← DecoratedBox ← Container ← _CompactProductCard ← Padding ← Column ← Column ← _DynamicSection ← Padding ← KeyedSubtree-[GlobalKey#ad265] ← _SectionAnchor ← ⋯

See also: https://flutter.dev/unbounded-constraints

If none of the above helps enough to fix this problem, please don't hesitate to file a bug:
https://github.com/flutter/flutter/issues/new?template=2_bug.yml
The relevant error-causing widget was:
Column Column:file:///Users/moali/AndroidStudioProjects/mobile_app/lib/presentation/main/menu/menu_screen.dart:1055:14
When the exception was thrown, this was the stack:
#0      RenderFlex.performLayout.<anonymous closure> (package:flutter/src/rendering/flex.dart:1250:9)
#1      RenderFlex.performLayout (package:flutter/src/rendering/flex.dart:1253:6)
#2      RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#3      RenderPadding.performLayout (package:flutter/src/rendering/shifted_box.dart:243:12)
#4      RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#5      RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#6      RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#7      RenderPadding.performLayout (package:flutter/src/rendering/shifted_box.dart:243:12)
#8      RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#9      ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#10     RenderFlex._computeSizes (package:flutter/src/rendering/flex.dart:1161:28)
#11     RenderFlex.performLayout (package:flutter/src/rendering/flex.dart:1255:32)
#12     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#13     ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#14     RenderFlex._computeSizes (package:flutter/src/rendering/flex.dart:1161:28)
#15     RenderFlex.performLayout (package:flutter/src/rendering/flex.dart:1255:32)
#16     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#17     RenderPadding.performLayout (package:flutter/src/rendering/shifted_box.dart:243:12)
#18     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#19     ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#20     RenderFlex._computeSizes (package:flutter/src/rendering/flex.dart:1161:28)
#21     RenderFlex.performLayout (package:flutter/src/rendering/flex.dart:1255:32)
#22     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#23     RenderSliverToBoxAdapter.performLayout (package:flutter/src/rendering/sliver.dart:2020:12)
#24     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#25     RenderSliverEdgeInsetsPadding.performLayout (package:flutter/src/rendering/sliver_padding.dart:133:12)
#26     RenderSliverPadding.performLayout (package:flutter/src/rendering/sliver_padding.dart:371:11)
#27     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#28     RenderViewportBase.layoutChildSequence (package:flutter/src/rendering/viewport.dart:608:13)
#29     RenderViewport._attemptLayout (package:flutter/src/rendering/viewport.dart:1576:12)
#30     RenderViewport.performLayout (package:flutter/src/rendering/viewport.dart:1467:20)
#31     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#32     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#33     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#34     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#35     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#36     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#37     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#38     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#39     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#40     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#41     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#42     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#43     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#44     ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#45     RenderFlex._computeSizes (package:flutter/src/rendering/flex.dart:1202:26)
#46     RenderFlex.performLayout (package:flutter/src/rendering/flex.dart:1255:32)
#47     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#48     ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#49     RenderStack._computeSize (package:flutter/src/rendering/stack.dart:646:43)
#50     RenderStack.performLayout (package:flutter/src/rendering/stack.dart:673:12)
#51     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#52     RenderPadding.performLayout (package:flutter/src/rendering/shifted_box.dart:243:12)
#53     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#54     MultiChildLayoutDelegate.layoutChild (package:flutter/src/rendering/custom_layout.dart:180:12)
#55     _ScaffoldLayout.performLayout (package:flutter/src/material/scaffold.dart:1118:7)
#56     MultiChildLayoutDelegate._callPerformLayout (package:flutter/src/rendering/custom_layout.dart:249:7)
#57     RenderCustomMultiChildLayoutBox.performLayout (package:flutter/src/rendering/custom_layout.dart:419:14)
#58     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#59     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#60     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#61     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#62     _RenderCustomClip.performLayout (package:flutter/src/rendering/proxy_box.dart:1483:11)
#63     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#64     MultiChildLayoutDelegate.layoutChild (package:flutter/src/rendering/custom_layout.dart:180:12)
#65     _ScaffoldLayout.performLayout (package:flutter/src/material/scaffold.dart:1118:7)
#66     MultiChildLayoutDelegate._callPerformLayout (package:flutter/src/rendering/custom_layout.dart:249:7)
#67     RenderCustomMultiChildLayoutBox.performLayout (package:flutter/src/rendering/custom_layout.dart:419:14)
#68     RenderObject._layoutWithoutResize (package:flutter/src/rendering/object.dart:2548:7)
#69     PipelineOwner.flushLayout (package:flutter/src/rendering/object.dart:1112:18)
#70     PipelineOwner.flushLayout (package:flutter/src/rendering/object.dart:1125:15)
#71     RendererBinding.drawFrame (package:flutter/src/rendering/binding.dart:616:23)
#72     WidgetsBinding.drawFrame (package:flutter/src/widgets/binding.dart:1231:13)
#73     RendererBinding._handlePersistentFrameCallback (package:flutter/src/rendering/binding.dart:482:5)
#74     SchedulerBinding._invokeFrameCallback (package:flutter/src/scheduler/binding.dart:1442:15)
#75     SchedulerBinding.handleDrawFrame (package:flutter/src/scheduler/binding.dart:1355:9)
#76     SchedulerBinding._handleDrawFrame (package:flutter/src/scheduler/binding.dart:1208:5)
#77     _invoke (dart:ui/hooks.dart:316:13)
#78     PlatformDispatcher._drawFrame (dart:ui/platform_dispatcher.dart:428:5)
#79     _drawFrame (dart:ui/hooks.dart:288:31)
The following RenderObject was being processed when the exception was fired: RenderFlex#e4c6a relayoutBoundary=up10 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...  parentData: offset=Offset(0.0, 0.0) (can use size)
...  constraints: BoxConstraints(0.0<=w<=342.6, 0.0<=h<=Infinity)
...  size: MISSING
...  direction: vertical
...  mainAxisAlignment: start
...  mainAxisSize: max
...  crossAxisAlignment: end
...  textDirection: ltr
...  verticalDirection: down
...  spacing: 0.0
RenderObject: RenderFlex#e4c6a relayoutBoundary=up10 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
parentData: offset=Offset(0.0, 0.0) (can use size)
constraints: BoxConstraints(0.0<=w<=342.6, 0.0<=h<=Infinity)
size: MISSING
direction: vertical
mainAxisAlignment: start
mainAxisSize: max
crossAxisAlignment: end
textDirection: ltr
verticalDirection: down
spacing: 0.0
...  child 1: RenderConstrainedBox#68d88 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...    parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...    constraints: MISSING
...    size: MISSING
...    additionalConstraints: BoxConstraints(w=67.7, 0.0<=h<=Infinity)
...    child: RenderAspectRatio#74dc0 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: <none>
...      constraints: MISSING
...      size: MISSING
...      aspectRatio: 1.0
...      child: RenderClipRRect#ace62 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: <none>
...        constraints: MISSING
...        size: MISSING
...        child: RenderStack#5d6da NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: <none>
...          constraints: MISSING
...          size: MISSING
...          alignment: AlignmentDirectional.topStart
...          textDirection: ltr
...          fit: expand
...  child 2: RenderGap#e2e90 NEEDS-LAYOUT NEEDS-PAINT
...    parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...    constraints: MISSING
...    size: MISSING
...    mainAxisExtent: 10.3
...    crossAxisExtent: 0.0
...    color: null
...    fallbackDirection: vertical
...  child 3: RenderParagraph#1a056 NEEDS-LAYOUT NEEDS-PAINT
...    parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...    constraints: MISSING
...    size: MISSING
...    textAlign: right
...    textDirection: ltr
...    softWrap: wrapping at box width
...    overflow: ellipsis
...    locale: en_US
...    maxLines: 2
...    text: TextSpan
...      debugLabel: ((englishLike bodyMedium 2021).merge(((blackCupertino bodyMedium).apply).apply)).merge(unknown)
...      inherit: false
...      color: Color(alpha: 1.0000, red: 0.0667, green: 0.1686, blue: 0.1333, colorSpace: ColorSpace.sRGB)
...      family: Tajawal
...      size: 14.4
...      weight: 700
...      letterSpacing: 0.3
...      baseline: alphabetic
...      height: 1.4x
...      leadingDistribution: even
...      decoration: Color(alpha: 1.0000, red: 0.0667, green: 0.0941, blue: 0.1529, colorSpace: ColorSpace.sRGB) TextDecoration.none
...      "White Rice 150g"
...  child 4: RenderGap#889c6 NEEDS-LAYOUT NEEDS-PAINT
...    parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...    constraints: MISSING
...    size: MISSING
...    mainAxisExtent: 3.1
...    crossAxisExtent: 0.0
...    color: null
...    fallbackDirection: vertical
...  child 5: RenderConstrainedBox#c4f85 NEEDS-LAYOUT NEEDS-PAINT
...    parentData: offset=Offset(0.0, 0.0); flex=1; fit=FlexFit.tight
...    constraints: MISSING
...    size: MISSING
...    additionalConstraints: BoxConstraints(w=0.0, h=0.0)
...  child 6: RenderGap#6be14 NEEDS-LAYOUT NEEDS-PAINT
...    parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...    constraints: MISSING
...    size: MISSING
...    mainAxisExtent: 4.1
...    crossAxisExtent: 0.0
...    color: null
...    fallbackDirection: vertical
...  child 7: RenderFlex#e4604 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...    parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...    constraints: MISSING
...    size: MISSING
...    direction: horizontal
...    mainAxisAlignment: start
...    mainAxisSize: max
...    crossAxisAlignment: center
...    textDirection: ltr
...    verticalDirection: down
...    spacing: 0.0
...    child 1: RenderPhysicalShape#e92b1 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...      constraints: MISSING
...      size: MISSING
...      elevation: 0.0
...      color: Color(alpha: 1.0000, red: 0.0627, green: 0.7255, blue: 0.5059, colorSpace: ColorSpace.sRGB)
...      shadowColor: Color(alpha: 1.0000, red: 0.0627, green: 0.7255, blue: 0.5059, colorSpace: ColorSpace.sRGB)
...      clipper: ShapeBorderClipper
...      child: RenderCustomPaint#0ff21 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: <none>
...        constraints: MISSING
...        size: MISSING
...        painter: null
...        foregroundPainter: _ShapeBorderPainter#50068()
...        child: _RenderInkFeatures#d33d4 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: <none>
...          constraints: MISSING
...          size: MISSING
...    child 2: RenderGap#48ab8 NEEDS-LAYOUT NEEDS-PAINT
...      parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...      constraints: MISSING
...      size: MISSING
...      mainAxisExtent: 8.2
...      crossAxisExtent: 0.0
...      color: null
...      fallbackDirection: vertical
...    child 3: RenderParagraph#e5df4 NEEDS-LAYOUT NEEDS-PAINT
...      parentData: offset=Offset(0.0, 0.0); flex=1; fit=FlexFit.tight
...      constraints: MISSING
...      size: MISSING
...      textAlign: right
...      textDirection: ltr
...      softWrap: wrapping at box width
...      overflow: clip
...      locale: en_US
...      maxLines: unlimited
...      text: TextSpan
...        debugLabel: ((englishLike bodyMedium 2021).merge(((blackCupertino bodyMedium).apply).apply)).merge(unknown)
...        inherit: false
...        color: Color(alpha: 1.0000, red: 0.0706, green: 0.2196, blue: 0.1725, colorSpace: ColorSpace.sRGB)
...        family: Tajawal
...        size: 13.3
...        weight: 700
...        letterSpacing: 0.3
...        baseline: alphabetic
...        height: 1.4x
...        leadingDistribution: even
...        decoration: Color(alpha: 1.0000, red: 0.0667, green: 0.0941, blue: 0.1529, colorSpace: ColorSpace.sRGB) TextDecoration.none
...        "7 SAR"
====================================================================================================
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "cold_sandwich",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1300,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 0,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 110,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454824a2465a2f7a07606",
flutter: ║                             "key": "boiled_egg_cold_sandwich",
flutter: ║                             "categoryId": "6a2453e64a2465a2f7a07114",
flutter: ║                             "name": "Boiled Egg",
flutter: ║                             "nameI18n": {ar: بيض مسلوق, en: Boiled Egg},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "cold_sandwich",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 900,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 0,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 120,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454834a2465a2f7a0760b",
flutter: ║                             "key": "tuna_cold_sandwich",
flutter: ║                             "categoryId": "6a2453e64a2465a2f7a07114",
flutter: ║                             "name": "Tuna",
flutter: ║                             "nameI18n": {ar: تونا, en: Tuna},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "cold_sandwich",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1300,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 0,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 130,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454834a2465a2f7a07610",
flutter: ║                             "key": "scrambled_egg_cold_sandwich",
flutter: ║                             "categoryId": "6a2453e64a2465a2f7a07114",
flutter: ║                             "name": "Scrambled Egg",
flutter: ║                             "nameI18n": {ar: بيض مخفوق, en: Scrambled Egg},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "cold_sandwich",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 900,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 0,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 140,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454844a2465a2f7a07615",
flutter: ║                             "key": "classic_halloumi_cold_sandwich",
flutter: ║                             "categoryId": "6a2453e64a2465a2f7a07114",
flutter: ║                             "name": "Classic Halloumi",
flutter: ║                             "nameI18n": {ar: حلوم كلاسيك, en: Classic Halloumi},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "cold_sandwich",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1100,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 0,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 150,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454854a2465a2f7a0761a",
flutter: ║                             "key": "chicken_fajita_cold_sandwich",
flutter: ║                             "categoryId": "6a2453e64a2465a2f7a07114",
flutter: ║                             "name": "Chicken Fajita",
flutter: ║                             "nameI18n": {ar: دجاج فاهيتا, en: Chicken Fajita},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "cold_sandwich",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1300,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 0,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 160,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454854a2465a2f7a0761f",
flutter: ║                             "key": "mexican_chicken_cold_sandwich",
flutter: ║                             "categoryId": "6a2453e64a2465a2f7a07114",
flutter: ║                             "name": "Mexican Chicken",
flutter: ║                             "nameI18n": {ar: دجاج مكسيكي, en: Mexican Chicken},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "cold_sandwich",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1300,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 0,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 170,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454864a2465a2f7a07624",
flutter: ║                             "key": "grilled_chicken_cold_sandwich",
flutter: ║                             "categoryId": "6a2453e64a2465a2f7a07114",
flutter: ║                             "name": "Grilled Chicken",
flutter: ║                             "nameI18n": {ar: دجاج مشوي, en: Grilled Chicken},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "cold_sandwich",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1300,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 0,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 180,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        }
flutter: ║                     ]
flutter: ║                },
flutter: ║                {
flutter: ║                     "id": "6a2453e64a2465a2f7a0711a",
flutter: ║                     "key": "desserts",
flutter: ║                     "name": "Desserts",
flutter: ║                     "nameI18n": {ar: الحلويات, en: Desserts},
flutter: ║                     "description": "",
flutter: ║                     "descriptionI18n": {ar: , en: },
flutter: ║                     "imageUrl": "",
flutter: ║                     "sortOrder": 70,
flutter: ║                     "products": [
flutter: ║                        {
flutter: ║                             "id": "6a2454874a2465a2f7a07629",
flutter: ║                             "key": "orange_cake",
flutter: ║                             "categoryId": "6a2453e64a2465a2f7a0711a",
flutter: ║                             "name": "Orange Cake",
flutter: ║                             "nameI18n": {ar: كيكة البرتقال, en: Orange Cake},
flutter: ║                             "description": "Healthy orange cake made with light ingredients, natural refr
flutter: ║                              eshing orange flavor, soft texture, and no sugar."
flutter: ║                             "descriptionI18n": {
flutter: ║                                 "ar": "كيكة برتقال صحية محضرة بمكونات خفيفة، بطعم برتقال طبيعي م
flutter: ║                                  نعش وقوام ناعم، بدون سكر."
flutter: ║                                 "en": "Healthy orange cake made with light ingredients, natural
flutter: ║                                  refreshing orange flavor, soft texture, and no sugar."
flutter: ║                            }
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "dessert",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 900,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 0,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 190,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454874a2465a2f7a0762e",
flutter: ║                             "key": "apple_cinnamon_muffin_2pcs",
flutter: ║                             "categoryId": "6a2453e64a2465a2f7a0711a",
flutter: ║                             "name": "Apple Cinnamon Muffin - 2 Pieces",
flutter: ║                             "nameI18n": {ar: مافن التفاح بالقرفة قطعتين, en: Apple Cinnamon Muffin - 2 Pieces},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "dessert",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1200,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 0,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 200,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454884a2465a2f7a07633",
flutter: ║                             "key": "berry_cheesecake",
flutter: ║                             "categoryId": "6a2453e64a2465a2f7a0711a",
flutter: ║                             "name": "Berry Cheesecake",
flutter: ║                             "nameI18n": {ar: تشيز كيك بالتوت, en: Berry Cheesecake},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "dessert",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1900,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 0,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 210,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454894a2465a2f7a07638",
flutter: ║                             "key": "strawberry_cheesecake",
flutter: ║                             "categoryId": "6a2453e64a2465a2f7a0711a",
flutter: ║                             "name": "Strawberry Cheesecake",
flutter: ║                             "nameI18n": {ar: تشيز كيك بالفراولة, en: Strawberry Cheesecake},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "dessert",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1900,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 0,
flutter: ║                             "minWeightGrams": 0,

======== Exception caught by rendering library =====================================================
The following assertion was thrown during performLayout():
RenderBox was not laid out: RenderFlex#e4c6a relayoutBoundary=up10 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
'package:flutter/src/rendering/box.dart':
Failed assertion: line 2251 pos 12: 'hasSize'


Either the assertion indicates an error in the framework itself, or we should provide substantially more information in this error message to help you determine and fix the underlying cause.
In either case, please report this assertion by filing a bug on GitHub:
https://github.com/flutter/flutter/issues/new?template=2_bug.yml

The relevant error-causing widget was:
Container Container:file:///Users/moali/AndroidStudioProjects/mobile_app/lib/presentation/main/menu/menu_screen.dart:1048:12
When the exception was thrown, this was the stack:
#2      RenderBox.size (package:flutter/src/rendering/box.dart:2251:12)
#3      RenderPadding.performLayout (package:flutter/src/rendering/shifted_box.dart:247:40)
#4      RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#5      RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#6      RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#7      RenderPadding.performLayout (package:flutter/src/rendering/shifted_box.dart:243:12)
#8      RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#9      ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#10     RenderFlex._computeSizes (package:flutter/src/rendering/flex.dart:1161:28)
#11     RenderFlex.performLayout (package:flutter/src/rendering/flex.dart:1255:32)
#12     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#13     ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#14     RenderFlex._computeSizes (package:flutter/src/rendering/flex.dart:1161:28)
#15     RenderFlex.performLayout (package:flutter/src/rendering/flex.dart:1255:32)
#16     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#17     RenderPadding.performLayout (package:flutter/src/rendering/shifted_box.dart:243:12)
#18     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#19     ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#20     RenderFlex._computeSizes (package:flutter/src/rendering/flex.dart:1161:28)
#21     RenderFlex.performLayout (package:flutter/src/rendering/flex.dart:1255:32)
#22     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#23     RenderSliverToBoxAdapter.performLayout (package:flutter/src/rendering/sliver.dart:2020:12)
#24     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#25     RenderSliverEdgeInsetsPadding.performLayout (package:flutter/src/rendering/sliver_padding.dart:133:12)
#26     RenderSliverPadding.performLayout (package:flutter/src/rendering/sliver_padding.dart:371:11)
#27     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#28     RenderViewportBase.layoutChildSequence (package:flutter/src/rendering/viewport.dart:608:13)
#29     RenderViewport._attemptLayout (package:flutter/src/rendering/viewport.dart:1576:12)
#30     RenderViewport.performLayout (package:flutter/src/rendering/viewport.dart:1467:20)
#31     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#32     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#33     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#34     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#35     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#36     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#37     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#38     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#39     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#40     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#41     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#42     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#43     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#44     ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#45     RenderFlex._computeSizes (package:flutter/src/rendering/flex.dart:1202:26)
#46     RenderFlex.performLayout (package:flutter/src/rendering/flex.dart:1255:32)
#47     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#48     ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#49     RenderStack._computeSize (package:flutter/src/rendering/stack.dart:646:43)
#50     RenderStack.performLayout (package:flutter/src/rendering/stack.dart:673:12)
#51     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#52     RenderPadding.performLayout (package:flutter/src/rendering/shifted_box.dart:243:12)
#53     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#54     MultiChildLayoutDelegate.layoutChild (package:flutter/src/rendering/custom_layout.dart:180:12)
#55     _ScaffoldLayout.performLayout (package:flutter/src/material/scaffold.dart:1118:7)
#56     MultiChildLayoutDelegate._callPerformLayout (package:flutter/src/rendering/custom_layout.dart:249:7)
#57     RenderCustomMultiChildLayoutBox.performLayout (package:flutter/src/rendering/custom_layout.dart:419:14)
#58     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#59     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#60     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#61     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#62     _RenderCustomClip.performLayout (package:flutter/src/rendering/proxy_box.dart:1483:11)
#63     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#64     MultiChildLayoutDelegate.layoutChild (package:flutter/src/rendering/custom_layout.dart:180:12)
#65     _ScaffoldLayout.performLayout (package:flutter/src/material/scaffold.dart:1118:7)
#66     MultiChildLayoutDelegate._callPerformLayout (package:flutter/src/rendering/custom_layout.dart:249:7)
#67     RenderCustomMultiChildLayoutBox.performLayout (package:flutter/src/rendering/custom_layout.dart:419:14)
#68     RenderObject._layoutWithoutResize (package:flutter/src/rendering/object.dart:2548:7)
#69     PipelineOwner.flushLayout (package:flutter/src/rendering/object.dart:1112:18)
#70     PipelineOwner.flushLayout (package:flutter/src/rendering/object.dart:1125:15)
#71     RendererBinding.drawFrame (package:flutter/src/rendering/binding.dart:616:23)
#72     WidgetsBinding.drawFrame (package:flutter/src/widgets/binding.dart:1231:13)
#73     RendererBinding._handlePersistentFrameCallback (package:flutter/src/rendering/binding.dart:482:5)
#74     SchedulerBinding._invokeFrameCallback (package:flutter/src/scheduler/binding.dart:1442:15)
#75     SchedulerBinding.handleDrawFrame (package:flutter/src/scheduler/binding.dart:1355:9)
#76     SchedulerBinding._handleDrawFrame (package:flutter/src/scheduler/binding.dart:1208:5)
#77     _invoke (dart:ui/hooks.dart:316:13)
#78     PlatformDispatcher._drawFrame (dart:ui/platform_dispatcher.dart:428:5)
#79     _drawFrame (dart:ui/hooks.dart:288:31)
(elided 2 frames from class _AssertionError)
The following RenderObject was being processed when the exception was fired: RenderPadding#82336 relayoutBoundary=up9 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...  parentData: <none> (can use size)
...  constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...  size: MISSING
...  padding: EdgeInsets(1.0, 13.3, 1.0, 13.3) + EdgeInsetsDirectional(12.3, 0.0, 12.3, 0.0)
...  textDirection: ltr
RenderObject: RenderPadding#82336 relayoutBoundary=up9 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
parentData: <none> (can use size)
constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
size: MISSING
padding: EdgeInsets(1.0, 13.3, 1.0, 13.3) + EdgeInsetsDirectional(12.3, 0.0, 12.3, 0.0)
textDirection: ltr
...  child: RenderFlex#e4c6a relayoutBoundary=up10 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...    parentData: offset=Offset(13.3, 13.3) (can use size)
...    constraints: BoxConstraints(0.0<=w<=342.6, 0.0<=h<=Infinity)
...    size: MISSING
...    direction: vertical
...    mainAxisAlignment: start
...    mainAxisSize: max
...    crossAxisAlignment: end
...    textDirection: ltr
...    verticalDirection: down
...    spacing: 0.0
...    child 1: RenderConstrainedBox#68d88 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...      constraints: MISSING
...      size: MISSING
...      additionalConstraints: BoxConstraints(w=67.7, 0.0<=h<=Infinity)
...      child: RenderAspectRatio#74dc0 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: <none>
...        constraints: MISSING
...        size: MISSING
...        aspectRatio: 1.0
...        child: RenderClipRRect#ace62 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: <none>
...          constraints: MISSING
...          size: MISSING
...    child 2: RenderGap#e2e90 NEEDS-LAYOUT NEEDS-PAINT
...      parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...      constraints: MISSING
...      size: MISSING
...      mainAxisExtent: 10.3
...      crossAxisExtent: 0.0
...      color: null
...      fallbackDirection: vertical
...    child 3: RenderParagraph#1a056 NEEDS-LAYOUT NEEDS-PAINT
...      parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...      constraints: MISSING
...      size: MISSING
...      textAlign: right
...      textDirection: ltr
...      softWrap: wrapping at box width
...      overflow: ellipsis
...      locale: en_US
...      maxLines: 2
...      text: TextSpan
...        debugLabel: ((englishLike bodyMedium 2021).merge(((blackCupertino bodyMedium).apply).apply)).merge(unknown)
...        inherit: false
...        color: Color(alpha: 1.0000, red: 0.0667, green: 0.1686, blue: 0.1333, colorSpace: ColorSpace.sRGB)
...        family: Tajawal
...        size: 14.4
...        weight: 700
...        letterSpacing: 0.3
...        baseline: alphabetic
...        height: 1.4x
...        leadingDistribution: even
...        decoration: Color(alpha: 1.0000, red: 0.0667, green: 0.0941, blue: 0.1529, colorSpace: ColorSpace.sRGB) TextDecoration.none
...        "White Rice 150g"
...    child 4: RenderGap#889c6 NEEDS-LAYOUT NEEDS-PAINT
...      parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...      constraints: MISSING
...      size: MISSING
...      mainAxisExtent: 3.1
...      crossAxisExtent: 0.0
...      color: null
...      fallbackDirection: vertical
...    child 5: RenderConstrainedBox#c4f85 NEEDS-LAYOUT NEEDS-PAINT
...      parentData: offset=Offset(0.0, 0.0); flex=1; fit=FlexFit.tight
...      constraints: MISSING
...      size: MISSING
...      additionalConstraints: BoxConstraints(w=0.0, h=0.0)
...    child 6: RenderGap#6be14 NEEDS-LAYOUT NEEDS-PAINT
...      parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...      constraints: MISSING
...      size: MISSING
...      mainAxisExtent: 4.1
...      crossAxisExtent: 0.0
...      color: null
...      fallbackDirection: vertical
...    child 7: RenderFlex#e4604 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...      constraints: MISSING
...      size: MISSING
...      direction: horizontal
...      mainAxisAlignment: start
...      mainAxisSize: max
...      crossAxisAlignment: center
...      textDirection: ltr
...      verticalDirection: down
...      spacing: 0.0
...      child 1: RenderPhysicalShape#e92b1 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        elevation: 0.0
...        color: Color(alpha: 1.0000, red: 0.0627, green: 0.7255, blue: 0.5059, colorSpace: ColorSpace.sRGB)
...        shadowColor: Color(alpha: 1.0000, red: 0.0627, green: 0.7255, blue: 0.5059, colorSpace: ColorSpace.sRGB)
...        clipper: ShapeBorderClipper
...        child: RenderCustomPaint#0ff21 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: <none>
...          constraints: MISSING
...          size: MISSING
...          painter: null
...          foregroundPainter: _ShapeBorderPainter#50068()
...      child 2: RenderGap#48ab8 NEEDS-LAYOUT NEEDS-PAINT
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        mainAxisExtent: 8.2
...        crossAxisExtent: 0.0
...        color: null
...        fallbackDirection: vertical
...      child 3: RenderParagraph#e5df4 NEEDS-LAYOUT NEEDS-PAINT
...        parentData: offset=Offset(0.0, 0.0); flex=1; fit=FlexFit.tight
...        constraints: MISSING
...        size: MISSING
...        textAlign: right
...        textDirection: ltr
...        softWrap: wrapping at box width
...        overflow: clip
...        locale: en_US
...        maxLines: unlimited
...        text: TextSpan
...          debugLabel: ((englishLike bodyMedium 2021).merge(((blackCupertino bodyMedium).apply).apply)).merge(unknown)
...          inherit: false
...          color: Color(alpha: 1.0000, red: 0.0706, green: 0.2196, blue: 0.1725, colorSpace: ColorSpace.sRGB)
...          family: Tajawal
...          size: 13.3
...          weight: 700
...          letterSpacing: 0.3
...          baseline: alphabetic
...          height: 1.4x
...          leadingDistribution: even
...          decoration: Color(alpha: 1.0000, red: 0.0667, green: 0.0941, blue: 0.1529, colorSpace: ColorSpace.sRGB) TextDecoration.none
...          "7 SAR"
====================================================================================================
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 220,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454894a2465a2f7a0763d",
flutter: ║                             "key": "dark_brownies",
flutter: ║                             "categoryId": "6a2453e64a2465a2f7a0711a",
flutter: ║                             "name": "Dark Brownies",
flutter: ║                             "nameI18n": {ar: براونيز داكن, en: Dark Brownies},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "dessert",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1300,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 0,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 230,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a24548a4a2465a2f7a07642",
flutter: ║                             "key": "protein_bar",
flutter: ║                             "categoryId": "6a2453e64a2465a2f7a0711a",
flutter: ║                             "name": "Protein Bar",
flutter: ║                             "nameI18n": {ar: بروتين بار, en: Protein Bar},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "dessert",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1500,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 0,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 240,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a24548a4a2465a2f7a07647",
flutter: ║                             "key": "basic_classic",
flutter: ║                             "categoryId": "6a2453e64a2465a2f7a0711a",
flutter: ║                             "name": "Basic Classic",
flutter: ║                             "nameI18n": {ar: بيسك كلاسيك, en: Basic Classic},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "dessert",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1400,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 0,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 250,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a24548b4a2465a2f7a0764c",
flutter: ║                             "key": "protein_chocolate_cake",
flutter: ║                             "categoryId": "6a2453e64a2465a2f7a0711a",
flutter: ║                             "name": "Protein Chocolate Cake",
flutter: ║                             "nameI18n": {ar: كيك شوكولاتة بروتين, en: Protein Chocolate Cake},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "dessert",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1900,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 0,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 260,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        }
flutter: ║                     ]
flutter: ║                },
flutter: ║                {
flutter: ║                     "id": "6a2453e74a2465a2f7a0711d",
flutter: ║                     "key": "juices",
flutter: ║                     "name": "Juices",
flutter: ║                     "nameI18n": {ar: العصائر, en: Juices},
flutter: ║                     "description": "",
flutter: ║                     "descriptionI18n": {ar: , en: },
flutter: ║                     "imageUrl": "",
flutter: ║                     "sortOrder": 80,
flutter: ║                     "products": [
flutter: ║                        {
flutter: ║                             "id": "6a24548b4a2465a2f7a07651",
flutter: ║                             "key": "berry_blast",
flutter: ║                             "categoryId": "6a2453e74a2465a2f7a0711d",
flutter: ║                             "name": "Berry Blast",
flutter: ║                             "nameI18n": {ar: بيري بلاست, en: Berry Blast},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "juice",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1100,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 0,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 270,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a24548c4a2465a2f7a07656",
flutter: ║                             "key": "berry_prot",
flutter: ║                             "categoryId": "6a2453e74a2465a2f7a0711d",
flutter: ║                             "name": "Berry Prot",

======== Exception caught by rendering library =====================================================
The following assertion was thrown during performLayout():
RenderBox was not laid out: RenderPadding#82336 relayoutBoundary=up9 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
'package:flutter/src/rendering/box.dart':
Failed assertion: line 2251 pos 12: 'hasSize'


Either the assertion indicates an error in the framework itself, or we should provide substantially more information in this error message to help you determine and fix the underlying cause.
In either case, please report this assertion by filing a bug on GitHub:
https://github.com/flutter/flutter/issues/new?template=2_bug.yml

The relevant error-causing widget was:
Container Container:file:///Users/moali/AndroidStudioProjects/mobile_app/lib/presentation/main/menu/menu_screen.dart:1048:12
When the exception was thrown, this was the stack:
#2      RenderBox.size (package:flutter/src/rendering/box.dart:2251:12)
#3      RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:62)
#4      RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#5      RenderPadding.performLayout (package:flutter/src/rendering/shifted_box.dart:243:12)
#6      RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#7      ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#8      RenderFlex._computeSizes (package:flutter/src/rendering/flex.dart:1161:28)
#9      RenderFlex.performLayout (package:flutter/src/rendering/flex.dart:1255:32)
#10     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#11     ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#12     RenderFlex._computeSizes (package:flutter/src/rendering/flex.dart:1161:28)
#13     RenderFlex.performLayout (package:flutter/src/rendering/flex.dart:1255:32)
#14     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#15     RenderPadding.performLayout (package:flutter/src/rendering/shifted_box.dart:243:12)
#16     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#17     ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#18     RenderFlex._computeSizes (package:flutter/src/rendering/flex.dart:1161:28)
#19     RenderFlex.performLayout (package:flutter/src/rendering/flex.dart:1255:32)
#20     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#21     RenderSliverToBoxAdapter.performLayout (package:flutter/src/rendering/sliver.dart:2020:12)
#22     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#23     RenderSliverEdgeInsetsPadding.performLayout (package:flutter/src/rendering/sliver_padding.dart:133:12)
#24     RenderSliverPadding.performLayout (package:flutter/src/rendering/sliver_padding.dart:371:11)
#25     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#26     RenderViewportBase.layoutChildSequence (package:flutter/src/rendering/viewport.dart:608:13)
#27     RenderViewport._attemptLayout (package:flutter/src/rendering/viewport.dart:1576:12)
#28     RenderViewport.performLayout (package:flutter/src/rendering/viewport.dart:1467:20)
#29     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#30     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#31     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#32     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#33     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#34     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#35     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#36     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#37     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#38     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#39     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#40     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#41     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#42     ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#43     RenderFlex._computeSizes (package:flutter/src/rendering/flex.dart:1202:26)
#44     RenderFlex.performLayout (package:flutter/src/rendering/flex.dart:1255:32)
#45     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#46     ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#47     RenderStack._computeSize (package:flutter/src/rendering/stack.dart:646:43)
#48     RenderStack.performLayout (package:flutter/src/rendering/stack.dart:673:12)
#49     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#50     RenderPadding.performLayout (package:flutter/src/rendering/shifted_box.dart:243:12)
#51     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#52     MultiChildLayoutDelegate.layoutChild (package:flutter/src/rendering/custom_layout.dart:180:12)
#53     _ScaffoldLayout.performLayout (package:flutter/src/material/scaffold.dart:1118:7)
#54     MultiChildLayoutDelegate._callPerformLayout (package:flutter/src/rendering/custom_layout.dart:249:7)
#55     RenderCustomMultiChildLayoutBox.performLayout (package:flutter/src/rendering/custom_layout.dart:419:14)
#56     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#57     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#58     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#59     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#60     _RenderCustomClip.performLayout (package:flutter/src/rendering/proxy_box.dart:1483:11)
#61     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#62     MultiChildLayoutDelegate.layoutChild (package:flutter/src/rendering/custom_layout.dart:180:12)
#63     _ScaffoldLayout.performLayout (package:flutter/src/material/scaffold.dart:1118:7)
#64     MultiChildLayoutDelegate._callPerformLayout (package:flutter/src/rendering/custom_layout.dart:249:7)
#65     RenderCustomMultiChildLayoutBox.performLayout (package:flutter/src/rendering/custom_layout.dart:419:14)
#66     RenderObject._layoutWithoutResize (package:flutter/src/rendering/object.dart:2548:7)
#67     PipelineOwner.flushLayout (package:flutter/src/rendering/object.dart:1112:18)
#68     PipelineOwner.flushLayout (package:flutter/src/rendering/object.dart:1125:15)
#69     RendererBinding.drawFrame (package:flutter/src/rendering/binding.dart:616:23)
#70     WidgetsBinding.drawFrame (package:flutter/src/widgets/binding.dart:1231:13)
#71     RendererBinding._handlePersistentFrameCallback (package:flutter/src/rendering/binding.dart:482:5)
#72     SchedulerBinding._invokeFrameCallback (package:flutter/src/scheduler/binding.dart:1442:15)
#73     SchedulerBinding.handleDrawFrame (package:flutter/src/scheduler/binding.dart:1355:9)
#74     SchedulerBinding._handleDrawFrame (package:flutter/src/scheduler/binding.dart:1208:5)
#75     _invoke (dart:ui/hooks.dart:316:13)
#76     PlatformDispatcher._drawFrame (dart:ui/platform_dispatcher.dart:428:5)
#77     _drawFrame (dart:ui/hooks.dart:288:31)
(elided 2 frames from class _AssertionError)
The following RenderObject was being processed when the exception was fired: RenderDecoratedBox#12231 relayoutBoundary=up8 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...  parentData: offset=Offset(0.0, 0.0) (can use size)
...  constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...  size: MISSING
...  decoration: BoxDecoration
...    color: Color(alpha: 0.9600, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)
...    border: Border.all(BorderSide(color: Color(alpha: 0.8400, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)))
...    borderRadius: BorderRadius.circular(20.5)
...  configuration: ImageConfiguration(bundle: PlatformAssetBundle#bc5d4(), devicePixelRatio: 3.0, locale: en_US, textDirection: TextDirection.ltr, platform: iOS)
RenderObject: RenderDecoratedBox#12231 relayoutBoundary=up8 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
parentData: offset=Offset(0.0, 0.0) (can use size)
constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
size: MISSING
decoration: BoxDecoration
color: Color(alpha: 0.9600, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)
border: Border.all(BorderSide(color: Color(alpha: 0.8400, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)))
borderRadius: BorderRadius.circular(20.5)
configuration: ImageConfiguration(bundle: PlatformAssetBundle#bc5d4(), devicePixelRatio: 3.0, locale: en_US, textDirection: TextDirection.ltr, platform: iOS)
...  child: RenderPadding#82336 relayoutBoundary=up9 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...    parentData: <none> (can use size)
...    constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...    size: MISSING
...    padding: EdgeInsets(1.0, 13.3, 1.0, 13.3) + EdgeInsetsDirectional(12.3, 0.0, 12.3, 0.0)
...    textDirection: ltr
...    child: RenderFlex#e4c6a relayoutBoundary=up10 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(13.3, 13.3) (can use size)
...      constraints: BoxConstraints(0.0<=w<=342.6, 0.0<=h<=Infinity)
...      size: MISSING
...      direction: vertical
...      mainAxisAlignment: start
...      mainAxisSize: max
...      crossAxisAlignment: end
...      textDirection: ltr
...      verticalDirection: down
...      spacing: 0.0
...      child 1: RenderConstrainedBox#68d88 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        additionalConstraints: BoxConstraints(w=67.7, 0.0<=h<=Infinity)
...        child: RenderAspectRatio#74dc0 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: <none>
...          constraints: MISSING
...          size: MISSING
...          aspectRatio: 1.0
...      child 2: RenderGap#e2e90 NEEDS-LAYOUT NEEDS-PAINT
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        mainAxisExtent: 10.3
...        crossAxisExtent: 0.0
...        color: null
...        fallbackDirection: vertical
...      child 3: RenderParagraph#1a056 NEEDS-LAYOUT NEEDS-PAINT
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        textAlign: right
...        textDirection: ltr
...        softWrap: wrapping at box width
...        overflow: ellipsis
...        locale: en_US
...        maxLines: 2
...        text: TextSpan
...          debugLabel: ((englishLike bodyMedium 2021).merge(((blackCupertino bodyMedium).apply).apply)).merge(unknown)
...          inherit: false
...          color: Color(alpha: 1.0000, red: 0.0667, green: 0.1686, blue: 0.1333, colorSpace: ColorSpace.sRGB)
...          family: Tajawal
...          size: 14.4
...          weight: 700
...          letterSpacing: 0.3
...          baseline: alphabetic
...          height: 1.4x
...          leadingDistribution: even
...          decoration: Color(alpha: 1.0000, red: 0.0667, green: 0.0941, blue: 0.1529, colorSpace: ColorSpace.sRGB) TextDecoration.none
...          "White Rice 150g"
...      child 4: RenderGap#889c6 NEEDS-LAYOUT NEEDS-PAINT
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        mainAxisExtent: 3.1
...        crossAxisExtent: 0.0
...        color: null
...        fallbackDirection: vertical
...      child 5: RenderConstrainedBox#c4f85 NEEDS-LAYOUT NEEDS-PAINT
...        parentData: offset=Offset(0.0, 0.0); flex=1; fit=FlexFit.tight
...        constraints: MISSING
...        size: MISSING
...        additionalConstraints: BoxConstraints(w=0.0, h=0.0)
...      child 6: RenderGap#6be14 NEEDS-LAYOUT NEEDS-PAINT
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        mainAxisExtent: 4.1
...        crossAxisExtent: 0.0
...        color: null
...        fallbackDirection: vertical
...      child 7: RenderFlex#e4604 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        direction: horizontal
...        mainAxisAlignment: start
...        mainAxisSize: max
...        crossAxisAlignment: center
...        textDirection: ltr
...        verticalDirection: down
...        spacing: 0.0
...        child 1: RenderPhysicalShape#e92b1 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          elevation: 0.0
...          color: Color(alpha: 1.0000, red: 0.0627, green: 0.7255, blue: 0.5059, colorSpace: ColorSpace.sRGB)
...          shadowColor: Color(alpha: 1.0000, red: 0.0627, green: 0.7255, blue: 0.5059, colorSpace: ColorSpace.sRGB)
...          clipper: ShapeBorderClipper
...        child 2: RenderGap#48ab8 NEEDS-LAYOUT NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          mainAxisExtent: 8.2
...          crossAxisExtent: 0.0
...          color: null
...          fallbackDirection: vertical
...        child 3: RenderParagraph#e5df4 NEEDS-LAYOUT NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=1; fit=FlexFit.tight
...          constraints: MISSING
...          size: MISSING
...          textAlign: right
...          textDirection: ltr
...          softWrap: wrapping at box width
...          overflow: clip
...          locale: en_US
...          maxLines: unlimited
====================================================================================================
flutter: ║                             "nameI18n": {ar: بيري بروت, en: Berry Prot},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "juice",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1300,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 0,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 280,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a24548d4a2465a2f7a0765b",
flutter: ║                             "key": "classic_green",
flutter: ║                             "categoryId": "6a2453e74a2465a2f7a0711d",
flutter: ║                             "name": "Classic Green",
flutter: ║                             "nameI18n": {ar: كلاسيك جرين, en: Classic Green},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "juice",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1100,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 0,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 290,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a24548d4a2465a2f7a07660",
flutter: ║                             "key": "beet_punch",
flutter: ║                             "categoryId": "6a2453e74a2465a2f7a0711d",
flutter: ║                             "name": "Beet Punch",
flutter: ║                             "nameI18n": {ar: بيت بنش, en: Beet Punch},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "juice",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1100,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 0,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 300,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a24548e4a2465a2f7a07665",
flutter: ║                             "key": "orange_carrot",
flutter: ║                             "categoryId": "6a2453e74a2465a2f7a0711d",
flutter: ║                             "name": "Orange Carrot",
flutter: ║                             "nameI18n": {ar: برتقال وجزر, en: Orange Carrot},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "juice",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1100,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 0,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 310,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a24548e4a2465a2f7a0766a",
flutter: ║                             "key": "watermelon_mint",
flutter: ║                             "categoryId": "6a2453e74a2465a2f7a0711d",
flutter: ║                             "name": "Watermelon Mint",
flutter: ║                             "nameI18n": {ar: بطيخ بالنعناع, en: Watermelon Mint},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "juice",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1100,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 0,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 320,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        }
flutter: ║                     ]
flutter: ║                },
flutter: ║                {
flutter: ║                     "id": "6a2453e74a2465a2f7a07120",
flutter: ║                     "key": "drinks",
flutter: ║                     "name": "Drinks",
flutter: ║                     "nameI18n": {ar: المشروبات, en: Drinks},
flutter: ║                     "description": "",
flutter: ║                     "descriptionI18n": {ar: , en: },
flutter: ║                     "imageUrl": "",
flutter: ║                     "sortOrder": 90,
flutter: ║                     "products": [
flutter: ║                        {
flutter: ║                             "id": "6a2454914a2465a2f7a0767e",
flutter: ║                             "key": "protein_drink",
flutter: ║                             "categoryId": "6a2453e74a2465a2f7a07120",
flutter: ║                             "name": "Protein Drink",
flutter: ║                             "nameI18n": {ar: مشروب بروتين, en: Protein Drink},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "drink",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1900,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 0,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 360,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454924a2465a2f7a07683",
flutter: ║                             "key": "diet_iced_tea",
flutter: ║                             "categoryId": "6a2453e74a2465a2f7a07120",
flutter: ║                             "name": "Diet Iced Tea",
flutter: ║                             "nameI18n": {ar: ايس تى دايت, en: Diet Iced Tea},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "drink",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 400,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 0,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 370,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454924a2465a2f7a07688",
flutter: ║                             "key": "diet_soda",
flutter: ║                             "categoryId": "6a2453e74a2465a2f7a07120",
flutter: ║                             "name": "Diet Soda",
flutter: ║                             "nameI18n": {ar: صودا دايت, en: Diet Soda},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "drink",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 300,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 0,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 380,

======== Exception caught by rendering library =====================================================
The following assertion was thrown during performLayout():
RenderBox was not laid out: RenderDecoratedBox#12231 relayoutBoundary=up8 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
'package:flutter/src/rendering/box.dart':
Failed assertion: line 2251 pos 12: 'hasSize'


Either the assertion indicates an error in the framework itself, or we should provide substantially more information in this error message to help you determine and fix the underlying cause.
In either case, please report this assertion by filing a bug on GitHub:
https://github.com/flutter/flutter/issues/new?template=2_bug.yml

The relevant error-causing widget was:
Padding Padding:file:///Users/moali/AndroidStudioProjects/mobile_app/lib/presentation/main/menu/menu_screen.dart:1021:36
When the exception was thrown, this was the stack:
#2      RenderBox.size (package:flutter/src/rendering/box.dart:2251:12)
#3      RenderPadding.performLayout (package:flutter/src/rendering/shifted_box.dart:247:40)
#4      RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#5      ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#6      RenderFlex._computeSizes (package:flutter/src/rendering/flex.dart:1161:28)
#7      RenderFlex.performLayout (package:flutter/src/rendering/flex.dart:1255:32)
#8      RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#9      ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#10     RenderFlex._computeSizes (package:flutter/src/rendering/flex.dart:1161:28)
#11     RenderFlex.performLayout (package:flutter/src/rendering/flex.dart:1255:32)
#12     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#13     RenderPadding.performLayout (package:flutter/src/rendering/shifted_box.dart:243:12)
#14     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#15     ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#16     RenderFlex._computeSizes (package:flutter/src/rendering/flex.dart:1161:28)
#17     RenderFlex.performLayout (package:flutter/src/rendering/flex.dart:1255:32)
#18     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#19     RenderSliverToBoxAdapter.performLayout (package:flutter/src/rendering/sliver.dart:2020:12)
#20     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#21     RenderSliverEdgeInsetsPadding.performLayout (package:flutter/src/rendering/sliver_padding.dart:133:12)
#22     RenderSliverPadding.performLayout (package:flutter/src/rendering/sliver_padding.dart:371:11)
#23     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#24     RenderViewportBase.layoutChildSequence (package:flutter/src/rendering/viewport.dart:608:13)
#25     RenderViewport._attemptLayout (package:flutter/src/rendering/viewport.dart:1576:12)
#26     RenderViewport.performLayout (package:flutter/src/rendering/viewport.dart:1467:20)
#27     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#28     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#29     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#30     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#31     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#32     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#33     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#34     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#35     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#36     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#37     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#38     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#39     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#40     ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#41     RenderFlex._computeSizes (package:flutter/src/rendering/flex.dart:1202:26)
#42     RenderFlex.performLayout (package:flutter/src/rendering/flex.dart:1255:32)
#43     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#44     ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#45     RenderStack._computeSize (package:flutter/src/rendering/stack.dart:646:43)
#46     RenderStack.performLayout (package:flutter/src/rendering/stack.dart:673:12)
#47     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#48     RenderPadding.performLayout (package:flutter/src/rendering/shifted_box.dart:243:12)
#49     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#50     MultiChildLayoutDelegate.layoutChild (package:flutter/src/rendering/custom_layout.dart:180:12)
#51     _ScaffoldLayout.performLayout (package:flutter/src/material/scaffold.dart:1118:7)
#52     MultiChildLayoutDelegate._callPerformLayout (package:flutter/src/rendering/custom_layout.dart:249:7)
#53     RenderCustomMultiChildLayoutBox.performLayout (package:flutter/src/rendering/custom_layout.dart:419:14)
#54     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#55     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#56     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#57     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#58     _RenderCustomClip.performLayout (package:flutter/src/rendering/proxy_box.dart:1483:11)
#59     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#60     MultiChildLayoutDelegate.layoutChild (package:flutter/src/rendering/custom_layout.dart:180:12)
#61     _ScaffoldLayout.performLayout (package:flutter/src/material/scaffold.dart:1118:7)
#62     MultiChildLayoutDelegate._callPerformLayout (package:flutter/src/rendering/custom_layout.dart:249:7)
#63     RenderCustomMultiChildLayoutBox.performLayout (package:flutter/src/rendering/custom_layout.dart:419:14)
#64     RenderObject._layoutWithoutResize (package:flutter/src/rendering/object.dart:2548:7)
#65     PipelineOwner.flushLayout (package:flutter/src/rendering/object.dart:1112:18)
#66     PipelineOwner.flushLayout (package:flutter/src/rendering/object.dart:1125:15)
#67     RendererBinding.drawFrame (package:flutter/src/rendering/binding.dart:616:23)
#68     WidgetsBinding.drawFrame (package:flutter/src/widgets/binding.dart:1231:13)
#69     RendererBinding._handlePersistentFrameCallback (package:flutter/src/rendering/binding.dart:482:5)
#70     SchedulerBinding._invokeFrameCallback (package:flutter/src/scheduler/binding.dart:1442:15)
#71     SchedulerBinding.handleDrawFrame (package:flutter/src/scheduler/binding.dart:1355:9)
#72     SchedulerBinding._handleDrawFrame (package:flutter/src/scheduler/binding.dart:1208:5)
#73     _invoke (dart:ui/hooks.dart:316:13)
#74     PlatformDispatcher._drawFrame (dart:ui/platform_dispatcher.dart:428:5)
#75     _drawFrame (dart:ui/hooks.dart:288:31)
(elided 2 frames from class _AssertionError)
The following RenderObject was being processed when the exception was fired: RenderPadding#88809 relayoutBoundary=up7 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...  parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...  constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...  size: MISSING
...  padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...  textDirection: ltr
RenderObject: RenderPadding#88809 relayoutBoundary=up7 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
size: MISSING
padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
textDirection: ltr
...  child: RenderDecoratedBox#12231 relayoutBoundary=up8 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...    parentData: offset=Offset(0.0, 0.0) (can use size)
...    constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...    size: MISSING
...    decoration: BoxDecoration
...      color: Color(alpha: 0.9600, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)
...      border: Border.all(BorderSide(color: Color(alpha: 0.8400, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)))
...      borderRadius: BorderRadius.circular(20.5)
...    configuration: ImageConfiguration(bundle: PlatformAssetBundle#bc5d4(), devicePixelRatio: 3.0, locale: en_US, textDirection: TextDirection.ltr, platform: iOS)
...    child: RenderPadding#82336 relayoutBoundary=up9 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: <none> (can use size)
...      constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...      size: MISSING
...      padding: EdgeInsets(1.0, 13.3, 1.0, 13.3) + EdgeInsetsDirectional(12.3, 0.0, 12.3, 0.0)
...      textDirection: ltr
...      child: RenderFlex#e4c6a relayoutBoundary=up10 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(13.3, 13.3) (can use size)
...        constraints: BoxConstraints(0.0<=w<=342.6, 0.0<=h<=Infinity)
...        size: MISSING
...        direction: vertical
...        mainAxisAlignment: start
...        mainAxisSize: max
...        crossAxisAlignment: end
...        textDirection: ltr
...        verticalDirection: down
...        spacing: 0.0
...        child 1: RenderConstrainedBox#68d88 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          additionalConstraints: BoxConstraints(w=67.7, 0.0<=h<=Infinity)
...        child 2: RenderGap#e2e90 NEEDS-LAYOUT NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          mainAxisExtent: 10.3
...          crossAxisExtent: 0.0
...          color: null
...          fallbackDirection: vertical
...        child 3: RenderParagraph#1a056 NEEDS-LAYOUT NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          textAlign: right
...          textDirection: ltr
...          softWrap: wrapping at box width
...          overflow: ellipsis
...          locale: en_US
...          maxLines: 2
...        child 4: RenderGap#889c6 NEEDS-LAYOUT NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          mainAxisExtent: 3.1
...          crossAxisExtent: 0.0
...          color: null
...          fallbackDirection: vertical
...        child 5: RenderConstrainedBox#c4f85 NEEDS-LAYOUT NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=1; fit=FlexFit.tight
...          constraints: MISSING
...          size: MISSING
...          additionalConstraints: BoxConstraints(w=0.0, h=0.0)
...        child 6: RenderGap#6be14 NEEDS-LAYOUT NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          mainAxisExtent: 4.1
...          crossAxisExtent: 0.0
...          color: null
...          fallbackDirection: vertical
...        child 7: RenderFlex#e4604 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          direction: horizontal
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: center
...          textDirection: ltr
...          verticalDirection: down
...          spacing: 0.0
====================================================================================================
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454934a2465a2f7a0768d",
flutter: ║                             "key": "water",
flutter: ║                             "categoryId": "6a2453e74a2465a2f7a07120",
flutter: ║                             "name": "Water",
flutter: ║                             "nameI18n": {ar: مياه عادية, en: Water},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "drink",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 200,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 0,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 390,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        }
flutter: ║                     ]
flutter: ║                },
flutter: ║                {
flutter: ║                     "id": "6a2453e84a2465a2f7a07123",
flutter: ║                     "key": "ice_cream",
flutter: ║                     "name": "Ice Cream",
flutter: ║                     "nameI18n": {ar: الايس كريم, en: Ice Cream},
flutter: ║                     "description": "",
flutter: ║                     "descriptionI18n": {ar: , en: },
flutter: ║                     "imageUrl": "",
flutter: ║                     "sortOrder": 100,
flutter: ║                     "products": [
flutter: ║                        {
flutter: ║                             "id": "6a24548f4a2465a2f7a0766f",
flutter: ║                             "key": "vanilla_ice_cream",
flutter: ║                             "categoryId": "6a2453e84a2465a2f7a07123",
flutter: ║                             "name": "Vanilla Ice Cream",
flutter: ║                             "nameI18n": {ar: ايس كريم فانيليا, en: Vanilla Ice Cream},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "ice_cream",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1300,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 0,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 330,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454904a2465a2f7a07674",
flutter: ║                             "key": "chocolate_ice_cream",
flutter: ║                             "categoryId": "6a2453e84a2465a2f7a07123",
flutter: ║                             "name": "Chocolate Ice Cream",
flutter: ║                             "nameI18n": {ar: ايس كريم شوكولا, en: Chocolate Ice Cream},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "ice_cream",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 1300,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 0,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 340,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2454914a2465a2f7a07679",
flutter: ║                             "key": "ice_cream_addon",
flutter: ║                             "categoryId": "6a2453e84a2465a2f7a07123",
flutter: ║                             "name": "Ice Cream Add-on",
flutter: ║                             "nameI18n": {ar: اضافة ايس كريم, en: Ice Cream Add-on},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
flutter: ║                             "imageUrl": "",
flutter: ║                             "itemType": "ice_cream",
flutter: ║                             "pricingModel": "fixed",
flutter: ║                             "priceHalala": 700,
flutter: ║                             "currency": "SAR",
flutter: ║                             "baseUnitGrams": 100,
flutter: ║                             "defaultWeightGrams": 0,
flutter: ║                             "minWeightGrams": 0,
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 350,
flutter: ║                             "ui": {cardSize: small},
flutter: ║                             "isCustomizable": false,
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        }
flutter: ║                     ]
flutter: ║                }
flutter: ║             ],
flutter: ║             "restaurantHours": {
flutter: ║                 "openTime": "00:00",
flutter: ║                 "closeTime": "23:59",
flutter: ║                 "isOpenNow": true,
flutter: ║                 "reason": null,
flutter: ║                 "message": null,
flutter: ║                 "messageAr": null,
flutter: ║                 "messageEn": null,
flutter: ║                 "pickupLocationId": "main",
flutter: ║                 "pickupLocationFound": true,
flutter: ║                 "defaultPickupLocationId": "main",
flutter: ║                 "availablePickupLocationIds": [main]
flutter: ║                 "businessDate": "2026-06-07",
flutter: ║                 "businessTomorrow": "2026-06-08",
flutter: ║                 "fulfillmentMethod": "pickup"
flutter: ║            }
flutter: ║        }
flutter: ║    }
flutter: ║
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: onChange -- MenuBloc, Change { currentState: MenuLoading(), nextState: MenuSuccess(Instance of 'OrderMenuModel') }
flutter: onCreate -- CartBloc
flutter: onChange -- CartBloc, Change { currentState: CartLoaded([], null, null, {}), nextState: CartLoaded([], null, null, {openTime: 00:00, closeTime: 23:59, isOpenNow: true, reason: null, message: null, messageAr: null, messageEn: null, pickupLocationId: main, pickupLocationFound: true, defaultPickupLocationId: main, availablePickupLocationIds: [main], businessDate: 2026-06-07, businessTomorrow: 2026-06-08, fulfillmentMethod: pickup}) }

======== Exception caught by rendering library =====================================================
The following assertion was thrown during performLayout():
RenderBox was not laid out: RenderPadding#88809 relayoutBoundary=up7 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
'package:flutter/src/rendering/box.dart':
Failed assertion: line 2251 pos 12: 'hasSize'


Either the assertion indicates an error in the framework itself, or we should provide substantially more information in this error message to help you determine and fix the underlying cause.
In either case, please report this assertion by filing a bug on GitHub:
https://github.com/flutter/flutter/issues/new?template=2_bug.yml

The relevant error-causing widget was:
Column Column:file:///Users/moali/AndroidStudioProjects/mobile_app/lib/presentation/main/menu/menu_screen.dart:1017:11
When the exception was thrown, this was the stack:
#2      RenderBox.size (package:flutter/src/rendering/box.dart:2251:12)
#3      ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:63:18)
#4      RenderFlex._computeSizes (package:flutter/src/rendering/flex.dart:1161:28)
#5      RenderFlex.performLayout (package:flutter/src/rendering/flex.dart:1255:32)
#6      RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#7      ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#8      RenderFlex._computeSizes (package:flutter/src/rendering/flex.dart:1161:28)
#9      RenderFlex.performLayout (package:flutter/src/rendering/flex.dart:1255:32)
#10     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#11     RenderPadding.performLayout (package:flutter/src/rendering/shifted_box.dart:243:12)
#12     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#13     ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#14     RenderFlex._computeSizes (package:flutter/src/rendering/flex.dart:1161:28)
#15     RenderFlex.performLayout (package:flutter/src/rendering/flex.dart:1255:32)
#16     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#17     RenderSliverToBoxAdapter.performLayout (package:flutter/src/rendering/sliver.dart:2020:12)
#18     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#19     RenderSliverEdgeInsetsPadding.performLayout (package:flutter/src/rendering/sliver_padding.dart:133:12)
#20     RenderSliverPadding.performLayout (package:flutter/src/rendering/sliver_padding.dart:371:11)
#21     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#22     RenderViewportBase.layoutChildSequence (package:flutter/src/rendering/viewport.dart:608:13)
#23     RenderViewport._attemptLayout (package:flutter/src/rendering/viewport.dart:1576:12)
#24     RenderViewport.performLayout (package:flutter/src/rendering/viewport.dart:1467:20)
#25     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#26     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#27     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#28     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#29     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#30     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#31     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#32     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#33     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#34     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#35     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#36     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#37     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#38     ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#39     RenderFlex._computeSizes (package:flutter/src/rendering/flex.dart:1202:26)
#40     RenderFlex.performLayout (package:flutter/src/rendering/flex.dart:1255:32)
#41     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#42     ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#43     RenderStack._computeSize (package:flutter/src/rendering/stack.dart:646:43)
#44     RenderStack.performLayout (package:flutter/src/rendering/stack.dart:673:12)
#45     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#46     RenderPadding.performLayout (package:flutter/src/rendering/shifted_box.dart:243:12)
#47     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#48     MultiChildLayoutDelegate.layoutChild (package:flutter/src/rendering/custom_layout.dart:180:12)
#49     _ScaffoldLayout.performLayout (package:flutter/src/material/scaffold.dart:1118:7)
#50     MultiChildLayoutDelegate._callPerformLayout (package:flutter/src/rendering/custom_layout.dart:249:7)
#51     RenderCustomMultiChildLayoutBox.performLayout (package:flutter/src/rendering/custom_layout.dart:419:14)
#52     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#53     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#54     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#55     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#56     _RenderCustomClip.performLayout (package:flutter/src/rendering/proxy_box.dart:1483:11)
#57     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#58     MultiChildLayoutDelegate.layoutChild (package:flutter/src/rendering/custom_layout.dart:180:12)
#59     _ScaffoldLayout.performLayout (package:flutter/src/material/scaffold.dart:1118:7)
#60     MultiChildLayoutDelegate._callPerformLayout (package:flutter/src/rendering/custom_layout.dart:249:7)
#61     RenderCustomMultiChildLayoutBox.performLayout (package:flutter/src/rendering/custom_layout.dart:419:14)
#62     RenderObject._layoutWithoutResize (package:flutter/src/rendering/object.dart:2548:7)
#63     PipelineOwner.flushLayout (package:flutter/src/rendering/object.dart:1112:18)
#64     PipelineOwner.flushLayout (package:flutter/src/rendering/object.dart:1125:15)
#65     RendererBinding.drawFrame (package:flutter/src/rendering/binding.dart:616:23)
#66     WidgetsBinding.drawFrame (package:flutter/src/widgets/binding.dart:1231:13)
#67     RendererBinding._handlePersistentFrameCallback (package:flutter/src/rendering/binding.dart:482:5)
#68     SchedulerBinding._invokeFrameCallback (package:flutter/src/scheduler/binding.dart:1442:15)
#69     SchedulerBinding.handleDrawFrame (package:flutter/src/scheduler/binding.dart:1355:9)
#70     SchedulerBinding._handleDrawFrame (package:flutter/src/scheduler/binding.dart:1208:5)
#71     _invoke (dart:ui/hooks.dart:316:13)
#72     PlatformDispatcher._drawFrame (dart:ui/platform_dispatcher.dart:428:5)
#73     _drawFrame (dart:ui/hooks.dart:288:31)
(elided 2 frames from class _AssertionError)
The following RenderObject was being processed when the exception was fired: RenderFlex#833bc relayoutBoundary=up6 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...  parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...  constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...  size: MISSING
...  direction: vertical
...  mainAxisAlignment: start
...  mainAxisSize: max
...  crossAxisAlignment: center
...  verticalDirection: down
...  spacing: 0.0
RenderObject: RenderFlex#833bc relayoutBoundary=up6 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
size: MISSING
direction: vertical
mainAxisAlignment: start
mainAxisSize: max
crossAxisAlignment: center
verticalDirection: down
spacing: 0.0
...  child 1: RenderPadding#88809 relayoutBoundary=up7 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...    parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...    constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...    size: MISSING
...    padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...    textDirection: ltr
...    child: RenderDecoratedBox#12231 relayoutBoundary=up8 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0) (can use size)
...      constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...      size: MISSING
...      decoration: BoxDecoration
...        color: Color(alpha: 0.9600, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)
...        border: Border.all(BorderSide(color: Color(alpha: 0.8400, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)))
...        borderRadius: BorderRadius.circular(20.5)
...      configuration: ImageConfiguration(bundle: PlatformAssetBundle#bc5d4(), devicePixelRatio: 3.0, locale: en_US, textDirection: TextDirection.ltr, platform: iOS)
...      child: RenderPadding#82336 relayoutBoundary=up9 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: <none> (can use size)
...        constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...        size: MISSING
...        padding: EdgeInsets(1.0, 13.3, 1.0, 13.3) + EdgeInsetsDirectional(12.3, 0.0, 12.3, 0.0)
...        textDirection: ltr
...        child: RenderFlex#e4c6a relayoutBoundary=up10 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(13.3, 13.3) (can use size)
...          constraints: BoxConstraints(0.0<=w<=342.6, 0.0<=h<=Infinity)
...          size: MISSING
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: end
...          textDirection: ltr
...          verticalDirection: down
...          spacing: 0.0
...  child 2: RenderPadding#28458 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...    parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...    constraints: MISSING
...    size: MISSING
...    padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...    textDirection: ltr
...    child: RenderDecoratedBox#62872 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0)
...      constraints: MISSING
...      size: MISSING
...      decoration: BoxDecoration
...        color: Color(alpha: 0.9600, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)
...        border: Border.all(BorderSide(color: Color(alpha: 0.8400, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)))
...        borderRadius: BorderRadius.circular(20.5)
...      configuration: ImageConfiguration(bundle: PlatformAssetBundle#bc5d4(), devicePixelRatio: 3.0, locale: en_US, textDirection: TextDirection.ltr, platform: iOS)
...      child: RenderPadding#c1f07 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: <none>
...        constraints: MISSING
...        size: MISSING
...        padding: EdgeInsets(1.0, 13.3, 1.0, 13.3) + EdgeInsetsDirectional(12.3, 0.0, 12.3, 0.0)
...        textDirection: ltr
...        child: RenderFlex#720c1 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0)
...          constraints: MISSING
...          size: MISSING
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: end
...          textDirection: ltr
...          verticalDirection: down
...          spacing: 0.0
...  child 3: RenderPadding#0d64e NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...    parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...    constraints: MISSING
...    size: MISSING
...    padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...    textDirection: ltr
...    child: RenderDecoratedBox#8092a NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0)
...      constraints: MISSING
...      size: MISSING
...      decoration: BoxDecoration
...        color: Color(alpha: 0.9600, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)
...        border: Border.all(BorderSide(color: Color(alpha: 0.8400, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)))
...        borderRadius: BorderRadius.circular(20.5)
...      configuration: ImageConfiguration(bundle: PlatformAssetBundle#bc5d4(), devicePixelRatio: 3.0, locale: en_US, textDirection: TextDirection.ltr, platform: iOS)
...      child: RenderPadding#7fbf2 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: <none>
...        constraints: MISSING
...        size: MISSING
...        padding: EdgeInsets(1.0, 13.3, 1.0, 13.3) + EdgeInsetsDirectional(12.3, 0.0, 12.3, 0.0)
...        textDirection: ltr
...        child: RenderFlex#e018a NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0)
...          constraints: MISSING
...          size: MISSING
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: end
...          textDirection: ltr
...          verticalDirection: down
...          spacing: 0.0
...  child 4: RenderPadding#eecff NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...    parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...    constraints: MISSING
...    size: MISSING
...    padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...    textDirection: ltr
...    child: RenderDecoratedBox#4ae08 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0)
...      constraints: MISSING
...      size: MISSING
...      decoration: BoxDecoration
...        color: Color(alpha: 0.9600, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)
...        border: Border.all(BorderSide(color: Color(alpha: 0.8400, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)))
...        borderRadius: BorderRadius.circular(20.5)
...      configuration: ImageConfiguration(bundle: PlatformAssetBundle#bc5d4(), devicePixelRatio: 3.0, locale: en_US, textDirection: TextDirection.ltr, platform: iOS)
...      child: RenderPadding#2323e NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: <none>
...        constraints: MISSING
...        size: MISSING
...        padding: EdgeInsets(1.0, 13.3, 1.0, 13.3) + EdgeInsetsDirectional(12.3, 0.0, 12.3, 0.0)
...        textDirection: ltr
...        child: RenderFlex#232b5 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0)
...          constraints: MISSING
...          size: MISSING
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: end
...          textDirection: ltr
...          verticalDirection: down
...          spacing: 0.0
...  child 5: RenderPadding#2cab3 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...    parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...    constraints: MISSING
...    size: MISSING
...    padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...    textDirection: ltr
...    child: RenderDecoratedBox#f9b5d NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0)
...      constraints: MISSING
...      size: MISSING
...      decoration: BoxDecoration
...        color: Color(alpha: 0.9600, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)
...        border: Border.all(BorderSide(color: Color(alpha: 0.8400, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)))
...        borderRadius: BorderRadius.circular(20.5)
...      configuration: ImageConfiguration(bundle: PlatformAssetBundle#bc5d4(), devicePixelRatio: 3.0, locale: en_US, textDirection: TextDirection.ltr, platform: iOS)
...      child: RenderPadding#4d8ae NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: <none>
...        constraints: MISSING
...        size: MISSING
...        padding: EdgeInsets(1.0, 13.3, 1.0, 13.3) + EdgeInsetsDirectional(12.3, 0.0, 12.3, 0.0)
...        textDirection: ltr
...        child: RenderFlex#5a680 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0)
...          constraints: MISSING
...          size: MISSING
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: end
...          textDirection: ltr
...          verticalDirection: down
...          spacing: 0.0
...  child 6: RenderPadding#6db6e NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...    parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...    constraints: MISSING
...    size: MISSING
...    padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...    textDirection: ltr
...    child: RenderDecoratedBox#72774 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0)
...      constraints: MISSING
...      size: MISSING
...      decoration: BoxDecoration
...        color: Color(alpha: 0.9600, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)
...        border: Border.all(BorderSide(color: Color(alpha: 0.8400, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)))
...        borderRadius: BorderRadius.circular(20.5)
...      configuration: ImageConfiguration(bundle: PlatformAssetBundle#bc5d4(), devicePixelRatio: 3.0, locale: en_US, textDirection: TextDirection.ltr, platform: iOS)
...      child: RenderPadding#fc274 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: <none>
...        constraints: MISSING
...        size: MISSING
...        padding: EdgeInsets(1.0, 13.3, 1.0, 13.3) + EdgeInsetsDirectional(12.3, 0.0, 12.3, 0.0)
...        textDirection: ltr
...        child: RenderFlex#a8c4a NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0)
...          constraints: MISSING
...          size: MISSING
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: end
...          textDirection: ltr
...          verticalDirection: down
...          spacing: 0.0
...  child 7: RenderPadding#f8d8c NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...    parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...    constraints: MISSING
...    size: MISSING
...    padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...    textDirection: ltr
...    child: RenderDecoratedBox#9bccf NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0)
...      constraints: MISSING
...      size: MISSING
...      decoration: BoxDecoration
...        color: Color(alpha: 0.9600, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)
...        border: Border.all(BorderSide(color: Color(alpha: 0.8400, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)))
...        borderRadius: BorderRadius.circular(20.5)
...      configuration: ImageConfiguration(bundle: PlatformAssetBundle#bc5d4(), devicePixelRatio: 3.0, locale: en_US, textDirection: TextDirection.ltr, platform: iOS)
...      child: RenderPadding#be5b1 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: <none>
...        constraints: MISSING
...        size: MISSING
...        padding: EdgeInsets(1.0, 13.3, 1.0, 13.3) + EdgeInsetsDirectional(12.3, 0.0, 12.3, 0.0)
...        textDirection: ltr
...        child: RenderFlex#305ad NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0)
...          constraints: MISSING
...          size: MISSING
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: end
...          textDirection: ltr
...          verticalDirection: down
...          spacing: 0.0
====================================================================================================

======== Exception caught by rendering library =====================================================
The following assertion was thrown during performLayout():
RenderBox was not laid out: RenderFlex#833bc relayoutBoundary=up6 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
'package:flutter/src/rendering/box.dart':
Failed assertion: line 2251 pos 12: 'hasSize'


Either the assertion indicates an error in the framework itself, or we should provide substantially more information in this error message to help you determine and fix the underlying cause.
In either case, please report this assertion by filing a bug on GitHub:
https://github.com/flutter/flutter/issues/new?template=2_bug.yml

The relevant error-causing widget was:
Column Column:file:///Users/moali/AndroidStudioProjects/mobile_app/lib/presentation/main/menu/menu_screen.dart:1009:12
When the exception was thrown, this was the stack:
#2      RenderBox.size (package:flutter/src/rendering/box.dart:2251:12)
#3      ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:63:18)
#4      RenderFlex._computeSizes (package:flutter/src/rendering/flex.dart:1161:28)
#5      RenderFlex.performLayout (package:flutter/src/rendering/flex.dart:1255:32)
#6      RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#7      RenderPadding.performLayout (package:flutter/src/rendering/shifted_box.dart:243:12)
#8      RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#9      ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#10     RenderFlex._computeSizes (package:flutter/src/rendering/flex.dart:1161:28)
#11     RenderFlex.performLayout (package:flutter/src/rendering/flex.dart:1255:32)
#12     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#13     RenderSliverToBoxAdapter.performLayout (package:flutter/src/rendering/sliver.dart:2020:12)
#14     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#15     RenderSliverEdgeInsetsPadding.performLayout (package:flutter/src/rendering/sliver_padding.dart:133:12)
#16     RenderSliverPadding.performLayout (package:flutter/src/rendering/sliver_padding.dart:371:11)
#17     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#18     RenderViewportBase.layoutChildSequence (package:flutter/src/rendering/viewport.dart:608:13)
#19     RenderViewport._attemptLayout (package:flutter/src/rendering/viewport.dart:1576:12)
#20     RenderViewport.performLayout (package:flutter/src/rendering/viewport.dart:1467:20)
#21     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#22     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#23     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#24     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#25     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#26     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#27     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#28     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#29     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#30     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#31     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#32     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#33     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#34     ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#35     RenderFlex._computeSizes (package:flutter/src/rendering/flex.dart:1202:26)
#36     RenderFlex.performLayout (package:flutter/src/rendering/flex.dart:1255:32)
#37     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#38     ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#39     RenderStack._computeSize (package:flutter/src/rendering/stack.dart:646:43)
#40     RenderStack.performLayout (package:flutter/src/rendering/stack.dart:673:12)
#41     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#42     RenderPadding.performLayout (package:flutter/src/rendering/shifted_box.dart:243:12)
#43     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#44     MultiChildLayoutDelegate.layoutChild (package:flutter/src/rendering/custom_layout.dart:180:12)
#45     _ScaffoldLayout.performLayout (package:flutter/src/material/scaffold.dart:1118:7)
#46     MultiChildLayoutDelegate._callPerformLayout (package:flutter/src/rendering/custom_layout.dart:249:7)
#47     RenderCustomMultiChildLayoutBox.performLayout (package:flutter/src/rendering/custom_layout.dart:419:14)
#48     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#49     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#50     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#51     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#52     _RenderCustomClip.performLayout (package:flutter/src/rendering/proxy_box.dart:1483:11)
#53     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#54     MultiChildLayoutDelegate.layoutChild (package:flutter/src/rendering/custom_layout.dart:180:12)
#55     _ScaffoldLayout.performLayout (package:flutter/src/material/scaffold.dart:1118:7)
#56     MultiChildLayoutDelegate._callPerformLayout (package:flutter/src/rendering/custom_layout.dart:249:7)
#57     RenderCustomMultiChildLayoutBox.performLayout (package:flutter/src/rendering/custom_layout.dart:419:14)
#58     RenderObject._layoutWithoutResize (package:flutter/src/rendering/object.dart:2548:7)
#59     PipelineOwner.flushLayout (package:flutter/src/rendering/object.dart:1112:18)
#60     PipelineOwner.flushLayout (package:flutter/src/rendering/object.dart:1125:15)
#61     RendererBinding.drawFrame (package:flutter/src/rendering/binding.dart:616:23)
#62     WidgetsBinding.drawFrame (package:flutter/src/widgets/binding.dart:1231:13)
#63     RendererBinding._handlePersistentFrameCallback (package:flutter/src/rendering/binding.dart:482:5)
#64     SchedulerBinding._invokeFrameCallback (package:flutter/src/scheduler/binding.dart:1442:15)
#65     SchedulerBinding.handleDrawFrame (package:flutter/src/scheduler/binding.dart:1355:9)
#66     SchedulerBinding._handleDrawFrame (package:flutter/src/scheduler/binding.dart:1208:5)
#67     _invoke (dart:ui/hooks.dart:316:13)
#68     PlatformDispatcher._drawFrame (dart:ui/platform_dispatcher.dart:428:5)
#69     _drawFrame (dart:ui/hooks.dart:288:31)
(elided 2 frames from class _AssertionError)
The following RenderObject was being processed when the exception was fired: RenderFlex#8765d relayoutBoundary=up5 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...  parentData: offset=Offset(0.0, 0.0) (can use size)
...  constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...  size: MISSING
...  direction: vertical
...  mainAxisAlignment: start
...  mainAxisSize: max
...  crossAxisAlignment: start
...  textDirection: ltr
...  verticalDirection: down
...  spacing: 0.0
RenderObject: RenderFlex#8765d relayoutBoundary=up5 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
parentData: offset=Offset(0.0, 0.0) (can use size)
constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
size: MISSING
direction: vertical
mainAxisAlignment: start
mainAxisSize: max
crossAxisAlignment: start
textDirection: ltr
verticalDirection: down
spacing: 0.0
...  child 1: RenderFlex#de5b0 relayoutBoundary=up6 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...    parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...    constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...    size: Size(49.6, 29.0)
...    direction: vertical
...    mainAxisAlignment: start
...    mainAxisSize: max
...    crossAxisAlignment: start
...    textDirection: ltr
...    verticalDirection: down
...    spacing: 0.0
...    child 1: RenderParagraph#5c027 relayoutBoundary=up7 NEEDS-PAINT
...      parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...      constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...      size: Size(49.6, 29.0)
...      textAlign: start
...      textDirection: ltr
...      softWrap: wrapping at box width
...      overflow: clip
...      locale: en_US
...      maxLines: unlimited
...      text: TextSpan
...        debugLabel: ((englishLike bodyMedium 2021).merge(((blackCupertino bodyMedium).apply).apply)).merge(unknown)
...        inherit: false
...        color: Color(alpha: 1.0000, red: 0.0667, green: 0.0941, blue: 0.1529, colorSpace: ColorSpace.sRGB)
...        family: Tajawal
...        size: 20.5
...        weight: 700
...        letterSpacing: 0.3
...        baseline: alphabetic
...        height: 1.4x
...        leadingDistribution: even
...        decoration: Color(alpha: 1.0000, red: 0.0667, green: 0.0941, blue: 0.1529, colorSpace: ColorSpace.sRGB) TextDecoration.none
...        "Carbs"
...  child 2: RenderGap#6278b relayoutBoundary=up6 NEEDS-PAINT
...    parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...    constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...    size: Size(0.0, 14.4)
...    mainAxisExtent: 14.4
...    crossAxisExtent: 0.0
...    color: null
...    fallbackDirection: vertical
...  child 3: RenderFlex#833bc relayoutBoundary=up6 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...    parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...    constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...    size: MISSING
...    direction: vertical
...    mainAxisAlignment: start
...    mainAxisSize: max
...    crossAxisAlignment: center
...    verticalDirection: down
...    spacing: 0.0
...    child 1: RenderPadding#88809 relayoutBoundary=up7 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...      constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...      size: MISSING
...      padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...      textDirection: ltr
...      child: RenderDecoratedBox#12231 relayoutBoundary=up8 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0) (can use size)
...        constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...        size: MISSING
...        decoration: BoxDecoration
...          color: Color(alpha: 0.9600, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)
...          border: Border.all(BorderSide(color: Color(alpha: 0.8400, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)))
...          borderRadius: BorderRadius.circular(20.5)
...        configuration: ImageConfiguration(bundle: PlatformAssetBundle#bc5d4(), devicePixelRatio: 3.0, locale: en_US, textDirection: TextDirection.ltr, platform: iOS)
...        child: RenderPadding#82336 relayoutBoundary=up9 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: <none> (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: MISSING
...          padding: EdgeInsets(1.0, 13.3, 1.0, 13.3) + EdgeInsetsDirectional(12.3, 0.0, 12.3, 0.0)
...          textDirection: ltr
...    child 2: RenderPadding#28458 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...      constraints: MISSING
...      size: MISSING
...      padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...      textDirection: ltr
...      child: RenderDecoratedBox#62872 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0)
...        constraints: MISSING
...        size: MISSING
...        decoration: BoxDecoration
...          color: Color(alpha: 0.9600, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)
...          border: Border.all(BorderSide(color: Color(alpha: 0.8400, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)))
...          borderRadius: BorderRadius.circular(20.5)
...        configuration: ImageConfiguration(bundle: PlatformAssetBundle#bc5d4(), devicePixelRatio: 3.0, locale: en_US, textDirection: TextDirection.ltr, platform: iOS)
...        child: RenderPadding#c1f07 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: <none>
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(1.0, 13.3, 1.0, 13.3) + EdgeInsetsDirectional(12.3, 0.0, 12.3, 0.0)
...          textDirection: ltr
...    child 3: RenderPadding#0d64e NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...      constraints: MISSING
...      size: MISSING
...      padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...      textDirection: ltr
...      child: RenderDecoratedBox#8092a NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0)
...        constraints: MISSING
...        size: MISSING
...        decoration: BoxDecoration
...          color: Color(alpha: 0.9600, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)
...          border: Border.all(BorderSide(color: Color(alpha: 0.8400, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)))
...          borderRadius: BorderRadius.circular(20.5)
...        configuration: ImageConfiguration(bundle: PlatformAssetBundle#bc5d4(), devicePixelRatio: 3.0, locale: en_US, textDirection: TextDirection.ltr, platform: iOS)
...        child: RenderPadding#7fbf2 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: <none>
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(1.0, 13.3, 1.0, 13.3) + EdgeInsetsDirectional(12.3, 0.0, 12.3, 0.0)
...          textDirection: ltr
...    child 4: RenderPadding#eecff NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...      constraints: MISSING
...      size: MISSING
...      padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...      textDirection: ltr
...      child: RenderDecoratedBox#4ae08 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0)
...        constraints: MISSING
...        size: MISSING
...        decoration: BoxDecoration
...          color: Color(alpha: 0.9600, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)
...          border: Border.all(BorderSide(color: Color(alpha: 0.8400, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)))
...          borderRadius: BorderRadius.circular(20.5)
...        configuration: ImageConfiguration(bundle: PlatformAssetBundle#bc5d4(), devicePixelRatio: 3.0, locale: en_US, textDirection: TextDirection.ltr, platform: iOS)
...        child: RenderPadding#2323e NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: <none>
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(1.0, 13.3, 1.0, 13.3) + EdgeInsetsDirectional(12.3, 0.0, 12.3, 0.0)
...          textDirection: ltr
...    child 5: RenderPadding#2cab3 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...      constraints: MISSING
...      size: MISSING
...      padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...      textDirection: ltr
...      child: RenderDecoratedBox#f9b5d NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0)
...        constraints: MISSING
...        size: MISSING
...        decoration: BoxDecoration
...          color: Color(alpha: 0.9600, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)
...          border: Border.all(BorderSide(color: Color(alpha: 0.8400, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)))
...          borderRadius: BorderRadius.circular(20.5)
...        configuration: ImageConfiguration(bundle: PlatformAssetBundle#bc5d4(), devicePixelRatio: 3.0, locale: en_US, textDirection: TextDirection.ltr, platform: iOS)
...        child: RenderPadding#4d8ae NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: <none>
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(1.0, 13.3, 1.0, 13.3) + EdgeInsetsDirectional(12.3, 0.0, 12.3, 0.0)
...          textDirection: ltr
...    child 6: RenderPadding#6db6e NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...      constraints: MISSING
...      size: MISSING
...      padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...      textDirection: ltr
...      child: RenderDecoratedBox#72774 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0)
...        constraints: MISSING
...        size: MISSING
...        decoration: BoxDecoration
...          color: Color(alpha: 0.9600, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)
...          border: Border.all(BorderSide(color: Color(alpha: 0.8400, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)))
...          borderRadius: BorderRadius.circular(20.5)
...        configuration: ImageConfiguration(bundle: PlatformAssetBundle#bc5d4(), devicePixelRatio: 3.0, locale: en_US, textDirection: TextDirection.ltr, platform: iOS)
...        child: RenderPadding#fc274 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: <none>
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(1.0, 13.3, 1.0, 13.3) + EdgeInsetsDirectional(12.3, 0.0, 12.3, 0.0)
...          textDirection: ltr
...    child 7: RenderPadding#f8d8c NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...      constraints: MISSING
...      size: MISSING
...      padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...      textDirection: ltr
...      child: RenderDecoratedBox#9bccf NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0)
...        constraints: MISSING
...        size: MISSING
...        decoration: BoxDecoration
...          color: Color(alpha: 0.9600, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)
...          border: Border.all(BorderSide(color: Color(alpha: 0.8400, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)))
...          borderRadius: BorderRadius.circular(20.5)
...        configuration: ImageConfiguration(bundle: PlatformAssetBundle#bc5d4(), devicePixelRatio: 3.0, locale: en_US, textDirection: TextDirection.ltr, platform: iOS)
...        child: RenderPadding#be5b1 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: <none>
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(1.0, 13.3, 1.0, 13.3) + EdgeInsetsDirectional(12.3, 0.0, 12.3, 0.0)
...          textDirection: ltr
====================================================================================================

======== Exception caught by rendering library =====================================================
The following assertion was thrown during performLayout():
RenderBox was not laid out: RenderFlex#8765d relayoutBoundary=up5 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
'package:flutter/src/rendering/box.dart':
Failed assertion: line 2251 pos 12: 'hasSize'


Either the assertion indicates an error in the framework itself, or we should provide substantially more information in this error message to help you determine and fix the underlying cause.
In either case, please report this assertion by filing a bug on GitHub:
https://github.com/flutter/flutter/issues/new?template=2_bug.yml

The relevant error-causing widget was:
Padding Padding:file:///Users/moali/AndroidStudioProjects/mobile_app/lib/presentation/main/menu/menu_screen.dart:296:46
When the exception was thrown, this was the stack:
#2      RenderBox.size (package:flutter/src/rendering/box.dart:2251:12)
#3      RenderPadding.performLayout (package:flutter/src/rendering/shifted_box.dart:247:40)
#4      RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#5      ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#6      RenderFlex._computeSizes (package:flutter/src/rendering/flex.dart:1161:28)
#7      RenderFlex.performLayout (package:flutter/src/rendering/flex.dart:1255:32)
#8      RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#9      RenderSliverToBoxAdapter.performLayout (package:flutter/src/rendering/sliver.dart:2020:12)
#10     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#11     RenderSliverEdgeInsetsPadding.performLayout (package:flutter/src/rendering/sliver_padding.dart:133:12)
#12     RenderSliverPadding.performLayout (package:flutter/src/rendering/sliver_padding.dart:371:11)
#13     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#14     RenderViewportBase.layoutChildSequence (package:flutter/src/rendering/viewport.dart:608:13)
#15     RenderViewport._attemptLayout (package:flutter/src/rendering/viewport.dart:1576:12)
#16     RenderViewport.performLayout (package:flutter/src/rendering/viewport.dart:1467:20)
#17     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#18     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#19     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#20     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#21     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#22     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#23     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#24     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#25     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#26     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#27     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#28     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#29     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#30     ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#31     RenderFlex._computeSizes (package:flutter/src/rendering/flex.dart:1202:26)
#32     RenderFlex.performLayout (package:flutter/src/rendering/flex.dart:1255:32)
#33     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#34     ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#35     RenderStack._computeSize (package:flutter/src/rendering/stack.dart:646:43)
#36     RenderStack.performLayout (package:flutter/src/rendering/stack.dart:673:12)
#37     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#38     RenderPadding.performLayout (package:flutter/src/rendering/shifted_box.dart:243:12)
#39     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#40     MultiChildLayoutDelegate.layoutChild (package:flutter/src/rendering/custom_layout.dart:180:12)
#41     _ScaffoldLayout.performLayout (package:flutter/src/material/scaffold.dart:1118:7)
#42     MultiChildLayoutDelegate._callPerformLayout (package:flutter/src/rendering/custom_layout.dart:249:7)
#43     RenderCustomMultiChildLayoutBox.performLayout (package:flutter/src/rendering/custom_layout.dart:419:14)
#44     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#45     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#46     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#47     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#48     _RenderCustomClip.performLayout (package:flutter/src/rendering/proxy_box.dart:1483:11)
#49     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#50     MultiChildLayoutDelegate.layoutChild (package:flutter/src/rendering/custom_layout.dart:180:12)
#51     _ScaffoldLayout.performLayout (package:flutter/src/material/scaffold.dart:1118:7)
#52     MultiChildLayoutDelegate._callPerformLayout (package:flutter/src/rendering/custom_layout.dart:249:7)
#53     RenderCustomMultiChildLayoutBox.performLayout (package:flutter/src/rendering/custom_layout.dart:419:14)
#54     RenderObject._layoutWithoutResize (package:flutter/src/rendering/object.dart:2548:7)
#55     PipelineOwner.flushLayout (package:flutter/src/rendering/object.dart:1112:18)
#56     PipelineOwner.flushLayout (package:flutter/src/rendering/object.dart:1125:15)
#57     RendererBinding.drawFrame (package:flutter/src/rendering/binding.dart:616:23)
#58     WidgetsBinding.drawFrame (package:flutter/src/widgets/binding.dart:1231:13)
#59     RendererBinding._handlePersistentFrameCallback (package:flutter/src/rendering/binding.dart:482:5)
#60     SchedulerBinding._invokeFrameCallback (package:flutter/src/scheduler/binding.dart:1442:15)
#61     SchedulerBinding.handleDrawFrame (package:flutter/src/scheduler/binding.dart:1355:9)
#62     SchedulerBinding._handleDrawFrame (package:flutter/src/scheduler/binding.dart:1208:5)
#63     _invoke (dart:ui/hooks.dart:316:13)
#64     PlatformDispatcher._drawFrame (dart:ui/platform_dispatcher.dart:428:5)
#65     _drawFrame (dart:ui/hooks.dart:288:31)
(elided 2 frames from class _AssertionError)
The following RenderObject was being processed when the exception was fired: RenderPadding#e6a7f relayoutBoundary=up4 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...  parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...  constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...  size: MISSING
...  padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...  textDirection: ltr
RenderObject: RenderPadding#e6a7f relayoutBoundary=up4 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
size: MISSING
padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
textDirection: ltr
...  child: RenderFlex#8765d relayoutBoundary=up5 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...    parentData: offset=Offset(0.0, 28.8) (can use size)
...    constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...    size: MISSING
...    direction: vertical
...    mainAxisAlignment: start
...    mainAxisSize: max
...    crossAxisAlignment: start
...    textDirection: ltr
...    verticalDirection: down
...    spacing: 0.0
...    child 1: RenderFlex#de5b0 relayoutBoundary=up6 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...      constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...      size: Size(49.6, 29.0)
...      direction: vertical
...      mainAxisAlignment: start
...      mainAxisSize: max
...      crossAxisAlignment: start
...      textDirection: ltr
...      verticalDirection: down
...      spacing: 0.0
...      child 1: RenderParagraph#5c027 relayoutBoundary=up7 NEEDS-PAINT
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...        constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...        size: Size(49.6, 29.0)
...        textAlign: start
...        textDirection: ltr
...        softWrap: wrapping at box width
...        overflow: clip
...        locale: en_US
...        maxLines: unlimited
...        text: TextSpan
...          debugLabel: ((englishLike bodyMedium 2021).merge(((blackCupertino bodyMedium).apply).apply)).merge(unknown)
...          inherit: false
...          color: Color(alpha: 1.0000, red: 0.0667, green: 0.0941, blue: 0.1529, colorSpace: ColorSpace.sRGB)
...          family: Tajawal
...          size: 20.5
...          weight: 700
...          letterSpacing: 0.3
...          baseline: alphabetic
...          height: 1.4x
...          leadingDistribution: even
...          decoration: Color(alpha: 1.0000, red: 0.0667, green: 0.0941, blue: 0.1529, colorSpace: ColorSpace.sRGB) TextDecoration.none
...          "Carbs"
...    child 2: RenderGap#6278b relayoutBoundary=up6 NEEDS-PAINT
...      parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...      constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...      size: Size(0.0, 14.4)
...      mainAxisExtent: 14.4
...      crossAxisExtent: 0.0
...      color: null
...      fallbackDirection: vertical
...    child 3: RenderFlex#833bc relayoutBoundary=up6 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...      constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...      size: MISSING
...      direction: vertical
...      mainAxisAlignment: start
...      mainAxisSize: max
...      crossAxisAlignment: center
...      verticalDirection: down
...      spacing: 0.0
...      child 1: RenderPadding#88809 relayoutBoundary=up7 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...        constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...        size: MISSING
...        padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...        textDirection: ltr
...        child: RenderDecoratedBox#12231 relayoutBoundary=up8 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0) (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: MISSING
...          decoration: BoxDecoration
...            color: Color(alpha: 0.9600, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)
...            border: Border.all(BorderSide(color: Color(alpha: 0.8400, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)))
...            borderRadius: BorderRadius.circular(20.5)
...          configuration: ImageConfiguration(bundle: PlatformAssetBundle#bc5d4(), devicePixelRatio: 3.0, locale: en_US, textDirection: TextDirection.ltr, platform: iOS)
...      child 2: RenderPadding#28458 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...        textDirection: ltr
...        child: RenderDecoratedBox#62872 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0)
...          constraints: MISSING
...          size: MISSING
...          decoration: BoxDecoration
...            color: Color(alpha: 0.9600, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)
...            border: Border.all(BorderSide(color: Color(alpha: 0.8400, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)))
...            borderRadius: BorderRadius.circular(20.5)
...          configuration: ImageConfiguration(bundle: PlatformAssetBundle#bc5d4(), devicePixelRatio: 3.0, locale: en_US, textDirection: TextDirection.ltr, platform: iOS)
...      child 3: RenderPadding#0d64e NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...        textDirection: ltr
...        child: RenderDecoratedBox#8092a NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0)
...          constraints: MISSING
...          size: MISSING
...          decoration: BoxDecoration
...            color: Color(alpha: 0.9600, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)
...            border: Border.all(BorderSide(color: Color(alpha: 0.8400, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)))
...            borderRadius: BorderRadius.circular(20.5)
...          configuration: ImageConfiguration(bundle: PlatformAssetBundle#bc5d4(), devicePixelRatio: 3.0, locale: en_US, textDirection: TextDirection.ltr, platform: iOS)
...      child 4: RenderPadding#eecff NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...        textDirection: ltr
...        child: RenderDecoratedBox#4ae08 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0)
...          constraints: MISSING
...          size: MISSING
...          decoration: BoxDecoration
...            color: Color(alpha: 0.9600, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)
...            border: Border.all(BorderSide(color: Color(alpha: 0.8400, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)))
...            borderRadius: BorderRadius.circular(20.5)
...          configuration: ImageConfiguration(bundle: PlatformAssetBundle#bc5d4(), devicePixelRatio: 3.0, locale: en_US, textDirection: TextDirection.ltr, platform: iOS)
...      child 5: RenderPadding#2cab3 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...        textDirection: ltr
...        child: RenderDecoratedBox#f9b5d NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0)
...          constraints: MISSING
...          size: MISSING
...          decoration: BoxDecoration
...            color: Color(alpha: 0.9600, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)
...            border: Border.all(BorderSide(color: Color(alpha: 0.8400, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)))
...            borderRadius: BorderRadius.circular(20.5)
...          configuration: ImageConfiguration(bundle: PlatformAssetBundle#bc5d4(), devicePixelRatio: 3.0, locale: en_US, textDirection: TextDirection.ltr, platform: iOS)
...      child 6: RenderPadding#6db6e NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...        textDirection: ltr
...        child: RenderDecoratedBox#72774 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0)
...          constraints: MISSING
...          size: MISSING
...          decoration: BoxDecoration
...            color: Color(alpha: 0.9600, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)
...            border: Border.all(BorderSide(color: Color(alpha: 0.8400, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)))
...            borderRadius: BorderRadius.circular(20.5)
...          configuration: ImageConfiguration(bundle: PlatformAssetBundle#bc5d4(), devicePixelRatio: 3.0, locale: en_US, textDirection: TextDirection.ltr, platform: iOS)
...      child 7: RenderPadding#f8d8c NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...        textDirection: ltr
...        child: RenderDecoratedBox#9bccf NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0)
...          constraints: MISSING
...          size: MISSING
...          decoration: BoxDecoration
...            color: Color(alpha: 0.9600, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)
...            border: Border.all(BorderSide(color: Color(alpha: 0.8400, red: 1.0000, green: 1.0000, blue: 1.0000, colorSpace: ColorSpace.sRGB)))
...            borderRadius: BorderRadius.circular(20.5)
...          configuration: ImageConfiguration(bundle: PlatformAssetBundle#bc5d4(), devicePixelRatio: 3.0, locale: en_US, textDirection: TextDirection.ltr, platform: iOS)
====================================================================================================

======== Exception caught by rendering library =====================================================
The following assertion was thrown during performLayout():
RenderBox was not laid out: RenderPadding#e6a7f relayoutBoundary=up4 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
'package:flutter/src/rendering/box.dart':
Failed assertion: line 2251 pos 12: 'hasSize'


Either the assertion indicates an error in the framework itself, or we should provide substantially more information in this error message to help you determine and fix the underlying cause.
In either case, please report this assertion by filing a bug on GitHub:
https://github.com/flutter/flutter/issues/new?template=2_bug.yml

The relevant error-causing widget was:
Column Column:file:///Users/moali/AndroidStudioProjects/mobile_app/lib/presentation/main/menu/menu_screen.dart:289:38
When the exception was thrown, this was the stack:
#2      RenderBox.size (package:flutter/src/rendering/box.dart:2251:12)
#3      ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:63:18)
#4      RenderFlex._computeSizes (package:flutter/src/rendering/flex.dart:1161:28)
#5      RenderFlex.performLayout (package:flutter/src/rendering/flex.dart:1255:32)
#6      RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#7      RenderSliverToBoxAdapter.performLayout (package:flutter/src/rendering/sliver.dart:2020:12)
#8      RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#9      RenderSliverEdgeInsetsPadding.performLayout (package:flutter/src/rendering/sliver_padding.dart:133:12)
#10     RenderSliverPadding.performLayout (package:flutter/src/rendering/sliver_padding.dart:371:11)
#11     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#12     RenderViewportBase.layoutChildSequence (package:flutter/src/rendering/viewport.dart:608:13)
#13     RenderViewport._attemptLayout (package:flutter/src/rendering/viewport.dart:1576:12)
#14     RenderViewport.performLayout (package:flutter/src/rendering/viewport.dart:1467:20)
#15     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#16     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#17     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#18     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#19     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#20     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#21     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#22     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#23     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#24     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#25     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#26     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#27     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#28     ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#29     RenderFlex._computeSizes (package:flutter/src/rendering/flex.dart:1202:26)
#30     RenderFlex.performLayout (package:flutter/src/rendering/flex.dart:1255:32)
#31     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#32     ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#33     RenderStack._computeSize (package:flutter/src/rendering/stack.dart:646:43)
#34     RenderStack.performLayout (package:flutter/src/rendering/stack.dart:673:12)
#35     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#36     RenderPadding.performLayout (package:flutter/src/rendering/shifted_box.dart:243:12)
#37     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#38     MultiChildLayoutDelegate.layoutChild (package:flutter/src/rendering/custom_layout.dart:180:12)
#39     _ScaffoldLayout.performLayout (package:flutter/src/material/scaffold.dart:1118:7)
#40     MultiChildLayoutDelegate._callPerformLayout (package:flutter/src/rendering/custom_layout.dart:249:7)
#41     RenderCustomMultiChildLayoutBox.performLayout (package:flutter/src/rendering/custom_layout.dart:419:14)
#42     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#43     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#44     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#45     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#46     _RenderCustomClip.performLayout (package:flutter/src/rendering/proxy_box.dart:1483:11)
#47     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#48     MultiChildLayoutDelegate.layoutChild (package:flutter/src/rendering/custom_layout.dart:180:12)
#49     _ScaffoldLayout.performLayout (package:flutter/src/material/scaffold.dart:1118:7)
#50     MultiChildLayoutDelegate._callPerformLayout (package:flutter/src/rendering/custom_layout.dart:249:7)
#51     RenderCustomMultiChildLayoutBox.performLayout (package:flutter/src/rendering/custom_layout.dart:419:14)
#52     RenderObject._layoutWithoutResize (package:flutter/src/rendering/object.dart:2548:7)
#53     PipelineOwner.flushLayout (package:flutter/src/rendering/object.dart:1112:18)
#54     PipelineOwner.flushLayout (package:flutter/src/rendering/object.dart:1125:15)
#55     RendererBinding.drawFrame (package:flutter/src/rendering/binding.dart:616:23)
#56     WidgetsBinding.drawFrame (package:flutter/src/widgets/binding.dart:1231:13)
#57     RendererBinding._handlePersistentFrameCallback (package:flutter/src/rendering/binding.dart:482:5)
#58     SchedulerBinding._invokeFrameCallback (package:flutter/src/scheduler/binding.dart:1442:15)
#59     SchedulerBinding.handleDrawFrame (package:flutter/src/scheduler/binding.dart:1355:9)
#60     SchedulerBinding._handleDrawFrame (package:flutter/src/scheduler/binding.dart:1208:5)
#61     _invoke (dart:ui/hooks.dart:316:13)
#62     PlatformDispatcher._drawFrame (dart:ui/platform_dispatcher.dart:428:5)
#63     _drawFrame (dart:ui/hooks.dart:288:31)
(elided 2 frames from class _AssertionError)
The following RenderObject was being processed when the exception was fired: RenderFlex#129b5 relayoutBoundary=up3 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...  parentData: paintOffset=Offset(0.0, 0.0) (can use size)
...  constraints: BoxConstraints(w=369.2, 0.0<=h<=Infinity)
...  size: MISSING
...  direction: vertical
...  mainAxisAlignment: start
...  mainAxisSize: max
...  crossAxisAlignment: start
...  textDirection: ltr
...  verticalDirection: down
...  spacing: 0.0
RenderObject: RenderFlex#129b5 relayoutBoundary=up3 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
parentData: paintOffset=Offset(0.0, 0.0) (can use size)
constraints: BoxConstraints(w=369.2, 0.0<=h<=Infinity)
size: MISSING
direction: vertical
mainAxisAlignment: start
mainAxisSize: max
crossAxisAlignment: start
textDirection: ltr
verticalDirection: down
spacing: 0.0
...  child 1: RenderGap#52938 relayoutBoundary=up4 NEEDS-PAINT
...    parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...    constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...    size: Size(0.0, 12.3)
...    mainAxisExtent: 12.3
...    crossAxisExtent: 0.0
...    color: null
...    fallbackDirection: vertical
...  child 2: RenderPadding#1b3d7 relayoutBoundary=up4 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...    parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...    constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...    size: Size(369.2, 482.9)
...    padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...    textDirection: ltr
...    child: RenderFlex#a055c relayoutBoundary=up5 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 28.8) (can use size)
...      constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...      size: Size(369.2, 454.2)
...      direction: vertical
...      mainAxisAlignment: start
...      mainAxisSize: max
...      crossAxisAlignment: start
...      textDirection: ltr
...      verticalDirection: down
...      spacing: 0.0
...      child 1: RenderFlex#d3c48 relayoutBoundary=up6 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...        constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...        size: Size(123.7, 29.0)
...        direction: vertical
...        mainAxisAlignment: start
...        mainAxisSize: max
...        crossAxisAlignment: start
...        textDirection: ltr
...        verticalDirection: down
...        spacing: 0.0
...        child 1: RenderParagraph#06b77 relayoutBoundary=up7 NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(123.7, 29.0)
...          textAlign: start
...          textDirection: ltr
...          softWrap: wrapping at box width
...          overflow: clip
...          locale: en_US
...          maxLines: unlimited
...      child 2: RenderGap#19f17 relayoutBoundary=up6 NEEDS-PAINT
...        parentData: offset=Offset(0.0, 29.0); flex=null; fit=null (can use size)
...        constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...        size: Size(0.0, 14.4)
...        mainAxisExtent: 14.4
...        crossAxisExtent: 0.0
...        color: null
...        fallbackDirection: vertical
...      child 3: RenderFlex#6bd5f relayoutBoundary=up6 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 43.4); flex=null; fit=null (can use size)
...        constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...        size: Size(369.2, 410.8)
...        direction: vertical
...        mainAxisAlignment: start
...        mainAxisSize: max
...        crossAxisAlignment: center
...        verticalDirection: down
...        spacing: 0.0
...        child 1: RenderPadding#d8b1d relayoutBoundary=up7 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(369.2, 205.4)
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 2: RenderPadding#4854e relayoutBoundary=up7 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 205.4); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(369.2, 205.4)
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...  child 3: RenderPadding#269a1 relayoutBoundary=up4 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...    parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...    constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...    size: Size(369.2, 3006.4)
...    padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...    textDirection: ltr
...    child: RenderFlex#ae13f relayoutBoundary=up5 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 28.8) (can use size)
...      constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...      size: Size(369.2, 2977.7)
...      direction: vertical
...      mainAxisAlignment: start
...      mainAxisSize: max
...      crossAxisAlignment: start
...      textDirection: ltr
...      verticalDirection: down
...      spacing: 0.0
...      child 1: RenderFlex#d760a relayoutBoundary=up6 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...        constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...        size: Size(50.3, 29.0)
...        direction: vertical
...        mainAxisAlignment: start
...        mainAxisSize: max
...        crossAxisAlignment: start
...        textDirection: ltr
...        verticalDirection: down
...        spacing: 0.0
...        child 1: RenderParagraph#8a4d2 relayoutBoundary=up7 NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(50.3, 29.0)
...          textAlign: start
...          textDirection: ltr
...          softWrap: wrapping at box width
...          overflow: clip
...          locale: en_US
...          maxLines: unlimited
...      child 2: RenderGap#baee6 relayoutBoundary=up6 NEEDS-PAINT
...        parentData: offset=Offset(0.0, 29.0); flex=null; fit=null (can use size)
...        constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...        size: Size(0.0, 14.4)
...        mainAxisExtent: 14.4
...        crossAxisExtent: 0.0
...        color: null
...        fallbackDirection: vertical
...      child 3: RenderFlex#7c70d relayoutBoundary=up6 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 43.4); flex=null; fit=null (can use size)
...        constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...        size: Size(369.2, 2934.3)
...        direction: vertical
...        mainAxisAlignment: start
...        mainAxisSize: max
...        crossAxisAlignment: center
...        verticalDirection: down
...        spacing: 0.0
...        child 1: RenderPadding#5dc59 relayoutBoundary=up7 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(369.2, 154.5)
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 2: RenderPadding#5baef relayoutBoundary=up7 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 154.5); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(369.2, 154.5)
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 3: RenderPadding#9d9ec relayoutBoundary=up7 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 308.9); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(369.2, 154.5)
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 4: RenderPadding#a73de relayoutBoundary=up7 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 463.4); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(369.2, 154.5)
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 5: RenderPadding#3f5ef relayoutBoundary=up7 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 617.8); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(369.2, 154.5)
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 6: RenderPadding#7fd41 relayoutBoundary=up7 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 772.3); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(369.2, 154.5)
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 7: RenderPadding#07578 relayoutBoundary=up7 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 926.8); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(369.2, 154.5)
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 8: RenderPadding#0aee3 relayoutBoundary=up7 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 1081.2); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(369.2, 154.5)
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 9: RenderPadding#70800 relayoutBoundary=up7 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 1235.7); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(369.2, 154.5)
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 10: RenderPadding#34d0a relayoutBoundary=up7 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 1390.1); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(369.2, 154.5)
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 11: RenderPadding#edaa9 relayoutBoundary=up7 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 1544.6); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(369.2, 154.5)
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 12: RenderPadding#24c25 relayoutBoundary=up7 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 1699.1); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(369.2, 154.5)
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 13: RenderPadding#4c9c6 relayoutBoundary=up7 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 1853.5); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(369.2, 154.4)
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 14: RenderPadding#1b169 relayoutBoundary=up7 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 2007.9); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(369.2, 154.4)
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 15: RenderPadding#aeb6d relayoutBoundary=up7 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 2162.3); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(369.2, 154.4)
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 16: RenderPadding#6afdf relayoutBoundary=up7 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 2316.7); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(369.2, 154.4)
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 17: RenderPadding#fe6c5 relayoutBoundary=up7 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 2471.1); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(369.2, 154.4)
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 18: RenderPadding#e34d3 relayoutBoundary=up7 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 2625.5); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(369.2, 154.4)
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 19: RenderPadding#7ca7c relayoutBoundary=up7 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 2779.9); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(369.2, 154.4)
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...  child 4: RenderPadding#e6a7f relayoutBoundary=up4 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...    parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...    constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...    size: MISSING
...    padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...    textDirection: ltr
...    child: RenderFlex#8765d relayoutBoundary=up5 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 28.8) (can use size)
...      constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...      size: MISSING
...      direction: vertical
...      mainAxisAlignment: start
...      mainAxisSize: max
...      crossAxisAlignment: start
...      textDirection: ltr
...      verticalDirection: down
...      spacing: 0.0
...      child 1: RenderFlex#de5b0 relayoutBoundary=up6 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...        constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...        size: Size(49.6, 29.0)
...        direction: vertical
...        mainAxisAlignment: start
...        mainAxisSize: max
...        crossAxisAlignment: start
...        textDirection: ltr
...        verticalDirection: down
...        spacing: 0.0
...        child 1: RenderParagraph#5c027 relayoutBoundary=up7 NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(49.6, 29.0)
...          textAlign: start
...          textDirection: ltr
...          softWrap: wrapping at box width
...          overflow: clip
...          locale: en_US
...          maxLines: unlimited
...      child 2: RenderGap#6278b relayoutBoundary=up6 NEEDS-PAINT
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...        constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...        size: Size(0.0, 14.4)
...        mainAxisExtent: 14.4
...        crossAxisExtent: 0.0
...        color: null
...        fallbackDirection: vertical
...      child 3: RenderFlex#833bc relayoutBoundary=up6 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...        constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...        size: MISSING
...        direction: vertical
...        mainAxisAlignment: start
...        mainAxisSize: max
...        crossAxisAlignment: center
...        verticalDirection: down
...        spacing: 0.0
...        child 1: RenderPadding#88809 relayoutBoundary=up7 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 2: RenderPadding#28458 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 3: RenderPadding#0d64e NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 4: RenderPadding#eecff NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 5: RenderPadding#2cab3 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 6: RenderPadding#6db6e NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 7: RenderPadding#f8d8c NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...  child 5: RenderPadding#e57e3 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...    parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...    constraints: MISSING
...    size: MISSING
...    padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...    textDirection: ltr
...    child: RenderFlex#e253c NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0)
...      constraints: MISSING
...      size: MISSING
...      direction: vertical
...      mainAxisAlignment: start
...      mainAxisSize: max
...      crossAxisAlignment: start
...      textDirection: ltr
...      verticalDirection: down
...      spacing: 0.0
...      child 1: RenderFlex#7cb75 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        direction: vertical
...        mainAxisAlignment: start
...        mainAxisSize: max
...        crossAxisAlignment: start
...        textDirection: ltr
...        verticalDirection: down
...        spacing: 0.0
...        child 1: RenderParagraph#0fb94 NEEDS-LAYOUT NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          textAlign: start
...          textDirection: ltr
...          softWrap: wrapping at box width
...          overflow: clip
...          locale: en_US
...          maxLines: unlimited
...      child 2: RenderGap#9a509 NEEDS-LAYOUT NEEDS-PAINT
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        mainAxisExtent: 14.4
...        crossAxisExtent: 0.0
...        color: null
...        fallbackDirection: vertical
...      child 3: RenderFlex#d89e3 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        direction: vertical
...        mainAxisAlignment: start
...        mainAxisSize: max
...        crossAxisAlignment: center
...        verticalDirection: down
...        spacing: 0.0
...        child 1: RenderPadding#536c3 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 2: RenderPadding#70a8f NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 3: RenderPadding#87e24 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...  child 6: RenderPadding#d3f4f NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...    parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...    constraints: MISSING
...    size: MISSING
...    padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...    textDirection: ltr
...    child: RenderFlex#1c0d7 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0)
...      constraints: MISSING
...      size: MISSING
...      direction: vertical
...      mainAxisAlignment: start
...      mainAxisSize: max
...      crossAxisAlignment: start
...      textDirection: ltr
...      verticalDirection: down
...      spacing: 0.0
...      child 1: RenderFlex#b016c NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        direction: vertical
...        mainAxisAlignment: start
...        mainAxisSize: max
...        crossAxisAlignment: start
...        textDirection: ltr
...        verticalDirection: down
...        spacing: 0.0
...        child 1: RenderParagraph#03ec7 NEEDS-LAYOUT NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          textAlign: start
...          textDirection: ltr
...          softWrap: wrapping at box width
...          overflow: clip
...          locale: en_US
...          maxLines: unlimited
...      child 2: RenderGap#f438b NEEDS-LAYOUT NEEDS-PAINT
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        mainAxisExtent: 14.4
...        crossAxisExtent: 0.0
...        color: null
...        fallbackDirection: vertical
...      child 3: RenderFlex#d15e2 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        direction: vertical
...        mainAxisAlignment: start
...        mainAxisSize: max
...        crossAxisAlignment: center
...        verticalDirection: down
...        spacing: 0.0
...        child 1: RenderPadding#7bfcb NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 2: RenderPadding#8af1a NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 3: RenderPadding#143ad NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 4: RenderPadding#cd98e NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 5: RenderPadding#626bd NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 6: RenderPadding#6a029 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 7: RenderPadding#435e6 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 8: RenderPadding#30266 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 9: RenderPadding#61fa6 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...  child 7: RenderPadding#51416 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...    parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...    constraints: MISSING
...    size: MISSING
...    padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...    textDirection: ltr
...    child: RenderFlex#cdd4e NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0)
...      constraints: MISSING
...      size: MISSING
...      direction: vertical
...      mainAxisAlignment: start
...      mainAxisSize: max
...      crossAxisAlignment: start
...      textDirection: ltr
...      verticalDirection: down
...      spacing: 0.0
...      child 1: RenderFlex#86fe5 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        direction: vertical
...        mainAxisAlignment: start
...        mainAxisSize: max
...        crossAxisAlignment: start
...        textDirection: ltr
...        verticalDirection: down
...        spacing: 0.0
...        child 1: RenderParagraph#3aca8 NEEDS-LAYOUT NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          textAlign: start
...          textDirection: ltr
...          softWrap: wrapping at box width
...          overflow: clip
...          locale: en_US
...          maxLines: unlimited
...      child 2: RenderGap#3f1de NEEDS-LAYOUT NEEDS-PAINT
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        mainAxisExtent: 14.4
...        crossAxisExtent: 0.0
...        color: null
...        fallbackDirection: vertical
...      child 3: RenderFlex#4e0b5 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        direction: vertical
...        mainAxisAlignment: start
...        mainAxisSize: max
...        crossAxisAlignment: center
...        verticalDirection: down
...        spacing: 0.0
...        child 1: RenderPadding#e1628 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 2: RenderPadding#26403 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 3: RenderPadding#ebb6d NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 4: RenderPadding#4bd6d NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 5: RenderPadding#3eeba NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 6: RenderPadding#b1e69 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 7: RenderPadding#a794e NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 8: RenderPadding#439c3 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...  child 8: RenderPadding#dfe8f NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...    parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...    constraints: MISSING
...    size: MISSING
...    padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...    textDirection: ltr
...    child: RenderFlex#e35fd NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0)
...      constraints: MISSING
...      size: MISSING
...      direction: vertical
...      mainAxisAlignment: start
...      mainAxisSize: max
...      crossAxisAlignment: start
...      textDirection: ltr
...      verticalDirection: down
...      spacing: 0.0
...      child 1: RenderFlex#b1332 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        direction: vertical
...        mainAxisAlignment: start
...        mainAxisSize: max
...        crossAxisAlignment: start
...        textDirection: ltr
...        verticalDirection: down
...        spacing: 0.0
...        child 1: RenderParagraph#7411f NEEDS-LAYOUT NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          textAlign: start
...          textDirection: ltr
...          softWrap: wrapping at box width
...          overflow: clip
...          locale: en_US
...          maxLines: unlimited
...      child 2: RenderGap#3a8ac NEEDS-LAYOUT NEEDS-PAINT
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        mainAxisExtent: 14.4
...        crossAxisExtent: 0.0
...        color: null
...        fallbackDirection: vertical
...      child 3: RenderFlex#4db5b NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        direction: vertical
...        mainAxisAlignment: start
...        mainAxisSize: max
...        crossAxisAlignment: center
...        verticalDirection: down
...        spacing: 0.0
...        child 1: RenderPadding#aa34e NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 2: RenderPadding#7a424 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 3: RenderPadding#f3d56 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 4: RenderPadding#1c1a6 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 5: RenderPadding#8d594 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 6: RenderPadding#64356 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...  child 9: RenderPadding#22e8a NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...    parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...    constraints: MISSING
...    size: MISSING
...    padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...    textDirection: ltr
...    child: RenderFlex#498aa NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0)
...      constraints: MISSING
...      size: MISSING
...      direction: vertical
...      mainAxisAlignment: start
...      mainAxisSize: max
...      crossAxisAlignment: start
...      textDirection: ltr
...      verticalDirection: down
...      spacing: 0.0
...      child 1: RenderFlex#c44dc NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        direction: vertical
...        mainAxisAlignment: start
...        mainAxisSize: max
...        crossAxisAlignment: start
...        textDirection: ltr
...        verticalDirection: down
...        spacing: 0.0
...        child 1: RenderParagraph#95e28 NEEDS-LAYOUT NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          textAlign: start
...          textDirection: ltr
...          softWrap: wrapping at box width
...          overflow: clip
...          locale: en_US
...          maxLines: unlimited
...      child 2: RenderGap#1492e NEEDS-LAYOUT NEEDS-PAINT
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        mainAxisExtent: 14.4
...        crossAxisExtent: 0.0
...        color: null
...        fallbackDirection: vertical
...      child 3: RenderFlex#16a9d NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        direction: vertical
...        mainAxisAlignment: start
...        mainAxisSize: max
...        crossAxisAlignment: center
...        verticalDirection: down
...        spacing: 0.0
...        child 1: RenderPadding#3934e NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 2: RenderPadding#ca0bb NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 3: RenderPadding#48b7d NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 4: RenderPadding#94d2b NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...  child 10: RenderPadding#a46f8 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...    parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...    constraints: MISSING
...    size: MISSING
...    padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...    textDirection: ltr
...    child: RenderFlex#7a7d4 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0)
...      constraints: MISSING
...      size: MISSING
...      direction: vertical
...      mainAxisAlignment: start
...      mainAxisSize: max
...      crossAxisAlignment: start
...      textDirection: ltr
...      verticalDirection: down
...      spacing: 0.0
...      child 1: RenderFlex#738b7 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        direction: vertical
...        mainAxisAlignment: start
...        mainAxisSize: max
...        crossAxisAlignment: start
...        textDirection: ltr
...        verticalDirection: down
...        spacing: 0.0
...        child 1: RenderParagraph#64796 NEEDS-LAYOUT NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          textAlign: start
...          textDirection: ltr
...          softWrap: wrapping at box width
...          overflow: clip
...          locale: en_US
...          maxLines: unlimited
...      child 2: RenderGap#aa7b3 NEEDS-LAYOUT NEEDS-PAINT
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        mainAxisExtent: 14.4
...        crossAxisExtent: 0.0
...        color: null
...        fallbackDirection: vertical
...      child 3: RenderFlex#78f48 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        direction: vertical
...        mainAxisAlignment: start
...        mainAxisSize: max
...        crossAxisAlignment: center
...        verticalDirection: down
...        spacing: 0.0
...        child 1: RenderPadding#0a620 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 2: RenderPadding#60ea8 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
...        child 3: RenderPadding#61b5b NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 0.0, 0.0, 12.3)
...          textDirection: ltr
====================================================================================================

======== Exception caught by rendering library =====================================================
The following assertion was thrown during performLayout():
RenderBox was not laid out: RenderFlex#129b5 relayoutBoundary=up3 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
'package:flutter/src/rendering/box.dart':
Failed assertion: line 2251 pos 12: 'hasSize'


Either the assertion indicates an error in the framework itself, or we should provide substantially more information in this error message to help you determine and fix the underlying cause.
In either case, please report this assertion by filing a bug on GitHub:
https://github.com/flutter/flutter/issues/new?template=2_bug.yml

The relevant error-causing widget was:
SliverToBoxAdapter SliverToBoxAdapter:file:///Users/moali/AndroidStudioProjects/mobile_app/lib/presentation/main/menu/menu_screen.dart:288:37
When the exception was thrown, this was the stack:
#2      RenderBox.size (package:flutter/src/rendering/box.dart:2251:12)
#3      RenderSliverToBoxAdapter.performLayout (package:flutter/src/rendering/sliver.dart:2023:31)
#4      RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#5      RenderSliverEdgeInsetsPadding.performLayout (package:flutter/src/rendering/sliver_padding.dart:133:12)
#6      RenderSliverPadding.performLayout (package:flutter/src/rendering/sliver_padding.dart:371:11)
#7      RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#8      RenderViewportBase.layoutChildSequence (package:flutter/src/rendering/viewport.dart:608:13)
#9      RenderViewport._attemptLayout (package:flutter/src/rendering/viewport.dart:1576:12)
#10     RenderViewport.performLayout (package:flutter/src/rendering/viewport.dart:1467:20)
#11     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#12     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#13     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#14     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#15     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#16     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#17     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#18     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#19     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#20     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#21     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#22     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#23     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#24     ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#25     RenderFlex._computeSizes (package:flutter/src/rendering/flex.dart:1202:26)
#26     RenderFlex.performLayout (package:flutter/src/rendering/flex.dart:1255:32)
#27     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#28     ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#29     RenderStack._computeSize (package:flutter/src/rendering/stack.dart:646:43)
#30     RenderStack.performLayout (package:flutter/src/rendering/stack.dart:673:12)
#31     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#32     RenderPadding.performLayout (package:flutter/src/rendering/shifted_box.dart:243:12)
#33     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#34     MultiChildLayoutDelegate.layoutChild (package:flutter/src/rendering/custom_layout.dart:180:12)
#35     _ScaffoldLayout.performLayout (package:flutter/src/material/scaffold.dart:1118:7)
#36     MultiChildLayoutDelegate._callPerformLayout (package:flutter/src/rendering/custom_layout.dart:249:7)
#37     RenderCustomMultiChildLayoutBox.performLayout (package:flutter/src/rendering/custom_layout.dart:419:14)
#38     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#39     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#40     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#41     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#42     _RenderCustomClip.performLayout (package:flutter/src/rendering/proxy_box.dart:1483:11)
#43     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#44     MultiChildLayoutDelegate.layoutChild (package:flutter/src/rendering/custom_layout.dart:180:12)
#45     _ScaffoldLayout.performLayout (package:flutter/src/material/scaffold.dart:1118:7)
#46     MultiChildLayoutDelegate._callPerformLayout (package:flutter/src/rendering/custom_layout.dart:249:7)
#47     RenderCustomMultiChildLayoutBox.performLayout (package:flutter/src/rendering/custom_layout.dart:419:14)
#48     RenderObject._layoutWithoutResize (package:flutter/src/rendering/object.dart:2548:7)
#49     PipelineOwner.flushLayout (package:flutter/src/rendering/object.dart:1112:18)
#50     PipelineOwner.flushLayout (package:flutter/src/rendering/object.dart:1125:15)
#51     RendererBinding.drawFrame (package:flutter/src/rendering/binding.dart:616:23)
#52     WidgetsBinding.drawFrame (package:flutter/src/widgets/binding.dart:1231:13)
#53     RendererBinding._handlePersistentFrameCallback (package:flutter/src/rendering/binding.dart:482:5)
#54     SchedulerBinding._invokeFrameCallback (package:flutter/src/scheduler/binding.dart:1442:15)
#55     SchedulerBinding.handleDrawFrame (package:flutter/src/scheduler/binding.dart:1355:9)
#56     SchedulerBinding._handleDrawFrame (package:flutter/src/scheduler/binding.dart:1208:5)
#57     _invoke (dart:ui/hooks.dart:316:13)
#58     PlatformDispatcher._drawFrame (dart:ui/platform_dispatcher.dart:428:5)
#59     _drawFrame (dart:ui/hooks.dart:288:31)
(elided 2 frames from class _AssertionError)
The following RenderObject was being processed when the exception was fired: RenderSliverToBoxAdapter#c2ba7 relayoutBoundary=up2 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...  parentData: paintOffset=Offset(0.0, 0.0) (can use size)
...  constraints: SliverConstraints(AxisDirection.down, GrowthDirection.forward, ScrollDirection.idle, scrollOffset: 0.0, precedingScrollExtent: 0.0, remainingPaintExtent: 443.1, crossAxisExtent: 369.2, crossAxisDirection: AxisDirection.right, viewportMainAxisExtent: 443.1, remainingCacheExtent: 693.1, cacheOrigin: 0.0)
...  geometry: null
RenderObject: RenderSliverToBoxAdapter#c2ba7 relayoutBoundary=up2 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
parentData: paintOffset=Offset(0.0, 0.0) (can use size)
constraints: SliverConstraints(AxisDirection.down, GrowthDirection.forward, ScrollDirection.idle, scrollOffset: 0.0, precedingScrollExtent: 0.0, remainingPaintExtent: 443.1, crossAxisExtent: 369.2, crossAxisDirection: AxisDirection.right, viewportMainAxisExtent: 443.1, remainingCacheExtent: 693.1, cacheOrigin: 0.0)
geometry: null
...  child: RenderFlex#129b5 relayoutBoundary=up3 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...    parentData: paintOffset=Offset(0.0, 0.0) (can use size)
...    constraints: BoxConstraints(w=369.2, 0.0<=h<=Infinity)
...    size: MISSING
...    direction: vertical
...    mainAxisAlignment: start
...    mainAxisSize: max
...    crossAxisAlignment: start
...    textDirection: ltr
...    verticalDirection: down
...    spacing: 0.0
...    child 1: RenderGap#52938 relayoutBoundary=up4 NEEDS-PAINT
...      parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...      constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...      size: Size(0.0, 12.3)
...      mainAxisExtent: 12.3
...      crossAxisExtent: 0.0
...      color: null
...      fallbackDirection: vertical
...    child 2: RenderPadding#1b3d7 relayoutBoundary=up4 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...      constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...      size: Size(369.2, 482.9)
...      padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...      textDirection: ltr
...      child: RenderFlex#a055c relayoutBoundary=up5 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 28.8) (can use size)
...        constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...        size: Size(369.2, 454.2)
...        direction: vertical
...        mainAxisAlignment: start
...        mainAxisSize: max
...        crossAxisAlignment: start
...        textDirection: ltr
...        verticalDirection: down
...        spacing: 0.0
...        child 1: RenderFlex#d3c48 relayoutBoundary=up6 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(123.7, 29.0)
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: start
...          textDirection: ltr
...          verticalDirection: down
...          spacing: 0.0
...        child 2: RenderGap#19f17 relayoutBoundary=up6 NEEDS-PAINT
...          parentData: offset=Offset(0.0, 29.0); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(0.0, 14.4)
...          mainAxisExtent: 14.4
...          crossAxisExtent: 0.0
...          color: null
...          fallbackDirection: vertical
...        child 3: RenderFlex#6bd5f relayoutBoundary=up6 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 43.4); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(369.2, 410.8)
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: center
...          verticalDirection: down
...          spacing: 0.0
...    child 3: RenderPadding#269a1 relayoutBoundary=up4 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...      constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...      size: Size(369.2, 3006.4)
...      padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...      textDirection: ltr
...      child: RenderFlex#ae13f relayoutBoundary=up5 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 28.8) (can use size)
...        constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...        size: Size(369.2, 2977.7)
...        direction: vertical
...        mainAxisAlignment: start
...        mainAxisSize: max
...        crossAxisAlignment: start
...        textDirection: ltr
...        verticalDirection: down
...        spacing: 0.0
...        child 1: RenderFlex#d760a relayoutBoundary=up6 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(50.3, 29.0)
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: start
...          textDirection: ltr
...          verticalDirection: down
...          spacing: 0.0
...        child 2: RenderGap#baee6 relayoutBoundary=up6 NEEDS-PAINT
...          parentData: offset=Offset(0.0, 29.0); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(0.0, 14.4)
...          mainAxisExtent: 14.4
...          crossAxisExtent: 0.0
...          color: null
...          fallbackDirection: vertical
...        child 3: RenderFlex#7c70d relayoutBoundary=up6 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 43.4); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(369.2, 2934.3)
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: center
...          verticalDirection: down
...          spacing: 0.0
...    child 4: RenderPadding#e6a7f relayoutBoundary=up4 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...      constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...      size: MISSING
...      padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...      textDirection: ltr
...      child: RenderFlex#8765d relayoutBoundary=up5 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 28.8) (can use size)
...        constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...        size: MISSING
...        direction: vertical
...        mainAxisAlignment: start
...        mainAxisSize: max
...        crossAxisAlignment: start
...        textDirection: ltr
...        verticalDirection: down
...        spacing: 0.0
...        child 1: RenderFlex#de5b0 relayoutBoundary=up6 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(49.6, 29.0)
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: start
...          textDirection: ltr
...          verticalDirection: down
...          spacing: 0.0
...        child 2: RenderGap#6278b relayoutBoundary=up6 NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(0.0, 14.4)
...          mainAxisExtent: 14.4
...          crossAxisExtent: 0.0
...          color: null
...          fallbackDirection: vertical
...        child 3: RenderFlex#833bc relayoutBoundary=up6 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: MISSING
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: center
...          verticalDirection: down
...          spacing: 0.0
...    child 5: RenderPadding#e57e3 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...      constraints: MISSING
...      size: MISSING
...      padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...      textDirection: ltr
...      child: RenderFlex#e253c NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0)
...        constraints: MISSING
...        size: MISSING
...        direction: vertical
...        mainAxisAlignment: start
...        mainAxisSize: max
...        crossAxisAlignment: start
...        textDirection: ltr
...        verticalDirection: down
...        spacing: 0.0
...        child 1: RenderFlex#7cb75 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: start
...          textDirection: ltr
...          verticalDirection: down
...          spacing: 0.0
...        child 2: RenderGap#9a509 NEEDS-LAYOUT NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          mainAxisExtent: 14.4
...          crossAxisExtent: 0.0
...          color: null
...          fallbackDirection: vertical
...        child 3: RenderFlex#d89e3 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: center
...          verticalDirection: down
...          spacing: 0.0
...    child 6: RenderPadding#d3f4f NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...      constraints: MISSING
...      size: MISSING
...      padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...      textDirection: ltr
...      child: RenderFlex#1c0d7 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0)
...        constraints: MISSING
...        size: MISSING
...        direction: vertical
...        mainAxisAlignment: start
...        mainAxisSize: max
...        crossAxisAlignment: start
...        textDirection: ltr
...        verticalDirection: down
...        spacing: 0.0
...        child 1: RenderFlex#b016c NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: start
...          textDirection: ltr
...          verticalDirection: down
...          spacing: 0.0
...        child 2: RenderGap#f438b NEEDS-LAYOUT NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          mainAxisExtent: 14.4
...          crossAxisExtent: 0.0
...          color: null
...          fallbackDirection: vertical
...        child 3: RenderFlex#d15e2 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: center
...          verticalDirection: down
...          spacing: 0.0
...    child 7: RenderPadding#51416 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...      constraints: MISSING
...      size: MISSING
...      padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...      textDirection: ltr
...      child: RenderFlex#cdd4e NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0)
...        constraints: MISSING
...        size: MISSING
...        direction: vertical
...        mainAxisAlignment: start
...        mainAxisSize: max
...        crossAxisAlignment: start
...        textDirection: ltr
...        verticalDirection: down
...        spacing: 0.0
...        child 1: RenderFlex#86fe5 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: start
...          textDirection: ltr
...          verticalDirection: down
...          spacing: 0.0
...        child 2: RenderGap#3f1de NEEDS-LAYOUT NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          mainAxisExtent: 14.4
...          crossAxisExtent: 0.0
...          color: null
...          fallbackDirection: vertical
...        child 3: RenderFlex#4e0b5 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: center
...          verticalDirection: down
...          spacing: 0.0
...    child 8: RenderPadding#dfe8f NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...      constraints: MISSING
...      size: MISSING
...      padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...      textDirection: ltr
...      child: RenderFlex#e35fd NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0)
...        constraints: MISSING
...        size: MISSING
...        direction: vertical
...        mainAxisAlignment: start
...        mainAxisSize: max
...        crossAxisAlignment: start
...        textDirection: ltr
...        verticalDirection: down
...        spacing: 0.0
...        child 1: RenderFlex#b1332 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: start
...          textDirection: ltr
...          verticalDirection: down
...          spacing: 0.0
...        child 2: RenderGap#3a8ac NEEDS-LAYOUT NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          mainAxisExtent: 14.4
...          crossAxisExtent: 0.0
...          color: null
...          fallbackDirection: vertical
...        child 3: RenderFlex#4db5b NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: center
...          verticalDirection: down
...          spacing: 0.0
...    child 9: RenderPadding#22e8a NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...      constraints: MISSING
...      size: MISSING
...      padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...      textDirection: ltr
...      child: RenderFlex#498aa NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0)
...        constraints: MISSING
...        size: MISSING
...        direction: vertical
...        mainAxisAlignment: start
...        mainAxisSize: max
...        crossAxisAlignment: start
...        textDirection: ltr
...        verticalDirection: down
...        spacing: 0.0
...        child 1: RenderFlex#c44dc NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: start
...          textDirection: ltr
...          verticalDirection: down
...          spacing: 0.0
...        child 2: RenderGap#1492e NEEDS-LAYOUT NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          mainAxisExtent: 14.4
...          crossAxisExtent: 0.0
...          color: null
...          fallbackDirection: vertical
...        child 3: RenderFlex#16a9d NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: center
...          verticalDirection: down
...          spacing: 0.0
...    child 10: RenderPadding#a46f8 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...      constraints: MISSING
...      size: MISSING
...      padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...      textDirection: ltr
...      child: RenderFlex#7a7d4 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0)
...        constraints: MISSING
...        size: MISSING
...        direction: vertical
...        mainAxisAlignment: start
...        mainAxisSize: max
...        crossAxisAlignment: start
...        textDirection: ltr
...        verticalDirection: down
...        spacing: 0.0
...        child 1: RenderFlex#738b7 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: start
...          textDirection: ltr
...          verticalDirection: down
...          spacing: 0.0
...        child 2: RenderGap#aa7b3 NEEDS-LAYOUT NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          mainAxisExtent: 14.4
...          crossAxisExtent: 0.0
...          color: null
...          fallbackDirection: vertical
...        child 3: RenderFlex#78f48 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: center
...          verticalDirection: down
...          spacing: 0.0
====================================================================================================

======== Exception caught by rendering library =====================================================
The following _TypeError was thrown during performLayout():
Null check operator used on a null value

The relevant error-causing widget was:
SliverPadding SliverPadding:file:///Users/moali/AndroidStudioProjects/mobile_app/lib/presentation/main/menu/menu_screen.dart:281:27
When the exception was thrown, this was the stack:
#0      RenderSliverEdgeInsetsPadding.performLayout (package:flutter/src/rendering/sliver_padding.dart:147:63)
#1      RenderSliverPadding.performLayout (package:flutter/src/rendering/sliver_padding.dart:371:11)
#2      RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#3      RenderViewportBase.layoutChildSequence (package:flutter/src/rendering/viewport.dart:608:13)
#4      RenderViewport._attemptLayout (package:flutter/src/rendering/viewport.dart:1576:12)
#5      RenderViewport.performLayout (package:flutter/src/rendering/viewport.dart:1467:20)
#6      RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#7      RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#8      RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#9      RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#10     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#11     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#12     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#13     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#14     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#15     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#16     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#17     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#18     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#19     ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#20     RenderFlex._computeSizes (package:flutter/src/rendering/flex.dart:1202:26)
#21     RenderFlex.performLayout (package:flutter/src/rendering/flex.dart:1255:32)
#22     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#23     ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#24     RenderStack._computeSize (package:flutter/src/rendering/stack.dart:646:43)
#25     RenderStack.performLayout (package:flutter/src/rendering/stack.dart:673:12)
#26     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#27     RenderPadding.performLayout (package:flutter/src/rendering/shifted_box.dart:243:12)
#28     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#29     MultiChildLayoutDelegate.layoutChild (package:flutter/src/rendering/custom_layout.dart:180:12)
#30     _ScaffoldLayout.performLayout (package:flutter/src/material/scaffold.dart:1118:7)
#31     MultiChildLayoutDelegate._callPerformLayout (package:flutter/src/rendering/custom_layout.dart:249:7)
#32     RenderCustomMultiChildLayoutBox.performLayout (package:flutter/src/rendering/custom_layout.dart:419:14)
#33     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#34     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#35     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#36     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#37     _RenderCustomClip.performLayout (package:flutter/src/rendering/proxy_box.dart:1483:11)
#38     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#39     MultiChildLayoutDelegate.layoutChild (package:flutter/src/rendering/custom_layout.dart:180:12)
#40     _ScaffoldLayout.performLayout (package:flutter/src/material/scaffold.dart:1118:7)
#41     MultiChildLayoutDelegate._callPerformLayout (package:flutter/src/rendering/custom_layout.dart:249:7)
#42     RenderCustomMultiChildLayoutBox.performLayout (package:flutter/src/rendering/custom_layout.dart:419:14)
#43     RenderObject._layoutWithoutResize (package:flutter/src/rendering/object.dart:2548:7)
#44     PipelineOwner.flushLayout (package:flutter/src/rendering/object.dart:1112:18)
#45     PipelineOwner.flushLayout (package:flutter/src/rendering/object.dart:1125:15)
#46     RendererBinding.drawFrame (package:flutter/src/rendering/binding.dart:616:23)
#47     WidgetsBinding.drawFrame (package:flutter/src/widgets/binding.dart:1231:13)
#48     RendererBinding._handlePersistentFrameCallback (package:flutter/src/rendering/binding.dart:482:5)
#49     SchedulerBinding._invokeFrameCallback (package:flutter/src/scheduler/binding.dart:1442:15)
#50     SchedulerBinding.handleDrawFrame (package:flutter/src/scheduler/binding.dart:1355:9)
#51     SchedulerBinding._handleDrawFrame (package:flutter/src/scheduler/binding.dart:1208:5)
#52     _invoke (dart:ui/hooks.dart:316:13)
#53     PlatformDispatcher._drawFrame (dart:ui/platform_dispatcher.dart:428:5)
#54     _drawFrame (dart:ui/hooks.dart:288:31)
The following RenderObject was being processed when the exception was fired: RenderSliverPadding#24cc9 relayoutBoundary=up1 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...  parentData: paintOffset=Offset(0.0, 0.0) (can use size)
...  constraints: SliverConstraints(AxisDirection.down, GrowthDirection.forward, ScrollDirection.idle, scrollOffset: 0.0, precedingScrollExtent: 0.0, remainingPaintExtent: 443.1, crossAxisExtent: 402.0, crossAxisDirection: AxisDirection.right, viewportMainAxisExtent: 443.1, remainingCacheExtent: 693.1, cacheOrigin: 0.0)
...  geometry: null
...  padding: EdgeInsetsDirectional(16.4, 0.0, 16.4, 123.2)
...  textDirection: ltr
RenderObject: RenderSliverPadding#24cc9 relayoutBoundary=up1 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
parentData: paintOffset=Offset(0.0, 0.0) (can use size)
constraints: SliverConstraints(AxisDirection.down, GrowthDirection.forward, ScrollDirection.idle, scrollOffset: 0.0, precedingScrollExtent: 0.0, remainingPaintExtent: 443.1, crossAxisExtent: 402.0, crossAxisDirection: AxisDirection.right, viewportMainAxisExtent: 443.1, remainingCacheExtent: 693.1, cacheOrigin: 0.0)
geometry: null
padding: EdgeInsetsDirectional(16.4, 0.0, 16.4, 123.2)
textDirection: ltr
...  child: RenderSliverToBoxAdapter#c2ba7 relayoutBoundary=up2 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...    parentData: paintOffset=Offset(0.0, 0.0) (can use size)
...    constraints: SliverConstraints(AxisDirection.down, GrowthDirection.forward, ScrollDirection.idle, scrollOffset: 0.0, precedingScrollExtent: 0.0, remainingPaintExtent: 443.1, crossAxisExtent: 369.2, crossAxisDirection: AxisDirection.right, viewportMainAxisExtent: 443.1, remainingCacheExtent: 693.1, cacheOrigin: 0.0)
...    geometry: null
...    child: RenderFlex#129b5 relayoutBoundary=up3 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: paintOffset=Offset(0.0, 0.0) (can use size)
...      constraints: BoxConstraints(w=369.2, 0.0<=h<=Infinity)
...      size: MISSING
...      direction: vertical
...      mainAxisAlignment: start
...      mainAxisSize: max
...      crossAxisAlignment: start
...      textDirection: ltr
...      verticalDirection: down
...      spacing: 0.0
...      child 1: RenderGap#52938 relayoutBoundary=up4 NEEDS-PAINT
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...        constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...        size: Size(0.0, 12.3)
...        mainAxisExtent: 12.3
...        crossAxisExtent: 0.0
...        color: null
...        fallbackDirection: vertical
...      child 2: RenderPadding#1b3d7 relayoutBoundary=up4 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...        constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...        size: Size(369.2, 482.9)
...        padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...        textDirection: ltr
...        child: RenderFlex#a055c relayoutBoundary=up5 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 28.8) (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(369.2, 454.2)
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: start
...          textDirection: ltr
...          verticalDirection: down
...          spacing: 0.0
...      child 3: RenderPadding#269a1 relayoutBoundary=up4 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...        constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...        size: Size(369.2, 3006.4)
...        padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...        textDirection: ltr
...        child: RenderFlex#ae13f relayoutBoundary=up5 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 28.8) (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(369.2, 2977.7)
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: start
...          textDirection: ltr
...          verticalDirection: down
...          spacing: 0.0
...      child 4: RenderPadding#e6a7f relayoutBoundary=up4 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...        constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...        size: MISSING
...        padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...        textDirection: ltr
...        child: RenderFlex#8765d relayoutBoundary=up5 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 28.8) (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: MISSING
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: start
...          textDirection: ltr
...          verticalDirection: down
...          spacing: 0.0
...      child 5: RenderPadding#e57e3 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...        textDirection: ltr
...        child: RenderFlex#e253c NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0)
...          constraints: MISSING
...          size: MISSING
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: start
...          textDirection: ltr
...          verticalDirection: down
...          spacing: 0.0
...      child 6: RenderPadding#d3f4f NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...        textDirection: ltr
...        child: RenderFlex#1c0d7 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0)
...          constraints: MISSING
...          size: MISSING
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: start
...          textDirection: ltr
...          verticalDirection: down
...          spacing: 0.0
...      child 7: RenderPadding#51416 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...        textDirection: ltr
...        child: RenderFlex#cdd4e NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0)
...          constraints: MISSING
...          size: MISSING
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: start
...          textDirection: ltr
...          verticalDirection: down
...          spacing: 0.0
...      child 8: RenderPadding#dfe8f NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...        textDirection: ltr
...        child: RenderFlex#e35fd NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0)
...          constraints: MISSING
...          size: MISSING
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: start
...          textDirection: ltr
...          verticalDirection: down
...          spacing: 0.0
...      child 9: RenderPadding#22e8a NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...        textDirection: ltr
...        child: RenderFlex#498aa NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0)
...          constraints: MISSING
...          size: MISSING
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: start
...          textDirection: ltr
...          verticalDirection: down
...          spacing: 0.0
...      child 10: RenderPadding#a46f8 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...        constraints: MISSING
...        size: MISSING
...        padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...        textDirection: ltr
...        child: RenderFlex#7a7d4 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0)
...          constraints: MISSING
...          size: MISSING
...          direction: vertical
...          mainAxisAlignment: start
...          mainAxisSize: max
...          crossAxisAlignment: start
...          textDirection: ltr
...          verticalDirection: down
...          spacing: 0.0
====================================================================================================

======== Exception caught by rendering library =====================================================
The following _TypeError was thrown during performLayout():
Null check operator used on a null value

The relevant error-causing widget was:
CustomScrollView CustomScrollView:file:///Users/moali/AndroidStudioProjects/mobile_app/lib/presentation/main/menu/menu_screen.dart:277:30
When the exception was thrown, this was the stack:
#0      RenderViewportBase.layoutChildSequence (package:flutter/src/rendering/viewport.dart:629:64)
#1      RenderViewport._attemptLayout (package:flutter/src/rendering/viewport.dart:1576:12)
#2      RenderViewport.performLayout (package:flutter/src/rendering/viewport.dart:1467:20)
#3      RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#4      RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#5      RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#6      RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#7      RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#8      RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#9      RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#10     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#11     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#12     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#13     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#14     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#15     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#16     ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#17     RenderFlex._computeSizes (package:flutter/src/rendering/flex.dart:1202:26)
#18     RenderFlex.performLayout (package:flutter/src/rendering/flex.dart:1255:32)
#19     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#20     ChildLayoutHelper.layoutChild (package:flutter/src/rendering/layout_helper.dart:62:11)
#21     RenderStack._computeSize (package:flutter/src/rendering/stack.dart:646:43)
#22     RenderStack.performLayout (package:flutter/src/rendering/stack.dart:673:12)
#23     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#24     RenderPadding.performLayout (package:flutter/src/rendering/shifted_box.dart:243:12)
#25     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#26     MultiChildLayoutDelegate.layoutChild (package:flutter/src/rendering/custom_layout.dart:180:12)
#27     _ScaffoldLayout.performLayout (package:flutter/src/material/scaffold.dart:1118:7)
#28     MultiChildLayoutDelegate._callPerformLayout (package:flutter/src/rendering/custom_layout.dart:249:7)
#29     RenderCustomMultiChildLayoutBox.performLayout (package:flutter/src/rendering/custom_layout.dart:419:14)
#30     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#31     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#32     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#33     RenderProxyBoxMixin.performLayout (package:flutter/src/rendering/proxy_box.dart:115:18)
#34     _RenderCustomClip.performLayout (package:flutter/src/rendering/proxy_box.dart:1483:11)
#35     RenderObject.layout (package:flutter/src/rendering/object.dart:2715:7)
#36     MultiChildLayoutDelegate.layoutChild (package:flutter/src/rendering/custom_layout.dart:180:12)
#37     _ScaffoldLayout.performLayout (package:flutter/src/material/scaffold.dart:1118:7)
#38     MultiChildLayoutDelegate._callPerformLayout (package:flutter/src/rendering/custom_layout.dart:249:7)
#39     RenderCustomMultiChildLayoutBox.performLayout (package:flutter/src/rendering/custom_layout.dart:419:14)
#40     RenderObject._layoutWithoutResize (package:flutter/src/rendering/object.dart:2548:7)
#41     PipelineOwner.flushLayout (package:flutter/src/rendering/object.dart:1112:18)
#42     PipelineOwner.flushLayout (package:flutter/src/rendering/object.dart:1125:15)
#43     RendererBinding.drawFrame (package:flutter/src/rendering/binding.dart:616:23)
#44     WidgetsBinding.drawFrame (package:flutter/src/widgets/binding.dart:1231:13)
#45     RendererBinding._handlePersistentFrameCallback (package:flutter/src/rendering/binding.dart:482:5)
#46     SchedulerBinding._invokeFrameCallback (package:flutter/src/scheduler/binding.dart:1442:15)
#47     SchedulerBinding.handleDrawFrame (package:flutter/src/scheduler/binding.dart:1355:9)
#48     SchedulerBinding._handleDrawFrame (package:flutter/src/scheduler/binding.dart:1208:5)
#49     _invoke (dart:ui/hooks.dart:316:13)
#50     PlatformDispatcher._drawFrame (dart:ui/platform_dispatcher.dart:428:5)
#51     _drawFrame (dart:ui/hooks.dart:288:31)
The following RenderObject was being processed when the exception was fired: RenderViewport#1d567 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...  needs compositing
...  parentData: <none> (can use size)
...  constraints: BoxConstraints(0.0<=w<=402.0, h=443.1)
...  size: Size(402.0, 443.1)
...  axisDirection: down
...  crossAxisDirection: right
...  offset: ScrollPositionWithSingleContext#e5138(offset: 0.0, range: null..null, viewport: 443.1, ScrollableState, BouncingScrollPhysics -> BouncingScrollPhysics -> RangeMaintainingScrollPhysics, IdleScrollActivity#f2e18, ScrollDirection.idle)
...  anchor: 0.0
RenderObject: RenderViewport#1d567 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
needs compositing
parentData: <none> (can use size)
constraints: BoxConstraints(0.0<=w<=402.0, h=443.1)
size: Size(402.0, 443.1)
axisDirection: down
crossAxisDirection: right
offset: ScrollPositionWithSingleContext#e5138(offset: 0.0, range: null..null, viewport: 443.1, ScrollableState, BouncingScrollPhysics -> BouncingScrollPhysics -> RangeMaintainingScrollPhysics, IdleScrollActivity#f2e18, ScrollDirection.idle)
anchor: 0.0
...  center child: RenderSliverPadding#24cc9 relayoutBoundary=up1 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...    parentData: paintOffset=Offset(0.0, 0.0) (can use size)
...    constraints: SliverConstraints(AxisDirection.down, GrowthDirection.forward, ScrollDirection.idle, scrollOffset: 0.0, precedingScrollExtent: 0.0, remainingPaintExtent: 443.1, crossAxisExtent: 402.0, crossAxisDirection: AxisDirection.right, viewportMainAxisExtent: 443.1, remainingCacheExtent: 693.1, cacheOrigin: 0.0)
...    geometry: null
...    padding: EdgeInsetsDirectional(16.4, 0.0, 16.4, 123.2)
...    textDirection: ltr
...    child: RenderSliverToBoxAdapter#c2ba7 relayoutBoundary=up2 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...      parentData: paintOffset=Offset(0.0, 0.0) (can use size)
...      constraints: SliverConstraints(AxisDirection.down, GrowthDirection.forward, ScrollDirection.idle, scrollOffset: 0.0, precedingScrollExtent: 0.0, remainingPaintExtent: 443.1, crossAxisExtent: 369.2, crossAxisDirection: AxisDirection.right, viewportMainAxisExtent: 443.1, remainingCacheExtent: 693.1, cacheOrigin: 0.0)
...      geometry: null
...      child: RenderFlex#129b5 relayoutBoundary=up3 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...        parentData: paintOffset=Offset(0.0, 0.0) (can use size)
...        constraints: BoxConstraints(w=369.2, 0.0<=h<=Infinity)
...        size: MISSING
...        direction: vertical
...        mainAxisAlignment: start
...        mainAxisSize: max
...        crossAxisAlignment: start
...        textDirection: ltr
...        verticalDirection: down
...        spacing: 0.0
...        child 1: RenderGap#52938 relayoutBoundary=up4 NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(0.0, 12.3)
...          mainAxisExtent: 12.3
...          crossAxisExtent: 0.0
...          color: null
...          fallbackDirection: vertical
...        child 2: RenderPadding#1b3d7 relayoutBoundary=up4 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(369.2, 482.9)
...          padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...          textDirection: ltr
...        child 3: RenderPadding#269a1 relayoutBoundary=up4 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(369.2, 3006.4)
...          padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...          textDirection: ltr
...        child 4: RenderPadding#e6a7f relayoutBoundary=up4 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: MISSING
...          padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...          textDirection: ltr
...        child 5: RenderPadding#e57e3 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...          textDirection: ltr
...        child 6: RenderPadding#d3f4f NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...          textDirection: ltr
...        child 7: RenderPadding#51416 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...          textDirection: ltr
...        child 8: RenderPadding#dfe8f NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...          textDirection: ltr
...        child 9: RenderPadding#22e8a NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...          textDirection: ltr
...        child 10: RenderPadding#a46f8 NEEDS-LAYOUT NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...          textDirection: ltr
====================================================================================================

======== Exception caught by rendering library =====================================================
The following _TypeError was thrown during paint():
Null check operator used on a null value

The relevant error-causing widget was:
CustomScrollView CustomScrollView:file:///Users/moali/AndroidStudioProjects/mobile_app/lib/presentation/main/menu/menu_screen.dart:277:30
When the exception was thrown, this was the stack:
#0      RenderViewportBase._paintContents (package:flutter/src/rendering/viewport.dart:772:25)
#1      RenderViewportBase.paint (package:flutter/src/rendering/viewport.dart:758:7)
#2      RenderObject._paintWithContext (package:flutter/src/rendering/object.dart:3371:7)
#3      PaintingContext._repaintCompositedChild (package:flutter/src/rendering/object.dart:175:11)
#4      PaintingContext.repaintCompositedChild (package:flutter/src/rendering/object.dart:120:5)
#5      PaintingContext._compositeChild (package:flutter/src/rendering/object.dart:271:7)
#6      PaintingContext.paintChild (package:flutter/src/rendering/object.dart:252:7)
#7      RenderProxyBoxMixin.paint (package:flutter/src/rendering/proxy_box.dart:140:13)
#8      RenderObject._paintWithContext (package:flutter/src/rendering/object.dart:3371:7)
#9      PaintingContext.paintChild (package:flutter/src/rendering/object.dart:260:13)
#10     RenderProxyBoxMixin.paint (package:flutter/src/rendering/proxy_box.dart:140:13)
#11     RenderObject._paintWithContext (package:flutter/src/rendering/object.dart:3371:7)
#12     PaintingContext.paintChild (package:flutter/src/rendering/object.dart:260:13)
#13     RenderProxyBoxMixin.paint (package:flutter/src/rendering/proxy_box.dart:140:13)
#14     RenderObject._paintWithContext (package:flutter/src/rendering/object.dart:3371:7)
#15     PaintingContext.paintChild (package:flutter/src/rendering/object.dart:260:13)
#16     RenderProxyBoxMixin.paint (package:flutter/src/rendering/proxy_box.dart:140:13)
#17     RenderObject._paintWithContext (package:flutter/src/rendering/object.dart:3371:7)
#18     PaintingContext.paintChild (package:flutter/src/rendering/object.dart:260:13)
#19     RenderProxyBoxMixin.paint (package:flutter/src/rendering/proxy_box.dart:140:13)
#20     RenderObject._paintWithContext (package:flutter/src/rendering/object.dart:3371:7)
#21     PaintingContext.paintChild (package:flutter/src/rendering/object.dart:260:13)
#22     RenderProxyBoxMixin.paint (package:flutter/src/rendering/proxy_box.dart:140:13)
#23     RenderObject._paintWithContext (package:flutter/src/rendering/object.dart:3371:7)
#24     PaintingContext.paintChild (package:flutter/src/rendering/object.dart:260:13)
#25     RenderBoxContainerDefaultsMixin.defaultPaint (package:flutter/src/rendering/box.dart:3360:15)
#26     RenderFlex.paint (package:flutter/src/rendering/flex.dart:1315:7)
#27     RenderObject._paintWithContext (package:flutter/src/rendering/object.dart:3371:7)
#28     PaintingContext.paintChild (package:flutter/src/rendering/object.dart:260:13)
#29     RenderBoxContainerDefaultsMixin.defaultPaint (package:flutter/src/rendering/box.dart:3360:15)
#30     RenderStack.paintStack (package:flutter/src/rendering/stack.dart:704:5)
#31     RenderStack.paint (package:flutter/src/rendering/stack.dart:720:7)
#32     RenderObject._paintWithContext (package:flutter/src/rendering/object.dart:3371:7)
#33     PaintingContext.paintChild (package:flutter/src/rendering/object.dart:260:13)
#34     RenderShiftedBox.paint (package:flutter/src/rendering/shifted_box.dart:81:15)
#35     RenderObject._paintWithContext (package:flutter/src/rendering/object.dart:3371:7)
#36     PaintingContext.paintChild (package:flutter/src/rendering/object.dart:260:13)
#37     RenderBoxContainerDefaultsMixin.defaultPaint (package:flutter/src/rendering/box.dart:3360:15)
#38     RenderCustomMultiChildLayoutBox.paint (package:flutter/src/rendering/custom_layout.dart:424:5)
#39     RenderObject._paintWithContext (package:flutter/src/rendering/object.dart:3371:7)
#40     PaintingContext.paintChild (package:flutter/src/rendering/object.dart:260:13)
#41     RenderProxyBoxMixin.paint (package:flutter/src/rendering/proxy_box.dart:140:13)
#42     _RenderInkFeatures.paint (package:flutter/src/material/material.dart:632:11)
#43     RenderObject._paintWithContext (package:flutter/src/rendering/object.dart:3371:7)
#44     PaintingContext.paintChild (package:flutter/src/rendering/object.dart:260:13)
#45     RenderProxyBoxMixin.paint (package:flutter/src/rendering/proxy_box.dart:140:13)
#46     RenderPhysicalModel.paint.<anonymous closure> (package:flutter/src/rendering/proxy_box.dart:2083:15)
#47     PaintingContext.pushClipRRect (package:flutter/src/rendering/object.dart:610:14)
#48     RenderPhysicalModel.paint (package:flutter/src/rendering/proxy_box.dart:2070:21)
#49     RenderObject._paintWithContext (package:flutter/src/rendering/object.dart:3371:7)
#50     PaintingContext.paintChild (package:flutter/src/rendering/object.dart:260:13)
#51     RenderBoxContainerDefaultsMixin.defaultPaint (package:flutter/src/rendering/box.dart:3360:15)
#52     RenderCustomMultiChildLayoutBox.paint (package:flutter/src/rendering/custom_layout.dart:424:5)
#53     RenderObject._paintWithContext (package:flutter/src/rendering/object.dart:3371:7)
#54     PaintingContext.paintChild (package:flutter/src/rendering/object.dart:260:13)
#55     RenderProxyBoxMixin.paint (package:flutter/src/rendering/proxy_box.dart:140:13)
#56     _RenderInkFeatures.paint (package:flutter/src/material/material.dart:632:11)
#57     RenderObject._paintWithContext (package:flutter/src/rendering/object.dart:3371:7)
#58     PaintingContext.paintChild (package:flutter/src/rendering/object.dart:260:13)
#59     RenderProxyBoxMixin.paint (package:flutter/src/rendering/proxy_box.dart:140:13)
#60     RenderPhysicalModel.paint.<anonymous closure> (package:flutter/src/rendering/proxy_box.dart:2083:15)
#61     PaintingContext.pushClipRRect (package:flutter/src/rendering/object.dart:610:14)
#62     RenderPhysicalModel.paint (package:flutter/src/rendering/proxy_box.dart:2070:21)
#63     RenderObject._paintWithContext (package:flutter/src/rendering/object.dart:3371:7)
#64     PaintingContext.paintChild (package:flutter/src/rendering/object.dart:260:13)
#65     RenderProxyBoxMixin.paint (package:flutter/src/rendering/proxy_box.dart:140:13)
#66     RenderObject._paintWithContext (package:flutter/src/rendering/object.dart:3371:7)
#67     PaintingContext.paintChild (package:flutter/src/rendering/object.dart:260:13)
#68     RenderProxyBoxMixin.paint (package:flutter/src/rendering/proxy_box.dart:140:13)
#69     RenderObject._paintWithContext (package:flutter/src/rendering/object.dart:3371:7)
#70     PaintingContext._repaintCompositedChild (package:flutter/src/rendering/object.dart:175:11)
#71     PaintingContext.repaintCompositedChild (package:flutter/src/rendering/object.dart:120:5)
#72     PipelineOwner.flushPaint (package:flutter/src/rendering/object.dart:1251:31)
#73     PipelineOwner.flushPaint (package:flutter/src/rendering/object.dart:1261:15)
#74     RendererBinding.drawFrame (package:flutter/src/rendering/binding.dart:618:23)
#75     WidgetsBinding.drawFrame (package:flutter/src/widgets/binding.dart:1231:13)
#76     RendererBinding._handlePersistentFrameCallback (package:flutter/src/rendering/binding.dart:482:5)
#77     SchedulerBinding._invokeFrameCallback (package:flutter/src/scheduler/binding.dart:1442:15)
#78     SchedulerBinding.handleDrawFrame (package:flutter/src/scheduler/binding.dart:1355:9)
#79     SchedulerBinding._handleDrawFrame (package:flutter/src/scheduler/binding.dart:1208:5)
#80     _invoke (dart:ui/hooks.dart:316:13)
#81     PlatformDispatcher._drawFrame (dart:ui/platform_dispatcher.dart:428:5)
#82     _drawFrame (dart:ui/hooks.dart:288:31)
The following RenderObject was being processed when the exception was fired: RenderViewport#1d567
...  needs compositing
...  parentData: <none> (can use size)
...  constraints: BoxConstraints(0.0<=w<=402.0, h=443.1)
...  layer: OffsetLayer#df960 DETACHED
...    handles: 1
...    offset: Offset(0.0, 0.0)
...  size: Size(402.0, 443.1)
...  axisDirection: down
...  crossAxisDirection: right
...  offset: ScrollPositionWithSingleContext#e5138(offset: 0.0, range: null..null, viewport: 443.1, ScrollableState, BouncingScrollPhysics -> BouncingScrollPhysics -> RangeMaintainingScrollPhysics, IdleScrollActivity#f2e18, ScrollDirection.idle)
...  anchor: 0.0
RenderObject: RenderViewport#1d567
needs compositing
parentData: <none> (can use size)
constraints: BoxConstraints(0.0<=w<=402.0, h=443.1)
layer: OffsetLayer#df960 DETACHED
handles: 1
offset: Offset(0.0, 0.0)
size: Size(402.0, 443.1)
axisDirection: down
crossAxisDirection: right
offset: ScrollPositionWithSingleContext#e5138(offset: 0.0, range: null..null, viewport: 443.1, ScrollableState, BouncingScrollPhysics -> BouncingScrollPhysics -> RangeMaintainingScrollPhysics, IdleScrollActivity#f2e18, ScrollDirection.idle)
anchor: 0.0
...  center child: RenderSliverPadding#24cc9 relayoutBoundary=up1 NEEDS-PAINT
...    parentData: paintOffset=Offset(0.0, 0.0) (can use size)
...    constraints: SliverConstraints(AxisDirection.down, GrowthDirection.forward, ScrollDirection.idle, scrollOffset: 0.0, precedingScrollExtent: 0.0, remainingPaintExtent: 443.1, crossAxisExtent: 402.0, crossAxisDirection: AxisDirection.right, viewportMainAxisExtent: 443.1, remainingCacheExtent: 693.1, cacheOrigin: 0.0)
...    geometry: null
...    padding: EdgeInsetsDirectional(16.4, 0.0, 16.4, 123.2)
...    textDirection: ltr
...    child: RenderSliverToBoxAdapter#c2ba7 relayoutBoundary=up2 NEEDS-PAINT
...      parentData: paintOffset=Offset(0.0, 0.0) (can use size)
...      constraints: SliverConstraints(AxisDirection.down, GrowthDirection.forward, ScrollDirection.idle, scrollOffset: 0.0, precedingScrollExtent: 0.0, remainingPaintExtent: 443.1, crossAxisExtent: 369.2, crossAxisDirection: AxisDirection.right, viewportMainAxisExtent: 443.1, remainingCacheExtent: 693.1, cacheOrigin: 0.0)
...      geometry: null
...      child: RenderFlex#129b5 relayoutBoundary=up3 NEEDS-PAINT
...        parentData: paintOffset=Offset(0.0, 0.0) (can use size)
...        constraints: BoxConstraints(w=369.2, 0.0<=h<=Infinity)
...        size: MISSING
...        direction: vertical
...        mainAxisAlignment: start
...        mainAxisSize: max
...        crossAxisAlignment: start
...        textDirection: ltr
...        verticalDirection: down
...        spacing: 0.0
...        child 1: RenderGap#52938 relayoutBoundary=up4 NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(0.0, 12.3)
...          mainAxisExtent: 12.3
...          crossAxisExtent: 0.0
...          color: null
...          fallbackDirection: vertical
...        child 2: RenderPadding#1b3d7 relayoutBoundary=up4 NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(369.2, 482.9)
...          padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...          textDirection: ltr
...        child 3: RenderPadding#269a1 relayoutBoundary=up4 NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: Size(369.2, 3006.4)
...          padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...          textDirection: ltr
...        child 4: RenderPadding#e6a7f relayoutBoundary=up4 NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null (can use size)
...          constraints: BoxConstraints(0.0<=w<=369.2, 0.0<=h<=Infinity)
...          size: MISSING
...          padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...          textDirection: ltr
...        child 5: RenderPadding#e57e3 NEEDS-LAYOUT NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...          textDirection: ltr
...        child 6: RenderPadding#d3f4f NEEDS-LAYOUT NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...          textDirection: ltr
...        child 7: RenderPadding#51416 NEEDS-LAYOUT NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...          textDirection: ltr
...        child 8: RenderPadding#dfe8f NEEDS-LAYOUT NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...          textDirection: ltr
...        child 9: RenderPadding#22e8a NEEDS-LAYOUT NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...          textDirection: ltr
...        child 10: RenderPadding#a46f8 NEEDS-LAYOUT NEEDS-PAINT
...          parentData: offset=Offset(0.0, 0.0); flex=null; fit=null
...          constraints: MISSING
...          size: MISSING
...          padding: EdgeInsets(0.0, 28.8, 0.0, 0.0)
...          textDirection: ltr
====================================================================================================

======== Exception caught by scheduler library =====================================================
The following _TypeError was thrown during a scheduler callback:
Null check operator used on a null value

When the exception was thrown, this was the stack:
#0      RenderViewportBase.visitChildrenForSemantics.<anonymous closure> (package:flutter/src/rendering/viewport.dart:317:51)
#1      WhereIterator.moveNext (dart:_internal/iterable.dart:468:13)
#2      Iterable.forEach (dart:core/iterable.dart:348:23)
#3      RenderViewportBase.visitChildrenForSemantics (package:flutter/src/rendering/viewport.dart:319:10)
#4      RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#5      RenderObject._getSemanticsForParent.<anonymous closure> (package:flutter/src/rendering/object.dart:3867:61)
#6      RenderObjectWithChildMixin.visitChildren (package:flutter/src/rendering/object.dart:4325:14)
#7      RenderObject.visitChildrenForSemantics (package:flutter/src/rendering/object.dart:4015:5)
#8      RenderIgnorePointer.visitChildrenForSemantics (package:flutter/src/rendering/proxy_box.dart:3633:11)
#9      RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#10     RenderObject._getSemanticsForParent.<anonymous closure> (package:flutter/src/rendering/object.dart:3867:61)
#11     RenderObjectWithChildMixin.visitChildren (package:flutter/src/rendering/object.dart:4325:14)
#12     RenderObject.visitChildrenForSemantics (package:flutter/src/rendering/object.dart:4015:5)
#13     RenderSemanticsAnnotations.visitChildrenForSemantics (package:flutter/src/rendering/proxy_box.dart:4300:11)
#14     RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#15     RenderObject._getSemanticsForParent.<anonymous closure> (package:flutter/src/rendering/object.dart:3867:61)
#16     RenderObjectWithChildMixin.visitChildren (package:flutter/src/rendering/object.dart:4325:14)
#17     RenderObject.visitChildrenForSemantics (package:flutter/src/rendering/object.dart:4015:5)
#18     RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#19     RenderObject._getSemanticsForParent.<anonymous closure> (package:flutter/src/rendering/object.dart:3867:61)
#20     RenderObjectWithChildMixin.visitChildren (package:flutter/src/rendering/object.dart:4325:14)
#21     RenderObject.visitChildrenForSemantics (package:flutter/src/rendering/object.dart:4015:5)
#22     RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#23     RenderObject._getSemanticsForParent.<anonymous closure> (package:flutter/src/rendering/object.dart:3867:61)
#24     RenderObjectWithChildMixin.visitChildren (package:flutter/src/rendering/object.dart:4325:14)
#25     RenderObject.visitChildrenForSemantics (package:flutter/src/rendering/object.dart:4015:5)
#26     RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#27     RenderObject._getSemanticsForParent.<anonymous closure> (package:flutter/src/rendering/object.dart:3867:61)
#28     RenderObjectWithChildMixin.visitChildren (package:flutter/src/rendering/object.dart:4325:14)
#29     RenderObject.visitChildrenForSemantics (package:flutter/src/rendering/object.dart:4015:5)
#30     RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#31     RenderObject._getSemanticsForParent.<anonymous closure> (package:flutter/src/rendering/object.dart:3867:61)
#32     ContainerRenderObjectMixin.visitChildren (package:flutter/src/rendering/object.dart:4641:14)
#33     RenderObject.visitChildrenForSemantics (package:flutter/src/rendering/object.dart:4015:5)
#34     RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#35     RenderObject._getSemanticsForParent.<anonymous closure> (package:flutter/src/rendering/object.dart:3867:61)
#36     ContainerRenderObjectMixin.visitChildren (package:flutter/src/rendering/object.dart:4641:14)
#37     RenderObject.visitChildrenForSemantics (package:flutter/src/rendering/object.dart:4015:5)
#38     RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#39     RenderObject._getSemanticsForParent.<anonymous closure> (package:flutter/src/rendering/object.dart:3867:61)
#40     RenderObjectWithChildMixin.visitChildren (package:flutter/src/rendering/object.dart:4325:14)
#41     RenderObject.visitChildrenForSemantics (package:flutter/src/rendering/object.dart:4015:5)
#42     RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#43     RenderObject._getSemanticsForParent.<anonymous closure> (package:flutter/src/rendering/object.dart:3867:61)
#44     ContainerRenderObjectMixin.visitChildren (package:flutter/src/rendering/object.dart:4641:14)
#45     RenderObject.visitChildrenForSemantics (package:flutter/src/rendering/object.dart:4015:5)
#46     RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#47     RenderObject._getSemanticsForParent.<anonymous closure> (package:flutter/src/rendering/object.dart:3867:61)
#48     RenderObjectWithChildMixin.visitChildren (package:flutter/src/rendering/object.dart:4325:14)
#49     RenderObject.visitChildrenForSemantics (package:flutter/src/rendering/object.dart:4015:5)
#50     RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#51     RenderObject._getSemanticsForParent.<anonymous closure> (package:flutter/src/rendering/object.dart:3867:61)
#52     RenderObjectWithChildMixin.visitChildren (package:flutter/src/rendering/object.dart:4325:14)
#53     RenderObject.visitChildrenForSemantics (package:flutter/src/rendering/object.dart:4015:5)
#54     RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#55     RenderObject._getSemanticsForParent.<anonymous closure> (package:flutter/src/rendering/object.dart:3867:61)
#56     ContainerRenderObjectMixin.visitChildren (package:flutter/src/rendering/object.dart:4641:14)
#57     RenderObject.visitChildrenForSemantics (package:flutter/src/rendering/object.dart:4015:5)
#58     RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#59     RenderObject._getSemanticsForParent.<anonymous closure> (package:flutter/src/rendering/object.dart:3867:61)
#60     RenderObjectWithChildMixin.visitChildren (package:flutter/src/rendering/object.dart:4325:14)
#61     RenderObject.visitChildrenForSemantics (package:flutter/src/rendering/object.dart:4015:5)
#62     RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#63     RenderObject._getSemanticsForParent.<anonymous closure> (package:flutter/src/rendering/object.dart:3867:61)
#64     RenderObjectWithChildMixin.visitChildren (package:flutter/src/rendering/object.dart:4325:14)
#65     RenderObject.visitChildrenForSemantics (package:flutter/src/rendering/object.dart:4015:5)
#66     RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#67     RenderObject._getSemanticsForParent.<anonymous closure> (package:flutter/src/rendering/object.dart:3867:61)
#68     RenderObjectWithChildMixin.visitChildren (package:flutter/src/rendering/object.dart:4325:14)
#69     RenderObject.visitChildrenForSemantics (package:flutter/src/rendering/object.dart:4015:5)
#70     RenderSemanticsAnnotations.visitChildrenForSemantics (package:flutter/src/rendering/proxy_box.dart:4300:11)
#71     RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#72     RenderObject._getSemanticsForParent.<anonymous closure> (package:flutter/src/rendering/object.dart:3867:61)
#73     RenderObjectWithChildMixin.visitChildren (package:flutter/src/rendering/object.dart:4325:14)
#74     RenderObject.visitChildrenForSemantics (package:flutter/src/rendering/object.dart:4015:5)
#75     RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#76     RenderObject._getSemanticsForParent.<anonymous closure> (package:flutter/src/rendering/object.dart:3867:61)
#77     RenderObjectWithChildMixin.visitChildren (package:flutter/src/rendering/object.dart:4325:14)
#78     RenderObject.visitChildrenForSemantics (package:flutter/src/rendering/object.dart:4015:5)
#79     RenderIgnorePointer.visitChildrenForSemantics (package:flutter/src/rendering/proxy_box.dart:3633:11)
#80     RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#81     RenderObject._getSemanticsForParent.<anonymous closure> (package:flutter/src/rendering/object.dart:3867:61)
#82     RenderObjectWithChildMixin.visitChildren (package:flutter/src/rendering/object.dart:4325:14)
#83     RenderObject.visitChildrenForSemantics (package:flutter/src/rendering/object.dart:4015:5)
#84     RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#85     RenderObject._getSemanticsForParent.<anonymous closure> (package:flutter/src/rendering/object.dart:3867:61)
#86     RenderObjectWithChildMixin.visitChildren (package:flutter/src/rendering/object.dart:4325:14)
#87     RenderObject.visitChildrenForSemantics (package:flutter/src/rendering/object.dart:4015:5)
#88     RenderSemanticsAnnotations.visitChildrenForSemantics (package:flutter/src/rendering/proxy_box.dart:4300:11)
#89     RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#90     RenderObject._getSemanticsForParent.<anonymous closure> (package:flutter/src/rendering/object.dart:3867:61)
#91     RenderObjectWithChildMixin.visitChildren (package:flutter/src/rendering/object.dart:4325:14)
#92     RenderObject.visitChildrenForSemantics (package:flutter/src/rendering/object.dart:4015:5)
#93     RenderOffstage.visitChildrenForSemantics (package:flutter/src/rendering/proxy_box.dart:3778:11)
#94     RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#95     RenderObject._getSemanticsForParent.<anonymous closure> (package:flutter/src/rendering/object.dart:3867:61)
#96     RenderObjectWithChildMixin.visitChildren (package:flutter/src/rendering/object.dart:4325:14)
#97     RenderObject.visitChildrenForSemantics (package:flutter/src/rendering/object.dart:4015:5)
#98     RenderSemanticsAnnotations.visitChildrenForSemantics (package:flutter/src/rendering/proxy_box.dart:4300:11)
#99     RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#100    RenderObject._getSemanticsForParent.<anonymous closure> (package:flutter/src/rendering/object.dart:3867:61)
#101    _RenderTheater.visitChildrenForSemantics (package:flutter/src/widgets/overlay.dart:1494:14)
#102    RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#103    RenderObject._getSemanticsForParent.<anonymous closure> (package:flutter/src/rendering/object.dart:3867:61)
#104    RenderObjectWithChildMixin.visitChildren (package:flutter/src/rendering/object.dart:4325:14)
#105    RenderObject.visitChildrenForSemantics (package:flutter/src/rendering/object.dart:4015:5)
#106    RenderAbsorbPointer.visitChildrenForSemantics (package:flutter/src/rendering/proxy_box.dart:3885:11)
#107    RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#108    RenderObject._getSemanticsForParent.<anonymous closure> (package:flutter/src/rendering/object.dart:3867:61)
#109    RenderObjectWithChildMixin.visitChildren (package:flutter/src/rendering/object.dart:4325:14)
#110    RenderObject.visitChildrenForSemantics (package:flutter/src/rendering/object.dart:4015:5)
#111    RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#112    RenderObject._getSemanticsForParent.<anonymous closure> (package:flutter/src/rendering/object.dart:3867:61)
#113    RenderObjectWithChildMixin.visitChildren (package:flutter/src/rendering/object.dart:4325:14)
#114    RenderObject.visitChildrenForSemantics (package:flutter/src/rendering/object.dart:4015:5)
#115    RenderSemanticsAnnotations.visitChildrenForSemantics (package:flutter/src/rendering/proxy_box.dart:4300:11)
#116    RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#117    RenderObject._getSemanticsForParent.<anonymous closure> (package:flutter/src/rendering/object.dart:3867:61)
#118    RenderObjectWithChildMixin.visitChildren (package:flutter/src/rendering/object.dart:4325:14)
#119    RenderObject.visitChildrenForSemantics (package:flutter/src/rendering/object.dart:4015:5)
#120    RenderSemanticsAnnotations.visitChildrenForSemantics (package:flutter/src/rendering/proxy_box.dart:4300:11)
#121    RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#122    RenderObject._getSemanticsForParent.<anonymous closure> (package:flutter/src/rendering/object.dart:3867:61)
#123    RenderObjectWithChildMixin.visitChildren (package:flutter/src/rendering/object.dart:4325:14)
#124    RenderObject.visitChildrenForSemantics (package:flutter/src/rendering/object.dart:4015:5)
#125    RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#126    RenderObject._getSemanticsForParent.<anonymous closure> (package:flutter/src/rendering/object.dart:3867:61)
#127    RenderObjectWithChildMixin.visitChildren (package:flutter/src/rendering/object.dart:4325:14)
#128    RenderObject.visitChildrenForSemantics (package:flutter/src/rendering/object.dart:4015:5)
#129    RenderSemanticsAnnotations.visitChildrenForSemantics (package:flutter/src/rendering/proxy_box.dart:4300:11)
#130    RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#131    RenderObject._getSemanticsForParent.<anonymous closure> (package:flutter/src/rendering/object.dart:3867:61)
#132    RenderObjectWithChildMixin.visitChildren (package:flutter/src/rendering/object.dart:4325:14)
#133    RenderObject.visitChildrenForSemantics (package:flutter/src/rendering/object.dart:4015:5)
#134    RenderSemanticsAnnotations.visitChildrenForSemantics (package:flutter/src/rendering/proxy_box.dart:4300:11)
#135    RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#136    RenderObject._getSemanticsForParent.<anonymous closure> (package:flutter/src/rendering/object.dart:3867:61)
#137    RenderObjectWithChildMixin.visitChildren (package:flutter/src/rendering/object.dart:4325:14)
#138    RenderObject.visitChildrenForSemantics (package:flutter/src/rendering/object.dart:4015:5)
#139    RenderSemanticsAnnotations.visitChildrenForSemantics (package:flutter/src/rendering/proxy_box.dart:4300:11)
#140    RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#141    RenderObject._getSemanticsForParent.<anonymous closure> (package:flutter/src/rendering/object.dart:3867:61)
#142    RenderObjectWithChildMixin.visitChildren (package:flutter/src/rendering/object.dart:4325:14)
#143    RenderObject.visitChildrenForSemantics (package:flutter/src/rendering/object.dart:4015:5)
#144    RenderSemanticsAnnotations.visitChildrenForSemantics (package:flutter/src/rendering/proxy_box.dart:4300:11)
#145    RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#146    RenderObject._getSemanticsForParent.<anonymous closure> (package:flutter/src/rendering/object.dart:3867:61)
#147    RenderObjectWithChildMixin.visitChildren (package:flutter/src/rendering/object.dart:4325:14)
#148    RenderObject.visitChildrenForSemantics (package:flutter/src/rendering/object.dart:4015:5)
#149    RenderObject._getSemanticsForParent (package:flutter/src/rendering/object.dart:3865:5)
#150    RenderObject._updateSemantics (package:flutter/src/rendering/object.dart:3811:41)
#151    PipelineOwner.flushSemantics (package:flutter/src/rendering/object.dart:1378:16)
#152    PipelineOwner.flushSemantics (package:flutter/src/rendering/object.dart:1383:15)
#153    RendererBinding.drawFrame (package:flutter/src/rendering/binding.dart:623:25)
#154    WidgetsBinding.drawFrame (package:flutter/src/widgets/binding.dart:1231:13)
#155    RendererBinding._handlePersistentFrameCallback (package:flutter/src/rendering/binding.dart:482:5)
#156    SchedulerBinding._invokeFrameCallback (package:flutter/src/scheduler/binding.dart:1442:15)
#157    SchedulerBinding.handleDrawFrame (package:flutter/src/scheduler/binding.dart:1355:9)
#158    SchedulerBinding._handleDrawFrame (package:flutter/src/scheduler/binding.dart:1208:5)
#159    _invoke (dart:ui/hooks.dart:316:13)
#160    PlatformDispatcher._drawFrame (dart:ui/platform_dispatcher.dart:428:5)
#161    _drawFrame (dart:ui/hooks.dart:288:31)
====================================================================================================
