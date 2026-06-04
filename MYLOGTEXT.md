flutter: onCreate -- MealPlannerBloc
flutter: onChange -- MealPlannerBloc, Change { currentState: MealPlannerLoaded([Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel'], Instance of 'MealPlannerMenuModel', AddonChoicesModel([]), [Instance of 'AddonSubscriptionModel'], [Instance of 'PremiumSummaryModel'], 0, {}, {}, {}, {}, {}, false, false, false, , 1, false, 0, null, null, null, null, null, null), nextState: MealPlannerLoading() }
flutter:
flutter: ╔╣ Request ║ GET
flutter: ║  https://basicdiet145.onrender.com/api/subscriptions/meal-planner-menu?includeLegacy=true
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: ╔ Query Parameters
flutter: ╟ includeLegacy: true
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: ╔ Headers
flutter: ╟ accept: application/json
flutter: ╟ content-type: application/json
flutter: ╟ authorization:
flutter: ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTIxMzc2ZGNkZTgwN2M5M2M1ZTFjOD
flutter: ║ giLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDU5MTE3MywiZXhwIjox
flutter: ║ NzgwNTkyMDczfQ.vxV_8FKzaseC6k1doDYecVX9Dz1QntUr1vlN_6M8Wm0
flutter: ╟ Accept-Language: ar
flutter: ╟ contentType: application/json
flutter: ╟ responseType: ResponseType.json
flutter: ╟ followRedirects: true
flutter: ╟ connectTimeout: 0:01:00.000000
flutter: ╟ receiveTimeout: 0:01:00.000000
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter:
flutter: ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 1716 ms
flutter: ║  https://basicdiet145.onrender.com/api/subscriptions/meal-planner-menu?includeLegacy=true
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: ╔ Headers
flutter: ╟ x-dns-prefetch-control: [off]
flutter: ╟ x-render-origin-server: [Render]
flutter: ╟ date: [Thu, 04 Jun 2026 16:42:12 GMT]
flutter: ╟ transfer-encoding: [chunked]
flutter: ╟ origin-agent-cluster: [?1]
flutter: ╟ vary: [Origin, Accept-Encoding]
flutter: ╟ content-encoding: [gzip]
flutter: ╟ server: [cloudflare]
flutter: ╟ cross-origin-resource-policy: [same-origin]
flutter: ╟ cf-ray: [a06863a9eb8e376c-MRS]
flutter: ╟ etag: [W/"12789-CFmR6C0L9T3e4D31OwZM23wDtjk"]
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
flutter: ╟ rndr-id: [b82c93f1-841f-41a6]
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
flutter: ║                 "categories": [
flutter: ║                    {
flutter: ║                         "id": "carb:standard_carbs",
flutter: ║                         "key": "standard_carbs",
flutter: ║                         "dimension": "carb",
flutter: ║                         "name": "كربوهيدرات",
flutter: ║                         "description": "اختيارات الكربوهيدرات للوجبات",
flutter: ║                         "sortOrder": 10,
flutter: ║                         "rules": {maxTypes: 2, maxTotalGrams: 300, unit: grams, ruleKey: carb_split},
flutter: ║                         "ui": {cardVariant: standard}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "carb:large_salad",
flutter: ║                         "key": "large_salad",
flutter: ║                         "dimension": "carb",
flutter: ║                         "name": "سلطة كبيرة مميزة",
flutter: ║                         "description": "الهوية المرجعية للسلطة الكبيرة المميزة",
flutter: ║                         "sortOrder": 20,
flutter: ║                         "rules": {ruleKey: premium_large_salad},
flutter: ║                         "ui": {cardVariant: large_salad}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "protein:chicken",
flutter: ║                         "key": "chicken",
flutter: ║                         "dimension": "protein",
flutter: ║                         "name": "دجاج",
flutter: ║                         "description": "خيارات دجاج",
flutter: ║                         "sortOrder": 10,
flutter: ║                         "rules": {},
flutter: ║                         "ui": {cardVariant: standard}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "protein:beef",
flutter: ║                         "key": "beef",
flutter: ║                         "dimension": "protein",
flutter: ║                         "name": "لحم",
flutter: ║                         "description": "خيارات لحم",
flutter: ║                         "sortOrder": 20,
flutter: ║                         "rules": {dailyLimit: 1, ruleKey: beef_daily_limit, unit: slots},
flutter: ║                         "ui": {cardVariant: standard}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "protein:fish",
flutter: ║                         "key": "fish",
flutter: ║                         "dimension": "protein",
flutter: ║                         "name": "سمك",
flutter: ║                         "description": "خيارات سمك",
flutter: ║                         "sortOrder": 30,
flutter: ║                         "rules": {},
flutter: ║                         "ui": {cardVariant: standard}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "protein:eggs",
flutter: ║                         "key": "eggs",
flutter: ║                         "dimension": "protein",
flutter: ║                         "name": "بيض",
flutter: ║                         "description": "خيارات بيض",
flutter: ║                         "sortOrder": 40,
flutter: ║                         "rules": {},
flutter: ║                         "ui": {cardVariant: standard}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "protein:premium",
flutter: ║                         "key": "premium",
flutter: ║                         "dimension": "protein",
flutter: ║                         "name": "بريميوم",
flutter: ║                         "description": "خيارات البروتينات المميزة",
flutter: ║                         "sortOrder": 50,
flutter: ║                         "rules": {},
flutter: ║                         "ui": {cardVariant: premium}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "protein:other",
flutter: ║                         "key": "other",
flutter: ║                         "dimension": "protein",
flutter: ║                         "name": "أخرى",
flutter: ║                         "description": "خيارات أخرى",
flutter: ║                         "sortOrder": 60,
flutter: ║                         "rules": {},
flutter: ║                         "ui": {cardVariant: standard}
flutter: ║                    }
flutter: ║                 ],
flutter: ║                 "proteins": [
flutter: ║                    {
flutter: ║                         "id": "6a2136b16c0fcd5fd3736e29",
flutter: ║                         "key": "chicken",
flutter: ║                         "displayCategoryKey": "chicken",
flutter: ║                         "name": "دجاج",
flutter: ║                         "description": "",
flutter: ║                         "proteinFamilyKey": "chicken",
flutter: ║                         "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                         "ruleTags": []
flutter: ║                         "selectionType": "standard_meal",
flutter: ║                         "isPremium": false,
flutter: ║                         "sortOrder": 10
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2136b16c0fcd5fd3736e2c",
flutter: ║                         "key": "beef",
flutter: ║                         "displayCategoryKey": "beef",
flutter: ║                         "name": "لحم",
flutter: ║                         "description": "",
flutter: ║                         "proteinFamilyKey": "beef",
flutter: ║                         "proteinFamilyNameI18n": {ar: لحم, en: Beef},
flutter: ║                         "ruleTags": []
flutter: ║                         "selectionType": "standard_meal",
flutter: ║                         "isPremium": false,
flutter: ║                         "sortOrder": 20
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2136b16c0fcd5fd3736e2f",
flutter: ║                         "key": "fish",
flutter: ║                         "displayCategoryKey": "fish",
flutter: ║                         "name": "سمك",
flutter: ║                         "description": "",
flutter: ║                         "proteinFamilyKey": "fish",
flutter: ║                         "proteinFamilyNameI18n": {ar: سمك, en: Fish},
flutter: ║                         "ruleTags": []
flutter: ║                         "selectionType": "standard_meal",
flutter: ║                         "isPremium": false,
flutter: ║                         "sortOrder": 30
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2136b26c0fcd5fd3736e32",
flutter: ║                         "key": "eggs",
flutter: ║                         "displayCategoryKey": "eggs",
flutter: ║                         "name": "بيض",
flutter: ║                         "description": "",
flutter: ║                         "proteinFamilyKey": "eggs",
flutter: ║                         "proteinFamilyNameI18n": {ar: بيض, en: Eggs},
flutter: ║                         "ruleTags": []
flutter: ║                         "selectionType": "standard_meal",
flutter: ║                         "isPremium": false,
flutter: ║                         "sortOrder": 40
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2136b36c0fcd5fd3736e3e",
flutter: ║                         "key": "boiled_eggs",
flutter: ║                         "displayCategoryKey": "eggs",
flutter: ║                         "name": "بيض مسلوق",
flutter: ║                         "description": "",
flutter: ║                         "proteinFamilyKey": "eggs",
flutter: ║                         "proteinFamilyNameI18n": {ar: بيض, en: Eggs},
flutter: ║                         "ruleTags": []
flutter: ║                         "selectionType": "standard_meal",
flutter: ║                         "isPremium": false,
flutter: ║                         "sortOrder": 80
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2136b36c0fcd5fd3736e41",
flutter: ║                         "key": "tuna",
flutter: ║                         "displayCategoryKey": "fish",
flutter: ║                         "name": "تونا",
flutter: ║                         "description": "",
flutter: ║                         "proteinFamilyKey": "fish",
flutter: ║                         "proteinFamilyNameI18n": {ar: سمك, en: Fish},
flutter: ║                         "ruleTags": []
flutter: ║                         "selectionType": "standard_meal",
flutter: ║                         "isPremium": false,
flutter: ║                         "sortOrder": 90
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2136b46c0fcd5fd3736e44",
flutter: ║                         "key": "chicken_fajita",
flutter: ║                         "displayCategoryKey": "chicken",
flutter: ║                         "name": "فاهيتا",
flutter: ║                         "description": "",
flutter: ║                         "proteinFamilyKey": "chicken",
flutter: ║                         "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                         "ruleTags": []
flutter: ║                         "selectionType": "standard_meal",
flutter: ║                         "isPremium": false,
flutter: ║                         "sortOrder": 100
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2136b46c0fcd5fd3736e47",
flutter: ║                         "key": "spicy_chicken",
flutter: ║                         "displayCategoryKey": "chicken",
flutter: ║                         "name": "دجاج سبايسي",
flutter: ║                         "description": "",
flutter: ║                         "proteinFamilyKey": "chicken",
flutter: ║                         "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                         "ruleTags": []
flutter: ║                         "selectionType": "standard_meal",
flutter: ║                         "isPremium": false,
flutter: ║                         "sortOrder": 110
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2136b56c0fcd5fd3736e4a",
flutter: ║                         "key": "italian_spiced_chicken",
flutter: ║                         "displayCategoryKey": "chicken",
flutter: ║                         "name": "دجاج توابل إيطالية",
flutter: ║                         "description": "",
flutter: ║                         "proteinFamilyKey": "chicken",
flutter: ║                         "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                         "ruleTags": []
flutter: ║                         "selectionType": "standard_meal",
flutter: ║                         "isPremium": false,
flutter: ║                         "sortOrder": 120
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2136b56c0fcd5fd3736e4d",
flutter: ║                         "key": "chicken_tikka",
flutter: ║                         "displayCategoryKey": "chicken",
flutter: ║                         "name": "دجاج تكا",
flutter: ║                         "description": "",
flutter: ║                         "proteinFamilyKey": "chicken",
flutter: ║                         "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                         "ruleTags": []
flutter: ║                         "selectionType": "standard_meal",
flutter: ║                         "isPremium": false,
flutter: ║                         "sortOrder": 130
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2136b56c0fcd5fd3736e50",
flutter: ║                         "key": "asian_chicken",
flutter: ║                         "displayCategoryKey": "chicken",
flutter: ║                         "name": "دجاج آسيوي",
flutter: ║                         "description": "",
flutter: ║                         "proteinFamilyKey": "chicken",
flutter: ║                         "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                         "ruleTags": []
flutter: ║                         "selectionType": "standard_meal",
flutter: ║                         "isPremium": false,
flutter: ║                         "sortOrder": 140
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2136b66c0fcd5fd3736e53",
flutter: ║                         "key": "chicken_strips",
flutter: ║                         "displayCategoryKey": "chicken",
flutter: ║                         "name": "استربس",
flutter: ║                         "description": "",
flutter: ║                         "proteinFamilyKey": "chicken",
flutter: ║                         "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                         "ruleTags": []
flutter: ║                         "selectionType": "standard_meal",
flutter: ║                         "isPremium": false,
flutter: ║                         "sortOrder": 150
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2136b66c0fcd5fd3736e56",
flutter: ║                         "key": "grilled_chicken",
flutter: ║                         "displayCategoryKey": "chicken",
flutter: ║                         "name": "دجاج مشوي",
flutter: ║                         "description": "",
flutter: ║                         "proteinFamilyKey": "chicken",
flutter: ║                         "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                         "ruleTags": []
flutter: ║                         "selectionType": "standard_meal",
flutter: ║                         "isPremium": false,
flutter: ║                         "sortOrder": 160
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2136b66c0fcd5fd3736e59",
flutter: ║                         "key": "mexican_chicken",
flutter: ║                         "displayCategoryKey": "chicken",
flutter: ║                         "name": "دجاج مكسيكي",
flutter: ║                         "description": "",
flutter: ║                         "proteinFamilyKey": "chicken",
flutter: ║                         "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                         "ruleTags": []
flutter: ║                         "selectionType": "standard_meal",
flutter: ║                         "isPremium": false,
flutter: ║                         "sortOrder": 170
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2136b76c0fcd5fd3736e5c",
flutter: ║                         "key": "meatballs",
flutter: ║                         "displayCategoryKey": "beef",
flutter: ║                         "name": "كرات لحم",
flutter: ║                         "description": "",
flutter: ║                         "proteinFamilyKey": "beef",
flutter: ║                         "proteinFamilyNameI18n": {ar: لحم, en: Beef},
flutter: ║                         "ruleTags": []
flutter: ║                         "selectionType": "standard_meal",
flutter: ║                         "isPremium": false,
flutter: ║                         "sortOrder": 180
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2136b76c0fcd5fd3736e5f",
flutter: ║                         "key": "beef_stroganoff",
flutter: ║                         "displayCategoryKey": "beef",
flutter: ║                         "name": "لحم استرغانوف",
flutter: ║                         "description": "",
flutter: ║                         "proteinFamilyKey": "beef",
flutter: ║                         "proteinFamilyNameI18n": {ar: لحم, en: Beef},
flutter: ║                         "ruleTags": []
flutter: ║                         "selectionType": "standard_meal",
flutter: ║                         "isPremium": false,
flutter: ║                         "sortOrder": 190
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2136b76c0fcd5fd3736e62",
flutter: ║                         "key": "fish_fillet",
flutter: ║                         "displayCategoryKey": "fish",
flutter: ║                         "name": "سمك فيليه",
flutter: ║                         "description": "",
flutter: ║                         "proteinFamilyKey": "fish",
flutter: ║                         "proteinFamilyNameI18n": {ar: سمك, en: Fish},
flutter: ║                         "ruleTags": []
flutter: ║                         "selectionType": "standard_meal",
flutter: ║                         "isPremium": false,
flutter: ║                         "sortOrder": 200
flutter: ║                    }
flutter: ║                 ],
flutter: ║                 "premiumProteins": [
flutter: ║                    {
flutter: ║                         "id": "6a2136b26c0fcd5fd3736e35",
flutter: ║                         "key": "beef_steak",
flutter: ║                         "displayCategoryKey": "premium",
flutter: ║                         "name": "ستيك لحم",
flutter: ║                         "description": "",
flutter: ║                         "proteinFamilyKey": "beef",
flutter: ║                         "proteinFamilyNameI18n": {ar: لحم, en: Beef},
flutter: ║                         "ruleTags": []
flutter: ║                         "selectionType": "premium_meal",
flutter: ║                         "isPremium": true,
flutter: ║                         "premiumKey": "beef_steak",
flutter: ║                         "extraFeeHalala": 2000,
flutter: ║                         "sortOrder": 50
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2136b26c0fcd5fd3736e38",
flutter: ║                         "key": "shrimp",
flutter: ║                         "displayCategoryKey": "premium",
flutter: ║                         "name": "جمبري",
flutter: ║                         "description": "",
flutter: ║                         "proteinFamilyKey": "fish",
flutter: ║                         "proteinFamilyNameI18n": {ar: سمك, en: Fish},
flutter: ║                         "ruleTags": []
flutter: ║                         "selectionType": "premium_meal",
flutter: ║                         "isPremium": true,
flutter: ║                         "premiumKey": "shrimp",
flutter: ║                         "extraFeeHalala": 2000,
flutter: ║                         "sortOrder": 60
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2136b36c0fcd5fd3736e3b",
flutter: ║                         "key": "salmon",
flutter: ║                         "displayCategoryKey": "premium",
flutter: ║                         "name": "سالمون",
flutter: ║                         "description": "",
flutter: ║                         "proteinFamilyKey": "fish",
flutter: ║                         "proteinFamilyNameI18n": {ar: سمك, en: Fish},
flutter: ║                         "ruleTags": []
flutter: ║                         "selectionType": "premium_meal",
flutter: ║                         "isPremium": true,
flutter: ║                         "premiumKey": "salmon",
flutter: ║                         "extraFeeHalala": 2000,
flutter: ║                         "sortOrder": 70
flutter: ║                    }
flutter: ║                 ],
flutter: ║                 "carbs": [
flutter: ║                    {
flutter: ║                         "id": "6a2136b86c0fcd5fd3736e68",
flutter: ║                         "key": "white_rice",
flutter: ║                         "displayCategoryKey": "standard_carbs",
flutter: ║                         "name": "رز أبيض",
flutter: ║                         "description": "",
flutter: ║                         "sortOrder": 10
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2136b96c0fcd5fd3736e6b",
flutter: ║                         "key": "turmeric_rice",
flutter: ║                         "displayCategoryKey": "standard_carbs",
flutter: ║                         "name": "رز بالكركم",
flutter: ║                         "description": "",
flutter: ║                         "sortOrder": 20
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2136b96c0fcd5fd3736e6e",
flutter: ║                         "key": "alfredo_pasta",
flutter: ║                         "displayCategoryKey": "standard_carbs",
flutter: ║                         "name": "باستا الفريدو",
flutter: ║                         "description": "",
flutter: ║                         "sortOrder": 30
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2136b96c0fcd5fd3736e71",
flutter: ║                         "key": "red_sauce_pasta",
flutter: ║                         "displayCategoryKey": "standard_carbs",
flutter: ║                         "name": "باستا صوص احمر",
flutter: ║                         "description": "",
flutter: ║                         "sortOrder": 40
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2136ba6c0fcd5fd3736e74",
flutter: ║                         "key": "roasted_potato",
flutter: ║                         "displayCategoryKey": "standard_carbs",
flutter: ║                         "name": "بطاطا مشوية",
flutter: ║                         "description": "",
flutter: ║                         "sortOrder": 50
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2136ba6c0fcd5fd3736e77",
flutter: ║                         "key": "sweet_potato",
flutter: ║                         "displayCategoryKey": "standard_carbs",
flutter: ║                         "name": "بطاطا حلوة",
flutter: ║                         "description": "",
flutter: ║                         "sortOrder": 60
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2136ba6c0fcd5fd3736e7a",
flutter: ║                         "key": "grilled_mixed_vegetables",
flutter: ║                         "displayCategoryKey": "standard_carbs",
flutter: ║                         "name": "خضار مشكلة مشوية",
flutter: ║                         "description": "",
flutter: ║                         "sortOrder": 70
flutter: ║                    }
flutter: ║                 ],
flutter: ║                 "sandwiches": [
flutter: ║                    {
flutter: ║                         "id": "6a2137406c0fcd5fd37372c8",
flutter: ║                         "key": "turkey_cold_sandwich",
flutter: ║                         "name": "تركي",
flutter: ║                         "description": "",
flutter: ║                         "imageUrl": "",
flutter: ║                         "calories": 0,
flutter: ║                         "selectionType": "sandwich",
flutter: ║                         "categoryKey": "sandwich",
flutter: ║                         "pricingModel": "fixed",
flutter: ║                         "priceHalala": 1300,
flutter: ║                         "proteinFamilyKey": "other",
flutter: ║                         "sortOrder": 110
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2137406c0fcd5fd37372cb",
flutter: ║                         "key": "boiled_egg_cold_sandwich",
flutter: ║                         "name": "بيض مسلوق",
flutter: ║                         "description": "",
flutter: ║                         "imageUrl": "",
flutter: ║                         "calories": 0,
flutter: ║                         "selectionType": "sandwich",
flutter: ║                         "categoryKey": "sandwich",
flutter: ║                         "pricingModel": "fixed",
flutter: ║                         "priceHalala": 900,
flutter: ║                         "proteinFamilyKey": "other",
flutter: ║                         "sortOrder": 120
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2137416c0fcd5fd37372ce",
flutter: ║                         "key": "tuna_cold_sandwich",
flutter: ║                         "name": "تونا",
flutter: ║                         "description": "",
flutter: ║                         "imageUrl": "",
flutter: ║                         "calories": 0,
flutter: ║                         "selectionType": "sandwich",
flutter: ║                         "categoryKey": "sandwich",
flutter: ║                         "pricingModel": "fixed",
flutter: ║                         "priceHalala": 1300,
flutter: ║                         "proteinFamilyKey": "other",
flutter: ║                         "sortOrder": 130
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2137416c0fcd5fd37372d1",
flutter: ║                         "key": "scrambled_egg_cold_sandwich",
flutter: ║                         "name": "بيض مخفوق",
flutter: ║                         "description": "",
flutter: ║                         "imageUrl": "",
flutter: ║                         "calories": 0,
flutter: ║                         "selectionType": "sandwich",
flutter: ║                         "categoryKey": "sandwich",
flutter: ║                         "pricingModel": "fixed",
flutter: ║                         "priceHalala": 900,
flutter: ║                         "proteinFamilyKey": "other",
flutter: ║                         "sortOrder": 140
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2137426c0fcd5fd37372d4",
flutter: ║                         "key": "classic_halloumi_cold_sandwich",
flutter: ║                         "name": "حلوم كلاسيك",
flutter: ║                         "description": "",
flutter: ║                         "imageUrl": "",
flutter: ║                         "calories": 0,
flutter: ║                         "selectionType": "sandwich",
flutter: ║                         "categoryKey": "sandwich",
flutter: ║                         "pricingModel": "fixed",
flutter: ║                         "priceHalala": 1100,
flutter: ║                         "proteinFamilyKey": "other",
flutter: ║                         "sortOrder": 150
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2137426c0fcd5fd37372d7",
flutter: ║                         "key": "chicken_fajita_cold_sandwich",
flutter: ║                         "name": "دجاج فاهيتا",
flutter: ║                         "description": "",
flutter: ║                         "imageUrl": "",
flutter: ║                         "calories": 0,
flutter: ║                         "selectionType": "sandwich",
flutter: ║                         "categoryKey": "sandwich",
flutter: ║                         "pricingModel": "fixed",
flutter: ║                         "priceHalala": 1300,
flutter: ║                         "proteinFamilyKey": "other",
flutter: ║                         "sortOrder": 160
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2137426c0fcd5fd37372da",
flutter: ║                         "key": "mexican_chicken_cold_sandwich",
flutter: ║                         "name": "دجاج مكسيكي",
flutter: ║                         "description": "",
flutter: ║                         "imageUrl": "",
flutter: ║                         "calories": 0,
flutter: ║                         "selectionType": "sandwich",
flutter: ║                         "categoryKey": "sandwich",
flutter: ║                         "pricingModel": "fixed",
flutter: ║                         "priceHalala": 1300,
flutter: ║                         "proteinFamilyKey": "other",
flutter: ║                         "sortOrder": 170
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2137436c0fcd5fd37372dd",
flutter: ║                         "key": "grilled_chicken_cold_sandwich",
flutter: ║                         "name": "دجاج مشوي",
flutter: ║                         "description": "",
flutter: ║                         "imageUrl": "",
flutter: ║                         "calories": 0,
flutter: ║                         "selectionType": "sandwich",
flutter: ║                         "categoryKey": "sandwich",
flutter: ║                         "pricingModel": "fixed",
flutter: ║                         "priceHalala": 1300,
flutter: ║                         "proteinFamilyKey": "other",
flutter: ║                         "sortOrder": 180
flutter: ║                    }
flutter: ║                 ],
flutter: ║                 "premiumLargeSalad": {
flutter: ║                     "id": "premium_large_salad",
flutter: ║                     "enabled": true,
flutter: ║                     "carbId": "6a21370f6c0fcd5fd373713f",
flutter: ║                     "premiumKey": "premium_large_salad",
flutter: ║                     "selectionType": "premium_large_salad",
flutter: ║                     "presetKey": "large_salad",
flutter: ║                     "name": "سلطة كبيرة مميزة",
flutter: ║                     "extraFeeHalala": 2900,
flutter: ║                     "priceHalala": 2900,
flutter: ║                     "priceSource": "menu_product_premium_large_salad",
flutter: ║                     "currency": "SAR",
flutter: ║                     "preset": {
flutter: ║                         "key": "large_salad",
flutter: ║                         "name": "سلطة كبيرة مميزة",
flutter: ║                         "selectionType": "premium_large_salad",
flutter: ║                         "fixedPriceHalala": 2900,
flutter: ║                         "priceSource": "menu_product_premium_large_salad",
flutter: ║                         "currency": "SAR",
flutter: ║                         "groups": [
flutter: ║                          {key: leafy_greens, name: ورقيات, minSelect: 0, maxSelect: 2},
flutter: ║                          {key: vegetables, name: خضار, minSelect: 0, maxSelect: 19},
flutter: ║                          {key: protein, name: بروتين, minSelect: 1, maxSelect: 1},
flutter: ║                          {key: cheese_nuts, name: أجبان ومكسرات, minSelect: 0, maxSelect: 2},
flutter: ║                          {key: fruits, name: فواكه, minSelect: 0, maxSelect: 4},
flutter: ║                          {key: sauce, name: صوص, minSelect: 1, maxSelect: 1}
flutter: ║                         ]
flutter: ║                    }
flutter: ║                     "groups": [
flutter: ║                      {key: leafy_greens, name: ورقيات, minSelect: 0, maxSelect: 2},
flutter: ║                      {key: vegetables, name: خضار, minSelect: 0, maxSelect: 19},
flutter: ║                      {key: protein, name: بروتين, minSelect: 1, maxSelect: 1},
flutter: ║                      {key: cheese_nuts, name: أجبان ومكسرات, minSelect: 0, maxSelect: 2},
flutter: ║                      {key: fruits, name: فواكه, minSelect: 0, maxSelect: 4},
flutter: ║                      {key: sauce, name: صوص, minSelect: 1, maxSelect: 1}
flutter: ║                     ],
flutter: ║                     "ingredients": [
flutter: ║                        {
flutter: ║                             "id": "6a2136b36c0fcd5fd3736e3e",
flutter: ║                             "key": "boiled_eggs",
flutter: ║                             "displayCategoryKey": "eggs",
flutter: ║                             "name": "بيض مسلوق",
flutter: ║                             "description": "",
flutter: ║                             "proteinFamilyKey": "eggs",
flutter: ║                             "proteinFamilyNameI18n": {ar: بيض, en: Eggs},
flutter: ║                             "ruleTags": []
flutter: ║                             "sortOrder": 10,
flutter: ║                             "isPremium": false,
flutter: ║                             "premiumKey": "boiled_eggs",
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "currency": "SAR",
flutter: ║                             "calories": 155,
flutter: ║                             "groupKey": "protein"
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136bc6c0fcd5fd3736e89",
flutter: ║                             "groupKey": "leafy_greens",
flutter: ║                             "name": "خس",
flutter: ║                             "calories": 15,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 10
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136cc6c0fcd5fd3736f0d",
flutter: ║                             "groupKey": "sauce",
flutter: ║                             "name": "رانش",
flutter: ║                             "calories": 50,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 10
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136be6c0fcd5fd3736e98",
flutter: ║                             "groupKey": "vegetables",
flutter: ║                             "name": "طماطم",
flutter: ║                             "calories": 18,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 10
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136c56c0fcd5fd3736ed4",
flutter: ║                             "groupKey": "cheese_nuts",
flutter: ║                             "name": "كاجو",
flutter: ║                             "calories": 160,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 10
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136c86c0fcd5fd3736eec",
flutter: ║                             "groupKey": "fruits",
flutter: ║                             "name": "مانجا",
flutter: ║                             "calories": 60,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 10
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136c86c0fcd5fd3736eef",
flutter: ║                             "groupKey": "fruits",
flutter: ║                             "name": "تفاح اخضر",
flutter: ║                             "calories": 52,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 20
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136b36c0fcd5fd3736e41",
flutter: ║                             "key": "tuna",
flutter: ║                             "displayCategoryKey": "fish",
flutter: ║                             "name": "تونا",
flutter: ║                             "description": "",
flutter: ║                             "proteinFamilyKey": "fish",
flutter: ║                             "proteinFamilyNameI18n": {ar: سمك, en: Fish},
flutter: ║                             "ruleTags": []
flutter: ║                             "sortOrder": 20,
flutter: ║                             "isPremium": false,
flutter: ║                             "premiumKey": "tuna",
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "currency": "SAR",
flutter: ║                             "calories": 116,
flutter: ║                             "groupKey": "protein"
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136bc6c0fcd5fd3736e8c",
flutter: ║                             "groupKey": "leafy_greens",
flutter: ║                             "name": "جرجير",
flutter: ║                             "calories": 25,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 20
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136be6c0fcd5fd3736e9b",
flutter: ║                             "groupKey": "vegetables",
flutter: ║                             "name": "جزر",
flutter: ║                             "calories": 41,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 20
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136cc6c0fcd5fd3736f10",
flutter: ║                             "groupKey": "sauce",
flutter: ║                             "name": "سبايسي رانش",
flutter: ║                             "calories": 55,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 20
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136c66c0fcd5fd3736ed7",
flutter: ║                             "groupKey": "cheese_nuts",
flutter: ║                             "name": "عين الجمل",
flutter: ║                             "calories": 185,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 20
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136bf6c0fcd5fd3736e9e",
flutter: ║                             "groupKey": "vegetables",
flutter: ║                             "name": "خيار",
flutter: ║                             "calories": 41,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 30
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136c96c0fcd5fd3736ef2",
flutter: ║                             "groupKey": "fruits",
flutter: ║                             "name": "رمان",
flutter: ║                             "calories": 83,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 30
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136c66c0fcd5fd3736eda",
flutter: ║                             "groupKey": "cheese_nuts",
flutter: ║                             "name": "سمسم",
flutter: ║                             "calories": 123,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 30
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136cd6c0fcd5fd3736f13",
flutter: ║                             "groupKey": "sauce",
flutter: ║                             "name": "صوص بيستو",
flutter: ║                             "calories": 60,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 30
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136b46c0fcd5fd3736e44",
flutter: ║                             "key": "chicken_fajita",
flutter: ║                             "displayCategoryKey": "chicken",
flutter: ║                             "name": "فاهيتا",
flutter: ║                             "description": "",
flutter: ║                             "proteinFamilyKey": "chicken",
flutter: ║                             "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                             "ruleTags": []
flutter: ║                             "sortOrder": 30,
flutter: ║                             "isPremium": false,
flutter: ║                             "premiumKey": "chicken_fajita",
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "currency": "SAR",
flutter: ║                             "calories": 200,
flutter: ║                             "groupKey": "protein"
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136bd6c0fcd5fd3736e8f",
flutter: ║                             "groupKey": "leafy_greens",
flutter: ║                             "name": "ملفوف",
flutter: ║                             "calories": 25,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 30
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136cd6c0fcd5fd3736f16",
flutter: ║                             "groupKey": "sauce",
flutter: ║                             "name": "بالسميك",
flutter: ║                             "calories": 40,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 40
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136b46c0fcd5fd3736e47",
flutter: ║                             "key": "spicy_chicken",
flutter: ║                             "displayCategoryKey": "chicken",
flutter: ║                             "name": "دجاج سبايسي",
flutter: ║                             "description": "",
flutter: ║                             "proteinFamilyKey": "chicken",
flutter: ║                             "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                             "ruleTags": []
flutter: ║                             "sortOrder": 40,
flutter: ║                             "isPremium": false,
flutter: ║                             "premiumKey": "spicy_chicken",
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "currency": "SAR",
flutter: ║                             "calories": 220,
flutter: ║                             "groupKey": "protein"
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136bf6c0fcd5fd3736ea1",
flutter: ║                             "groupKey": "vegetables",
flutter: ║                             "name": "ذرة",
flutter: ║                             "calories": 86,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 40
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136c96c0fcd5fd3736ef5",
flutter: ║                             "groupKey": "fruits",
flutter: ║                             "name": "فراولة",
flutter: ║                             "calories": 32,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 40
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136c66c0fcd5fd3736edd",
flutter: ║                             "groupKey": "cheese_nuts",
flutter: ║                             "name": "فيتا",
flutter: ║                             "calories": 70,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 40
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136c76c0fcd5fd3736ee0",
flutter: ║                             "groupKey": "cheese_nuts",
flutter: ║                             "name": "بارميزان",
flutter: ║                             "calories": 104,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 50
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136ca6c0fcd5fd3736ef8",
flutter: ║                             "groupKey": "fruits",
flutter: ║                             "name": "توت ازرق",
flutter: ║                             "calories": 57,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 50
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136bf6c0fcd5fd3736ea4",
flutter: ║                             "groupKey": "vegetables",
flutter: ║                             "name": "حمص",
flutter: ║                             "calories": 164,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 50
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136b56c0fcd5fd3736e4a",
flutter: ║                             "key": "italian_spiced_chicken",
flutter: ║                             "displayCategoryKey": "chicken",
flutter: ║                             "name": "دجاج توابل إيطالية",
flutter: ║                             "description": "",
flutter: ║                             "proteinFamilyKey": "chicken",
flutter: ║                             "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                             "ruleTags": []
flutter: ║                             "sortOrder": 50,
flutter: ║                             "isPremium": false,
flutter: ║                             "premiumKey": "italian_spiced_chicken",
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "currency": "SAR",
flutter: ║                             "calories": 200,
flutter: ║                             "groupKey": "protein"
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136cd6c0fcd5fd3736f19",
flutter: ║                             "groupKey": "sauce",
flutter: ║                             "name": "سيزر",
flutter: ║                             "calories": 55,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 50
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136ca6c0fcd5fd3736efb",
flutter: ║                             "groupKey": "fruits",
flutter: ║                             "name": "توت احمر",
flutter: ║                             "calories": 52,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 60
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136b56c0fcd5fd3736e4d",
flutter: ║                             "key": "chicken_tikka",
flutter: ║                             "displayCategoryKey": "chicken",
flutter: ║                             "name": "دجاج تكا",
flutter: ║                             "description": "",
flutter: ║                             "proteinFamilyKey": "chicken",
flutter: ║                             "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                             "ruleTags": []
flutter: ║                             "sortOrder": 60,
flutter: ║                             "isPremium": false,
flutter: ║                             "premiumKey": "chicken_tikka",
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "currency": "SAR",
flutter: ║                             "calories": 200,
flutter: ║                             "groupKey": "protein"
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136c06c0fcd5fd3736ea7",
flutter: ║                             "groupKey": "vegetables",
flutter: ║                             "name": "هالبينو",
flutter: ║                             "calories": 29,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 60
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136ce6c0fcd5fd3736f1c",
flutter: ║                             "groupKey": "sauce",
flutter: ║                             "name": "هاني ماستر",
flutter: ║                             "calories": 45,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 60
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136ca6c0fcd5fd3736efe",
flutter: ║                             "groupKey": "fruits",
flutter: ║                             "name": "بطيخ",
flutter: ║                             "calories": 30,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 70
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136b56c0fcd5fd3736e50",
flutter: ║                             "key": "asian_chicken",
flutter: ║                             "displayCategoryKey": "chicken",
flutter: ║                             "name": "دجاج آسيوي",
flutter: ║                             "description": "",
flutter: ║                             "proteinFamilyKey": "chicken",
flutter: ║                             "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                             "ruleTags": []
flutter: ║                             "sortOrder": 70,
flutter: ║                             "isPremium": false,
flutter: ║                             "premiumKey": "asian_chicken",
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "currency": "SAR",
flutter: ║                             "calories": 220,
flutter: ║                             "groupKey": "protein"
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136ce6c0fcd5fd3736f1f",
flutter: ║                             "groupKey": "sauce",
flutter: ║                             "name": "زبادي بالنعناع",
flutter: ║                             "calories": 20,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 70
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136c06c0fcd5fd3736eaa",
flutter: ║                             "groupKey": "vegetables",
flutter: ║                             "name": "فاصوليا حمراء",
flutter: ║                             "calories": 127,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 70
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136b66c0fcd5fd3736e53",
flutter: ║                             "key": "chicken_strips",
flutter: ║                             "displayCategoryKey": "chicken",
flutter: ║                             "name": "استربس",
flutter: ║                             "description": "",
flutter: ║                             "proteinFamilyKey": "chicken",
flutter: ║                             "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                             "ruleTags": []
flutter: ║                             "sortOrder": 80,
flutter: ║                             "isPremium": false,
flutter: ║                             "premiumKey": "chicken_strips",
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "currency": "SAR",
flutter: ║                             "calories": 250,
flutter: ║                             "groupKey": "protein"
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136c06c0fcd5fd3736ead",
flutter: ║                             "groupKey": "vegetables",
flutter: ║                             "name": "بنجر",
flutter: ║                             "calories": 43,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 80
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136ca6c0fcd5fd3736f01",
flutter: ║                             "groupKey": "fruits",
flutter: ║                             "name": "شمام",
flutter: ║                             "calories": 34,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 80
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136ce6c0fcd5fd3736f22",
flutter: ║                             "groupKey": "sauce",
flutter: ║                             "name": "عسل بالثوم",
flutter: ║                             "calories": 45,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 80
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136cb6c0fcd5fd3736f04",
flutter: ║                             "groupKey": "fruits",
flutter: ║                             "name": "تمر",
flutter: ║                             "calories": 277,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 90
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136b66c0fcd5fd3736e56",
flutter: ║                             "key": "grilled_chicken",
flutter: ║                             "displayCategoryKey": "chicken",
flutter: ║                             "name": "دجاج مشوي",
flutter: ║                             "description": "",
flutter: ║                             "proteinFamilyKey": "chicken",
flutter: ║                             "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                             "ruleTags": []
flutter: ║                             "sortOrder": 90,
flutter: ║                             "isPremium": false,
flutter: ║                             "premiumKey": "grilled_chicken",
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "currency": "SAR",
flutter: ║                             "calories": 175,
flutter: ║                             "groupKey": "protein"
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136c16c0fcd5fd3736eb0",
flutter: ║                             "groupKey": "vegetables",
flutter: ║                             "name": "فلفل حار",
flutter: ║                             "calories": 40,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 90
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136b66c0fcd5fd3736e59",
flutter: ║                             "key": "mexican_chicken",
flutter: ║                             "displayCategoryKey": "chicken",
flutter: ║                             "name": "دجاج مكسيكي",
flutter: ║                             "description": "",
flutter: ║                             "proteinFamilyKey": "chicken",
flutter: ║                             "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                             "ruleTags": []
flutter: ║                             "sortOrder": 100,
flutter: ║                             "isPremium": false,
flutter: ║                             "premiumKey": "mexican_chicken",
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "currency": "SAR",
flutter: ║                             "calories": 210,
flutter: ║                             "groupKey": "protein"
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136c16c0fcd5fd3736eb3",
flutter: ║                             "groupKey": "vegetables",
flutter: ║                             "name": "كزبرة",
flutter: ║                             "calories": 15,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 100
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136b76c0fcd5fd3736e62",
flutter: ║                             "key": "fish_fillet",
flutter: ║                             "displayCategoryKey": "fish",
flutter: ║                             "name": "سمك فيليه",
flutter: ║                             "description": "",
flutter: ║                             "proteinFamilyKey": "fish",
flutter: ║                             "proteinFamilyNameI18n": {ar: سمك, en: Fish},
flutter: ║                             "ruleTags": []
flutter: ║                             "sortOrder": 110,
flutter: ║                             "isPremium": false,
flutter: ║                             "premiumKey": "fish_fillet",
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "currency": "SAR",
flutter: ║                             "calories": 130,
flutter: ║                             "groupKey": "protein"
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136c26c0fcd5fd3736eb6",
flutter: ║                             "groupKey": "vegetables",
flutter: ║                             "name": "فطر",
flutter: ║                             "calories": 22,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 110
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136c26c0fcd5fd3736eb9",
flutter: ║                             "groupKey": "vegetables",
flutter: ║                             "name": "بروكلي",
flutter: ║                             "calories": 34,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 120
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136c26c0fcd5fd3736ebc",
flutter: ║                             "groupKey": "vegetables",
flutter: ║                             "name": "خضار مشكل مشوي",
flutter: ║                             "calories": 45,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 130
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136c36c0fcd5fd3736ebf",
flutter: ║                             "groupKey": "vegetables",
flutter: ║                             "name": "بصل احمر",
flutter: ║                             "calories": 40,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 140
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136c36c0fcd5fd3736ec2",
flutter: ║                             "groupKey": "vegetables",
flutter: ║                             "name": "بصل اخضر",
flutter: ║                             "calories": 32,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 150
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136c36c0fcd5fd3736ec5",
flutter: ║                             "groupKey": "vegetables",
flutter: ║                             "name": "زيتون اخضر",
flutter: ║                             "calories": 145,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 160
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136c46c0fcd5fd3736ec8",
flutter: ║                             "groupKey": "vegetables",
flutter: ║                             "name": "زيتون اسود",
flutter: ║                             "calories": 120,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 170
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136c46c0fcd5fd3736ecb",
flutter: ║                             "groupKey": "vegetables",
flutter: ║                             "name": "نعناع",
flutter: ║                             "calories": 44,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 180
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136c46c0fcd5fd3736ece",
flutter: ║                             "groupKey": "vegetables",
flutter: ║                             "name": "بصل مخلل",
flutter: ║                             "calories": 25,
flutter: ║                             "extraFeeHalala": 0,
flutter: ║                             "sortOrder": 190
flutter: ║                        }
flutter: ║                     ]
flutter: ║                }
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
flutter: ║                }
flutter: ║            }
flutter: ║             "addonCatalog": {
flutter: ║                 "items": []
flutter: ║                 "byCategory": {},
flutter: ║                 "totalCount": 0
flutter: ║            }
flutter: ║             "builderCatalogV2": {
flutter: ║                 "catalogVersion": "meal_planner_menu.v2",
flutter: ║                 "currency": "SAR",
flutter: ║                 "sections": [
flutter: ║                    {
flutter: ║                         "id": "section:standard_meal",
flutter: ║                         "key": "standard_meal",
flutter: ║                         "type": "meal_builder",
flutter: ║                         "name": "وجبة عادية",
flutter: ║                         "ui": {cardVariant: standard},
flutter: ║                         "products": [
flutter: ║                            {
flutter: ║                                 "id": "virtual:standard_meal",
flutter: ║                                 "key": "standard_meal",
flutter: ║                                 "type": "virtual_builder_product",
flutter: ║                                 "isVirtual": true,
flutter: ║                                 "selectionType": "standard_meal",
flutter: ║                                 "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                                 "optionGroups": [
flutter: ║                                    {
flutter: ║                                         "id": "6a2136b06c0fcd5fd3736e26"
flutter: ║                                         "groupId": "6a2136b06c0fcd5fd3736e26"
flutter: ║                                         "key": "protein",
flutter: ║                                         "sourceKey": "proteins",
flutter: ║                                         "name": "بروتينات",
flutter: ║                                         "nameI18n": {ar: بروتينات, en: Proteins},
flutter: ║                                         "minSelections": 1,
flutter: ║                                         "maxSelections": 1,
flutter: ║                                         "isRequired": true,
flutter: ║                                         "sortOrder": 10,
flutter: ║                                         "ui": {displayStyle: radio_cards},
flutter: ║                                         "rules": {
flutter: ║                                             "beef": {proteinFamilyKey: beef, maxSlotsPerDay: 1}
flutter: ║                                        }
flutter: ║                                         "options": [
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b16c0fcd5fd3736e29"
flutter: ║                                                 "optionId": "6a2136b16c0fcd5fd3736e29"
flutter: ║                                                 "key": "chicken"
flutter: ║                                                 "name": "دجاج"
flutter: ║                                                 "nameI18n": {ar: دجاج, en: دجاج},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 10
flutter: ║                                                 "displayCategoryKey": "chicken"
flutter: ║                                                 "proteinFamilyKey": "chicken"
flutter: ║                                                 "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b16c0fcd5fd3736e2c"
flutter: ║                                                 "optionId": "6a2136b16c0fcd5fd3736e2c"
flutter: ║                                                 "key": "beef"
flutter: ║                                                 "name": "لحم"
flutter: ║                                                 "nameI18n": {ar: لحم, en: لحم},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 20
flutter: ║                                                 "displayCategoryKey": "beef"
flutter: ║                                                 "proteinFamilyKey": "beef"
flutter: ║                                                 "proteinFamilyNameI18n": {ar: لحم, en: Beef},
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b16c0fcd5fd3736e2f"
flutter: ║                                                 "optionId": "6a2136b16c0fcd5fd3736e2f"
flutter: ║                                                 "key": "fish"
flutter: ║                                                 "name": "سمك"
flutter: ║                                                 "nameI18n": {ar: سمك, en: سمك},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 30
flutter: ║                                                 "displayCategoryKey": "fish"
flutter: ║                                                 "proteinFamilyKey": "fish"
flutter: ║                                                 "proteinFamilyNameI18n": {ar: سمك, en: Fish},
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b26c0fcd5fd3736e32"
flutter: ║                                                 "optionId": "6a2136b26c0fcd5fd3736e32"
flutter: ║                                                 "key": "eggs"
flutter: ║                                                 "name": "بيض"
flutter: ║                                                 "nameI18n": {ar: بيض, en: بيض},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 40
flutter: ║                                                 "displayCategoryKey": "eggs"
flutter: ║                                                 "proteinFamilyKey": "eggs"
flutter: ║                                                 "proteinFamilyNameI18n": {ar: بيض, en: Eggs},
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b36c0fcd5fd3736e3e"
flutter: ║                                                 "optionId": "6a2136b36c0fcd5fd3736e3e"
flutter: ║                                                 "key": "boiled_eggs"
flutter: ║                                                 "name": "بيض مسلوق"
flutter: ║                                                 "nameI18n": {ar: بيض مسلوق, en: بيض مسلوق},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 80
flutter: ║                                                 "displayCategoryKey": "eggs"
flutter: ║                                                 "proteinFamilyKey": "eggs"
flutter: ║                                                 "proteinFamilyNameI18n": {ar: بيض, en: Eggs},
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b36c0fcd5fd3736e41"
flutter: ║                                                 "optionId": "6a2136b36c0fcd5fd3736e41"
flutter: ║                                                 "key": "tuna"
flutter: ║                                                 "name": "تونا"
flutter: ║                                                 "nameI18n": {ar: تونا, en: تونا},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 90
flutter: ║                                                 "displayCategoryKey": "fish"
flutter: ║                                                 "proteinFamilyKey": "fish"
flutter: ║                                                 "proteinFamilyNameI18n": {ar: سمك, en: Fish},
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b46c0fcd5fd3736e44"
flutter: ║                                                 "optionId": "6a2136b46c0fcd5fd3736e44"
flutter: ║                                                 "key": "chicken_fajita"
flutter: ║                                                 "name": "فاهيتا"
flutter: ║                                                 "nameI18n": {ar: فاهيتا, en: فاهيتا},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 100
flutter: ║                                                 "displayCategoryKey": "chicken"
flutter: ║                                                 "proteinFamilyKey": "chicken"
flutter: ║                                                 "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b46c0fcd5fd3736e47"
flutter: ║                                                 "optionId": "6a2136b46c0fcd5fd3736e47"
flutter: ║                                                 "key": "spicy_chicken"
flutter: ║                                                 "name": "دجاج سبايسي"
flutter: ║                                                 "nameI18n": {ar: دجاج سبايسي, en: دجاج سبايسي},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 110
flutter: ║                                                 "displayCategoryKey": "chicken"
flutter: ║                                                 "proteinFamilyKey": "chicken"
flutter: ║                                                 "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b56c0fcd5fd3736e4a"
flutter: ║                                                 "optionId": "6a2136b56c0fcd5fd3736e4a"
flutter: ║                                                 "key": "italian_spiced_chicken"
flutter: ║                                                 "name": "دجاج توابل إيطالية"
flutter: ║                                                 "nameI18n": {ar: دجاج توابل إيطالية, en: دجاج توابل إيطالية},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 120
flutter: ║                                                 "displayCategoryKey": "chicken"
flutter: ║                                                 "proteinFamilyKey": "chicken"
flutter: ║                                                 "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b56c0fcd5fd3736e4d"
flutter: ║                                                 "optionId": "6a2136b56c0fcd5fd3736e4d"
flutter: ║                                                 "key": "chicken_tikka"
flutter: ║                                                 "name": "دجاج تكا"
flutter: ║                                                 "nameI18n": {ar: دجاج تكا, en: دجاج تكا},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 130
flutter: ║                                                 "displayCategoryKey": "chicken"
flutter: ║                                                 "proteinFamilyKey": "chicken"
flutter: ║                                                 "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b56c0fcd5fd3736e50"
flutter: ║                                                 "optionId": "6a2136b56c0fcd5fd3736e50"
flutter: ║                                                 "key": "asian_chicken"
flutter: ║                                                 "name": "دجاج آسيوي"
flutter: ║                                                 "nameI18n": {ar: دجاج آسيوي, en: دجاج آسيوي},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 140
flutter: ║                                                 "displayCategoryKey": "chicken"
flutter: ║                                                 "proteinFamilyKey": "chicken"
flutter: ║                                                 "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b66c0fcd5fd3736e53"
flutter: ║                                                 "optionId": "6a2136b66c0fcd5fd3736e53"
flutter: ║                                                 "key": "chicken_strips"
flutter: ║                                                 "name": "استربس"
flutter: ║                                                 "nameI18n": {ar: استربس, en: استربس},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 150
flutter: ║                                                 "displayCategoryKey": "chicken"
flutter: ║                                                 "proteinFamilyKey": "chicken"
flutter: ║                                                 "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b66c0fcd5fd3736e56"
flutter: ║                                                 "optionId": "6a2136b66c0fcd5fd3736e56"
flutter: ║                                                 "key": "grilled_chicken"
flutter: ║                                                 "name": "دجاج مشوي"
flutter: ║                                                 "nameI18n": {ar: دجاج مشوي, en: دجاج مشوي},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 160
flutter: ║                                                 "displayCategoryKey": "chicken"
flutter: ║                                                 "proteinFamilyKey": "chicken"
flutter: ║                                                 "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b66c0fcd5fd3736e59"
flutter: ║                                                 "optionId": "6a2136b66c0fcd5fd3736e59"
flutter: ║                                                 "key": "mexican_chicken"
flutter: ║                                                 "name": "دجاج مكسيكي"
flutter: ║                                                 "nameI18n": {ar: دجاج مكسيكي, en: دجاج مكسيكي},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 170
flutter: ║                                                 "displayCategoryKey": "chicken"
flutter: ║                                                 "proteinFamilyKey": "chicken"
flutter: ║                                                 "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b76c0fcd5fd3736e5c"
flutter: ║                                                 "optionId": "6a2136b76c0fcd5fd3736e5c"
flutter: ║                                                 "key": "meatballs"
flutter: ║                                                 "name": "كرات لحم"
flutter: ║                                                 "nameI18n": {ar: كرات لحم, en: كرات لحم},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 180
flutter: ║                                                 "displayCategoryKey": "beef"
flutter: ║                                                 "proteinFamilyKey": "beef"
flutter: ║                                                 "proteinFamilyNameI18n": {ar: لحم, en: Beef},
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b76c0fcd5fd3736e5f"
flutter: ║                                                 "optionId": "6a2136b76c0fcd5fd3736e5f"
flutter: ║                                                 "key": "beef_stroganoff"
flutter: ║                                                 "name": "لحم استرغانوف"
flutter: ║                                                 "nameI18n": {ar: لحم استرغانوف, en: لحم استرغانوف},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 190
flutter: ║                                                 "displayCategoryKey": "beef"
flutter: ║                                                 "proteinFamilyKey": "beef"
flutter: ║                                                 "proteinFamilyNameI18n": {ar: لحم, en: Beef},
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b76c0fcd5fd3736e62"
flutter: ║                                                 "optionId": "6a2136b76c0fcd5fd3736e62"
flutter: ║                                                 "key": "fish_fillet"
flutter: ║                                                 "name": "سمك فيليه"
flutter: ║                                                 "nameI18n": {ar: سمك فيليه, en: سمك فيليه},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 200
flutter: ║                                                 "displayCategoryKey": "fish"
flutter: ║                                                 "proteinFamilyKey": "fish"
flutter: ║                                                 "proteinFamilyNameI18n": {ar: سمك, en: Fish},
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            }
flutter: ║                                         ],
flutter: ║                                         "optionSections": [
flutter: ║                                            {
flutter: ║                                                 "key": "chicken"
flutter: ║                                                 "name": "دجاج"
flutter: ║                                                 "nameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                                 "optionKeys": [
flutter: ║                                                         chicken,
flutter: ║                                                         chicken_fajita,
flutter: ║                                                         spicy_chicken,
flutter: ║                                                         italian_spiced_chicken,
flutter: ║                                                         chicken_tikka,
flutter: ║                                                         asian_chicken,
flutter: ║                                                         chicken_strips,
flutter: ║                                                         grilled_chicken,
flutter: ║                                                         mexican_chicken
flutter: ║                                                 ],
flutter: ║                                                 "optionIds": [
flutter: ║                                                         6a2136b16c0fcd5fd3736e29,
flutter: ║                                                         6a2136b46c0fcd5fd3736e44,
flutter: ║                                                         6a2136b46c0fcd5fd3736e47,
flutter: ║                                                         6a2136b56c0fcd5fd3736e4a,
flutter: ║                                                         6a2136b56c0fcd5fd3736e4d,
flutter: ║                                                         6a2136b56c0fcd5fd3736e50,
flutter: ║                                                         6a2136b66c0fcd5fd3736e53,
flutter: ║                                                         6a2136b66c0fcd5fd3736e56,
flutter: ║                                                         6a2136b66c0fcd5fd3736e59
flutter: ║                                                 ]
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "key": "beef"
flutter: ║                                                 "name": "لحم"
flutter: ║                                                 "nameI18n": {ar: لحم, en: Beef},
flutter: ║                                                 "optionKeys": [beef, meatballs, beef_stroganoff]
flutter: ║                                                 "optionIds": [6a2136b16c0fcd5fd3736e2c, 6a2136b76c0fcd5fd3736e5c, 6a2136b76c0fcd5fd3736e5f]
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "key": "fish"
flutter: ║                                                 "name": "سمك"
flutter: ║                                                 "nameI18n": {ar: سمك, en: Fish},
flutter: ║                                                 "optionKeys": [fish, tuna, fish_fillet]
flutter: ║                                                 "optionIds": [6a2136b16c0fcd5fd3736e2f, 6a2136b36c0fcd5fd3736e41, 6a2136b76c0fcd5fd3736e62]
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "key": "eggs"
flutter: ║                                                 "name": "بيض"
flutter: ║                                                 "nameI18n": {ar: بيض, en: Eggs},
flutter: ║                                                 "optionKeys": [eggs, boiled_eggs]
flutter: ║                                                 "optionIds": [6a2136b26c0fcd5fd3736e32, 6a2136b36c0fcd5fd3736e3e]
flutter: ║                                            }
flutter: ║                                         ]
flutter: ║                                    },
flutter: ║                                    {
flutter: ║                                         "id": "6a2136b86c0fcd5fd3736e65"
flutter: ║                                         "groupId": "6a2136b86c0fcd5fd3736e65"
flutter: ║                                         "key": "carb",
flutter: ║                                         "sourceKey": "carbs",
flutter: ║                                         "name": "كارب",
flutter: ║                                         "nameI18n": {ar: كارب, en: Carbs},
flutter: ║                                         "minSelections": 1,
flutter: ║                                         "maxSelections": 2,
flutter: ║                                         "isRequired": true,
flutter: ║                                         "sortOrder": 20,
flutter: ║                                         "ui": {displayStyle: chips},
flutter: ║                                         "rules": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
flutter: ║                                         "options": [
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b86c0fcd5fd3736e68"
flutter: ║                                                 "optionId": "6a2136b86c0fcd5fd3736e68"
flutter: ║                                                 "key": "white_rice"
flutter: ║                                                 "name": "رز أبيض"
flutter: ║                                                 "nameI18n": {ar: رز أبيض, en: رز أبيض},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 10
flutter: ║                                                 "displayCategoryKey": "standard_carbs"
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b96c0fcd5fd3736e6b"
flutter: ║                                                 "optionId": "6a2136b96c0fcd5fd3736e6b"
flutter: ║                                                 "key": "turmeric_rice"
flutter: ║                                                 "name": "رز بالكركم"
flutter: ║                                                 "nameI18n": {ar: رز بالكركم, en: رز بالكركم},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 20
flutter: ║                                                 "displayCategoryKey": "standard_carbs"
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b96c0fcd5fd3736e6e"
flutter: ║                                                 "optionId": "6a2136b96c0fcd5fd3736e6e"
flutter: ║                                                 "key": "alfredo_pasta"
flutter: ║                                                 "name": "باستا الفريدو"
flutter: ║                                                 "nameI18n": {ar: باستا الفريدو, en: باستا الفريدو},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 30
flutter: ║                                                 "displayCategoryKey": "standard_carbs"
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b96c0fcd5fd3736e71"
flutter: ║                                                 "optionId": "6a2136b96c0fcd5fd3736e71"
flutter: ║                                                 "key": "red_sauce_pasta"
flutter: ║                                                 "name": "باستا صوص احمر"
flutter: ║                                                 "nameI18n": {ar: باستا صوص احمر, en: باستا صوص احمر},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 40
flutter: ║                                                 "displayCategoryKey": "standard_carbs"
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136ba6c0fcd5fd3736e74"
flutter: ║                                                 "optionId": "6a2136ba6c0fcd5fd3736e74"
flutter: ║                                                 "key": "roasted_potato"
flutter: ║                                                 "name": "بطاطا مشوية"
flutter: ║                                                 "nameI18n": {ar: بطاطا مشوية, en: بطاطا مشوية},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 50
flutter: ║                                                 "displayCategoryKey": "standard_carbs"
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136ba6c0fcd5fd3736e77"
flutter: ║                                                 "optionId": "6a2136ba6c0fcd5fd3736e77"
flutter: ║                                                 "key": "sweet_potato"
flutter: ║                                                 "name": "بطاطا حلوة"
flutter: ║                                                 "nameI18n": {ar: بطاطا حلوة, en: بطاطا حلوة},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 60
flutter: ║                                                 "displayCategoryKey": "standard_carbs"
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136ba6c0fcd5fd3736e7a"
flutter: ║                                                 "optionId": "6a2136ba6c0fcd5fd3736e7a"
flutter: ║                                                 "key": "grilled_mixed_vegetables"
flutter: ║                                                 "name": "خضار مشكلة مشوية"
flutter: ║                                                 "nameI18n": {ar: خضار مشكلة مشوية, en: خضار مشكلة مشوية},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 70
flutter: ║                                                 "displayCategoryKey": "standard_carbs"
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            }
flutter: ║                                         ]
flutter: ║                                    }
flutter: ║                                 ]
flutter: ║                            }
flutter: ║                         ]
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "section:premium_meal",
flutter: ║                         "key": "premium_meal",
flutter: ║                         "type": "meal_builder",
flutter: ║                         "name": "وجبة مميزة",
flutter: ║                         "ui": {cardVariant: premium},
flutter: ║                         "products": [
flutter: ║                            {
flutter: ║                                 "id": "virtual:premium_meal",
flutter: ║                                 "key": "premium_meal",
flutter: ║                                 "type": "virtual_builder_product",
flutter: ║                                 "isVirtual": true,
flutter: ║                                 "selectionType": "premium_meal",
flutter: ║                                 "ui": {cardVariant: premium, badge: , ctaLabel: , imageRatio: square},
flutter: ║                                 "optionGroups": [
flutter: ║                                    {
flutter: ║                                         "id": "6a2136b06c0fcd5fd3736e26"
flutter: ║                                         "groupId": "6a2136b06c0fcd5fd3736e26"
flutter: ║                                         "key": "protein",
flutter: ║                                         "sourceKey": "proteins",
flutter: ║                                         "name": "بروتينات",
flutter: ║                                         "nameI18n": {ar: بروتينات, en: Proteins},
flutter: ║                                         "minSelections": 1,
flutter: ║                                         "maxSelections": 1,
flutter: ║                                         "isRequired": true,
flutter: ║                                         "sortOrder": 10,
flutter: ║                                         "ui": {displayStyle: radio_cards},
flutter: ║                                         "rules": {},
flutter: ║                                         "options": [
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b26c0fcd5fd3736e35"
flutter: ║                                                 "optionId": "6a2136b26c0fcd5fd3736e35"
flutter: ║                                                 "key": "beef_steak"
flutter: ║                                                 "name": "ستيك لحم"
flutter: ║                                                 "nameI18n": {ar: ستيك لحم, en: ستيك لحم},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 50
flutter: ║                                                 "displayCategoryKey": "premium"
flutter: ║                                                 "proteinFamilyKey": "premium"
flutter: ║                                                 "proteinFamilyNameI18n": {ar: بريميوم, en: Premium},
flutter: ║                                                 "premiumKey": "beef_steak"
flutter: ║                                                 "extraFeeHalala": 2000
flutter: ║                                                 "selectionType": "premium_meal"
flutter: ║                                                 "isPremium": true
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b26c0fcd5fd3736e38"
flutter: ║                                                 "optionId": "6a2136b26c0fcd5fd3736e38"
flutter: ║                                                 "key": "shrimp"
flutter: ║                                                 "name": "جمبري"
flutter: ║                                                 "nameI18n": {ar: جمبري, en: جمبري},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 60
flutter: ║                                                 "displayCategoryKey": "premium"
flutter: ║                                                 "proteinFamilyKey": "premium"
flutter: ║                                                 "proteinFamilyNameI18n": {ar: بريميوم, en: Premium},
flutter: ║                                                 "premiumKey": "shrimp"
flutter: ║                                                 "extraFeeHalala": 2000
flutter: ║                                                 "selectionType": "premium_meal"
flutter: ║                                                 "isPremium": true
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b36c0fcd5fd3736e3b"
flutter: ║                                                 "optionId": "6a2136b36c0fcd5fd3736e3b"
flutter: ║                                                 "key": "salmon"
flutter: ║                                                 "name": "سالمون"
flutter: ║                                                 "nameI18n": {ar: سالمون, en: سالمون},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 70
flutter: ║                                                 "displayCategoryKey": "premium"
flutter: ║                                                 "proteinFamilyKey": "premium"
flutter: ║                                                 "proteinFamilyNameI18n": {ar: بريميوم, en: Premium},
flutter: ║                                                 "premiumKey": "salmon"
flutter: ║                                                 "extraFeeHalala": 2000
flutter: ║                                                 "selectionType": "premium_meal"
flutter: ║                                                 "isPremium": true
flutter: ║                                                 "ui": {}
flutter: ║                                            }
flutter: ║                                         ],
flutter: ║                                         "optionSections": [
flutter: ║                                            {
flutter: ║                                                 "key": "premium"
flutter: ║                                                 "name": "بريميوم"
flutter: ║                                                 "nameI18n": {ar: بريميوم, en: Premium},
flutter: ║                                                 "optionKeys": [beef_steak, shrimp, salmon]
flutter: ║                                                 "optionIds": [6a2136b26c0fcd5fd3736e35, 6a2136b26c0fcd5fd3736e38, 6a2136b36c0fcd5fd3736e3b]
flutter: ║                                            }
flutter: ║                                         ]
flutter: ║                                    },
flutter: ║                                    {
flutter: ║                                         "id": "6a2136b86c0fcd5fd3736e65"
flutter: ║                                         "groupId": "6a2136b86c0fcd5fd3736e65"
flutter: ║                                         "key": "carb",
flutter: ║                                         "sourceKey": "carbs",
flutter: ║                                         "name": "كارب",
flutter: ║                                         "nameI18n": {ar: كارب, en: Carbs},
flutter: ║                                         "minSelections": 1,
flutter: ║                                         "maxSelections": 2,
flutter: ║                                         "isRequired": true,
flutter: ║                                         "sortOrder": 20,
flutter: ║                                         "ui": {displayStyle: chips},
flutter: ║                                         "rules": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
flutter: ║                                         "options": [
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b86c0fcd5fd3736e68"
flutter: ║                                                 "optionId": "6a2136b86c0fcd5fd3736e68"
flutter: ║                                                 "key": "white_rice"
flutter: ║                                                 "name": "رز أبيض"
flutter: ║                                                 "nameI18n": {ar: رز أبيض, en: رز أبيض},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 10
flutter: ║                                                 "displayCategoryKey": "standard_carbs"
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b96c0fcd5fd3736e6b"
flutter: ║                                                 "optionId": "6a2136b96c0fcd5fd3736e6b"
flutter: ║                                                 "key": "turmeric_rice"
flutter: ║                                                 "name": "رز بالكركم"
flutter: ║                                                 "nameI18n": {ar: رز بالكركم, en: رز بالكركم},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 20
flutter: ║                                                 "displayCategoryKey": "standard_carbs"
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b96c0fcd5fd3736e6e"
flutter: ║                                                 "optionId": "6a2136b96c0fcd5fd3736e6e"
flutter: ║                                                 "key": "alfredo_pasta"
flutter: ║                                                 "name": "باستا الفريدو"
flutter: ║                                                 "nameI18n": {ar: باستا الفريدو, en: باستا الفريدو},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 30
flutter: ║                                                 "displayCategoryKey": "standard_carbs"
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b96c0fcd5fd3736e71"
flutter: ║                                                 "optionId": "6a2136b96c0fcd5fd3736e71"
flutter: ║                                                 "key": "red_sauce_pasta"
flutter: ║                                                 "name": "باستا صوص احمر"
flutter: ║                                                 "nameI18n": {ar: باستا صوص احمر, en: باستا صوص احمر},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 40
flutter: ║                                                 "displayCategoryKey": "standard_carbs"
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136ba6c0fcd5fd3736e74"
flutter: ║                                                 "optionId": "6a2136ba6c0fcd5fd3736e74"
flutter: ║                                                 "key": "roasted_potato"
flutter: ║                                                 "name": "بطاطا مشوية"
flutter: ║                                                 "nameI18n": {ar: بطاطا مشوية, en: بطاطا مشوية},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 50
flutter: ║                                                 "displayCategoryKey": "standard_carbs"
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136ba6c0fcd5fd3736e77"
flutter: ║                                                 "optionId": "6a2136ba6c0fcd5fd3736e77"
flutter: ║                                                 "key": "sweet_potato"
flutter: ║                                                 "name": "بطاطا حلوة"
flutter: ║                                                 "nameI18n": {ar: بطاطا حلوة, en: بطاطا حلوة},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 60
flutter: ║                                                 "displayCategoryKey": "standard_carbs"
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136ba6c0fcd5fd3736e7a"
flutter: ║                                                 "optionId": "6a2136ba6c0fcd5fd3736e7a"
flutter: ║                                                 "key": "grilled_mixed_vegetables"
flutter: ║                                                 "name": "خضار مشكلة مشوية"
flutter: ║                                                 "nameI18n": {ar: خضار مشكلة مشوية, en: خضار مشكلة مشوية},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 70
flutter: ║                                                 "displayCategoryKey": "standard_carbs"
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            }
flutter: ║                                         ]
flutter: ║                                    }
flutter: ║                                 ]
flutter: ║                            }
flutter: ║                         ]
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "section:sandwich",
flutter: ║                         "key": "sandwich",
flutter: ║                         "type": "product_list",
flutter: ║                         "name": "ساندويتشات",
flutter: ║                         "ui": {cardVariant: standard},
flutter: ║                         "products": [
flutter: ║                            {
flutter: ║                                 "id": "6a2137406c0fcd5fd37372c8",
flutter: ║                                 "key": "turkey_cold_sandwich",
flutter: ║                                 "type": "menu_product",
flutter: ║                                 "isVirtual": false,
flutter: ║                                 "selectionType": "sandwich",
flutter: ║                                 "name": "تركي",
flutter: ║                                 "nameI18n": {ar: تركي, en: Turkey},
flutter: ║                                 "description": "",
flutter: ║                                 "descriptionI18n": {ar: , en: },
flutter: ║                                 "imageUrl": "",
flutter: ║                                 "itemType": "cold_sandwich",
flutter: ║                                 "pricingModel": "fixed",
flutter: ║                                 "priceHalala": 1300,
flutter: ║                                 "currency": "SAR",
flutter: ║                                 "sortOrder": 110,
flutter: ║                                 "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                                 "optionGroups": []
flutter: ║                            },
flutter: ║                            {
flutter: ║                                 "id": "6a2137406c0fcd5fd37372cb",
flutter: ║                                 "key": "boiled_egg_cold_sandwich",
flutter: ║                                 "type": "menu_product",
flutter: ║                                 "isVirtual": false,
flutter: ║                                 "selectionType": "sandwich",
flutter: ║                                 "name": "بيض مسلوق",
flutter: ║                                 "nameI18n": {ar: بيض مسلوق, en: Boiled Egg},
flutter: ║                                 "description": "",
flutter: ║                                 "descriptionI18n": {ar: , en: },
flutter: ║                                 "imageUrl": "",
flutter: ║                                 "itemType": "cold_sandwich",
flutter: ║                                 "pricingModel": "fixed",
flutter: ║                                 "priceHalala": 900,
flutter: ║                                 "currency": "SAR",
flutter: ║                                 "sortOrder": 120,
flutter: ║                                 "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                                 "optionGroups": []
flutter: ║                            },
flutter: ║                            {
flutter: ║                                 "id": "6a2137416c0fcd5fd37372ce",
flutter: ║                                 "key": "tuna_cold_sandwich",
flutter: ║                                 "type": "menu_product",
flutter: ║                                 "isVirtual": false,
flutter: ║                                 "selectionType": "sandwich",
flutter: ║                                 "name": "تونا",
flutter: ║                                 "nameI18n": {ar: تونا, en: Tuna},
flutter: ║                                 "description": "",
flutter: ║                                 "descriptionI18n": {ar: , en: },
flutter: ║                                 "imageUrl": "",
flutter: ║                                 "itemType": "cold_sandwich",
flutter: ║                                 "pricingModel": "fixed",
flutter: ║                                 "priceHalala": 1300,
flutter: ║                                 "currency": "SAR",
flutter: ║                                 "sortOrder": 130,
flutter: ║                                 "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                                 "optionGroups": []
flutter: ║                            },
flutter: ║                            {
flutter: ║                                 "id": "6a2137416c0fcd5fd37372d1",
flutter: ║                                 "key": "scrambled_egg_cold_sandwich"
flutter: ║                                 "type": "menu_product",
flutter: ║                                 "isVirtual": false,
flutter: ║                                 "selectionType": "sandwich",
flutter: ║                                 "name": "بيض مخفوق",
flutter: ║                                 "nameI18n": {ar: بيض مخفوق, en: Scrambled Egg},
flutter: ║                                 "description": "",
flutter: ║                                 "descriptionI18n": {ar: , en: },
flutter: ║                                 "imageUrl": "",
flutter: ║                                 "itemType": "cold_sandwich",
flutter: ║                                 "pricingModel": "fixed",
flutter: ║                                 "priceHalala": 900,
flutter: ║                                 "currency": "SAR",
flutter: ║                                 "sortOrder": 140,
flutter: ║                                 "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                                 "optionGroups": []
flutter: ║                            },
flutter: ║                            {
flutter: ║                                 "id": "6a2137426c0fcd5fd37372d4",
flutter: ║                                 "key": "classic_halloumi_cold_sandwich"
flutter: ║                                 "type": "menu_product",
flutter: ║                                 "isVirtual": false,
flutter: ║                                 "selectionType": "sandwich",
flutter: ║                                 "name": "حلوم كلاسيك",
flutter: ║                                 "nameI18n": {ar: حلوم كلاسيك, en: Classic Halloumi},
flutter: ║                                 "description": "",
flutter: ║                                 "descriptionI18n": {ar: , en: },
flutter: ║                                 "imageUrl": "",
flutter: ║                                 "itemType": "cold_sandwich",
flutter: ║                                 "pricingModel": "fixed",
flutter: ║                                 "priceHalala": 1100,
flutter: ║                                 "currency": "SAR",
flutter: ║                                 "sortOrder": 150,
flutter: ║                                 "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                                 "optionGroups": []
flutter: ║                            },
flutter: ║                            {
flutter: ║                                 "id": "6a2137426c0fcd5fd37372d7",
flutter: ║                                 "key": "chicken_fajita_cold_sandwich"
flutter: ║                                 "type": "menu_product",
flutter: ║                                 "isVirtual": false,
flutter: ║                                 "selectionType": "sandwich",
flutter: ║                                 "name": "دجاج فاهيتا",
flutter: ║                                 "nameI18n": {ar: دجاج فاهيتا, en: Chicken Fajita},
flutter: ║                                 "description": "",
flutter: ║                                 "descriptionI18n": {ar: , en: },
flutter: ║                                 "imageUrl": "",
flutter: ║                                 "itemType": "cold_sandwich",
flutter: ║                                 "pricingModel": "fixed",
flutter: ║                                 "priceHalala": 1300,
flutter: ║                                 "currency": "SAR",
flutter: ║                                 "sortOrder": 160,
flutter: ║                                 "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                                 "optionGroups": []
flutter: ║                            },
flutter: ║                            {
flutter: ║                                 "id": "6a2137426c0fcd5fd37372da",
flutter: ║                                 "key": "mexican_chicken_cold_sandwich"
flutter: ║                                 "type": "menu_product",
flutter: ║                                 "isVirtual": false,
flutter: ║                                 "selectionType": "sandwich",
flutter: ║                                 "name": "دجاج مكسيكي",
flutter: ║                                 "nameI18n": {ar: دجاج مكسيكي, en: Mexican Chicken},
flutter: ║                                 "description": "",
flutter: ║                                 "descriptionI18n": {ar: , en: },
flutter: ║                                 "imageUrl": "",
flutter: ║                                 "itemType": "cold_sandwich",
flutter: ║                                 "pricingModel": "fixed",
flutter: ║                                 "priceHalala": 1300,
flutter: ║                                 "currency": "SAR",
flutter: ║                                 "sortOrder": 170,
flutter: ║                                 "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                                 "optionGroups": []
flutter: ║                            },
flutter: ║                            {
flutter: ║                                 "id": "6a2137436c0fcd5fd37372dd",
flutter: ║                                 "key": "grilled_chicken_cold_sandwich"
flutter: ║                                 "type": "menu_product",
flutter: ║                                 "isVirtual": false,
flutter: ║                                 "selectionType": "sandwich",
flutter: ║                                 "name": "دجاج مشوي",
flutter: ║                                 "nameI18n": {ar: دجاج مشوي, en: Grilled Chicken},
flutter: ║                                 "description": "",
flutter: ║                                 "descriptionI18n": {ar: , en: },
flutter: ║                                 "imageUrl": "",
flutter: ║                                 "itemType": "cold_sandwich",
flutter: ║                                 "pricingModel": "fixed",
flutter: ║                                 "priceHalala": 1300,
flutter: ║                                 "currency": "SAR",
flutter: ║                                 "sortOrder": 180,
flutter: ║                                 "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                                 "optionGroups": []
flutter: ║                            }
flutter: ║                         ]
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "section:premium_large_salad",
flutter: ║                         "key": "premium_large_salad",
flutter: ║                         "type": "configurable_product",
flutter: ║                         "name": "سلطة كبيرة مميزة",
flutter: ║                         "ui": {cardVariant: large_salad},
flutter: ║                         "products": [
flutter: ║                            {
flutter: ║                                 "id": "6a21370f6c0fcd5fd373713f",
flutter: ║                                 "key": "premium_large_salad",
flutter: ║                                 "type": "menu_product",
flutter: ║                                 "isVirtual": false,
flutter: ║                                 "selectionType": "premium_large_salad",
flutter: ║                                 "name": "سلطة كبيرة مميزة",
flutter: ║                                 "nameI18n": {ar: سلطة كبيرة مميزة, en: Premium Large Salad},
flutter: ║                                 "description": "",
flutter: ║                                 "descriptionI18n": {ar: , en: },
flutter: ║                                 "imageUrl": "",
flutter: ║                                 "itemType": "basic_salad",
flutter: ║                                 "pricingModel": "fixed",
flutter: ║                                 "priceHalala": 2900,
flutter: ║                                 "currency": "SAR",
flutter: ║                                 "sortOrder": 30,
flutter: ║                                 "ui": {cardVariant: large_salad, badge: , ctaLabel: , imageRatio: square},
flutter: ║                                 "optionGroups": [
flutter: ║                                    {
flutter: ║                                         "id": "6a2136bc6c0fcd5fd3736e86"
flutter: ║                                         "groupId": "6a2136bc6c0fcd5fd3736e86"
flutter: ║                                         "key": "leafy_greens"
flutter: ║                                         "sourceKey": "leafy_greens"
flutter: ║                                         "name": "ورقيات",
flutter: ║                                         "nameI18n": {ar: ورقيات, en: Leafy Greens},
flutter: ║                                         "minSelections": 0,
flutter: ║                                         "maxSelections": 2,
flutter: ║                                         "isRequired": false,
flutter: ║                                         "sortOrder": 10,
flutter: ║                                         "ui": {displayStyle: checkbox_grid},
flutter: ║                                         "rules": {minSelect: 0, maxSelect: 2, source: ingredient},
flutter: ║                                         "options": [
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136bc6c0fcd5fd3736e89"
flutter: ║                                                 "optionId": "6a2136bc6c0fcd5fd3736e89"
flutter: ║                                                 "key": "lettuce"
flutter: ║                                                 "name": "خس"
flutter: ║                                                 "nameI18n": {ar: خس, en: Lettuce},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 10
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136bc6c0fcd5fd3736e8c"
flutter: ║                                                 "optionId": "6a2136bc6c0fcd5fd3736e8c"
flutter: ║                                                 "key": "arugula"
flutter: ║                                                 "name": "جرجير"
flutter: ║                                                 "nameI18n": {ar: جرجير, en: Arugula},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 20
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136bd6c0fcd5fd3736e8f"
flutter: ║                                                 "optionId": "6a2136bd6c0fcd5fd3736e8f"
flutter: ║                                                 "key": "cabbage"
flutter: ║                                                 "name": "ملفوف"
flutter: ║                                                 "nameI18n": {ar: ملفوف, en: Cabbage},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 30
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            }
flutter: ║                                         ]
flutter: ║                                    },
flutter: ║                                    {
flutter: ║                                         "id": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                         "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                         "key": "vegetables"
flutter: ║                                         "sourceKey": "vegetables_legumes"
flutter: ║                                         "name": "خضار",
flutter: ║                                         "nameI18n": {ar: خضار, en: Vegetables},
flutter: ║                                         "minSelections": 0,
flutter: ║                                         "maxSelections": 19,
flutter: ║                                         "isRequired": false,
flutter: ║                                         "sortOrder": 20,
flutter: ║                                         "ui": {displayStyle: checkbox_grid},
flutter: ║                                         "rules": {minSelect: 0, maxSelect: 19, source: ingredient},
flutter: ║                                         "options": [
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136be6c0fcd5fd3736e98"
flutter: ║                                                 "optionId": "6a2136be6c0fcd5fd3736e98"
flutter: ║                                                 "key": "tomato"
flutter: ║                                                 "name": "طماطم"
flutter: ║                                                 "nameI18n": {ar: طماطم, en: Tomato},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 10
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136be6c0fcd5fd3736e9b"
flutter: ║                                                 "optionId": "6a2136be6c0fcd5fd3736e9b"
flutter: ║                                                 "key": "carrot"
flutter: ║                                                 "name": "جزر"
flutter: ║                                                 "nameI18n": {ar: جزر, en: Carrot},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 20
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136bf6c0fcd5fd3736e9e"
flutter: ║                                                 "optionId": "6a2136bf6c0fcd5fd3736e9e"
flutter: ║                                                 "key": "cucumber"
flutter: ║                                                 "name": "خيار"
flutter: ║                                                 "nameI18n": {ar: خيار, en: Cucumber},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 30
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136bf6c0fcd5fd3736ea1"
flutter: ║                                                 "optionId": "6a2136bf6c0fcd5fd3736ea1"
flutter: ║                                                 "key": "corn"
flutter: ║                                                 "name": "ذرة"
flutter: ║                                                 "nameI18n": {ar: ذرة, en: Corn},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 40
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136bf6c0fcd5fd3736ea4"
flutter: ║                                                 "optionId": "6a2136bf6c0fcd5fd3736ea4"
flutter: ║                                                 "key": "hummus"
flutter: ║                                                 "name": "حمص"
flutter: ║                                                 "nameI18n": {ar: حمص, en: Hummus},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 50
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136c06c0fcd5fd3736ea7"
flutter: ║                                                 "optionId": "6a2136c06c0fcd5fd3736ea7"
flutter: ║                                                 "key": "jalapeno"
flutter: ║                                                 "name": "هالبينو"
flutter: ║                                                 "nameI18n": {ar: هالبينو, en: Jalapeno},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 60
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136c06c0fcd5fd3736eaa"
flutter: ║                                                 "optionId": "6a2136c06c0fcd5fd3736eaa"
flutter: ║                                                 "key": "red_beans"
flutter: ║                                                 "name": "فاصوليا حمراء"
flutter: ║                                                 "nameI18n": {ar: فاصوليا حمراء, en: Red Beans},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 70
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136c06c0fcd5fd3736ead"
flutter: ║                                                 "optionId": "6a2136c06c0fcd5fd3736ead"
flutter: ║                                                 "key": "beetroot"
flutter: ║                                                 "name": "بنجر"
flutter: ║                                                 "nameI18n": {ar: بنجر, en: Beetroot},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 80
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136c16c0fcd5fd3736eb0"
flutter: ║                                                 "optionId": "6a2136c16c0fcd5fd3736eb0"
flutter: ║                                                 "key": "hot_pepper"
flutter: ║                                                 "name": "فلفل حار"
flutter: ║                                                 "nameI18n": {ar: فلفل حار, en: Hot Pepper},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 90
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136c16c0fcd5fd3736eb3"
flutter: ║                                                 "optionId": "6a2136c16c0fcd5fd3736eb3"
flutter: ║                                                 "key": "coriander"
flutter: ║                                                 "name": "كزبرة"
flutter: ║                                                 "nameI18n": {ar: كزبرة, en: Coriander},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 100
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136c26c0fcd5fd3736eb6"
flutter: ║                                                 "optionId": "6a2136c26c0fcd5fd3736eb6"
flutter: ║                                                 "key": "mushroom"
flutter: ║                                                 "name": "فطر"
flutter: ║                                                 "nameI18n": {ar: فطر, en: Mushroom},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 110
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136c26c0fcd5fd3736eb9"
flutter: ║                                                 "optionId": "6a2136c26c0fcd5fd3736eb9"
flutter: ║                                                 "key": "broccoli"
flutter: ║                                                 "name": "بروكلي"
flutter: ║                                                 "nameI18n": {ar: بروكلي, en: Broccoli},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 120
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136c26c0fcd5fd3736ebc"
flutter: ║                                                 "optionId": "6a2136c26c0fcd5fd3736ebc"
flutter: ║                                                 "key": "salad_grilled_mixed_vegetables"
flutter: ║                                                 "name": "خضار مشكل مشوي"
flutter: ║                                                 "nameI18n": {ar: خضار مشكل مشوي, en: Grilled Mixed Vegetables},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 130
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136c36c0fcd5fd3736ebf"
flutter: ║                                                 "optionId": "6a2136c36c0fcd5fd3736ebf"
flutter: ║                                                 "key": "red_onion"
flutter: ║                                                 "name": "بصل احمر"
flutter: ║                                                 "nameI18n": {ar: بصل احمر, en: Red Onion},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 140
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136c36c0fcd5fd3736ec2"
flutter: ║                                                 "optionId": "6a2136c36c0fcd5fd3736ec2"
flutter: ║                                                 "key": "green_onion"
flutter: ║                                                 "name": "بصل اخضر"
flutter: ║                                                 "nameI18n": {ar: بصل اخضر, en: Green Onion},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 150
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136c36c0fcd5fd3736ec5"
flutter: ║                                                 "optionId": "6a2136c36c0fcd5fd3736ec5"
flutter: ║                                                 "key": "green_olives"
flutter: ║                                                 "name": "زيتون اخضر"
flutter: ║                                                 "nameI18n": {ar: زيتون اخضر, en: Green Olives},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 160
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136c46c0fcd5fd3736ec8"
flutter: ║                                                 "optionId": "6a2136c46c0fcd5fd3736ec8"
flutter: ║                                                 "key": "black_olives"
flutter: ║                                                 "name": "زيتون اسود"
flutter: ║                                                 "nameI18n": {ar: زيتون اسود, en: Black Olives},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 170
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136c46c0fcd5fd3736ecb"
flutter: ║                                                 "optionId": "6a2136c46c0fcd5fd3736ecb"
flutter: ║                                                 "key": "mint"
flutter: ║                                                 "name": "نعناع"
flutter: ║                                                 "nameI18n": {ar: نعناع, en: Mint},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 180
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136c46c0fcd5fd3736ece"
flutter: ║                                                 "optionId": "6a2136c46c0fcd5fd3736ece"
flutter: ║                                                 "key": "pickled_onion"
flutter: ║                                                 "name": "بصل مخلل"
flutter: ║                                                 "nameI18n": {ar: بصل مخلل, en: Pickled Onion},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 190
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            }
flutter: ║                                         ]
flutter: ║                                    },
flutter: ║                                    {
flutter: ║                                         "id": "6a2136b06c0fcd5fd3736e26"
flutter: ║                                         "groupId": "6a2136b06c0fcd5fd3736e26"
flutter: ║                                         "key": "protein",
flutter: ║                                         "sourceKey": "proteins",
flutter: ║                                         "name": "بروتين",
flutter: ║                                         "nameI18n": {ar: بروتين, en: Protein},
flutter: ║                                         "minSelections": 1,
flutter: ║                                         "maxSelections": 1,
flutter: ║                                         "isRequired": true,
flutter: ║                                         "sortOrder": 30,
flutter: ║                                         "ui": {displayStyle: radio_cards},
flutter: ║                                         "rules": {minSelect: 1, maxSelect: 1, source: protein},
flutter: ║                                         "options": [
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b36c0fcd5fd3736e3e"
flutter: ║                                                 "optionId": "6a2136b36c0fcd5fd3736e3e"
flutter: ║                                                 "key": "boiled_eggs"
flutter: ║                                                 "name": "بيض مسلوق"
flutter: ║                                                 "nameI18n": {ar: بيض مسلوق, en: Boiled Eggs},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 80
flutter: ║                                                 "displayCategoryKey": "eggs"
flutter: ║                                                 "proteinFamilyKey": "eggs"
flutter: ║                                                 "proteinFamilyNameI18n": {ar: بيض, en: Eggs},
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b36c0fcd5fd3736e41"
flutter: ║                                                 "optionId": "6a2136b36c0fcd5fd3736e41"
flutter: ║                                                 "key": "tuna"
flutter: ║                                                 "name": "تونا"
flutter: ║                                                 "nameI18n": {ar: تونا, en: Tuna},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 90
flutter: ║                                                 "displayCategoryKey": "fish"
flutter: ║                                                 "proteinFamilyKey": "fish"
flutter: ║                                                 "proteinFamilyNameI18n": {ar: سمك, en: Fish},
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b46c0fcd5fd3736e44"
flutter: ║                                                 "optionId": "6a2136b46c0fcd5fd3736e44"
flutter: ║                                                 "key": "chicken_fajita"
flutter: ║                                                 "name": "فاهيتا"
flutter: ║                                                 "nameI18n": {ar: فاهيتا, en: Chicken Fajita},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 100
flutter: ║                                                 "displayCategoryKey": "chicken"
flutter: ║                                                 "proteinFamilyKey": "chicken"
flutter: ║                                                 "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b46c0fcd5fd3736e47"
flutter: ║                                                 "optionId": "6a2136b46c0fcd5fd3736e47"
flutter: ║                                                 "key": "spicy_chicken"
flutter: ║                                                 "name": "دجاج سبايسي"
flutter: ║                                                 "nameI18n": {ar: دجاج سبايسي, en: Spicy Chicken},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 110
flutter: ║                                                 "displayCategoryKey": "chicken"
flutter: ║                                                 "proteinFamilyKey": "chicken"
flutter: ║                                                 "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b56c0fcd5fd3736e4a"
flutter: ║                                                 "optionId": "6a2136b56c0fcd5fd3736e4a"
flutter: ║                                                 "key": "italian_spiced_chicken"
flutter: ║                                                 "name": "دجاج توابل إيطالية"
flutter: ║                                                 "nameI18n": {ar: دجاج توابل إيطالية, en: Italian Spiced Chicken},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 120
flutter: ║                                                 "displayCategoryKey": "chicken"
flutter: ║                                                 "proteinFamilyKey": "chicken"
flutter: ║                                                 "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b56c0fcd5fd3736e4d"
flutter: ║                                                 "optionId": "6a2136b56c0fcd5fd3736e4d"
flutter: ║                                                 "key": "chicken_tikka"
flutter: ║                                                 "name": "دجاج تكا"
flutter: ║                                                 "nameI18n": {ar: دجاج تكا, en: Chicken Tikka},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 130
flutter: ║                                                 "displayCategoryKey": "chicken"
flutter: ║                                                 "proteinFamilyKey": "chicken"
flutter: ║                                                 "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b56c0fcd5fd3736e50"
flutter: ║                                                 "optionId": "6a2136b56c0fcd5fd3736e50"
flutter: ║                                                 "key": "asian_chicken"
flutter: ║                                                 "name": "دجاج آسيوي"
flutter: ║                                                 "nameI18n": {ar: دجاج آسيوي, en: Asian Chicken},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 140
flutter: ║                                                 "displayCategoryKey": "chicken"
flutter: ║                                                 "proteinFamilyKey": "chicken"
flutter: ║                                                 "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b66c0fcd5fd3736e53"
flutter: ║                                                 "optionId": "6a2136b66c0fcd5fd3736e53"
flutter: ║                                                 "key": "chicken_strips"
flutter: ║                                                 "name": "استربس"
flutter: ║                                                 "nameI18n": {ar: استربس, en: Chicken Strips},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 150
flutter: ║                                                 "displayCategoryKey": "chicken"
flutter: ║                                                 "proteinFamilyKey": "chicken"
flutter: ║                                                 "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b66c0fcd5fd3736e56"
flutter: ║                                                 "optionId": "6a2136b66c0fcd5fd3736e56"
flutter: ║                                                 "key": "grilled_chicken"
flutter: ║                                                 "name": "دجاج مشوي"
flutter: ║                                                 "nameI18n": {ar: دجاج مشوي, en: Grilled Chicken},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 160
flutter: ║                                                 "displayCategoryKey": "chicken"
flutter: ║                                                 "proteinFamilyKey": "chicken"
flutter: ║                                                 "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b66c0fcd5fd3736e59"
flutter: ║                                                 "optionId": "6a2136b66c0fcd5fd3736e59"
flutter: ║                                                 "key": "mexican_chicken"
flutter: ║                                                 "name": "دجاج مكسيكي"
flutter: ║                                                 "nameI18n": {ar: دجاج مكسيكي, en: Mexican Chicken},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 170
flutter: ║                                                 "displayCategoryKey": "chicken"
flutter: ║                                                 "proteinFamilyKey": "chicken"
flutter: ║                                                 "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136b76c0fcd5fd3736e62"
flutter: ║                                                 "optionId": "6a2136b76c0fcd5fd3736e62"
flutter: ║                                                 "key": "fish_fillet"
flutter: ║                                                 "name": "سمك فيليه"
flutter: ║                                                 "nameI18n": {ar: سمك فيليه, en: Fish Fillet},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 200
flutter: ║                                                 "displayCategoryKey": "fish"
flutter: ║                                                 "proteinFamilyKey": "fish"
flutter: ║                                                 "proteinFamilyNameI18n": {ar: سمك, en: Fish},
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": "standard_meal"
flutter: ║                                                 "isPremium": false
flutter: ║                                                 "ui": {}
flutter: ║                                            }
flutter: ║                                         ],
flutter: ║                                         "optionSections": [
flutter: ║                                            {
flutter: ║                                                 "key": "chicken"
flutter: ║                                                 "name": "دجاج"
flutter: ║                                                 "nameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                                 "optionKeys": [
flutter: ║                                                         chicken_fajita,
flutter: ║                                                         spicy_chicken,
flutter: ║                                                         italian_spiced_chicken,
flutter: ║                                                         chicken_tikka,
flutter: ║                                                         asian_chicken,
flutter: ║                                                         chicken_strips,
flutter: ║                                                         grilled_chicken,
flutter: ║                                                         mexican_chicken
flutter: ║                                                 ],
flutter: ║                                                 "optionIds": [
flutter: ║                                                         6a2136b46c0fcd5fd3736e44,
flutter: ║                                                         6a2136b46c0fcd5fd3736e47,
flutter: ║                                                         6a2136b56c0fcd5fd3736e4a,
flutter: ║                                                         6a2136b56c0fcd5fd3736e4d,
flutter: ║                                                         6a2136b56c0fcd5fd3736e50,
flutter: ║                                                         6a2136b66c0fcd5fd3736e53,
flutter: ║                                                         6a2136b66c0fcd5fd3736e56,
flutter: ║                                                         6a2136b66c0fcd5fd3736e59
flutter: ║                                                 ]
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "key": "fish"
flutter: ║                                                 "name": "سمك"
flutter: ║                                                 "nameI18n": {ar: سمك, en: Fish},
flutter: ║                                                 "optionKeys": [tuna, fish_fillet]
flutter: ║                                                 "optionIds": [6a2136b36c0fcd5fd3736e41, 6a2136b76c0fcd5fd3736e62]
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "key": "eggs"
flutter: ║                                                 "name": "بيض"
flutter: ║                                                 "nameI18n": {ar: بيض, en: Eggs},
flutter: ║                                                 "optionKeys": [boiled_eggs]
flutter: ║                                                 "optionIds": [6a2136b36c0fcd5fd3736e3e]
flutter: ║                                            }
flutter: ║                                         ]
flutter: ║                                    },
flutter: ║                                    {
flutter: ║                                         "id": "6a2136c56c0fcd5fd3736ed1"
flutter: ║                                         "groupId": "6a2136c56c0fcd5fd3736ed1"
flutter: ║                                         "key": "cheese_nuts"
flutter: ║                                         "sourceKey": "cheese_nuts"
flutter: ║                                         "name": "أجبان ومكسرات"
flutter: ║                                         "nameI18n": {ar: أجبان ومكسرات, en: Cheese & Nuts},
flutter: ║                                         "minSelections": 0,
flutter: ║                                         "maxSelections": 2,
flutter: ║                                         "isRequired": false,
flutter: ║                                         "sortOrder": 40,
flutter: ║                                         "ui": {displayStyle: checkbox_grid},
flutter: ║                                         "rules": {minSelect: 0, maxSelect: 2, source: ingredient},
flutter: ║                                         "options": [
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136c56c0fcd5fd3736ed4"
flutter: ║                                                 "optionId": "6a2136c56c0fcd5fd3736ed4"
flutter: ║                                                 "key": "cashew"
flutter: ║                                                 "name": "كاجو"
flutter: ║                                                 "nameI18n": {ar: كاجو, en: Cashew},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 10
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136c66c0fcd5fd3736ed7"
flutter: ║                                                 "optionId": "6a2136c66c0fcd5fd3736ed7"
flutter: ║                                                 "key": "walnut"
flutter: ║                                                 "name": "عين الجمل"
flutter: ║                                                 "nameI18n": {ar: عين الجمل, en: Walnut},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 20
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136c66c0fcd5fd3736eda"
flutter: ║                                                 "optionId": "6a2136c66c0fcd5fd3736eda"
flutter: ║                                                 "key": "sesame"
flutter: ║                                                 "name": "سمسم"
flutter: ║                                                 "nameI18n": {ar: سمسم, en: Sesame},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 30
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136c66c0fcd5fd3736edd"
flutter: ║                                                 "optionId": "6a2136c66c0fcd5fd3736edd"
flutter: ║                                                 "key": "feta"
flutter: ║                                                 "name": "فيتا"
flutter: ║                                                 "nameI18n": {ar: فيتا, en: Feta},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 40
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136c76c0fcd5fd3736ee0"
flutter: ║                                                 "optionId": "6a2136c76c0fcd5fd3736ee0"
flutter: ║                                                 "key": "parmesan"
flutter: ║                                                 "name": "بارميزان"
flutter: ║                                                 "nameI18n": {ar: بارميزان, en: Parmesan},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 50
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            }
flutter: ║                                         ]
flutter: ║                                    },
flutter: ║                                    {
flutter: ║                                         "id": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                         "groupId": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                         "key": "fruits",
flutter: ║                                         "sourceKey": "fruits",
flutter: ║                                         "name": "فواكه",
flutter: ║                                         "nameI18n": {ar: فواكه, en: Fruits},
flutter: ║                                         "minSelections": 0,
flutter: ║                                         "maxSelections": 4,
flutter: ║                                         "isRequired": false,
flutter: ║                                         "sortOrder": 50,
flutter: ║                                         "ui": {displayStyle: checkbox_grid},
flutter: ║                                         "rules": {minSelect: 0, maxSelect: 4, source: ingredient},
flutter: ║                                         "options": [
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136c86c0fcd5fd3736eec"
flutter: ║                                                 "optionId": "6a2136c86c0fcd5fd3736eec"
flutter: ║                                                 "key": "mango"
flutter: ║                                                 "name": "مانجا"
flutter: ║                                                 "nameI18n": {ar: مانجا, en: Mango},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 10
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136c86c0fcd5fd3736eef"
flutter: ║                                                 "optionId": "6a2136c86c0fcd5fd3736eef"
flutter: ║                                                 "key": "green_apple"
flutter: ║                                                 "name": "تفاح اخضر"
flutter: ║                                                 "nameI18n": {ar: تفاح اخضر, en: Green Apple},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 20
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136c96c0fcd5fd3736ef2"
flutter: ║                                                 "optionId": "6a2136c96c0fcd5fd3736ef2"
flutter: ║                                                 "key": "pomegranate"
flutter: ║                                                 "name": "رمان"
flutter: ║                                                 "nameI18n": {ar: رمان, en: Pomegranate},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 30
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136c96c0fcd5fd3736ef5"
flutter: ║                                                 "optionId": "6a2136c96c0fcd5fd3736ef5"
flutter: ║                                                 "key": "strawberry"
flutter: ║                                                 "name": "فراولة"
flutter: ║                                                 "nameI18n": {ar: فراولة, en: Strawberry},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 40
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136ca6c0fcd5fd3736ef8"
flutter: ║                                                 "optionId": "6a2136ca6c0fcd5fd3736ef8"
flutter: ║                                                 "key": "blueberry"
flutter: ║                                                 "name": "توت ازرق"
flutter: ║                                                 "nameI18n": {ar: توت ازرق, en: Blueberry},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 50
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136ca6c0fcd5fd3736efb"
flutter: ║                                                 "optionId": "6a2136ca6c0fcd5fd3736efb"
flutter: ║                                                 "key": "raspberry"
flutter: ║                                                 "name": "توت احمر"
flutter: ║                                                 "nameI18n": {ar: توت احمر, en: Raspberry},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 60
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136ca6c0fcd5fd3736efe"
flutter: ║                                                 "optionId": "6a2136ca6c0fcd5fd3736efe"
flutter: ║                                                 "key": "watermelon"
flutter: ║                                                 "name": "بطيخ"
flutter: ║                                                 "nameI18n": {ar: بطيخ, en: Watermelon},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 70
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136ca6c0fcd5fd3736f01"
flutter: ║                                                 "optionId": "6a2136ca6c0fcd5fd3736f01"
flutter: ║                                                 "key": "cantaloupe"
flutter: ║                                                 "name": "شمام"
flutter: ║                                                 "nameI18n": {ar: شمام, en: Cantaloupe},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 80
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136cb6c0fcd5fd3736f04"
flutter: ║                                                 "optionId": "6a2136cb6c0fcd5fd3736f04"
flutter: ║                                                 "key": "dates"
flutter: ║                                                 "name": "تمر"
flutter: ║                                                 "nameI18n": {ar: تمر, en: Dates},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 90
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            }
flutter: ║                                         ]
flutter: ║                                    },
flutter: ║                                    {
flutter: ║                                         "id": "6a2136cb6c0fcd5fd3736f0a"
flutter: ║                                         "groupId": "6a2136cb6c0fcd5fd3736f0a"
flutter: ║                                         "key": "sauce",
flutter: ║                                         "sourceKey": "sauces",
flutter: ║                                         "name": "صوص",
flutter: ║                                         "nameI18n": {ar: صوص, en: Sauce},
flutter: ║                                         "minSelections": 1,
flutter: ║                                         "maxSelections": 1,
flutter: ║                                         "isRequired": true,
flutter: ║                                         "sortOrder": 60,
flutter: ║                                         "ui": {displayStyle: radio_cards},
flutter: ║                                         "rules": {minSelect: 1, maxSelect: 1, source: ingredient},
flutter: ║                                         "options": [
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136cc6c0fcd5fd3736f0d"
flutter: ║                                                 "optionId": "6a2136cc6c0fcd5fd3736f0d"
flutter: ║                                                 "key": "ranch"
flutter: ║                                                 "name": "رانش"
flutter: ║                                                 "nameI18n": {ar: رانش, en: Ranch},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 10
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136cc6c0fcd5fd3736f10"
flutter: ║                                                 "optionId": "6a2136cc6c0fcd5fd3736f10"
flutter: ║                                                 "key": "spicy_ranch"
flutter: ║                                                 "name": "سبايسي رانش"
flutter: ║                                                 "nameI18n": {ar: سبايسي رانش, en: Spicy Ranch},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 20
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136cd6c0fcd5fd3736f13"
flutter: ║                                                 "optionId": "6a2136cd6c0fcd5fd3736f13"
flutter: ║                                                 "key": "pesto_sauce"
flutter: ║                                                 "name": "صوص بيستو"
flutter: ║                                                 "nameI18n": {ar: صوص بيستو, en: Pesto Sauce},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 30
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136cd6c0fcd5fd3736f16"
flutter: ║                                                 "optionId": "6a2136cd6c0fcd5fd3736f16"
flutter: ║                                                 "key": "balsamic"
flutter: ║                                                 "name": "بالسميك"
flutter: ║                                                 "nameI18n": {ar: بالسميك, en: Balsamic},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 40
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136cd6c0fcd5fd3736f19"
flutter: ║                                                 "optionId": "6a2136cd6c0fcd5fd3736f19"
flutter: ║                                                 "key": "caesar"
flutter: ║                                                 "name": "سيزر"
flutter: ║                                                 "nameI18n": {ar: سيزر, en: Caesar},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 50
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136ce6c0fcd5fd3736f1c"
flutter: ║                                                 "optionId": "6a2136ce6c0fcd5fd3736f1c"
flutter: ║                                                 "key": "honey_mustard"
flutter: ║                                                 "name": "هاني ماستر"
flutter: ║                                                 "nameI18n": {ar: هاني ماستر, en: Honey Mustard},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 60
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136ce6c0fcd5fd3736f1f"
flutter: ║                                                 "optionId": "6a2136ce6c0fcd5fd3736f1f"
flutter: ║                                                 "key": "yogurt_mint"
flutter: ║                                                 "name": "زبادي بالنعناع"
flutter: ║                                                 "nameI18n": {ar: زبادي بالنعناع, en: Yogurt Mint},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 70
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            },
flutter: ║                                            {
flutter: ║                                                 "id": "6a2136ce6c0fcd5fd3736f22"
flutter: ║                                                 "optionId": "6a2136ce6c0fcd5fd3736f22"
flutter: ║                                                 "key": "honey_garlic"
flutter: ║                                                 "name": "عسل بالثوم"
flutter: ║                                                 "nameI18n": {ar: عسل بالثوم, en: Honey Garlic},
flutter: ║                                                 "description": ""
flutter: ║                                                 "descriptionI18n": {ar: , en: },
flutter: ║                                                 "imageUrl": ""
flutter: ║                                                 "sortOrder": 80
flutter: ║                                                 "displayCategoryKey": ""
flutter: ║                                                 "proteinFamilyKey": ""
flutter: ║                                                 "premiumKey": null
flutter: ║                                                 "extraFeeHalala": 0
flutter: ║                                                 "extraPriceHalala": 0
flutter: ║                                                 "selectionType": ""
flutter: ║                                                 "ui": {}
flutter: ║                                            }
flutter: ║                                         ]
flutter: ║                                    }
flutter: ║                                 ],
flutter: ║                                 "premiumKey": "premium_large_salad",
flutter: ║                                 "presetKey": "large_salad",
flutter: ║                                 "extraFeeHalala": 2900,
flutter: ║                                 "priceSource": "menu_product_premium_large_salad"
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
flutter: ║                }
flutter: ║            }
flutter: ║             "currency": "SAR",
flutter: ║             "regularMeals": {
flutter: ║                 "items": [
flutter: ║                    {
flutter: ║                         "id": "6a2133edb8ed5164d9945bd0",
flutter: ║                         "name": "ساندوتش دجاج",
flutter: ║                         "description": "",
flutter: ║                         "imageUrl": "",
flutter: ║                         "categoryId": "6a2133edb8ed5164d9945bca",
flutter: ║                         "categoryKey": "sandwiches",
flutter: ║                         "category": {
flutter: ║                             "id": "6a2133edb8ed5164d9945bca",
flutter: ║                             "key": "sandwiches",
flutter: ║                             "name": "سندوتشات",
flutter: ║                             "description": "",
flutter: ║                             "sortOrder": 0,
flutter: ║                             "isActive": true,
flutter: ║                             "isFallback": false
flutter: ║                        }
flutter: ║                         "proteinGrams": 33,
flutter: ║                         "carbGrams": 37,
flutter: ║                         "fatGrams": 19,
flutter: ║                         "type": "regular",
flutter: ║                         "pricingModel": "included",
flutter: ║                         "priceHalala": 0,
flutter: ║                         "priceSar": 0,
flutter: ║                         "currency": "SAR",
flutter: ║                         "ui": {title: ساندوتش دجاج, subtitle: }
flutter: ║                    }
flutter: ║                 ],
flutter: ║                 "categories": [
flutter: ║                    {
flutter: ║                         "id": "6a2133edb8ed5164d9945bca",
flutter: ║                         "key": "sandwiches",
flutter: ║                         "name": "سندوتشات",
flutter: ║                         "description": "",
flutter: ║                         "sortOrder": 0,
flutter: ║                         "isActive": true,
flutter: ║                         "isFallback": false,
flutter: ║                         "categoryId": "6a2133edb8ed5164d9945bca"
flutter: ║                    }
flutter: ║                 ],
flutter: ║                 "sections": [
flutter: ║                    {
flutter: ║                         "category": {
flutter: ║                             "id": "6a2133edb8ed5164d9945bca",
flutter: ║                             "key": "sandwiches",
flutter: ║                             "name": "سندوتشات",
flutter: ║                             "description": "",
flutter: ║                             "sortOrder": 0,
flutter: ║                             "isActive": true,
flutter: ║                             "isFallback": false
flutter: ║                        }
flutter: ║                         "items": [
flutter: ║                            {
flutter: ║                                 "id": "6a2133edb8ed5164d9945bd0",
flutter: ║                                 "name": "ساندوتش دجاج",
flutter: ║                                 "description": "",
flutter: ║                                 "imageUrl": "",
flutter: ║                                 "categoryId": "6a2133edb8ed5164d9945bca",
flutter: ║                                 "categoryKey": "sandwiches",
flutter: ║                                 "category": {
flutter: ║                                     "id": "6a2133edb8ed5164d9945bca"
flutter: ║                                     "key": "sandwiches",
flutter: ║                                     "name": "سندوتشات",
flutter: ║                                     "description": "",
flutter: ║                                     "sortOrder": 0,
flutter: ║                                     "isActive": true,
flutter: ║                                     "isFallback": false
flutter: ║                                }
flutter: ║                                 "proteinGrams": 33,
flutter: ║                                 "carbGrams": 37,
flutter: ║                                 "fatGrams": 19,
flutter: ║                                 "type": "regular",
flutter: ║                                 "pricingModel": "included",
flutter: ║                                 "priceHalala": 0,
flutter: ║                                 "priceSar": 0,
flutter: ║                                 "currency": "SAR",
flutter: ║                                 "ui": {title: ساندوتش دجاج, subtitle: }
flutter: ║                            }
flutter: ║                         ]
flutter: ║                    }
flutter: ║                 ],
flutter: ║                 "totalCount": 1
flutter: ║            }
flutter: ║             "premiumMeals": {
flutter: ║                 "items": [
flutter: ║                    {
flutter: ║                         "id": "6a2136b26c0fcd5fd3736e35",
flutter: ║                         "premiumKey": "beef_steak",
flutter: ║                         "selectionType": "beef_steak",
flutter: ║                         "type": "premium",
flutter: ║                         "name": "ستيك لحم",
flutter: ║                         "description": "",
flutter: ║                         "imageUrl": "",
flutter: ║                         "currency": "SAR",
flutter: ║                         "extraFeeHalala": 2000,
flutter: ║                         "extraFeeSar": 20,
flutter: ║                         "priceHalala": 2000,
flutter: ║                         "priceSar": 20,
flutter: ║                         "priceLabel": "20 SAR",
flutter: ║                         "proteinGrams": 0,
flutter: ║                         "carbGrams": 0,
flutter: ║                         "fatGrams": 0,
flutter: ║                         "ui": {title: ستيك لحم, subtitle: , ctaLabel: أضف, selectionStyle: stepper},
flutter: ║                         "pricingModel": "extra_fee"
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2136b26c0fcd5fd3736e38",
flutter: ║                         "premiumKey": "shrimp",
flutter: ║                         "selectionType": "shrimp",
flutter: ║                         "type": "premium",
flutter: ║                         "name": "جمبري",
flutter: ║                         "description": "",
flutter: ║                         "imageUrl": "",
flutter: ║                         "currency": "SAR",
flutter: ║                         "extraFeeHalala": 2000,
flutter: ║                         "extraFeeSar": 20,
flutter: ║                         "priceHalala": 2000,
flutter: ║                         "priceSar": 20,
flutter: ║                         "priceLabel": "20 SAR",
flutter: ║                         "proteinGrams": 0,
flutter: ║                         "carbGrams": 0,
flutter: ║                         "fatGrams": 0,
flutter: ║                         "ui": {title: جمبري, subtitle: , ctaLabel: أضف, selectionStyle: stepper},
flutter: ║                         "pricingModel": "extra_fee"
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2136b36c0fcd5fd3736e3b",
flutter: ║                         "premiumKey": "salmon",
flutter: ║                         "selectionType": "salmon",
flutter: ║                         "type": "premium",
flutter: ║                         "name": "سالمون",
flutter: ║                         "description": "",
flutter: ║                         "imageUrl": "",
flutter: ║                         "currency": "SAR",
flutter: ║                         "extraFeeHalala": 2000,
flutter: ║                         "extraFeeSar": 20,
flutter: ║                         "priceHalala": 2000,
flutter: ║                         "priceSar": 20,
flutter: ║                         "priceLabel": "20 SAR",
flutter: ║                         "proteinGrams": 0,
flutter: ║                         "carbGrams": 0,
flutter: ║                         "fatGrams": 0,
flutter: ║                         "ui": {title: سالمون, subtitle: , ctaLabel: أضف, selectionStyle: stepper},
flutter: ║                         "pricingModel": "extra_fee"
flutter: ║                    }
flutter: ║                 ],
flutter: ║                 "totalCount": 3
flutter: ║            }
flutter: ║             "addons": {
flutter: ║                 "items": []
flutter: ║                 "byType": {
flutter: ║                     "subscription": []
flutter: ║                     "oneTime": []
flutter: ║                }
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
flutter: ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTIxMzc2ZGNkZTgwN2M5M2M1ZTFjOD
flutter: ║ giLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDU5MTE3MywiZXhwIjox
flutter: ║ NzgwNTkyMDczfQ.vxV_8FKzaseC6k1doDYecVX9Dz1QntUr1vlN_6M8Wm0
flutter: ╟ Accept-Language: ar
flutter: ╟ contentType: application/json
flutter: ╟ responseType: ResponseType.json
flutter: ╟ followRedirects: true
flutter: ╟ connectTimeout: 0:01:00.000000
flutter: ╟ receiveTimeout: 0:01:00.000000
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter:
flutter: ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 505 ms
flutter: ║  https://basicdiet145.onrender.com/api/subscriptions/addon-choices
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: ╔ Headers
flutter: ╟ x-dns-prefetch-control: [off]
flutter: ╟ x-render-origin-server: [Render]
flutter: ╟ date: [Thu, 04 Jun 2026 16:42:13 GMT]
flutter: ╟ transfer-encoding: [chunked]
flutter: ╟ origin-agent-cluster: [?1]
flutter: ╟ vary: [Origin, Accept-Encoding]
flutter: ╟ content-encoding: [gzip]
flutter: ╟ server: [cloudflare]
flutter: ╟ cross-origin-resource-policy: [same-origin]
flutter: ╟ cf-ray: [a06863b52e00376c-MRS]
flutter: ╟ etag: [W/"2bc9-k/2+th3tFxL5xRV1+V9yoStEbwI"]
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
flutter: ╟ rndr-id: [eb584947-3643-4ee8]
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
flutter: ║                         "id": "6a2137466c0fcd5fd37372f8",
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
flutter: ║                         "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2137466c0fcd5fd37372fb",
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
flutter: ║                         "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2137476c0fcd5fd37372fe",
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
flutter: ║                         "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2137476c0fcd5fd3737301",
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
flutter: ║                         "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2137486c0fcd5fd3737304",
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
flutter: ║                         "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2137486c0fcd5fd3737307",
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
flutter: ║                         "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2137496c0fcd5fd3737313",
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
flutter: ║                         "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a21374a6c0fcd5fd3737316",
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
flutter: ║                         "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a21374a6c0fcd5fd3737319",
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
flutter: ║                         "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a21374a6c0fcd5fd373731c",
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
flutter: ║                         "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    }
flutter: ║                 ]
flutter: ║            }
flutter: ║             "snack": {
flutter: ║                 "category": "snack",
flutter: ║                 "sourceCategories": [desserts]
flutter: ║                 "choices": [
flutter: ║                    {
flutter: ║                         "id": "6a2137436c0fcd5fd37372e0",
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
flutter: ║                         "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2137436c0fcd5fd37372e3",
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
flutter: ║                         "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2137446c0fcd5fd37372e6",
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
flutter: ║                         "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2137446c0fcd5fd37372e9",
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
flutter: ║                         "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2137446c0fcd5fd37372ec",
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
flutter: ║                         "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2137456c0fcd5fd37372ef",
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
flutter: ║                         "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2137456c0fcd5fd37372f2",
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
flutter: ║                         "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2137466c0fcd5fd37372f5",
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
flutter: ║                         "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    }
flutter: ║                 ]
flutter: ║            }
flutter: ║             "small_salad": {
flutter: ║                 "category": "small_salad",
flutter: ║                 "sourceCategories": [light_options]
flutter: ║                 "choices": [
flutter: ║                    {
flutter: ║                         "id": "6a2137276c0fcd5fd37371ff",
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
flutter: ║                         "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2137346c0fcd5fd3737265",
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
flutter: ║                         "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square}
flutter: ║                    }
flutter: ║                 ]
flutter: ║            }
flutter: ║        }
flutter: ║    }
flutter: ║
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: MealPlannerBloc: Initialized with mealBalance: canConsumeNow=null, limitEnforced=null, maxConsumable=null, remaining=null
flutter: onChange -- MealPlannerBloc, Change { currentState: MealPlannerLoading(), nextState: MealPlannerLoaded([Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel'], Instance of 'MealPlannerMenuModel', AddonChoicesModel([AddonChoiceCategoryModel(juice, [juices, drinks], [AddonChoiceModel(6a2137466c0fcd5fd37372f8, berry_blast, بيري بلاست, بيري بلاست, {ar: بيري بلاست, en: Berry Blast}, 1100, 11.0, SAR, null, null, juices, juice, menu_product, true, true, {cardVariant: addon, badge: , ctaLabel: , imageRatio: square}), AddonChoiceModel(6a2137466c0fcd5fd37372fb, berry_prot, بيري بروت, بيري بروت, {ar: بيري بروت, en: Berry Prot}, 1300, 13.0, SAR, null, null, juices, juice, menu_product, true, true, {cardVariant: addon, badge: , ctaLabel: , imageRatio: square}), AddonChoiceModel(6a21<…>
flutter: \^[[34m[🌎 Easy Localization] [WARNING] Localization key [dailyLimitEnforced] not found<…>
flutter:
flutter: ╔╣ Request ║ GET
flutter: ║  https://basicdiet145.onrender.com/api/subscriptions/6a21a6ea6765cd1aecc005f8/days/2026-06-04
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: ╔ Headers
flutter: ╟ accept: application/json
flutter: ╟ content-type: application/json
flutter: ╟ authorization:
flutter: ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTIxMzc2ZGNkZTgwN2M5M2M1ZTFjOD
flutter: ║ giLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDU5MTE3MywiZXhwIjox
flutter: ║ NzgwNTkyMDczfQ.vxV_8FKzaseC6k1doDYecVX9Dz1QntUr1vlN_6M8Wm0
flutter: ╟ Accept-Language: ar
flutter: ╟ contentType: application/json
flutter: ╟ responseType: ResponseType.json
flutter: ╟ followRedirects: true
flutter: ╟ connectTimeout: 0:01:00.000000
flutter: ╟ receiveTimeout: 0:01:00.000000
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter:
flutter: ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 577 ms
flutter: ║  https://basicdiet145.onrender.com/api/subscriptions/6a21a6ea6765cd1aecc005f8/days/2026-06-04
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: ╔ Headers
flutter: ╟ x-dns-prefetch-control: [off]
flutter: ╟ x-render-origin-server: [Render]
flutter: ╟ date: [Thu, 04 Jun 2026 16:42:13 GMT]
flutter: ╟ transfer-encoding: [chunked]
flutter: ╟ origin-agent-cluster: [?1]
flutter: ╟ vary: [Origin, Accept-Encoding]
flutter: ╟ content-encoding: [gzip]
flutter: ╟ server: [cloudflare]
flutter: ╟ cross-origin-resource-policy: [same-origin]
flutter: ╟ cf-ray: [a06863b8addc376c-MRS]
flutter: ╟ etag: [W/"163d-26C/kn1oSAQ0V+MXDYKT9ipIoZ8"]
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
flutter: ╟ rndr-id: [d28dd4f3-141a-4a99]
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
flutter: ║             "_id": "6a21a6ea6765cd1aecc005fc",
flutter: ║             "subscriptionId": "6a21a6ea6765cd1aecc005f8",
flutter: ║             "date": "2026-06-04",
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
flutter: ║             "createdAt": "2026-06-04T16:25:14.819Z",
flutter: ║             "updatedAt": "2026-06-04T16:25:14.819Z",
flutter: ║             "addonEntitlements": {
flutter: ║                 "juice": {
flutter: ║                     "category": "juice",
flutter: ║                     "subscribed": true,
flutter: ║                     "addonPlanId": "6a2137626c0fcd5fd37373e2",
flutter: ║                     "name": "اشتراك العصير",
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
flutter: ║                 "maxConsumableMealsNow": 7,
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
flutter: ║             "fulfillmentMode": "quantity_only",
flutter: ║             "consumptionState": "consumable_today",
flutter: ║             "requiredMealCount": 1,
flutter: ║             "specifiedMealCount": 0,
flutter: ║             "unspecifiedMealCount": 1,
flutter: ║             "hasCustomerSelections": false,
flutter: ║             "requiresMealTypeKnowledge": false,
flutter: ║             "mealTypesSpecified": false,
flutter: ║             "planningReady": false,
flutter: ║             "fulfillmentReady": true,
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
flutter: ║                 "fulfillmentReady": true,
flutter: ║                 "lockedReason": null,
flutter: ║                 "lockedMessage": null
flutter: ║            }
flutter: ║             "lockedReason": null,
flutter: ║             "lockedMessage": null,
flutter: ║             "mealBalance": {
flutter: ║                 "totalMeals": 7,
flutter: ║                 "remainingMeals": 7,
flutter: ║                 "consumedMeals": 0,
flutter: ║                 "canConsumeNow": true,
flutter: ║                 "maxConsumableMealsNow": 7,
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
flutter: onChange -- MealPlannerBloc, Change { currentState: MealPlannerLoaded([Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel'], Instance of 'MealPlannerMenuModel', AddonChoicesModel([AddonChoiceCategoryModel(juice, [juices, drinks], [AddonChoiceModel(6a2137466c0fcd5fd37372f8, berry_blast, بيري بلاست, بيري بلاست, {ar: بيري بلاست, en: Berry Blast}, 1100, 11.0, SAR, null, null, juices, juice, menu_product, true, true, {cardVariant: addon, badge: , ctaLabel: , imageRatio: square}), AddonChoiceModel(6a2137466c0fcd5fd37372fb, berry_prot, بيري بروت, بيري بروت, {ar: بيري بروت, en: Berry Prot}, 1300, 13.0, SAR, null, null, juices, juice, menu_product, true, true, {cardVariant: addon, badge: , ctaLabel: , imageRatio: square}), AddonChoiceModel(6a2137476c0fcd5fd37372fe, classic_gre<…>
flutter:
flutter: ╔╣ Request ║ GET
flutter: ║  https://basicdiet145.onrender.com/api/subscriptions/6a21a6ea6765cd1aecc005f8/days/2026-06-04/fulfillment/status
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: ╔ Headers
flutter: ╟ accept: application/json
flutter: ╟ content-type: application/json
flutter: ╟ authorization:
flutter: ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTIxMzc2ZGNkZTgwN2M5M2M1ZTFjOD
flutter: ║ giLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDU5MTE3MywiZXhwIjox
flutter: ║ NzgwNTkyMDczfQ.vxV_8FKzaseC6k1doDYecVX9Dz1QntUr1vlN_6M8Wm0
flutter: ╟ Accept-Language: ar
flutter: ╟ contentType: application/json
flutter: ╟ responseType: ResponseType.json
flutter: ╟ followRedirects: true
flutter: ╟ connectTimeout: 0:01:00.000000
flutter: ╟ receiveTimeout: 0:01:00.000000
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter:
flutter: ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 867 ms
flutter: ║  https://basicdiet145.onrender.com/api/subscriptions/6a21a6ea6765cd1aecc005f8/days/2026-06-04/fulfillment/status
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: ╔ Headers
flutter: ╟ x-dns-prefetch-control: [off]
flutter: ╟ x-render-origin-server: [Render]
flutter: ╟ date: [Thu, 04 Jun 2026 16:42:36 GMT]
flutter: ╟ transfer-encoding: [chunked]
flutter: ╟ origin-agent-cluster: [?1]
flutter: ╟ vary: [Origin, Accept-Encoding]
flutter: ╟ content-encoding: [gzip]
flutter: ╟ server: [cloudflare]
flutter: ╟ cross-origin-resource-policy: [same-origin]
flutter: ╟ cf-ray: [a068644a1db5e1ba-MRS]
flutter: ╟ etag: [W/"511-pmY1uiZO2njO9MWNC3u7pE1NxG4"]
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
flutter: ╟ rndr-id: [a2e63a53-a6e9-48cf]
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
flutter: ║             "subscriptionId": "6a21a6ea6765cd1aecc005f8",
flutter: ║             "date": "2026-06-04",
flutter: ║             "deliveryMode": "pickup",
flutter: ║             "status": "open",
flutter: ║             "statusLabel": "مفتوح",
flutter: ║             "message": "راجع اختيارات اليوم واطلب التجهيز عندما تكون جاهزا",
flutter: ║             "nextAction": "",
flutter: ║             "isTerminal": false,
flutter: ║             "pollingIntervalSeconds": 60,
flutter: ║             "lastUpdatedAt": "2026-06-04T16:25:14.819Z",
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
flutter: ║                 "fulfillmentReady": true,
flutter: ║                 "lockedReason": null,
flutter: ║                 "lockedMessage": null
flutter: ║            }
flutter: ║             "deliveryAddress": null,
flutter: ║             "deliveryWindow": null,
flutter: ║             "deliverySlot": {type: pickup, slotId: , window: , label: },
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
flutter: ║             "lockedReason": null,
flutter: ║             "lockedMessage": null,
flutter: ║             "pickupCode": null,
flutter: ║             "pickupCodeIssuedAt": null,
flutter: ║             "planningReady": false,
flutter: ║             "fulfillmentReady": true,
flutter: ║             "isFulfillable": false,
flutter: ║             "canBePrepared": false
flutter: ║        }
flutter: ║    }
flutter: ║
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: onChange -- FulfillmentStatusCubit, Change { currentState: FulfillmentStatusState(FulfillmentStatusStateStatus.success, FulfillmentStatusModel(6a21a6ea6765cd1aecc005f8, 2026-06-04, pickup, open, مفتوح, , , , , Instance of 'FulfillmentSummaryModel', Instance of 'PickupLocationSummaryModel', null, null, null, false, 2026-06-04 19:25:14.819, 60), null, true), nextState: FulfillmentStatusState(FulfillmentStatusStateStatus.success, FulfillmentStatusModel(6a21a6ea6765cd1aecc005f8, 2026-06-04, pickup, open, مفتوح, , , , , Instance of 'FulfillmentSummaryModel', Instance of 'PickupLocationSummaryModel', null, null, null, false, 2026-06-04 19:25:14.819, 60), null, true) }
