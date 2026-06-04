flutter: onClose -- MealPlannerBloc
flutter: onCreate -- MealPlannerBloc
flutter: onChange -- MealPlannerBloc, Change { currentState: MealPlannerLoaded([Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel', Instance of 'TimelineDayModel'], Instance of 'MealPlannerMenuModel', AddonChoicesModel([]), [Instance of 'AddonSubscriptionModel'], [Instance of 'PremiumSummaryModel'], 4, {}, {}, {}, {}, {}, false, false, false, , 1, false, 0, null, null, null, null, null, null), nextState: MealPlannerLoading() }
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
flutter: ║ giLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDU5OTk1MCwiZXhwIjox
flutter: ║ NzgwNjAwODUwfQ.I795F66mRevTSvW4j8Cjmf68iP8IH7wzkEQVAd9RcLw
flutter: ╟ Accept-Language: ar
flutter: ╟ contentType: application/json
flutter: ╟ responseType: ResponseType.json
flutter: ╟ followRedirects: true
flutter: ╟ connectTimeout: 0:01:00.000000
flutter: ╟ receiveTimeout: 0:01:00.000000
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter:
flutter: ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 1847 ms
flutter: ║  https://basicdiet145.onrender.com/api/subscriptions/meal-planner-menu?includeLegacy=true
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: ╔ Headers
flutter: ╟ x-dns-prefetch-control: [off]
flutter: ╟ x-render-origin-server: [Render]
flutter: ╟ date: [Thu, 04 Jun 2026 19:14:14 GMT]
flutter: ╟ transfer-encoding: [chunked]
flutter: ╟ origin-agent-cluster: [?1]
flutter: ╟ vary: [Origin, Accept-Encoding]
flutter: ╟ content-encoding: [gzip]
flutter: ╟ server: [cloudflare]
flutter: ╟ cross-origin-resource-policy: [same-origin]
flutter: ╟ cf-ray: [a06942614c9ae9e9-MRS]
flutter: ╟ etag: [W/"13621-WHmHOYgJL5CZnUP5Zvyl0QeAuf0"]
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
flutter: ╟ rndr-id: [fb0d2727-8d26-4220]
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
flutter: ║                         "nameI18n": {ar: دجاج, en: Chicken},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
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
flutter: ║                         "nameI18n": {ar: لحم, en: Beef},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
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
flutter: ║                         "nameI18n": {ar: سمك, en: Fish},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
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
flutter: ║                         "nameI18n": {ar: بيض, en: Eggs},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
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
flutter: ║                         "nameI18n": {ar: بيض مسلوق, en: Boiled Eggs},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
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
flutter: ║                         "nameI18n": {ar: تونا, en: Tuna},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
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
flutter: ║                         "nameI18n": {ar: فاهيتا, en: Chicken Fajita},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
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
flutter: ║                         "nameI18n": {ar: دجاج سبايسي, en: Spicy Chicken},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
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
flutter: ║                         "nameI18n": {ar: دجاج توابل إيطالية, en: Italian Spiced Chicken},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
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
flutter: ║                         "nameI18n": {ar: دجاج تكا, en: Chicken Tikka},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
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
flutter: ║                         "nameI18n": {ar: دجاج آسيوي, en: Asian Chicken},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
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
flutter: ║                         "nameI18n": {ar: استربس, en: Chicken Strips},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
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
flutter: ║                         "nameI18n": {ar: دجاج مشوي, en: Grilled Chicken},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
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
flutter: ║                         "nameI18n": {ar: دجاج مكسيكي, en: Mexican Chicken},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
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
flutter: ║                         "nameI18n": {ar: كرات لحم, en: Meatballs},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
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
flutter: ║                         "nameI18n": {ar: لحم استرغانوف, en: Beef Stroganoff},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
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
flutter: ║                         "nameI18n": {ar: سمك فيليه, en: Fish Fillet},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
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
flutter: ║                         "nameI18n": {ar: ستيك لحم, en: Beef Steak},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
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
flutter: ║                         "nameI18n": {ar: جمبري, en: Shrimp},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
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
flutter: ║                         "nameI18n": {ar: سالمون, en: Salmon},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
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
flutter: ║                         "nameI18n": {ar: رز أبيض, en: White Rice},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
flutter: ║                         "sortOrder": 10
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2136b96c0fcd5fd3736e6b",
flutter: ║                         "key": "turmeric_rice",
flutter: ║                         "displayCategoryKey": "standard_carbs",
flutter: ║                         "name": "رز بالكركم",
flutter: ║                         "nameI18n": {ar: رز بالكركم, en: Turmeric Rice},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
flutter: ║                         "sortOrder": 20
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2136b96c0fcd5fd3736e6e",
flutter: ║                         "key": "alfredo_pasta",
flutter: ║                         "displayCategoryKey": "standard_carbs",
flutter: ║                         "name": "باستا الفريدو",
flutter: ║                         "nameI18n": {ar: باستا الفريدو, en: Alfredo Pasta},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
flutter: ║                         "sortOrder": 30
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2136b96c0fcd5fd3736e71",
flutter: ║                         "key": "red_sauce_pasta",
flutter: ║                         "displayCategoryKey": "standard_carbs",
flutter: ║                         "name": "باستا صوص احمر",
flutter: ║                         "nameI18n": {ar: باستا صوص احمر, en: Red Sauce Pasta},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
flutter: ║                         "sortOrder": 40
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2136ba6c0fcd5fd3736e74",
flutter: ║                         "key": "roasted_potato",
flutter: ║                         "displayCategoryKey": "standard_carbs",
flutter: ║                         "name": "بطاطا مشوية",
flutter: ║                         "nameI18n": {ar: بطاطا مشوية, en: Roasted Potato},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
flutter: ║                         "sortOrder": 50
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2136ba6c0fcd5fd3736e77",
flutter: ║                         "key": "sweet_potato",
flutter: ║                         "displayCategoryKey": "standard_carbs",
flutter: ║                         "name": "بطاطا حلوة",
flutter: ║                         "nameI18n": {ar: بطاطا حلوة, en: Sweet Potato},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
flutter: ║                         "sortOrder": 60
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2136ba6c0fcd5fd3736e7a",
flutter: ║                         "key": "grilled_mixed_vegetables",
flutter: ║                         "displayCategoryKey": "standard_carbs",
flutter: ║                         "name": "خضار مشكلة مشوية",
flutter: ║                         "nameI18n": {ar: خضار مشكلة مشوية, en: Grilled Mixed Vegetables},
flutter: ║                         "description": "",
flutter: ║                         "descriptionI18n": {ar: , en: },
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
flutter: ║                         "calories": 220,
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
flutter: ║                         "calories": 160,
flutter: ║                         "selectionType": "sandwich",
flutter: ║                         "categoryKey": "sandwich",
flutter: ║                         "pricingModel": "fixed",
flutter: ║                         "priceHalala": 900,
flutter: ║                         "proteinFamilyKey": "eggs",
flutter: ║                         "sortOrder": 120
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2137416c0fcd5fd37372ce",
flutter: ║                         "key": "tuna_cold_sandwich",
flutter: ║                         "name": "تونا",
flutter: ║                         "description": "",
flutter: ║                         "imageUrl": "",
flutter: ║                         "calories": 200,
flutter: ║                         "selectionType": "sandwich",
flutter: ║                         "categoryKey": "sandwich",
flutter: ║                         "pricingModel": "fixed",
flutter: ║                         "priceHalala": 1300,
flutter: ║                         "proteinFamilyKey": "fish",
flutter: ║                         "sortOrder": 130
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2137416c0fcd5fd37372d1",
flutter: ║                         "key": "scrambled_egg_cold_sandwich",
flutter: ║                         "name": "بيض مخفوق",
flutter: ║                         "description": "",
flutter: ║                         "imageUrl": "",
flutter: ║                         "calories": 150,
flutter: ║                         "selectionType": "sandwich",
flutter: ║                         "categoryKey": "sandwich",
flutter: ║                         "pricingModel": "fixed",
flutter: ║                         "priceHalala": 900,
flutter: ║                         "proteinFamilyKey": "eggs",
flutter: ║                         "sortOrder": 140
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2137426c0fcd5fd37372d4",
flutter: ║                         "key": "classic_halloumi_cold_sandwich",
flutter: ║                         "name": "حلوم كلاسيك",
flutter: ║                         "description": "",
flutter: ║                         "imageUrl": "",
flutter: ║                         "calories": 200,
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
flutter: ║                         "calories": 230,
flutter: ║                         "selectionType": "sandwich",
flutter: ║                         "categoryKey": "sandwich",
flutter: ║                         "pricingModel": "fixed",
flutter: ║                         "priceHalala": 1300,
flutter: ║                         "proteinFamilyKey": "chicken",
flutter: ║                         "sortOrder": 160
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2137426c0fcd5fd37372da",
flutter: ║                         "key": "mexican_chicken_cold_sandwich",
flutter: ║                         "name": "دجاج مكسيكي",
flutter: ║                         "description": "",
flutter: ║                         "imageUrl": "",
flutter: ║                         "calories": 260,
flutter: ║                         "selectionType": "sandwich",
flutter: ║                         "categoryKey": "sandwich",
flutter: ║                         "pricingModel": "fixed",
flutter: ║                         "priceHalala": 1300,
flutter: ║                         "proteinFamilyKey": "chicken",
flutter: ║                         "sortOrder": 170
flutter: ║                    },
flutter: ║                    {
flutter: ║                         "id": "6a2137436c0fcd5fd37372dd",
flutter: ║                         "key": "grilled_chicken_cold_sandwich",
flutter: ║                         "name": "دجاج مشوي",
flutter: ║                         "description": "",
flutter: ║                         "imageUrl": "",
flutter: ║                         "calories": 220,
flutter: ║                         "selectionType": "sandwich",
flutter: ║                         "categoryKey": "sandwich",
flutter: ║                         "pricingModel": "fixed",
flutter: ║                         "priceHalala": 1300,
flutter: ║                         "proteinFamilyKey": "chicken",
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
flutter: ║                             "nameI18n": {ar: بيض مسلوق, en: Boiled Eggs},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
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
flutter: ║                             "nameI18n": {ar: تونا, en: Tuna},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
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
flutter: ║                             "nameI18n": {ar: فاهيتا, en: Chicken Fajita},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
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
flutter: ║                             "nameI18n": {ar: دجاج سبايسي, en: Spicy Chicken},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
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
[meal_planner_menu] getMealPlannerMenu failed: _TypeError
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
type '_Map<String, dynamic>' is not a subtype of type 'String?' in type cast
#0      new BuilderCatalogV2OptionResponse.fromJson (package:basic_diet/data/response/meal_planner_menu_response.dart:554:62)
#1      MappedIterator.moveNext (dart:_internal/iterable.dart:420:20)
#2      new _GrowableList._ofOther (dart:core-patch/growable_array.dart:203:26)
#3      new _GrowableList.of (dart:core-patch/growable_array.dart:152:26)
#4      new List.of (dart:core-patch/array_patch.dart:40:18)
#5      Iterable.toList (dart:core/iterable.dart:499:7)
#6      new BuilderCatalogV2OptionGroupResponse.fromJson (package:basic_diet/data/response/meal_planner_menu_response.dart:439:14)
#7      MappedIterator.moveNext (dart:_internal/iterable.dart:420:20)
#8      new _GrowableList._ofOther (dart:core-patch/growable_array.dart:203:26)
#9      new _GrowableList.of (dart:core-patch/growable_array.dart:152:26)
#10     new List.of (dart:core-patch/array_patch.dart:40:18)
#11     Iterable.toList (dart:core/iterable.dart:499:7)
#12     new BuilderCatalogV2ProductResponse.fromJson (package:basic_diet/data/response/meal_planner_menu_response.dart:316:18)
#13     MappedIterator.moveNext (dart:_internal/iterable.dart:420:20)
#14     new _GrowableList._ofOther (dart:core-patch/growable_array.dart:203:26)
#15     new _GrowableList.of (dart:core-patch/growable_array.dart:152:26)
#16     new List.of (dart:core-patch/array_patch.dart:40:18)
#17     Iterable.toList (dart:core/iterable.dart:499:7)
#18     new BuilderCatalogV2SectionResponse.fromJson (package:basic_diet/data/response/meal_planner_menu_response.dart:185:18)
#19     MappedIterator.moveNext (dart:_internal/iterable.dart:420:20)
#20     new _GrowableList._ofOther (dart:core-patch/growable_array.dart:203:26)
#21     new _GrowableList.of (dart:core-patch/growable_array.dart:152:26)
#22     new List.of (dart:core-patch/array_patch.dart:40:18)
#23     Iterable.toList (dart:core/iterable.dart:499:7)
#24     new BuilderCatalogV2Response.fromJson (package:basic_diet/data/response/meal_planner_menu_response.dart:103:18)
#25     _$MealPlannerMenuDataResponseFromJson (package:basic_diet/data/response/meal_planner_menu_response.g.dart:43:38)
#26     new MealPlannerMenuDataResponse.fromJson (package:basic_diet/data/response/meal_planner_menu_response.dart:69:7)
#27     _$MealPlannerMenuResponseFromJson (package:basic_diet/data/response/meal_planner_menu_response.g.dart:17:41)
#28     new MealPlannerMenuResponse.fromJson (package:basic_diet/data/response/meal_planner_menu_response.dart:29:7)
#29     _AppServiceClient.getMealPlannerMenu (package:basic_diet/data/network/app_api.g.dart:956:40)
<asynchronous suspension>
#30     RepositoryImpl.getMealPlannerMenu (package:basic_diet/data/repository/repository.dart:685:24)
<asynchronous suspension>
#31     MealPlannerBloc._onGetData (package:basic_diet/presentation/plans/timeline/meal_planner/bloc/meal_planner_bloc.dart:127:24)
<asynchronous suspension>
#32     Bloc.on.<anonymous closure>.handleEvent (package:bloc/src/bloc.dart:226:13)
<asynchronous suspension>
flutter: ║                             "sortOrder": 50
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2136b56c0fcd5fd3736e4a",
flutter: ║                             "key": "italian_spiced_chicken",
flutter: ║                             "displayCategoryKey": "chicken",
flutter: ║                             "name": "دجاج توابل إيطالية",
flutter: ║                             "nameI18n": {ar: دجاج توابل إيطالية, en: Italian Spiced Chicken},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
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
flutter: ║                             "nameI18n": {ar: دجاج تكا, en: Chicken Tikka},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
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
flutter: ║                             "nameI18n": {ar: دجاج آسيوي, en: Asian Chicken},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
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
flutter: ║                             "nameI18n": {ar: استربس, en: Chicken Strips},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
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
flutter: ║                             "nameI18n": {ar: دجاج مشوي, en: Grilled Chicken},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
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
flutter: ║                             "nameI18n": {ar: دجاج مكسيكي, en: Mexican Chicken},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
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
flutter: ║                             "nameI18n": {ar: سمك فيليه, en: Fish Fillet},
flutter: ║                             "description": "",
flutter: ║                             "descriptionI18n": {ar: , en: },
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
flutter: ║                                                 "nameI18n": {ar: دجاج, en: Chicken},
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
flutter: ║                                                 "nameI18n": {ar: لحم, en: Beef},
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
flutter: ║                                                 "nameI18n": {ar: سمك, en: Fish},
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
flutter: ║                                                 "nameI18n": {ar: بيض, en: Eggs},
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
flutter: ║                                                 "nameI18n": {ar: بيض مسلوق, en: Boiled Eggs},
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
flutter: ║                                                 "nameI18n": {ar: تونا, en: Tuna},
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
flutter: ║                                                 "nameI18n": {ar: فاهيتا, en: Chicken Fajita},
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
flutter: ║                                                 "nameI18n": {ar: دجاج سبايسي, en: Spicy Chicken},
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
flutter: ║                                                 "nameI18n": {ar: دجاج توابل إيطالية, en: Italian Spiced Chicken},
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
flutter: ║                                                 "nameI18n": {ar: دجاج تكا, en: Chicken Tikka},
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
flutter: ║                                                 "nameI18n": {ar: دجاج آسيوي, en: Asian Chicken},
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
flutter: ║                                                 "nameI18n": {ar: استربس, en: Chicken Strips},
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
flutter: ║                                                 "nameI18n": {ar: دجاج مشوي, en: Grilled Chicken},
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
flutter: ║                                                 "nameI18n": {ar: دجاج مكسيكي, en: Mexican Chicken},
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
flutter: ║                                                 "nameI18n": {ar: كرات لحم, en: Meatballs},
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
flutter: ║                                                 "nameI18n": {ar: لحم استرغانوف, en: Beef Stroganoff},
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
flutter: ║                                                 "nameI18n": {ar: سمك فيليه, en: Fish Fillet},
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
flutter: ║                                                 "nameI18n": {ar: رز أبيض, en: White Rice},
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
flutter: ║                                                 "nameI18n": {ar: رز بالكركم, en: Turmeric Rice},
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
flutter: ║                                                 "nameI18n": {ar: باستا الفريدو, en: Alfredo Pasta},
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
flutter: ║                                                 "nameI18n": {ar: باستا صوص احمر, en: Red Sauce Pasta},
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
flutter: ║                                                 "nameI18n": {ar: بطاطا مشوية, en: Roasted Potato},
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
flutter: ║                                                 "nameI18n": {ar: بطاطا حلوة, en: Sweet Potato},
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
flutter: ║                                                 "nameI18n": {ar: خضار مشكلة مشوية, en: Grilled Mixed Vegetables},
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
flutter: ║                                                 "nameI18n": {ar: ستيك لحم, en: Beef Steak},
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
flutter: ║                                                 "nameI18n": {ar: جمبري, en: Shrimp},
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
flutter: ║                                                 "nameI18n": {ar: سالمون, en: Salmon},
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
flutter: ║                                                 "nameI18n": {ar: رز أبيض, en: White Rice},
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
flutter: ║                                                 "nameI18n": {ar: رز بالكركم, en: Turmeric Rice},
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
flutter: ║                                                 "nameI18n": {ar: باستا الفريدو, en: Alfredo Pasta},
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
flutter: ║                                                 "nameI18n": {ar: باستا صوص احمر, en: Red Sauce Pasta},
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
flutter: ║                                                 "nameI18n": {ar: بطاطا مشوية, en: Roasted Potato},
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
flutter: ║                                                 "nameI18n": {ar: بطاطا حلوة, en: Sweet Potato},
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
flutter: ║                                                 "nameI18n": {ar: خضار مشكلة مشوية, en: Grilled Mixed Vegetables},
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
flutter: ║                                 "calories": 220,
flutter: ║                                 "proteinFamilyKey": "other",
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
flutter: ║                                 "calories": 160,
flutter: ║                                 "proteinFamilyKey": "eggs",
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
flutter: ║                                 "calories": 200,
flutter: ║                                 "proteinFamilyKey": "fish",
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
flutter: ║                                 "calories": 150,
flutter: ║                                 "proteinFamilyKey": "eggs",
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
flutter: ║                                 "calories": 200,
flutter: ║                                 "proteinFamilyKey": "other",
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
flutter: ║                                 "calories": 230,
flutter: ║                                 "proteinFamilyKey": "chicken",
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
flutter: ║                                 "calories": 260,
flutter: ║                                 "proteinFamilyKey": "chicken",
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
flutter: ║                                 "calories": 220,
flutter: ║                                 "proteinFamilyKey": "chicken",
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
flutter: onChange -- MealPlannerBloc, Change { currentState: MealPlannerLoading(), nextState: MealPlannerError(-8: defaultError) }
flutter: onClose -- MealPlannerBloc
flutter: onChange -- PlansBloc, Change { currentState: CurrentSubscriptionOverviewLoaded(Instance of 'CurrentSubscriptionOverviewModel', Instance of 'TimelineDayModel'), nextState: PlansLoading(null, null) }
flutter:
flutter: ╔╣ Request ║ GET
flutter: ║  https://basicdiet145.onrender.com/api/subscriptions/current/overview
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: ╔ Headers
flutter: ╟ accept: application/json
flutter: ╟ content-type: application/json
flutter: ╟ authorization:
flutter: ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTIxMzc2ZGNkZTgwN2M5M2M1ZTFjOD
flutter: ║ giLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDU5OTk1MCwiZXhwIjox
flutter: ║ NzgwNjAwODUwfQ.I795F66mRevTSvW4j8Cjmf68iP8IH7wzkEQVAd9RcLw
flutter: ╟ Accept-Language: ar
flutter: ╟ contentType: application/json
flutter: ╟ responseType: ResponseType.json
flutter: ╟ followRedirects: true
flutter: ╟ connectTimeout: 0:01:00.000000
flutter: ╟ receiveTimeout: 0:01:00.000000
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: onClose -- PickupStatusCubit
flutter: onClose -- TimelineBloc
flutter:
flutter: ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 1082 ms
flutter: ║  https://basicdiet145.onrender.com/api/subscriptions/current/overview
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: ╔ Headers
flutter: ╟ x-dns-prefetch-control: [off]
flutter: ╟ x-render-origin-server: [Render]
flutter: ╟ date: [Thu, 04 Jun 2026 19:14:19 GMT]
flutter: ╟ transfer-encoding: [chunked]
flutter: ╟ origin-agent-cluster: [?1]
flutter: ╟ vary: [Origin, Accept-Encoding]
flutter: ╟ content-encoding: [gzip]
flutter: ╟ server: [cloudflare]
flutter: ╟ cross-origin-resource-policy: [same-origin]
flutter: ╟ cf-ray: [a0694280fb9e4912-MRS]
flutter: ╟ etag: [W/"2226-ctyPBuA09LQCTzJZeycd2zTI1Js"]
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
flutter: ╟ rndr-id: [79e0c5b2-9bca-4dad]
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
flutter: ║             "_id": "6a21a6ea6765cd1aecc005f8",
flutter: ║             "userId": "6a21376dcde807c93c5e1c88",
flutter: ║             "planId": "6a2137606c0fcd5fd37373d6",
flutter: ║             "status": "active",
flutter: ║             "startDate": "2026-06-03T21:00:00.000Z",
flutter: ║             "endDate": "2026-06-09T21:00:00.000Z",
flutter: ║             "validityEndDate": "2026-06-09T21:00:00.000Z",
flutter: ║             "canceledAt": null,
flutter: ║             "totalMeals": 7,
flutter: ║             "remainingMeals": 7,
flutter: ║             "addonSubscriptions": [{addonId: 6a2137626c0fcd5fd37373e2, name: اشتراك العصير, category: juice, maxPerDay: 1}]
flutter: ║             "selectedGrams": 100,
flutter: ║             "selectedMealsPerDay": 1,
flutter: ║             "basePlanPriceHalala": 13800,
flutter: ║             "basePlanGrossHalala": 13800,
flutter: ║             "basePlanNetHalala": 11897,
flutter: ║             "discountHalala": 0,
flutter: ║             "subtotalHalala": 21034,
flutter: ║             "subtotalBeforeVatHalala": 21034,
flutter: ║             "vatPercentage": 16,
flutter: ║             "vatHalala": 3366,
flutter: ║             "totalPriceHalala": 24400,
flutter: ║             "checkoutCurrency": "SAR",
flutter: ║             "appliedPromo": null,
flutter: ║             "premiumBalance": [
flutter: ║                {
flutter: ║                     "premiumKey": "premium_large_salad",
flutter: ║                     "proteinId": null,
flutter: ║                     "purchasedQty": 1,
flutter: ║                     "remainingQty": 1,
flutter: ║                     "unitExtraFeeHalala": 2900,
flutter: ║                     "currency": "SAR",
flutter: ║                     "purchasedAt": "2026-06-04T16:25:14.672Z",
flutter: ║                     "_id": "6a21a6ea6765cd1aecc005f9",
flutter: ║                     "name": "سلطة كبيرة مميزة"
flutter: ║                }
flutter: ║             ],
flutter: ║             "contractVersion": "subscription_contract.v1",
flutter: ║             "contractMode": "canonical",
flutter: ║             "contractCompleteness": "authoritative",
flutter: ║             "contractSource": "customer_checkout",
flutter: ║             "contractHash": "5a76d411c8e01a1d9f3debdf7031bbbca962c1de298baf87fd7153020fa754f0",
flutter: ║             "contractSnapshot": {
flutter: ║                 "meta": {
flutter: ║                     "version": "subscription_contract.v1",
flutter: ║                     "capturedAt": "2026-06-04T16:24:51.105Z",
flutter: ║                     "source": "customer_checkout",
flutter: ║                     "mode": "canonical",
flutter: ║                     "completeness": "authoritative"
flutter: ║                }
flutter: ║                 "origin": {
flutter: ║                     "actorRole": "client",
flutter: ║                     "actorUserId": "6a21376dcde807c93c5e1c88",
flutter: ║                     "renewedFromSubscriptionId": null,
flutter: ║                     "adminOverrideMeta": null,
flutter: ║                     "deliveryPreferenceSeeded": false
flutter: ║                }
flutter: ║                 "plan": {
flutter: ║                     "planId": "6a2137606c0fcd5fd37373d6",
flutter: ║                     "planName": {
flutter: ║                         "ar": "إشتراك وجبات لمدة 7 أيام يشمل وجبات ( سمك - لحم - دجاج )"
flutter: ║                         "en": "7-Day Meal Subscription includes meals (Fish - Beef - Chicken)"
flutter: ║                    }
flutter: ║                     "daysCount": 7,
flutter: ║                     "selectedGrams": 100,
flutter: ║                     "mealsPerDay": 1,
flutter: ║                     "totalMeals": 7,
flutter: ║                     "currency": "SAR"
flutter: ║                }
flutter: ║                 "start": {
flutter: ║                     "requestedStartDate": "2026-06-04",
flutter: ║                     "resolvedStartDate": "2026-06-03T21:00:00.000Z",
flutter: ║                     "defaultedToTomorrow": false,
flutter: ║                     "timezone": "Asia/Riyadh"
flutter: ║                }
flutter: ║                 "pricing": {
flutter: ║                     "basePlanPriceHalala": 13800,
flutter: ║                     "basePlanGrossHalala": 13800,
flutter: ║                     "basePlanNetHalala": 11897,
flutter: ║                     "premiumTotalHalala": 2900,
flutter: ║                     "addonsTotalHalala": 7700,
flutter: ║                     "deliveryFeeHalala": 0,
flutter: ║                     "grossTotalHalala": 24400,
flutter: ║                     "discountHalala": 0,
flutter: ║                     "totalPriceHalala": 24400,
flutter: ║                     "subtotalHalala": 21034,
flutter: ║                     "subtotalBeforeVatHalala": 21034,
flutter: ║                     "vatPercentage": 16,
flutter: ║                     "vatHalala": 3366,
flutter: ║                     "totalHalala": 24400,
flutter: ║                     "currency": "SAR"
flutter: ║                }
flutter: ║                 "promo": null,
flutter: ║                 "premiumSelections": [
flutter: ║                    {
flutter: ║                         "proteinId": null,
flutter: ║                         "premiumKey": "premium_large_salad",
flutter: ║                         "qty": 1,
flutter: ║                         "unitExtraFeeHalala": 2900,
flutter: ║                         "currency": "SAR",
flutter: ║                         "priceSource": "menu_product_premium_large_salad"
flutter: ║                    }
flutter: ║                 ],
flutter: ║                 "delivery": {
flutter: ║                     "mode": "pickup",
flutter: ║                     "pricingMode": "pickup_legacy",
flutter: ║                     "seedOnlyFromPreviousPreference": false,
flutter: ║                     "slot": {type: pickup, window: , slotId: , label: },
flutter: ║                     "address": {
flutter: ║                         "line1": "H4GX+JF7، السلامة، جدة 23436، المملكة العربية السعودية"
flutter: ║                         "line2": "",
flutter: ║                         "city": "",
flutter: ║                         "district": "",
flutter: ║                         "street": "",
flutter: ║                         "building": "",
flutter: ║                         "apartment": "",
flutter: ║                         "notes": ""
flutter: ║                    }
flutter: ║                     "zoneId": null,
flutter: ║                     "zoneName": "",
flutter: ║                     "pickupLocationId": "main"
flutter: ║                }
flutter: ║                 "policySnapshot": {
flutter: ║                     "freezePolicy": {enabled: true, maxDays: 7, maxTimes: 1},
flutter: ║                     "skipPolicy": {enabled: true, maxDays: 1},
flutter: ║                     "fallbackMode": "current",
flutter: ║                     "directPremiumPricing": true,
flutter: ║                     "oneTimeAddonRequiresPaymentBeforeConfirmation": true
flutter: ║                }
flutter: ║                 "entitlementContract": {
flutter: ║                     "premiumItems": [
flutter: ║                        {
flutter: ║                             "proteinId": null,
flutter: ║                             "premiumKey": "premium_large_salad",
flutter: ║                             "qty": 1,
flutter: ║                             "unitExtraFeeHalala": 2900,
flutter: ║                             "currency": "SAR",
flutter: ║                             "priceSource": "menu_product_premium_large_salad"
flutter: ║                        }
flutter: ║                     ],
flutter: ║                     "addonSubscriptions": [
flutter: ║                        {
flutter: ║                             "addonId": "6a2137626c0fcd5fd37373e2",
flutter: ║                             "name": "اشتراك العصير",
flutter: ║                             "category": "juice",
flutter: ║                             "priceHalala": 1100,
flutter: ║                             "currency": "SAR"
flutter: ║                        }
flutter: ║                     ]
flutter: ║                }
flutter: ║                 "compatibility": {
flutter: ║                     "directPremiumPricingOnly": true,
flutter: ║                     "usesCategoryAddons": true,
flutter: ║                     "usesLegacyDeliveryRuntime": true,
flutter: ║                     "usesLegacySkipRuntime": false
flutter: ║                }
flutter: ║            }
flutter: ║             "renewedFromSubscriptionId": null,
flutter: ║             "deliveryMode": "pickup",
flutter: ║             "deliveryAddress": null,
flutter: ║             "deliveryZoneId": null,
flutter: ║             "deliveryZoneName": "",
flutter: ║             "deliveryFeeHalala": 0,
flutter: ║             "pickupLocationId": "main",
flutter: ║             "deliverySlot": {type: pickup, slotId: , window: , label: },
flutter: ║             "skippedCount": 0,
flutter: ║             "skipDaysUsed": 0,
flutter: ║             "expiryReminder3dSentAt": null,
flutter: ║             "expiryReminder24hSentAt": null,
flutter: ║             "addonBalance": []
flutter: ║             "addonSelections": [
flutter: ║                {
flutter: ║                     "dayId": "6a21a6ea6765cd1aecc005fc",
flutter: ║                     "date": "2026-06-04",
flutter: ║                     "addonId": "6a2137476c0fcd5fd37372fe",
flutter: ║                     "qty": 1,
flutter: ║                     "unitPriceHalala": 1100,
flutter: ║                     "currency": "SAR",
flutter: ║                     "_id": "6a21aeaf6765cd1aecc00822",
flutter: ║                     "consumedAt": "2026-06-04T16:58:23.863Z"
flutter: ║                },
flutter: ║                {
flutter: ║                     "dayId": "6a21a6ea6765cd1aecc005fc",
flutter: ║                     "date": "2026-06-04",
flutter: ║                     "addonId": "6a2137476c0fcd5fd3737301",
flutter: ║                     "qty": 1,
flutter: ║                     "unitPriceHalala": 1100,
flutter: ║                     "currency": "SAR",
flutter: ║                     "_id": "6a21aeaf6765cd1aecc00823",
flutter: ║                     "consumedAt": "2026-06-04T16:58:23.864Z"
flutter: ║                },
flutter: ║                {
flutter: ║                     "dayId": "6a21a6ea6765cd1aecc005fc",
flutter: ║                     "date": "2026-06-04",
flutter: ║                     "addonId": "6a2137436c0fcd5fd37372e3",
flutter: ║                     "qty": 1,
flutter: ║                     "unitPriceHalala": 1200,
flutter: ║                     "currency": "SAR",
flutter: ║                     "_id": "6a21aeaf6765cd1aecc00824",
flutter: ║                     "consumedAt": "2026-06-04T16:58:23.864Z"
flutter: ║                },
flutter: ║                {
flutter: ║                     "dayId": "6a21a6ea6765cd1aecc005fc",
flutter: ║                     "date": "2026-06-04",
flutter: ║                     "addonId": "6a2137446c0fcd5fd37372e6",
flutter: ║                     "qty": 1,
flutter: ║                     "unitPriceHalala": 1900,
flutter: ║                     "currency": "SAR",
flutter: ║                     "_id": "6a21aeaf6765cd1aecc00825",
flutter: ║                     "consumedAt": "2026-06-04T16:58:23.865Z"
flutter: ║                },
flutter: ║                {
flutter: ║                     "dayId": "6a21a6ea6765cd1aecc005fc",
flutter: ║                     "date": "2026-06-04",
flutter: ║                     "addonId": "6a2137276c0fcd5fd37371ff",
flutter: ║                     "qty": 1,
flutter: ║                     "unitPriceHalala": 1500,
flutter: ║                     "currency": "SAR",
flutter: ║                     "_id": "6a21aeaf6765cd1aecc00826",
flutter: ║                     "consumedAt": "2026-06-04T16:58:23.865Z"
flutter: ║                },
flutter: ║                {
flutter: ║                     "dayId": "6a21a6ea6765cd1aecc005fe",
flutter: ║                     "date": "2026-06-06",
flutter: ║                     "addonId": "6a2137466c0fcd5fd37372fb",
flutter: ║                     "qty": 1,
flutter: ║                     "unitPriceHalala": 1300,
flutter: ║                     "currency": "SAR",
flutter: ║                     "_id": "6a21af3d6765cd1aecc00a3b",
flutter: ║                     "consumedAt": "2026-06-04T17:00:45.985Z"
flutter: ║                },
flutter: ║                {
flutter: ║                     "dayId": "6a21a6ea6765cd1aecc005ff",
flutter: ║                     "date": "2026-06-07",
flutter: ║                     "addonId": "6a2137476c0fcd5fd37372fe",
flutter: ║                     "qty": 1,
flutter: ║                     "unitPriceHalala": 1100,
flutter: ║                     "currency": "SAR",
flutter: ║                     "_id": "6a21b83d6765cd1aecc00c92",
flutter: ║                     "consumedAt": "2026-06-04T17:39:09.019Z"
flutter: ║                }
flutter: ║             ],
flutter: ║             "premiumSelections": [
flutter: ║                {
flutter: ║                     "dayId": "6a21a6ea6765cd1aecc005fe",
flutter: ║                     "date": "2026-06-06",
flutter: ║                     "baseSlotKey": "slot_1",
flutter: ║                     "premiumKey": "beef_steak",
flutter: ║                     "proteinId": "6a2136b26c0fcd5fd3736e35",
flutter: ║                     "unitExtraFeeHalala": 2000,
flutter: ║                     "currency": "SAR",
flutter: ║                     "premiumWalletRowId": null,
flutter: ║                     "_id": "6a21af3d6765cd1aecc00a3c",
flutter: ║                     "consumedAt": "2026-06-04T17:00:45.986Z"
flutter: ║                }
flutter: ║             ],
flutter: ║             "createdAt": "2026-06-04T16:25:14.680Z",
flutter: ║             "updatedAt": "2026-06-04T17:39:09.023Z",
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
flutter: ║             "pricingSummary": {
flutter: ║                 "basePlanPriceHalala": 13800,
flutter: ║                 "basePlanPriceSar": 138,
flutter: ║                 "basePlanGrossHalala": 13800,
flutter: ║                 "basePlanGrossSar": 138,
flutter: ║                 "basePlanNetHalala": 11897,
flutter: ║                 "basePlanNetSar": 118.97,
flutter: ║                 "subtotalHalala": 21034,
flutter: ║                 "subtotalSar": 210.34,
flutter: ║                 "vatPercentage": 16,
flutter: ║                 "vatHalala": 3366,
flutter: ║                 "vatSar": 33.66,
flutter: ║                 "totalPriceHalala": 24400,
flutter: ║                 "totalPriceSar": 244,
flutter: ║                 "currency": "SAR",
flutter: ║                 "basePriceHalala": 13800,
flutter: ║                 "basePriceSar": 138
flutter: ║            }
flutter: ║             "contract": {isCanonical: true, isGrandfathered: false, version: subscription_contract.v1},
flutter: ║             "statusLabel": "نشط",
flutter: ║             "statusLabelAr": "نشط",
flutter: ║             "statusLabelEn": "Active",
flutter: ║             "deliveryModeLabel": "استلام",
flutter: ║             "deliveryModeLabelAr": "استلام",
flutter: ║             "deliveryModeLabelEn": "Pickup",
flutter: ║             "planName": "إشتراك وجبات لمدة 7 أيام يشمل وجبات ( سمك - لحم - دجاج )",
flutter: ║             "premiumSummary": [
flutter: ║                {
flutter: ║                     "premiumMealId": "premium_large_salad",
flutter: ║                     "premiumKey": "premium_large_salad",
flutter: ║                     "name": "سلطة كبيرة مميزة",
flutter: ║                     "purchasedQtyTotal": 1,
flutter: ║                     "remainingQtyTotal": 1,
flutter: ║                     "consumedQtyTotal": 0
flutter: ║                }
flutter: ║             ],
flutter: ║             "addonsSummary": []
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
flutter: ║             "deliveryWindow": null,
flutter: ║             "fulfillmentSummary": {
flutter: ║                 "mode": "pickup",
flutter: ║                 "title": "الاستلام من الفرع",
flutter: ║                 "status": "active",
flutter: ║                 "statusLabel": "نشط",
flutter: ║                 "message": "راجع اختيارات اليوم واطلب التجهيز عندما تكون جاهزا",
flutter: ║                 "nextAction": "",
flutter: ║                 "isEditable": true,
flutter: ║                 "isFulfillable": false,
flutter: ║                 "planningReady": true,
flutter: ║                 "fulfillmentReady": false,
flutter: ║                 "lockedReason": null,
flutter: ║                 "lockedMessage": null
flutter: ║            }
flutter: ║             "lockedReason": null,
flutter: ║             "lockedMessage": null,
flutter: ║             "skipDaysLimit": 1,
flutter: ║             "remainingSkipDays": 1,
flutter: ║             "businessDate": "2026-06-04",
flutter: ║             "pickupPreparation": {
flutter: ║                 "flowStatus": "available",
flutter: ║                 "reason": null,
flutter: ║                 "canRequestPrepare": true,
flutter: ║                 "canBePrepared": true,
flutter: ║                 "planningReady": true,
flutter: ║                 "showMealPlannerCta": false,
flutter: ║                 "mealPlannerCtaLabelAr": null,
flutter: ║                 "mealPlannerCtaLabelEn": null,
flutter: ║                 "pickupPreparationFlowStatus": "waiting_for_prepare",
flutter: ║                 "buttonLabel": "تجهيز الطلب",
flutter: ║                 "buttonLabelAr": "تجهيز الطلب",
flutter: ║                 "buttonLabelEn": "Prepare Request",
flutter: ║                 "messageAr": null,
flutter: ║                 "messageEn": null,
flutter: ║                 "message": null,
flutter: ║                 "pickupRequested": false,
flutter: ║                 "pickupPrepared": false,
flutter: ║                 "consumptionState": "consumable_today",
flutter: ║                 "fulfillmentMode": "customer_selected",
flutter: ║                 "dayEndConsumptionReason": null,
flutter: ║                 "mode": "multi_request",
flutter: ║                 "canCreatePickupRequest": true,
flutter: ║                 "availableMealBalance": 7,
flutter: ║                 "activePickupRequestCount": 0,
flutter: ║                 "latestPickupRequest": null,
flutter: ║                 "restaurantHours": {openTime: 00:00, closeTime: 23:59, isOpenNow: true}
flutter: ║            }
flutter: ║        }
flutter: ║    }
flutter: ║
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter:
flutter: ╔╣ Request ║ GET
flutter: ║  https://basicdiet145.onrender.com/api/subscriptions/6a21a6ea6765cd1aecc005f8/timeline
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: ╔ Headers
flutter: ╟ accept: application/json
flutter: ╟ content-type: application/json
flutter: ╟ authorization:
flutter: ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTIxMzc2ZGNkZTgwN2M5M2M1ZTFjOD
flutter: ║ giLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDU5OTk1MCwiZXhwIjox
flutter: ║ NzgwNjAwODUwfQ.I795F66mRevTSvW4j8Cjmf68iP8IH7wzkEQVAd9RcLw
flutter: ╟ Accept-Language: ar
flutter: ╟ contentType: application/json
flutter: ╟ responseType: ResponseType.json
flutter: ╟ followRedirects: true
flutter: ╟ connectTimeout: 0:01:00.000000
flutter: ╟ receiveTimeout: 0:01:00.000000
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter:
flutter: ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 775 ms
flutter: ║  https://basicdiet145.onrender.com/api/subscriptions/6a21a6ea6765cd1aecc005f8/timeline
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: ╔ Headers
flutter: ╟ x-dns-prefetch-control: [off]
flutter: ╟ x-render-origin-server: [Render]
flutter: ╟ date: [Thu, 04 Jun 2026 19:14:20 GMT]
flutter: ╟ transfer-encoding: [chunked]
flutter: ╟ origin-agent-cluster: [?1]
flutter: ╟ vary: [Origin, Accept-Encoding]
flutter: ╟ content-encoding: [gzip]
flutter: ╟ server: [cloudflare]
flutter: ╟ cross-origin-resource-policy: [same-origin]
flutter: ╟ cf-ray: [a06942871e3b4912-MRS]
flutter: ╟ etag: [W/"3f8e-iWfhQAmy+8IT3FBid9UokcyObhQ"]
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
flutter: ╟ rndr-id: [712b0479-a154-4d1b]
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
flutter: ║             "dailyMealsRequired": 1,
flutter: ║             "premiumMealsRemaining": 1,
flutter: ║             "premiumMealsSelected": 1,
flutter: ║             "premiumBalanceBreakdown": [
flutter: ║                {
flutter: ║                     "proteinId": null,
flutter: ║                     "premiumKey": "premium_large_salad",
flutter: ║                     "purchasedQty": 1,
flutter: ║                     "remainingQty": 1,
flutter: ║                     "unitExtraFeeHalala": 2900,
flutter: ║                     "currency": "SAR"
flutter: ║                }
flutter: ║             ],
flutter: ║             "days": [
flutter: ║                {
flutter: ║                     "date": "2026-06-04",
flutter: ║                     "day": "الخميس",
flutter: ║                     "month": "يونيو",
flutter: ║                     "dayNumber": 4,
flutter: ║                     "deliveryMode": "pickup",
flutter: ║                     "status": "planned",
flutter: ║                     "statusLabel": "مخطط له",
flutter: ║                     "isPast": false,
flutter: ║                     "autoSettled": false,
flutter: ║                     "settledAt": null,
flutter: ║                     "settlementReason": null,
flutter: ║                     "consumedByPolicy": false,
flutter: ║                     "selectedMeals": 1,
flutter: ║                     "requiredMeals": 1,
flutter: ║                     "hasSelection": true,
flutter: ║                     "selectionStatus": "confirmed",
flutter: ║                     "paymentStatus": "not_required",
flutter: ║                     "orderStatus": "none",
flutter: ║                     "subscriptionStatus": "active",
flutter: ║                     "timelineStatus": "planned",
flutter: ║                     "isPlanned": true,
flutter: ║                     "canShowAsPlanned": true,
flutter: ║                     "canEdit": false,
flutter: ║                     "paymentStateReason": null,
flutter: ║                     "commercialState": "confirmed",
flutter: ║                     "commercialStateLabel": "مؤكد",
flutter: ║                     "isFulfillable": true,
flutter: ║                     "canBePrepared": true,
flutter: ║                     "paymentRequirement": {
flutter: ║                         "status": "satisfied",
flutter: ║                         "requiresPayment": false,
flutter: ║                         "pricingStatus": "not_required",
flutter: ║                         "blockingReason": null,
flutter: ║                         "canCreatePayment": false,
flutter: ║                         "premiumSelectedCount": 0,
flutter: ║                         "premiumPendingPaymentCount": 0,
flutter: ║                         "addonSelectedCount": 6,
flutter: ║                         "addonPendingPaymentCount": 0,
flutter: ║                         "pendingAmountHalala": 0,
flutter: ║                         "amountHalala": 0,
flutter: ║                         "currency": "SAR",
flutter: ║                         "pricingStatusLabel": "غير مطلوب",
flutter: ║                         "blockingReasonLabel": null
flutter: ║                    }
flutter: ║                     "fulfillmentMode": "customer_selected",
flutter: ║                     "consumptionState": "consumable_today",
flutter: ║                     "requiredMealCount": 1,
flutter: ║                     "specifiedMealCount": 1,
flutter: ║                     "unspecifiedMealCount": 0,
flutter: ║                     "hasCustomerSelections": true,
flutter: ║                     "requiresMealTypeKnowledge": true,
flutter: ║                     "planningReady": true,
flutter: ║                     "fulfillmentReady": true,
flutter: ║                     "deliveryWindow": null,
flutter: ║                     "deliveryAddress": null,
flutter: ║                     "pickupLocation": {
flutter: ║                         "id": "main",
flutter: ║                         "name": "الفرع الرئيسي",
flutter: ║                         "address": "H4GX+JF7، السلامة، جدة 23436، المملكة العربية السعودية"
flutter: ║                         "phone": "",
flutter: ║                         "city": "",
flutter: ║                         "district": "",
flutter: ║                         "workingHours": "",
flutter: ║                         "latitude": null,
flutter: ║                         "longitude": null,
flutter: ║                         "mapUrl": null
flutter: ║                    }
flutter: ║                     "fulfillmentSummary": {
flutter: ║                         "mode": "pickup",
flutter: ║                         "title": "الاستلام من الفرع",
flutter: ║                         "status": "open",
flutter: ║                         "statusLabel": "مخطط له",
flutter: ║                         "message": "راجع اختيارات اليوم واطلب التجهيز عندما تكون جاهزا"
flutter: ║                         "nextAction": "",
flutter: ║                         "isEditable": true,
flutter: ║                         "isFulfillable": true,
flutter: ║                         "planningReady": true,
flutter: ║                         "fulfillmentReady": true,
flutter: ║                         "lockedReason": null,
flutter: ║                         "lockedMessage": null
flutter: ║                    }
flutter: ║                     "lockedReason": null,
flutter: ║                     "lockedMessage": null,
flutter: ║                     "selectedMealIds": [6a2136b46c0fcd5fd3736e44]
flutter: ║                     "mealSlots": [
flutter: ║                        {
flutter: ║                             "slotIndex": 1,
flutter: ║                             "slotKey": "slot_1",
flutter: ║                             "status": "complete",
flutter: ║                             "selectionType": "standard_meal",
flutter: ║                             "proteinId": "6a2136b46c0fcd5fd3736e44",
flutter: ║                             "carbs": [{carbId: 6a2136b96c0fcd5fd3736e6e, grams: 150}]
flutter: ║                             "sandwichId": null,
flutter: ║                             "salad": null,
flutter: ║                             "isPremium": false,
flutter: ║                             "premiumKey": "chicken_fajita",
flutter: ║                             "premiumSource": "none",
flutter: ║                             "premiumExtraFeeHalala": 0
flutter: ║                        }
flutter: ║                     ]
flutter: ║                },
flutter: ║                {
flutter: ║                     "date": "2026-06-05",
flutter: ║                     "day": "الجمعة",
flutter: ║                     "month": "يونيو",
flutter: ║                     "dayNumber": 5,
flutter: ║                     "deliveryMode": "pickup",
flutter: ║                     "status": "planned",
flutter: ║                     "statusLabel": "مخطط له",
flutter: ║                     "isPast": false,
flutter: ║                     "autoSettled": false,
flutter: ║                     "settledAt": null,
flutter: ║                     "settlementReason": null,
flutter: ║                     "consumedByPolicy": false,
flutter: ║                     "selectedMeals": 2,
flutter: ║                     "requiredMeals": 1,
flutter: ║                     "hasSelection": true,
flutter: ║                     "selectionStatus": "confirmed",
flutter: ║                     "paymentStatus": "not_required",
flutter: ║                     "orderStatus": "none",
flutter: ║                     "subscriptionStatus": "active",
flutter: ║                     "timelineStatus": "planned",
flutter: ║                     "isPlanned": true,
flutter: ║                     "canShowAsPlanned": true,
flutter: ║                     "canEdit": false,
flutter: ║                     "paymentStateReason": null,
flutter: ║                     "commercialState": "confirmed",
flutter: ║                     "commercialStateLabel": "مؤكد",
flutter: ║                     "isFulfillable": true,
flutter: ║                     "canBePrepared": true,
flutter: ║                     "paymentRequirement": {
flutter: ║                         "status": "satisfied",
flutter: ║                         "requiresPayment": false,
flutter: ║                         "pricingStatus": "not_required",
flutter: ║                         "blockingReason": null,
flutter: ║                         "canCreatePayment": false,
flutter: ║                         "premiumSelectedCount": 0,
flutter: ║                         "premiumPendingPaymentCount": 0,
flutter: ║                         "addonSelectedCount": 1,
flutter: ║                         "addonPendingPaymentCount": 0,
flutter: ║                         "pendingAmountHalala": 0,
flutter: ║                         "amountHalala": 0,
flutter: ║                         "currency": "SAR",
flutter: ║                         "pricingStatusLabel": "غير مطلوب",
flutter: ║                         "blockingReasonLabel": null
flutter: ║                    }
flutter: ║                     "fulfillmentMode": "customer_selected",
flutter: ║                     "consumptionState": "pending_day",
flutter: ║                     "requiredMealCount": 1,
flutter: ║                     "specifiedMealCount": 1,
flutter: ║                     "unspecifiedMealCount": 0,
flutter: ║                     "hasCustomerSelections": true,
flutter: ║                     "requiresMealTypeKnowledge": true,
flutter: ║                     "planningReady": true,
flutter: ║                     "fulfillmentReady": false,
flutter: ║                     "deliveryWindow": null,
flutter: ║                     "deliveryAddress": null,
flutter: ║                     "pickupLocation": {
flutter: ║                         "id": "main",
flutter: ║                         "name": "الفرع الرئيسي",
flutter: ║                         "address": "H4GX+JF7، السلامة، جدة 23436، المملكة العربية السعودية"
flutter: ║                         "phone": "",
flutter: ║                         "city": "",
flutter: ║                         "district": "",
flutter: ║                         "workingHours": "",
flutter: ║                         "latitude": null,
flutter: ║                         "longitude": null,
flutter: ║                         "mapUrl": null
flutter: ║                    }
flutter: ║                     "fulfillmentSummary": {
flutter: ║                         "mode": "pickup",
flutter: ║                         "title": "الاستلام من الفرع",
flutter: ║                         "status": "open",
flutter: ║                         "statusLabel": "مخطط له",
flutter: ║                         "message": "راجع اختيارات اليوم واطلب التجهيز عندما تكون جاهزا"
flutter: ║                         "nextAction": "",
flutter: ║                         "isEditable": true,
flutter: ║                         "isFulfillable": true,
flutter: ║                         "planningReady": true,
flutter: ║                         "fulfillmentReady": false,
flutter: ║                         "lockedReason": null,
flutter: ║                         "lockedMessage": null
flutter: ║                    }
flutter: ║                     "lockedReason": null,
flutter: ║                     "lockedMessage": null,
flutter: ║                     "selectedMealIds": [6a2136b16c0fcd5fd3736e2c, 6a2136b46c0fcd5fd3736e44]
flutter: ║                     "mealSlots": [
flutter: ║                        {
flutter: ║                             "slotIndex": 1,
flutter: ║                             "slotKey": "slot_1",
flutter: ║                             "status": "complete",
flutter: ║                             "selectionType": "standard_meal",
flutter: ║                             "proteinId": "6a2136b16c0fcd5fd3736e2c",
flutter: ║                             "carbs": [{carbId: 6a2136b96c0fcd5fd3736e6e, grams: 150}]
flutter: ║                             "sandwichId": null,
flutter: ║                             "salad": null,
flutter: ║                             "isPremium": false,
flutter: ║                             "premiumKey": "beef",
flutter: ║                             "premiumSource": "none",
flutter: ║                             "premiumExtraFeeHalala": 0
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "slotIndex": 2,
flutter: ║                             "slotKey": "slot_2",
flutter: ║                             "status": "complete",
flutter: ║                             "selectionType": "standard_meal",
flutter: ║                             "proteinId": "6a2136b46c0fcd5fd3736e44",
flutter: ║                             "carbs": [{carbId: 6a2136b96c0fcd5fd3736e71, grams: 150}]
flutter: ║                             "sandwichId": null,
flutter: ║                             "salad": null,
flutter: ║                             "isPremium": false,
flutter: ║                             "premiumKey": "chicken_fajita",
flutter: ║                             "premiumSource": "none",
flutter: ║                             "premiumExtraFeeHalala": 0
flutter: ║                        }
flutter: ║                     ]
flutter: ║                },
flutter: ║                {
flutter: ║                     "date": "2026-06-06",
flutter: ║                     "day": "السبت",
flutter: ║                     "month": "يونيو",
flutter: ║                     "dayNumber": 6,
flutter: ║                     "deliveryMode": "pickup",
flutter: ║                     "status": "planned",
flutter: ║                     "statusLabel": "مخطط له",
flutter: ║                     "isPast": false,
flutter: ║                     "autoSettled": false,
flutter: ║                     "settledAt": null,
flutter: ║                     "settlementReason": null,
flutter: ║                     "consumedByPolicy": false,
flutter: ║                     "selectedMeals": 1,
flutter: ║                     "requiredMeals": 1,
flutter: ║                     "hasSelection": true,
flutter: ║                     "selectionStatus": "confirmed",
flutter: ║                     "paymentStatus": "paid",
flutter: ║                     "orderStatus": "none",
flutter: ║                     "subscriptionStatus": "active",
flutter: ║                     "timelineStatus": "planned",
flutter: ║                     "isPlanned": true,
flutter: ║                     "canShowAsPlanned": true,
flutter: ║                     "canEdit": false,
flutter: ║                     "paymentStateReason": null,
flutter: ║                     "commercialState": "confirmed",
flutter: ║                     "commercialStateLabel": "مؤكد",
flutter: ║                     "isFulfillable": true,
flutter: ║                     "canBePrepared": true,
flutter: ║                     "paymentRequirement": {
flutter: ║                         "status": "satisfied",
flutter: ║                         "requiresPayment": false,
flutter: ║                         "pricingStatus": "not_required",
flutter: ║                         "blockingReason": null,
flutter: ║                         "canCreatePayment": false,
flutter: ║                         "premiumSelectedCount": 1,
flutter: ║                         "premiumPendingPaymentCount": 0,
flutter: ║                         "addonSelectedCount": 2,
flutter: ║                         "addonPendingPaymentCount": 0,
flutter: ║                         "pendingAmountHalala": 0,
flutter: ║                         "amountHalala": 0,
flutter: ║                         "currency": "SAR",
flutter: ║                         "pricingStatusLabel": "غير مطلوب",
flutter: ║                         "blockingReasonLabel": null
flutter: ║                    }
flutter: ║                     "fulfillmentMode": "customer_selected",
flutter: ║                     "consumptionState": "pending_day",
flutter: ║                     "requiredMealCount": 1,
flutter: ║                     "specifiedMealCount": 1,
flutter: ║                     "unspecifiedMealCount": 0,
flutter: ║                     "hasCustomerSelections": true,
flutter: ║                     "requiresMealTypeKnowledge": true,
flutter: ║                     "planningReady": true,
flutter: ║                     "fulfillmentReady": false,
flutter: ║                     "deliveryWindow": null,
flutter: ║                     "deliveryAddress": null,
flutter: ║                     "pickupLocation": {
flutter: ║                         "id": "main",
flutter: ║                         "name": "الفرع الرئيسي",
flutter: ║                         "address": "H4GX+JF7، السلامة، جدة 23436، المملكة العربية السعودية"
flutter: ║                         "phone": "",
flutter: ║                         "city": "",
flutter: ║                         "district": "",
flutter: ║                         "workingHours": "",
flutter: ║                         "latitude": null,
flutter: ║                         "longitude": null,
flutter: ║                         "mapUrl": null
flutter: ║                    }
flutter: ║                     "fulfillmentSummary": {
flutter: ║                         "mode": "pickup",
flutter: ║                         "title": "الاستلام من الفرع",
flutter: ║                         "status": "open",
flutter: ║                         "statusLabel": "مخطط له",
flutter: ║                         "message": "راجع اختيارات اليوم واطلب التجهيز عندما تكون جاهزا"
flutter: ║                         "nextAction": "",
flutter: ║                         "isEditable": true,
flutter: ║                         "isFulfillable": true,
flutter: ║                         "planningReady": true,
flutter: ║                         "fulfillmentReady": false,
flutter: ║                         "lockedReason": null,
flutter: ║                         "lockedMessage": null
flutter: ║                    }
flutter: ║                     "lockedReason": null,
flutter: ║                     "lockedMessage": null,
flutter: ║                     "selectedMealIds": [6a2136b26c0fcd5fd3736e35]
flutter: ║                     "mealSlots": [
flutter: ║                        {
flutter: ║                             "slotIndex": 1,
flutter: ║                             "slotKey": "slot_1",
flutter: ║                             "status": "complete",
flutter: ║                             "selectionType": "premium_meal",
flutter: ║                             "proteinId": "6a2136b26c0fcd5fd3736e35",
flutter: ║                             "carbs": [{carbId: 6a2136b96c0fcd5fd3736e71, grams: 150}]
flutter: ║                             "sandwichId": null,
flutter: ║                             "salad": null,
flutter: ║                             "isPremium": true,
flutter: ║                             "premiumKey": "beef_steak",
flutter: ║                             "premiumSource": "paid_extra",
flutter: ║                             "premiumExtraFeeHalala": 2000
flutter: ║                        }
flutter: ║                     ]
flutter: ║                },
flutter: ║                {
flutter: ║                     "date": "2026-06-07",
flutter: ║                     "day": "الأحد",
flutter: ║                     "month": "يونيو",
flutter: ║                     "dayNumber": 7,
flutter: ║                     "deliveryMode": "pickup",
flutter: ║                     "status": "planned",
flutter: ║                     "statusLabel": "مخطط له",
flutter: ║                     "isPast": false,
flutter: ║                     "autoSettled": false,
flutter: ║                     "settledAt": null,
flutter: ║                     "settlementReason": null,
flutter: ║                     "consumedByPolicy": false,
flutter: ║                     "selectedMeals": 1,
flutter: ║                     "requiredMeals": 1,
flutter: ║                     "hasSelection": true,
flutter: ║                     "selectionStatus": "confirmed",
flutter: ║                     "paymentStatus": "not_required",
flutter: ║                     "orderStatus": "none",
flutter: ║                     "subscriptionStatus": "active",
flutter: ║                     "timelineStatus": "planned",
flutter: ║                     "isPlanned": true,
flutter: ║                     "canShowAsPlanned": true,
flutter: ║                     "canEdit": false,
flutter: ║                     "paymentStateReason": null,
flutter: ║                     "commercialState": "confirmed",
flutter: ║                     "commercialStateLabel": "مؤكد",
flutter: ║                     "isFulfillable": true,
flutter: ║                     "canBePrepared": true,
flutter: ║                     "paymentRequirement": {
flutter: ║                         "status": "satisfied",
flutter: ║                         "requiresPayment": false,
flutter: ║                         "pricingStatus": "not_required",
flutter: ║                         "blockingReason": null,
flutter: ║                         "canCreatePayment": false,
flutter: ║                         "premiumSelectedCount": 0,
flutter: ║                         "premiumPendingPaymentCount": 0,
flutter: ║                         "addonSelectedCount": 2,
flutter: ║                         "addonPendingPaymentCount": 0,
flutter: ║                         "pendingAmountHalala": 0,
flutter: ║                         "amountHalala": 0,
flutter: ║                         "currency": "SAR",
flutter: ║                         "pricingStatusLabel": "غير مطلوب",
flutter: ║                         "blockingReasonLabel": null
flutter: ║                    }
flutter: ║                     "fulfillmentMode": "customer_selected",
flutter: ║                     "consumptionState": "pending_day",
flutter: ║                     "requiredMealCount": 1,
flutter: ║                     "specifiedMealCount": 1,
flutter: ║                     "unspecifiedMealCount": 0,
flutter: ║                     "hasCustomerSelections": true,
flutter: ║                     "requiresMealTypeKnowledge": true,
flutter: ║                     "planningReady": true,
flutter: ║                     "fulfillmentReady": false,
flutter: ║                     "deliveryWindow": null,
flutter: ║                     "deliveryAddress": null,
flutter: ║                     "pickupLocation": {
flutter: ║                         "id": "main",
flutter: ║                         "name": "الفرع الرئيسي",
flutter: ║                         "address": "H4GX+JF7، السلامة، جدة 23436، المملكة العربية السعودية"
flutter: ║                         "phone": "",
flutter: ║                         "city": "",
flutter: ║                         "district": "",
flutter: ║                         "workingHours": "",
flutter: ║                         "latitude": null,
flutter: ║                         "longitude": null,
flutter: ║                         "mapUrl": null
flutter: ║                    }
flutter: ║                     "fulfillmentSummary": {
flutter: ║                         "mode": "pickup",
flutter: ║                         "title": "الاستلام من الفرع",
flutter: ║                         "status": "open",
flutter: ║                         "statusLabel": "مخطط له",
flutter: ║                         "message": "راجع اختيارات اليوم واطلب التجهيز عندما تكون جاهزا"
flutter: ║                         "nextAction": "",
flutter: ║                         "isEditable": true,
flutter: ║                         "isFulfillable": true,
flutter: ║                         "planningReady": true,
flutter: ║                         "fulfillmentReady": false,
flutter: ║                         "lockedReason": null,
flutter: ║                         "lockedMessage": null
flutter: ║                    }
flutter: ║                     "lockedReason": null,
flutter: ║                     "lockedMessage": null,
flutter: ║                     "selectedMealIds": [6a2136b46c0fcd5fd3736e44]
flutter: ║                     "mealSlots": [
flutter: ║                        {
flutter: ║                             "slotIndex": 1,
flutter: ║                             "slotKey": "slot_1",
flutter: ║                             "status": "complete",
flutter: ║                             "selectionType": "standard_meal",
flutter: ║                             "proteinId": "6a2136b46c0fcd5fd3736e44",
flutter: ║                             "carbs": [{carbId: 6a2136b96c0fcd5fd3736e6e, grams: 150}]
flutter: ║                             "sandwichId": null,
flutter: ║                             "salad": null,
flutter: ║                             "isPremium": false,
flutter: ║                             "premiumKey": "chicken_fajita",
flutter: ║                             "premiumSource": "none",
flutter: ║                             "premiumExtraFeeHalala": 0
flutter: ║                        }
flutter: ║                     ]
flutter: ║                },
flutter: ║                {
flutter: ║                     "date": "2026-06-08",
flutter: ║                     "day": "الاثنين",
flutter: ║                     "month": "يونيو",
flutter: ║                     "dayNumber": 8,
flutter: ║                     "deliveryMode": "pickup",
flutter: ║                     "status": "open",
flutter: ║                     "statusLabel": "مفتوح",
flutter: ║                     "isPast": false,
flutter: ║                     "autoSettled": false,
flutter: ║                     "settledAt": null,
flutter: ║                     "settlementReason": null,
flutter: ║                     "consumedByPolicy": false,
flutter: ║                     "selectedMeals": 0,
flutter: ║                     "requiredMeals": 1,
flutter: ║                     "hasSelection": false,
flutter: ║                     "selectionStatus": "empty",
flutter: ║                     "paymentStatus": "not_required",
flutter: ║                     "orderStatus": "none",
flutter: ║                     "subscriptionStatus": "active",
flutter: ║                     "timelineStatus": "empty",
flutter: ║                     "isPlanned": false,
flutter: ║                     "canShowAsPlanned": false,
flutter: ║                     "canEdit": true,
flutter: ║                     "paymentStateReason": "PLANNING_INCOMPLETE",
flutter: ║                     "commercialState": "draft",
flutter: ║                     "commercialStateLabel": "مسودة",
flutter: ║                     "isFulfillable": false,
flutter: ║                     "canBePrepared": false,
flutter: ║                     "paymentRequirement": {
flutter: ║                         "status": "satisfied",
flutter: ║                         "requiresPayment": false,
flutter: ║                         "pricingStatus": "not_required",
flutter: ║                         "blockingReason": "PLANNING_INCOMPLETE",
flutter: ║                         "canCreatePayment": false,
flutter: ║                         "premiumSelectedCount": 0,
flutter: ║                         "premiumPendingPaymentCount": 0,
flutter: ║                         "addonSelectedCount": 0,
flutter: ║                         "addonPendingPaymentCount": 0,
flutter: ║                         "pendingAmountHalala": 0,
flutter: ║                         "amountHalala": 0,
flutter: ║                         "currency": "SAR",
flutter: ║                         "pricingStatusLabel": "غير مطلوب",
flutter: ║                         "blockingReasonLabel": ""
flutter: ║                    }
flutter: ║                     "fulfillmentMode": "no_service",
flutter: ║                     "consumptionState": "pending_day",
flutter: ║                     "requiredMealCount": 1,
flutter: ║                     "specifiedMealCount": 0,
flutter: ║                     "unspecifiedMealCount": 1,
flutter: ║                     "hasCustomerSelections": false,
flutter: ║                     "requiresMealTypeKnowledge": false,
flutter: ║                     "planningReady": false,
flutter: ║                     "fulfillmentReady": false,
flutter: ║                     "deliveryWindow": null,
flutter: ║                     "deliveryAddress": null,
flutter: ║                     "pickupLocation": {
flutter: ║                         "id": "main",
flutter: ║                         "name": "الفرع الرئيسي",
flutter: ║                         "address": "H4GX+JF7، السلامة، جدة 23436، المملكة العربية السعودية"
flutter: ║                         "phone": "",
flutter: ║                         "city": "",
flutter: ║                         "district": "",
flutter: ║                         "workingHours": "",
flutter: ║                         "latitude": null,
flutter: ║                         "longitude": null,
flutter: ║                         "mapUrl": null
flutter: ║                    }
flutter: ║                     "fulfillmentSummary": {
flutter: ║                         "mode": "pickup",
flutter: ║                         "title": "الاستلام من الفرع",
flutter: ║                         "status": "open",
flutter: ║                         "statusLabel": "مفتوح",
flutter: ║                         "message": "راجع اختيارات اليوم واطلب التجهيز عندما تكون جاهزا"
flutter: ║                         "nextAction": "",
flutter: ║                         "isEditable": true,
flutter: ║                         "isFulfillable": false,
flutter: ║                         "planningReady": false,
flutter: ║                         "fulfillmentReady": false,
flutter: ║                         "lockedReason": null,
flutter: ║                         "lockedMessage": null
flutter: ║                    }
flutter: ║                     "lockedReason": null,
flutter: ║                     "lockedMessage": null,
flutter: ║                     "selectedMealIds": []
flutter: ║                     "mealSlots": []
flutter: ║                },
flutter: ║                {
flutter: ║                     "date": "2026-06-09",
flutter: ║                     "day": "الثلاثاء",
flutter: ║                     "month": "يونيو",
flutter: ║                     "dayNumber": 9,
flutter: ║                     "deliveryMode": "pickup",
flutter: ║                     "status": "open",
flutter: ║                     "statusLabel": "مفتوح",
flutter: ║                     "isPast": false,
flutter: ║                     "autoSettled": false,
flutter: ║                     "settledAt": null,
flutter: ║                     "settlementReason": null,
flutter: ║                     "consumedByPolicy": false,
flutter: ║                     "selectedMeals": 0,
flutter: ║                     "requiredMeals": 1,
flutter: ║                     "hasSelection": false,
flutter: ║                     "selectionStatus": "empty",
flutter: ║                     "paymentStatus": "not_required",
flutter: ║                     "orderStatus": "none",
flutter: ║                     "subscriptionStatus": "active",
flutter: ║                     "timelineStatus": "empty",
flutter: ║                     "isPlanned": false,
flutter: ║                     "canShowAsPlanned": false,
flutter: ║                     "canEdit": true,
flutter: ║                     "paymentStateReason": "PLANNING_INCOMPLETE",
flutter: ║                     "commercialState": "draft",
flutter: ║                     "commercialStateLabel": "مسودة",
flutter: ║                     "isFulfillable": false,
flutter: ║                     "canBePrepared": false,
flutter: ║                     "paymentRequirement": {
flutter: ║                         "status": "satisfied",
flutter: ║                         "requiresPayment": false,
flutter: ║                         "pricingStatus": "not_required",
flutter: ║                         "blockingReason": "PLANNING_INCOMPLETE",
flutter: ║                         "canCreatePayment": false,
flutter: ║                         "premiumSelectedCount": 0,
flutter: ║                         "premiumPendingPaymentCount": 0,
flutter: ║                         "addonSelectedCount": 0,
flutter: ║                         "addonPendingPaymentCount": 0,
flutter: ║                         "pendingAmountHalala": 0,
flutter: ║                         "amountHalala": 0,
flutter: ║                         "currency": "SAR",
flutter: ║                         "pricingStatusLabel": "غير مطلوب",
flutter: ║                         "blockingReasonLabel": ""
flutter: ║                    }
flutter: ║                     "fulfillmentMode": "no_service",
flutter: ║                     "consumptionState": "pending_day",
flutter: ║                     "requiredMealCount": 1,
flutter: ║                     "specifiedMealCount": 0,
flutter: ║                     "unspecifiedMealCount": 1,
flutter: ║                     "hasCustomerSelections": false,
flutter: ║                     "requiresMealTypeKnowledge": false,
flutter: ║                     "planningReady": false,
flutter: ║                     "fulfillmentReady": false,
flutter: ║                     "deliveryWindow": null,
flutter: ║                     "deliveryAddress": null,
flutter: ║                     "pickupLocation": {
flutter: ║                         "id": "main",
flutter: ║                         "name": "الفرع الرئيسي",
flutter: ║                         "address": "H4GX+JF7، السلامة، جدة 23436، المملكة العربية السعودية"
flutter: ║                         "phone": "",
flutter: ║                         "city": "",
flutter: ║                         "district": "",
flutter: ║                         "workingHours": "",
flutter: ║                         "latitude": null,
flutter: ║                         "longitude": null,
flutter: ║                         "mapUrl": null
flutter: ║                    }
flutter: ║                     "fulfillmentSummary": {
flutter: ║                         "mode": "pickup",
flutter: ║                         "title": "الاستلام من الفرع",
flutter: ║                         "status": "open",
flutter: ║                         "statusLabel": "مفتوح",
flutter: ║                         "message": "راجع اختيارات اليوم واطلب التجهيز عندما تكون جاهزا"
flutter: ║                         "nextAction": "",
flutter: ║                         "isEditable": true,
flutter: ║                         "isFulfillable": false,
flutter: ║                         "planningReady": false,
flutter: ║                         "fulfillmentReady": false,
flutter: ║                         "lockedReason": null,
flutter: ║                         "lockedMessage": null
flutter: ║                    }
flutter: ║                     "lockedReason": null,
flutter: ║                     "lockedMessage": null,
flutter: ║                     "selectedMealIds": []
flutter: ║                     "mealSlots": []
flutter: ║                },
flutter: ║                {
flutter: ║                     "date": "2026-06-10",
flutter: ║                     "day": "الأربعاء",
flutter: ║                     "month": "يونيو",
flutter: ║                     "dayNumber": 10,
flutter: ║                     "deliveryMode": "pickup",
flutter: ║                     "status": "open",
flutter: ║                     "statusLabel": "مفتوح",
flutter: ║                     "isPast": false,
flutter: ║                     "autoSettled": false,
flutter: ║                     "settledAt": null,
flutter: ║                     "settlementReason": null,
flutter: ║                     "consumedByPolicy": false,
flutter: ║                     "selectedMeals": 0,
flutter: ║                     "requiredMeals": 1,
flutter: ║                     "hasSelection": false,
flutter: ║                     "selectionStatus": "empty",
flutter: ║                     "paymentStatus": "not_required",
flutter: ║                     "orderStatus": "none",
flutter: ║                     "subscriptionStatus": "active",
flutter: ║                     "timelineStatus": "empty",
flutter: ║                     "isPlanned": false,
flutter: ║                     "canShowAsPlanned": false,
flutter: ║                     "canEdit": true,
flutter: ║                     "paymentStateReason": "PLANNING_INCOMPLETE",
flutter: ║                     "commercialState": "draft",
flutter: ║                     "commercialStateLabel": "مسودة",
flutter: ║                     "isFulfillable": false,
flutter: ║                     "canBePrepared": false,
flutter: ║                     "paymentRequirement": {
flutter: ║                         "status": "satisfied",
flutter: ║                         "requiresPayment": false,
flutter: ║                         "pricingStatus": "not_required",
flutter: ║                         "blockingReason": "PLANNING_INCOMPLETE",
flutter: ║                         "canCreatePayment": false,
flutter: ║                         "premiumSelectedCount": 0,
flutter: ║                         "premiumPendingPaymentCount": 0,
flutter: ║                         "addonSelectedCount": 0,
flutter: ║                         "addonPendingPaymentCount": 0,
flutter: ║                         "pendingAmountHalala": 0,
flutter: ║                         "amountHalala": 0,
flutter: ║                         "currency": "SAR",
flutter: ║                         "pricingStatusLabel": "غير مطلوب",
flutter: ║                         "blockingReasonLabel": ""
flutter: ║                    }
flutter: ║                     "fulfillmentMode": "no_service",
flutter: ║                     "consumptionState": "pending_day",
flutter: ║                     "requiredMealCount": 1,
flutter: ║                     "specifiedMealCount": 0,
flutter: ║                     "unspecifiedMealCount": 1,
flutter: ║                     "hasCustomerSelections": false,
flutter: ║                     "requiresMealTypeKnowledge": false,
flutter: ║                     "planningReady": false,
flutter: ║                     "fulfillmentReady": false,
flutter: ║                     "deliveryWindow": null,
flutter: ║                     "deliveryAddress": null,
flutter: ║                     "pickupLocation": {
flutter: ║                         "id": "main",
flutter: ║                         "name": "الفرع الرئيسي",
flutter: ║                         "address": "H4GX+JF7، السلامة، جدة 23436، المملكة العربية السعودية"
flutter: ║                         "phone": "",
flutter: ║                         "city": "",
flutter: ║                         "district": "",
flutter: ║                         "workingHours": "",
flutter: ║                         "latitude": null,
flutter: ║                         "longitude": null,
flutter: ║                         "mapUrl": null
flutter: ║                    }
flutter: ║                     "fulfillmentSummary": {
flutter: ║                         "mode": "pickup",
flutter: ║                         "title": "الاستلام من الفرع",
flutter: ║                         "status": "open",
flutter: ║                         "statusLabel": "مفتوح",
flutter: ║                         "message": "راجع اختيارات اليوم واطلب التجهيز عندما تكون جاهزا"
flutter: ║                         "nextAction": "",
flutter: ║                         "isEditable": true,
flutter: ║                         "isFulfillable": false,
flutter: ║                         "planningReady": false,
flutter: ║                         "fulfillmentReady": false,
flutter: ║                         "lockedReason": null,
flutter: ║                         "lockedMessage": null
flutter: ║                    }
flutter: ║                     "lockedReason": null,
flutter: ║                     "lockedMessage": null,
flutter: ║                     "selectedMealIds": []
flutter: ║                     "mealSlots": []
flutter: ║                }
flutter: ║             ]
flutter: ║        }
flutter: ║    }
flutter: ║
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: onChange -- PlansBloc, Change { currentState: PlansLoading(null, null), nextState: CurrentSubscriptionOverviewLoaded(Instance of 'CurrentSubscriptionOverviewModel', Instance of 'TimelineDayModel') }
flutter: onCreate -- PickupStatusCubit
flutter:
flutter: ╔╣ Request ║ GET
flutter: ║  https://basicdiet145.onrender.com/api/subscriptions/6a21a6ea6765cd1aecc005f8/days/2026-06-04/pickup/status
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: ╔ Headers
flutter: ╟ accept: application/json
flutter: ╟ content-type: application/json
flutter: ╟ authorization:
flutter: ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTIxMzc2ZGNkZTgwN2M5M2M1ZTFjOD
flutter: ║ giLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDU5OTk1MCwiZXhwIjox
flutter: ║ NzgwNjAwODUwfQ.I795F66mRevTSvW4j8Cjmf68iP8IH7wzkEQVAd9RcLw
flutter: ╟ Accept-Language: ar
flutter: ╟ contentType: application/json
flutter: ╟ responseType: ResponseType.json
flutter: ╟ followRedirects: true
flutter: ╟ connectTimeout: 0:01:00.000000
flutter: ╟ receiveTimeout: 0:01:00.000000
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter:
flutter: ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 622 ms
flutter: ║  https://basicdiet145.onrender.com/api/subscriptions/6a21a6ea6765cd1aecc005f8/days/2026-06-04/pickup/status
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: ╔ Headers
flutter: ╟ x-dns-prefetch-control: [off]
flutter: ╟ x-render-origin-server: [Render]
flutter: ╟ date: [Thu, 04 Jun 2026 19:14:20 GMT]
flutter: ╟ transfer-encoding: [chunked]
flutter: ╟ origin-agent-cluster: [?1]
flutter: ╟ vary: [Origin, Accept-Encoding]
flutter: ╟ content-encoding: [gzip]
flutter: ╟ server: [cloudflare]
flutter: ╟ cross-origin-resource-policy: [same-origin]
flutter: ╟ cf-ray: [a069428c8e8a4912-MRS]
flutter: ╟ etag: [W/"500-n0C46zKQfgKNp5o365aUgR2QyU8"]
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
flutter: ╟ rndr-id: [aab90630-8a46-4756]
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
flutter: ║             "currentStep": 1,
flutter: ║             "status": "open",
flutter: ║             "statusLabel": "وجباتك غير مجهزة بعد",
flutter: ║             "statusLabelAr": "وجباتك غير مجهزة بعد",
flutter: ║             "statusLabelEn": "Your meals are not prepared yet",
flutter: ║             "message": "راجع اختياراتك لبدء التجهيز.",
flutter: ║             "messageAr": "راجع اختياراتك لبدء التجهيز.",
flutter: ║             "messageEn": "Review your selection to start preparation.",
flutter: ║             "canModify": true,
flutter: ║             "isReady": false,
flutter: ║             "isCompleted": false,
flutter: ║             "pickupRequested": false,
flutter: ║             "pickupPrepared": false,
flutter: ║             "pickupPreparationFlowStatus": "waiting_for_prepare",
flutter: ║             "consumptionState": "consumable_today",
flutter: ║             "fulfillmentMode": "customer_selected",
flutter: ║             "dayEndConsumptionReason": null,
flutter: ║             "canRequestPrepare": true,
flutter: ║             "requestBlockedReason": null,
flutter: ║             "requestBlockedMessage": null,
flutter: ║             "requestBlockedMessageAr": null,
flutter: ║             "requestBlockedMessageEn": null,
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
flutter: ║             "restaurantHours": {openTime: 00:00, closeTime: 23:59, isOpenNow: true},
flutter: ║             "pickupCode": null,
flutter: ║             "pickupCodeIssuedAt": null,
flutter: ║             "fulfilledAt": null
flutter: ║        }
flutter: ║    }
flutter: ║
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: onChange -- PickupStatusCubit, Change { currentState: PickupStatusInitial(), nextState: PickupStatusLoaded(open, null) }
flutter: onChange -- MainBloc, Change { currentState: MainIndexChangedState(2), nextState: MainIndexChangedState(1) }
flutter: onCreate -- MenuBloc
flutter: onClose -- PickupStatusCubit
flutter: onClose -- FulfillmentStatusCubit
flutter: onChange -- MenuBloc, Change { currentState: MenuInitial(), nextState: MenuLoading() }
flutter: onClose -- PlansBloc
flutter:
flutter: ╔╣ Request ║ GET
flutter: ║  https://basicdiet145.onrender.com/api/orders/menu
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: ╔ Headers
flutter: ╟ accept: application/json
flutter: ╟ content-type: application/json
flutter: ╟ authorization:
flutter: ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTIxMzc2ZGNkZTgwN2M5M2M1ZTFjOD
flutter: ║ giLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MDU5OTk1MCwiZXhwIjox
flutter: ║ NzgwNjAwODUwfQ.I795F66mRevTSvW4j8Cjmf68iP8IH7wzkEQVAd9RcLw
flutter: ╟ Accept-Language: ar
flutter: ╟ contentType: application/json
flutter: ╟ responseType: ResponseType.json
flutter: ╟ followRedirects: true
flutter: ╟ connectTimeout: 0:01:00.000000
flutter: ╟ receiveTimeout: 0:01:00.000000
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter:
flutter: ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 868 ms
flutter: ║  https://basicdiet145.onrender.com/api/orders/menu
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: ╔ Headers
flutter: ╟ x-dns-prefetch-control: [off]
flutter: ╟ x-render-origin-server: [Render]
flutter: ╟ date: [Thu, 04 Jun 2026 19:14:21 GMT]
flutter: ╟ transfer-encoding: [chunked]
flutter: ╟ origin-agent-cluster: [?1]
flutter: ╟ vary: [Origin, Accept-Encoding]
flutter: ╟ content-encoding: [gzip]
flutter: ╟ server: [cloudflare]
flutter: ╟ cross-origin-resource-policy: [same-origin]
flutter: ╟ cf-ray: [a06942910afc4912-MRS]
flutter: ╟ etag: [W/"18c16-Ps5L3+KpxtqJMZ337AumpRLKZTo"]
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
flutter: ╟ rndr-id: [b85b5c87-de14-41ed]
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
flutter: ║             "itemTypes": [
flutter: ║                     basic_salad,
flutter: ║                     basic_meal,
flutter: ║                     fruit_salad,
flutter: ║                     greek_yogurt,
flutter: ║                     green_salad,
flutter: ║                     cold_sandwich,
flutter: ║                     sourdough,
flutter: ║                     dessert,
flutter: ║                     juice,
flutter: ║                     drink,
flutter: ║                     ice_cream,
flutter: ║                     product
flutter: ║             ],
flutter: ║             "categories": [
flutter: ║                {
flutter: ║                     "id": "6a2136ac6c0fcd5fd3736e05",
flutter: ║                     "key": "custom_order",
flutter: ║                     "name": "اطلب على مزاجك",
flutter: ║                     "nameI18n": {ar: اطلب على مزاجك, en: Custom Order},
flutter: ║                     "description": "",
flutter: ║                     "descriptionI18n": {ar: , en: },
flutter: ║                     "imageUrl": "https://res.cloudinary.com/da8tyika6/image/upload/f_auto,q_auto/v1/ba
flutter: ║                      sicdiet145/menu/vegetable-salad-recipe_gcnjjc?_a=BAMAPqfk0"
flutter: ║                     "sortOrder": 10,
flutter: ║                     "ui": {cardVariant: meal_builder},
flutter: ║                     "products": [
flutter: ║                        {
flutter: ║                             "id": "6a2136f16c0fcd5fd3737043",
flutter: ║                             "key": "basic_salad",
flutter: ║                             "categoryId": "6a2136ac6c0fcd5fd3736e05",
flutter: ║                             "name": "سلطة على مزاجك – 100جرام بروتين",
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2136bc6c0fcd5fd3736e86"
flutter: ║                                     "groupId": "6a2136bc6c0fcd5fd3736e86"
flutter: ║                                     "key": "leafy_greens",
flutter: ║                                     "name": "ورقيات",
flutter: ║                                     "nameI18n": {ar: ورقيات, en: Leafy Greens},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 2,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2136bc6c0fcd5fd3736e89"
flutter: ║                                             "optionId": "6a2136bc6c0fcd5fd3736e89"
flutter: ║                                             "groupId": "6a2136bc6c0fcd5fd3736e86"
flutter: ║                                             "key": "lettuce"
flutter: ║                                             "name": "خس"
flutter: ║                                             "nameI18n": {ar: خس, en: Lettuce},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136bc6c0fcd5fd3736e8c"
flutter: ║                                             "optionId": "6a2136bc6c0fcd5fd3736e8c"
flutter: ║                                             "groupId": "6a2136bc6c0fcd5fd3736e86"
flutter: ║                                             "key": "arugula"
flutter: ║                                             "name": "جرجير"
flutter: ║                                             "nameI18n": {ar: جرجير, en: Arugula},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 20
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136bd6c0fcd5fd3736e8f"
flutter: ║                                             "optionId": "6a2136bd6c0fcd5fd3736e8f"
flutter: ║                                             "groupId": "6a2136bc6c0fcd5fd3736e86"
flutter: ║                                             "key": "cabbage"
flutter: ║                                             "name": "ملفوف"
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
flutter: ║                                     "id": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                     "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                     "key": "vegetables_legumes"
flutter: ║                                     "name": "خضراوات وبقوليات",
flutter: ║                                     "nameI18n": {ar: خضراوات وبقوليات, en: Vegetables & Legumes},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 19,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 20,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2136be6c0fcd5fd3736e98"
flutter: ║                                             "optionId": "6a2136be6c0fcd5fd3736e98"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "tomato"
flutter: ║                                             "name": "طماطم"
flutter: ║                                             "nameI18n": {ar: طماطم, en: Tomato},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136be6c0fcd5fd3736e9b"
flutter: ║                                             "optionId": "6a2136be6c0fcd5fd3736e9b"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "carrot"
flutter: ║                                             "name": "جزر"
flutter: ║                                             "nameI18n": {ar: جزر, en: Carrot},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 20
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136bf6c0fcd5fd3736e9e"
flutter: ║                                             "optionId": "6a2136bf6c0fcd5fd3736e9e"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "cucumber"
flutter: ║                                             "name": "خيار"
flutter: ║                                             "nameI18n": {ar: خيار, en: Cucumber},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 30
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136bf6c0fcd5fd3736ea1"
flutter: ║                                             "optionId": "6a2136bf6c0fcd5fd3736ea1"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "corn"
flutter: ║                                             "name": "ذرة"
flutter: ║                                             "nameI18n": {ar: ذرة, en: Corn},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 40
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136bf6c0fcd5fd3736ea4"
flutter: ║                                             "optionId": "6a2136bf6c0fcd5fd3736ea4"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "hummus"
flutter: ║                                             "name": "حمص"
flutter: ║                                             "nameI18n": {ar: حمص, en: Hummus},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 50
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c06c0fcd5fd3736ea7"
flutter: ║                                             "optionId": "6a2136c06c0fcd5fd3736ea7"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "jalapeno"
flutter: ║                                             "name": "هالبينو"
flutter: ║                                             "nameI18n": {ar: هالبينو, en: Jalapeno},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 60
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c06c0fcd5fd3736eaa"
flutter: ║                                             "optionId": "6a2136c06c0fcd5fd3736eaa"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "red_beans"
flutter: ║                                             "name": "فاصوليا حمراء"
flutter: ║                                             "nameI18n": {ar: فاصوليا حمراء, en: Red Beans},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 70
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c06c0fcd5fd3736ead"
flutter: ║                                             "optionId": "6a2136c06c0fcd5fd3736ead"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "beetroot"
flutter: ║                                             "name": "بنجر"
flutter: ║                                             "nameI18n": {ar: بنجر, en: Beetroot},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 80
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c16c0fcd5fd3736eb0"
flutter: ║                                             "optionId": "6a2136c16c0fcd5fd3736eb0"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "hot_pepper"
flutter: ║                                             "name": "فلفل حار"
flutter: ║                                             "nameI18n": {ar: فلفل حار, en: Hot Pepper},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 90
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c16c0fcd5fd3736eb3"
flutter: ║                                             "optionId": "6a2136c16c0fcd5fd3736eb3"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "coriander"
flutter: ║                                             "name": "كزبرة"
flutter: ║                                             "nameI18n": {ar: كزبرة, en: Coriander},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 100
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c26c0fcd5fd3736eb6"
flutter: ║                                             "optionId": "6a2136c26c0fcd5fd3736eb6"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "mushroom"
flutter: ║                                             "name": "فطر"
flutter: ║                                             "nameI18n": {ar: فطر, en: Mushroom},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 110
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c26c0fcd5fd3736eb9"
flutter: ║                                             "optionId": "6a2136c26c0fcd5fd3736eb9"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "broccoli"
flutter: ║                                             "name": "بروكلي"
flutter: ║                                             "nameI18n": {ar: بروكلي, en: Broccoli},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 120
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c26c0fcd5fd3736ebc"
flutter: ║                                             "optionId": "6a2136c26c0fcd5fd3736ebc"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "salad_grilled_mixed_vegetables"
flutter: ║                                             "name": "خضار مشكل مشوي"
flutter: ║                                             "nameI18n": {ar: خضار مشكل مشوي, en: Grilled Mixed Vegetables},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 130
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c36c0fcd5fd3736ebf"
flutter: ║                                             "optionId": "6a2136c36c0fcd5fd3736ebf"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "red_onion"
flutter: ║                                             "name": "بصل احمر"
flutter: ║                                             "nameI18n": {ar: بصل احمر, en: Red Onion},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 140
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c36c0fcd5fd3736ec2"
flutter: ║                                             "optionId": "6a2136c36c0fcd5fd3736ec2"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "green_onion"
flutter: ║                                             "name": "بصل اخضر"
flutter: ║                                             "nameI18n": {ar: بصل اخضر, en: Green Onion},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 150
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c36c0fcd5fd3736ec5"
flutter: ║                                             "optionId": "6a2136c36c0fcd5fd3736ec5"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "green_olives"
flutter: ║                                             "name": "زيتون اخضر"
flutter: ║                                             "nameI18n": {ar: زيتون اخضر, en: Green Olives},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 160
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c46c0fcd5fd3736ec8"
flutter: ║                                             "optionId": "6a2136c46c0fcd5fd3736ec8"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "black_olives"
flutter: ║                                             "name": "زيتون اسود"
flutter: ║                                             "nameI18n": {ar: زيتون اسود, en: Black Olives},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 170
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c46c0fcd5fd3736ecb"
flutter: ║                                             "optionId": "6a2136c46c0fcd5fd3736ecb"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "mint"
flutter: ║                                             "name": "نعناع"
flutter: ║                                             "nameI18n": {ar: نعناع, en: Mint},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 180
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c46c0fcd5fd3736ece"
flutter: ║                                             "optionId": "6a2136c46c0fcd5fd3736ece"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "pickled_onion"
flutter: ║                                             "name": "بصل مخلل"
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
flutter: ║                                     "id": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                     "groupId": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                     "key": "fruits",
flutter: ║                                     "name": "فواكه",
flutter: ║                                     "nameI18n": {ar: فواكه, en: Fruits},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 4,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 30,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c86c0fcd5fd3736eec"
flutter: ║                                             "optionId": "6a2136c86c0fcd5fd3736eec"
flutter: ║                                             "groupId": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                             "key": "mango"
flutter: ║                                             "name": "مانجا"
flutter: ║                                             "nameI18n": {ar: مانجا, en: Mango},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c86c0fcd5fd3736eef"
flutter: ║                                             "optionId": "6a2136c86c0fcd5fd3736eef"
flutter: ║                                             "groupId": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                             "key": "green_apple"
flutter: ║                                             "name": "تفاح اخضر"
flutter: ║                                             "nameI18n": {ar: تفاح اخضر, en: Green Apple},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 20
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c96c0fcd5fd3736ef2"
flutter: ║                                             "optionId": "6a2136c96c0fcd5fd3736ef2"
flutter: ║                                             "groupId": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                             "key": "pomegranate"
flutter: ║                                             "name": "رمان"
flutter: ║                                             "nameI18n": {ar: رمان, en: Pomegranate},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 30
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c96c0fcd5fd3736ef5"
flutter: ║                                             "optionId": "6a2136c96c0fcd5fd3736ef5"
flutter: ║                                             "groupId": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                             "key": "strawberry"
flutter: ║                                             "name": "فراولة"
flutter: ║                                             "nameI18n": {ar: فراولة, en: Strawberry},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 40
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136ca6c0fcd5fd3736ef8"
flutter: ║                                             "optionId": "6a2136ca6c0fcd5fd3736ef8"
flutter: ║                                             "groupId": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                             "key": "blueberry"
flutter: ║                                             "name": "توت ازرق"
flutter: ║                                             "nameI18n": {ar: توت ازرق, en: Blueberry},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 50
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136ca6c0fcd5fd3736efb"
flutter: ║                                             "optionId": "6a2136ca6c0fcd5fd3736efb"
flutter: ║                                             "groupId": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                             "key": "raspberry"
flutter: ║                                             "name": "توت احمر"
flutter: ║                                             "nameI18n": {ar: توت احمر, en: Raspberry},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 60
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136ca6c0fcd5fd3736efe"
flutter: ║                                             "optionId": "6a2136ca6c0fcd5fd3736efe"
flutter: ║                                             "groupId": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                             "key": "watermelon"
flutter: ║                                             "name": "بطيخ"
flutter: ║                                             "nameI18n": {ar: بطيخ, en: Watermelon},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 70
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136ca6c0fcd5fd3736f01"
flutter: ║                                             "optionId": "6a2136ca6c0fcd5fd3736f01"
flutter: ║                                             "groupId": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                             "key": "cantaloupe"
flutter: ║                                             "name": "شمام"
flutter: ║                                             "nameI18n": {ar: شمام, en: Cantaloupe},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 80
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136cb6c0fcd5fd3736f04"
flutter: ║                                             "optionId": "6a2136cb6c0fcd5fd3736f04"
flutter: ║                                             "groupId": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                             "key": "dates"
flutter: ║                                             "name": "تمر"
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
flutter: ║                                     "id": "6a2136b06c0fcd5fd3736e26"
flutter: ║                                     "groupId": "6a2136b06c0fcd5fd3736e26"
flutter: ║                                     "key": "proteins",
flutter: ║                                     "name": "بروتينات",
flutter: ║                                     "nameI18n": {ar: بروتينات, en: Proteins},
flutter: ║                                     "minSelections": 1,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": true,
flutter: ║                                     "sortOrder": 40,
flutter: ║                                     "ui": {displayStyle: radio_cards},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2136b36c0fcd5fd3736e3e"
flutter: ║                                             "optionId": "6a2136b36c0fcd5fd3736e3e"
flutter: ║                                             "groupId": "6a2136b06c0fcd5fd3736e26"
flutter: ║                                             "key": "boiled_eggs"
flutter: ║                                             "name": "بيض مسلوق"
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
flutter: ║                                             "id": "6a2136b36c0fcd5fd3736e41"
flutter: ║                                             "optionId": "6a2136b36c0fcd5fd3736e41"
flutter: ║                                             "groupId": "6a2136b06c0fcd5fd3736e26"
flutter: ║                                             "key": "tuna"
flutter: ║                                             "name": "تونا"
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
flutter: ║                                             "id": "6a2136b46c0fcd5fd3736e44"
flutter: ║                                             "optionId": "6a2136b46c0fcd5fd3736e44"
flutter: ║                                             "groupId": "6a2136b06c0fcd5fd3736e26"
flutter: ║                                             "key": "chicken_fajita"
flutter: ║                                             "name": "فاهيتا"
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
flutter: ║                                             "id": "6a2136b46c0fcd5fd3736e47"
flutter: ║                                             "optionId": "6a2136b46c0fcd5fd3736e47"
flutter: ║                                             "groupId": "6a2136b06c0fcd5fd3736e26"
flutter: ║                                             "key": "spicy_chicken"
flutter: ║                                             "name": "دجاج سبايسي"
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
flutter: ║                                             "id": "6a2136b56c0fcd5fd3736e4a"
flutter: ║                                             "optionId": "6a2136b56c0fcd5fd3736e4a"
flutter: ║                                             "groupId": "6a2136b06c0fcd5fd3736e26"
flutter: ║                                             "key": "italian_spiced_chicken"
flutter: ║                                             "name": "دجاج توابل إيطالية"
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
flutter: ║                                             "id": "6a2136b56c0fcd5fd3736e4d"
flutter: ║                                             "optionId": "6a2136b56c0fcd5fd3736e4d"
flutter: ║                                             "groupId": "6a2136b06c0fcd5fd3736e26"
flutter: ║                                             "key": "chicken_tikka"
flutter: ║                                             "name": "دجاج تكا"
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
flutter: ║                                             "id": "6a2136b56c0fcd5fd3736e50"
flutter: ║                                             "optionId": "6a2136b56c0fcd5fd3736e50"
flutter: ║                                             "groupId": "6a2136b06c0fcd5fd3736e26"
flutter: ║                                             "key": "asian_chicken"
flutter: ║                                             "name": "دجاج آسيوي"
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
flutter: ║                                             "id": "6a2136b66c0fcd5fd3736e53"
flutter: ║                                             "optionId": "6a2136b66c0fcd5fd3736e53"
flutter: ║                                             "groupId": "6a2136b06c0fcd5fd3736e26"
flutter: ║                                             "key": "chicken_strips"
flutter: ║                                             "name": "استربس"
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
flutter: ║                                             "id": "6a2136b66c0fcd5fd3736e56"
flutter: ║                                             "optionId": "6a2136b66c0fcd5fd3736e56"
flutter: ║                                             "groupId": "6a2136b06c0fcd5fd3736e26"
flutter: ║                                             "key": "grilled_chicken"
flutter: ║                                             "name": "دجاج مشوي"
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
flutter: ║                                             "id": "6a2136b66c0fcd5fd3736e59"
flutter: ║                                             "optionId": "6a2136b66c0fcd5fd3736e59"
flutter: ║                                             "groupId": "6a2136b06c0fcd5fd3736e26"
flutter: ║                                             "key": "mexican_chicken"
flutter: ║                                             "name": "دجاج مكسيكي"
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
flutter: ║                                             "id": "6a2136b76c0fcd5fd3736e5c"
flutter: ║                                             "optionId": "6a2136b76c0fcd5fd3736e5c"
flutter: ║                                             "groupId": "6a2136b06c0fcd5fd3736e26"
flutter: ║                                             "key": "meatballs"
flutter: ║                                             "name": "كرات لحم"
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
flutter: ║                                             "id": "6a2136b76c0fcd5fd3736e5f"
flutter: ║                                             "optionId": "6a2136b76c0fcd5fd3736e5f"
flutter: ║                                             "groupId": "6a2136b06c0fcd5fd3736e26"
flutter: ║                                             "key": "beef_stroganoff"
flutter: ║                                             "name": "لحم استرغانوف"
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
flutter: ║                                             "id": "6a2136b26c0fcd5fd3736e35"
flutter: ║                                             "optionId": "6a2136b26c0fcd5fd3736e35"
flutter: ║                                             "groupId": "6a2136b06c0fcd5fd3736e26"
flutter: ║                                             "key": "beef_steak"
flutter: ║                                             "name": "ستيك لحم"
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
flutter: ║                                             "id": "6a2136b26c0fcd5fd3736e38"
flutter: ║                                             "optionId": "6a2136b26c0fcd5fd3736e38"
flutter: ║                                             "groupId": "6a2136b06c0fcd5fd3736e26"
flutter: ║                                             "key": "shrimp"
flutter: ║                                             "name": "جمبري"
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
flutter: ║                                             "id": "6a2136b76c0fcd5fd3736e62"
flutter: ║                                             "optionId": "6a2136b76c0fcd5fd3736e62"
flutter: ║                                             "groupId": "6a2136b06c0fcd5fd3736e26"
flutter: ║                                             "key": "fish_fillet"
flutter: ║                                             "name": "سمك فيليه"
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
flutter: ║                                             "id": "6a2136b36c0fcd5fd3736e3b"
flutter: ║                                             "optionId": "6a2136b36c0fcd5fd3736e3b"
flutter: ║                                             "groupId": "6a2136b06c0fcd5fd3736e26"
flutter: ║                                             "key": "salmon"
flutter: ║                                             "name": "سالمون"
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
flutter: ║                                             "name": "دجاج"
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
flutter: ║                                                     6a2136b46c0fcd5fd3736e44,
flutter: ║                                                     6a2136b46c0fcd5fd3736e47,
flutter: ║                                                     6a2136b56c0fcd5fd3736e4a,
flutter: ║                                                     6a2136b56c0fcd5fd3736e4d,
flutter: ║                                                     6a2136b56c0fcd5fd3736e50,
flutter: ║                                                     6a2136b66c0fcd5fd3736e53,
flutter: ║                                                     6a2136b66c0fcd5fd3736e56,
flutter: ║                                                     6a2136b66c0fcd5fd3736e59
flutter: ║                                             ]
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "key": "beef"
flutter: ║                                             "name": "لحم"
flutter: ║                                             "nameI18n": {ar: لحم, en: Beef},
flutter: ║                                             "optionKeys": [meatballs, beef_stroganoff]
flutter: ║                                             "optionIds": [6a2136b76c0fcd5fd3736e5c, 6a2136b76c0fcd5fd3736e5f]
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "key": "fish"
flutter: ║                                             "name": "سمك"
flutter: ║                                             "nameI18n": {ar: سمك, en: Fish},
flutter: ║                                             "optionKeys": [tuna, fish_fillet]
flutter: ║                                             "optionIds": [6a2136b36c0fcd5fd3736e41, 6a2136b76c0fcd5fd3736e62]
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "key": "eggs"
flutter: ║                                             "name": "بيض"
flutter: ║                                             "nameI18n": {ar: بيض, en: Eggs},
flutter: ║                                             "optionKeys": [boiled_eggs]
flutter: ║                                             "optionIds": [6a2136b36c0fcd5fd3736e3e]
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "key": "premium"
flutter: ║                                             "name": "بريميوم"
flutter: ║                                             "nameI18n": {ar: بريميوم, en: Premium},
flutter: ║                                             "optionKeys": [beef_steak, shrimp, salmon]
flutter: ║                                             "optionIds": [6a2136b26c0fcd5fd3736e35, 6a2136b26c0fcd5fd3736e38, 6a2136b36c0fcd5fd3736e3b]
flutter: ║                                        }
flutter: ║                                     ]
flutter: ║                                },
flutter: ║                                {
flutter: ║                                     "id": "6a2136c56c0fcd5fd3736ed1"
flutter: ║                                     "groupId": "6a2136c56c0fcd5fd3736ed1"
flutter: ║                                     "key": "cheese_nuts",
flutter: ║                                     "name": "الاجبان و المكسرات"
flutter: ║                                     "nameI18n": {ar: الاجبان و المكسرات, en: Cheese & Nuts},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 2,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 50,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c56c0fcd5fd3736ed4"
flutter: ║                                             "optionId": "6a2136c56c0fcd5fd3736ed4"
flutter: ║                                             "groupId": "6a2136c56c0fcd5fd3736ed1"
flutter: ║                                             "key": "cashew"
flutter: ║                                             "name": "كاجو"
flutter: ║                                             "nameI18n": {ar: كاجو, en: Cashew},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c66c0fcd5fd3736ed7"
flutter: ║                                             "optionId": "6a2136c66c0fcd5fd3736ed7"
flutter: ║                                             "groupId": "6a2136c56c0fcd5fd3736ed1"
flutter: ║                                             "key": "walnut"
flutter: ║                                             "name": "عين الجمل"
flutter: ║                                             "nameI18n": {ar: عين الجمل, en: Walnut},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 20
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c66c0fcd5fd3736eda"
flutter: ║                                             "optionId": "6a2136c66c0fcd5fd3736eda"
flutter: ║                                             "groupId": "6a2136c56c0fcd5fd3736ed1"
flutter: ║                                             "key": "sesame"
flutter: ║                                             "name": "سمسم"
flutter: ║                                             "nameI18n": {ar: سمسم, en: Sesame},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 30
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c66c0fcd5fd3736edd"
flutter: ║                                             "optionId": "6a2136c66c0fcd5fd3736edd"
flutter: ║                                             "groupId": "6a2136c56c0fcd5fd3736ed1"
flutter: ║                                             "key": "feta"
flutter: ║                                             "name": "فيتا"
flutter: ║                                             "nameI18n": {ar: فيتا, en: Feta},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 40
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c76c0fcd5fd3736ee0"
flutter: ║                                             "optionId": "6a2136c76c0fcd5fd3736ee0"
flutter: ║                                             "groupId": "6a2136c56c0fcd5fd3736ed1"
flutter: ║                                             "key": "parmesan"
flutter: ║                                             "name": "بارميزان"
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
flutter: ║                                     "id": "6a2136cb6c0fcd5fd3736f0a"
flutter: ║                                     "groupId": "6a2136cb6c0fcd5fd3736f0a"
flutter: ║                                     "key": "sauces",
flutter: ║                                     "name": "الصوصات",
flutter: ║                                     "nameI18n": {ar: الصوصات, en: Sauces},
flutter: ║                                     "minSelections": 1,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": true,
flutter: ║                                     "sortOrder": 60,
flutter: ║                                     "ui": {displayStyle: radio_cards},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2136cc6c0fcd5fd3736f0d"
flutter: ║                                             "optionId": "6a2136cc6c0fcd5fd3736f0d"
flutter: ║                                             "groupId": "6a2136cb6c0fcd5fd3736f0a"
flutter: ║                                             "key": "ranch"
flutter: ║                                             "name": "رانش"
flutter: ║                                             "nameI18n": {ar: رانش, en: Ranch},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136cc6c0fcd5fd3736f10"
flutter: ║                                             "optionId": "6a2136cc6c0fcd5fd3736f10"
flutter: ║                                             "groupId": "6a2136cb6c0fcd5fd3736f0a"
flutter: ║                                             "key": "spicy_ranch"
flutter: ║                                             "name": "سبايسي رانش"
flutter: ║                                             "nameI18n": {ar: سبايسي رانش, en: Spicy Ranch},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 20
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136cd6c0fcd5fd3736f13"
flutter: ║                                             "optionId": "6a2136cd6c0fcd5fd3736f13"
flutter: ║                                             "groupId": "6a2136cb6c0fcd5fd3736f0a"
flutter: ║                                             "key": "pesto_sauce"
flutter: ║                                             "name": "صوص بيستو"
flutter: ║                                             "nameI18n": {ar: صوص بيستو, en: Pesto Sauce},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 30
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136cd6c0fcd5fd3736f16"
flutter: ║                                             "optionId": "6a2136cd6c0fcd5fd3736f16"
flutter: ║                                             "groupId": "6a2136cb6c0fcd5fd3736f0a"
flutter: ║                                             "key": "balsamic"
flutter: ║                                             "name": "بالسميك"
flutter: ║                                             "nameI18n": {ar: بالسميك, en: Balsamic},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 40
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136cd6c0fcd5fd3736f19"
flutter: ║                                             "optionId": "6a2136cd6c0fcd5fd3736f19"
flutter: ║                                             "groupId": "6a2136cb6c0fcd5fd3736f0a"
flutter: ║                                             "key": "caesar"
flutter: ║                                             "name": "سيزر"
flutter: ║                                             "nameI18n": {ar: سيزر, en: Caesar},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 50
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136ce6c0fcd5fd3736f1c"
flutter: ║                                             "optionId": "6a2136ce6c0fcd5fd3736f1c"
flutter: ║                                             "groupId": "6a2136cb6c0fcd5fd3736f0a"
flutter: ║                                             "key": "honey_mustard"
flutter: ║                                             "name": "هاني ماستر"
flutter: ║                                             "nameI18n": {ar: هاني ماستر, en: Honey Mustard},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 60
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136ce6c0fcd5fd3736f1f"
flutter: ║                                             "optionId": "6a2136ce6c0fcd5fd3736f1f"
flutter: ║                                             "groupId": "6a2136cb6c0fcd5fd3736f0a"
flutter: ║                                             "key": "yogurt_mint"
flutter: ║                                             "name": "زبادي بالنعناع"
flutter: ║                                             "nameI18n": {ar: زبادي بالنعناع, en: Yogurt Mint},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 70
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136ce6c0fcd5fd3736f22"
flutter: ║                                             "optionId": "6a2136ce6c0fcd5fd3736f22"
flutter: ║                                             "groupId": "6a2136cb6c0fcd5fd3736f0a"
flutter: ║                                             "key": "honey_garlic"
flutter: ║                                             "name": "عسل بالثوم"
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
flutter: ║                                     "id": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                     "groupId": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                     "key": "extra_protein_50g"
flutter: ║                                     "name": "إضافة بروتين",
flutter: ║                                     "nameI18n": {ar: إضافة بروتين, en: Extra Protein},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 70,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2136d06c0fcd5fd3736f2e"
flutter: ║                                             "optionId": "6a2136d06c0fcd5fd3736f2e"
flutter: ║                                             "groupId": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                             "key": "extra_chicken_50g"
flutter: ║                                             "name": "زيادة 50 جرام من الدجاج"
flutter: ║                                             "nameI18n": {ar: زيادة 50 جرام من الدجاج, en: Extra 50g Chicken},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 500
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136d06c0fcd5fd3736f31"
flutter: ║                                             "optionId": "6a2136d06c0fcd5fd3736f31"
flutter: ║                                             "groupId": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                             "key": "extra_beef_steak_50g"
flutter: ║                                             "name": "زيادة 50 جرام ستيك لحم"
flutter: ║                                             "nameI18n": {ar: زيادة 50 جرام ستيك لحم, en: Extra 50g Beef Steak},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 1000
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 20
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136d16c0fcd5fd3736f34"
flutter: ║                                             "optionId": "6a2136d16c0fcd5fd3736f34"
flutter: ║                                             "groupId": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                             "key": "extra_salmon_50g"
flutter: ║                                             "name": "زيادة 50 جرام سالمون"
flutter: ║                                             "nameI18n": {ar: زيادة 50 جرام سالمون, en: Extra 50g Salmon},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 1000
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 30
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136d16c0fcd5fd3736f37"
flutter: ║                                             "optionId": "6a2136d16c0fcd5fd3736f37"
flutter: ║                                             "groupId": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                             "key": "extra_shrimp_50g"
flutter: ║                                             "name": "زيادة 50 جرام جمبري"
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
flutter: ║                     "id": "6a2136ad6c0fcd5fd3736e0a",
flutter: ║                     "key": "meals",
flutter: ║                     "name": "الوجبات",
flutter: ║                     "nameI18n": {ar: الوجبات, en: Meals},
flutter: ║                     "description": "",
flutter: ║                     "descriptionI18n": {ar: , en: },
flutter: ║                     "imageUrl": "",
flutter: ║                     "sortOrder": 20,
flutter: ║                     "ui": {cardVariant: light_collection},
flutter: ║                     "products": [
flutter: ║                        {
flutter: ║                             "id": "6a2137096c0fcd5fd373710c",
flutter: ║                             "key": "basic_meal",
flutter: ║                             "categoryId": "6a2136ad6c0fcd5fd3736e0a",
flutter: ║                             "name": "وجبة بيسك",
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2136b86c0fcd5fd3736e65"
flutter: ║                                     "groupId": "6a2136b86c0fcd5fd3736e65"
flutter: ║                                     "key": "carbs",
flutter: ║                                     "name": "كارب",
flutter: ║                                     "nameI18n": {ar: كارب, en: Carbs},
flutter: ║                                     "minSelections": 1,
flutter: ║                                     "maxSelections": 2,
flutter: ║                                     "isRequired": true,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: chips},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2136b86c0fcd5fd3736e68"
flutter: ║                                             "optionId": "6a2136b86c0fcd5fd3736e68"
flutter: ║                                             "groupId": "6a2136b86c0fcd5fd3736e65"
flutter: ║                                             "key": "white_rice"
flutter: ║                                             "name": "رز أبيض"
flutter: ║                                             "nameI18n": {ar: رز أبيض, en: White Rice},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136b96c0fcd5fd3736e6b"
flutter: ║                                             "optionId": "6a2136b96c0fcd5fd3736e6b"
flutter: ║                                             "groupId": "6a2136b86c0fcd5fd3736e65"
flutter: ║                                             "key": "turmeric_rice"
flutter: ║                                             "name": "رز بالكركم"
flutter: ║                                             "nameI18n": {ar: رز بالكركم, en: Turmeric Rice},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 20
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136b96c0fcd5fd3736e6e"
flutter: ║                                             "optionId": "6a2136b96c0fcd5fd3736e6e"
flutter: ║                                             "groupId": "6a2136b86c0fcd5fd3736e65"
flutter: ║                                             "key": "alfredo_pasta"
flutter: ║                                             "name": "باستا الفريدو"
flutter: ║                                             "nameI18n": {ar: باستا الفريدو, en: Alfredo Pasta},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 30
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136b96c0fcd5fd3736e71"
flutter: ║                                             "optionId": "6a2136b96c0fcd5fd3736e71"
flutter: ║                                             "groupId": "6a2136b86c0fcd5fd3736e65"
flutter: ║                                             "key": "red_sauce_pasta"
flutter: ║                                             "name": "باستا صوص احمر"
flutter: ║                                             "nameI18n": {ar: باستا صوص احمر, en: Red Sauce Pasta},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 40
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136ba6c0fcd5fd3736e74"
flutter: ║                                             "optionId": "6a2136ba6c0fcd5fd3736e74"
flutter: ║                                             "groupId": "6a2136b86c0fcd5fd3736e65"
flutter: ║                                             "key": "roasted_potato"
flutter: ║                                             "name": "بطاطا مشوية"
flutter: ║                                             "nameI18n": {ar: بطاطا مشوية, en: Roasted Potato},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 50
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136ba6c0fcd5fd3736e77"
flutter: ║                                             "optionId": "6a2136ba6c0fcd5fd3736e77"
flutter: ║                                             "groupId": "6a2136b86c0fcd5fd3736e65"
flutter: ║                                             "key": "sweet_potato"
flutter: ║                                             "name": "بطاطا حلوة"
flutter: ║                                             "nameI18n": {ar: بطاطا حلوة, en: Sweet Potato},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 60
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136ba6c0fcd5fd3736e7a"
flutter: ║                                             "optionId": "6a2136ba6c0fcd5fd3736e7a"
flutter: ║                                             "groupId": "6a2136b86c0fcd5fd3736e65"
flutter: ║                                             "key": "grilled_mixed_vegetables"
flutter: ║                                             "name": "خضار مشكلة مشوية"
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
flutter: ║                                     "id": "6a2136b06c0fcd5fd3736e26"
flutter: ║                                     "groupId": "6a2136b06c0fcd5fd3736e26"
flutter: ║                                     "key": "proteins",
flutter: ║                                     "name": "بروتينات",
flutter: ║                                     "nameI18n": {ar: بروتينات, en: Proteins},
flutter: ║                                     "minSelections": 1,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": true,
flutter: ║                                     "sortOrder": 20,
flutter: ║                                     "ui": {displayStyle: radio_cards},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2136b16c0fcd5fd3736e29"
flutter: ║                                             "optionId": "6a2136b16c0fcd5fd3736e29"
flutter: ║                                             "groupId": "6a2136b06c0fcd5fd3736e26"
flutter: ║                                             "key": "chicken"
flutter: ║                                             "name": "دجاج"
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
flutter: ║                                             "id": "6a2136b16c0fcd5fd3736e2c"
flutter: ║                                             "optionId": "6a2136b16c0fcd5fd3736e2c"
flutter: ║                                             "groupId": "6a2136b06c0fcd5fd3736e26"
flutter: ║                                             "key": "beef"
flutter: ║                                             "name": "لحم"
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
flutter: ║                                             "id": "6a2136b16c0fcd5fd3736e2f"
flutter: ║                                             "optionId": "6a2136b16c0fcd5fd3736e2f"
flutter: ║                                             "groupId": "6a2136b06c0fcd5fd3736e26"
flutter: ║                                             "key": "fish"
flutter: ║                                             "name": "سمك"
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
flutter: ║                                             "id": "6a2136b26c0fcd5fd3736e32"
flutter: ║                                             "optionId": "6a2136b26c0fcd5fd3736e32"
flutter: ║                                             "groupId": "6a2136b06c0fcd5fd3736e26"
flutter: ║                                             "key": "eggs"
flutter: ║                                             "name": "بيض"
flutter: ║                                             "nameI18n": {ar: بيض, en: Eggs},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 40,
flutter: ║                                             "proteinFamilyKey": "eggs"
flutter: ║                                             "proteinFamilyNameI18n": {ar: بيض, en: Eggs},
flutter: ║                                             "displayCategoryKey": "eggs"
flutter: ║                                        }
flutter: ║                                     ],
flutter: ║                                     "optionSections": [
flutter: ║                                        {
flutter: ║                                             "key": "chicken"
flutter: ║                                             "name": "دجاج"
flutter: ║                                             "nameI18n": {ar: دجاج, en: Chicken},
flutter: ║                                             "optionKeys": [chicken]
flutter: ║                                             "optionIds": [6a2136b16c0fcd5fd3736e29]
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "key": "beef"
flutter: ║                                             "name": "لحم"
flutter: ║                                             "nameI18n": {ar: لحم, en: Beef},
flutter: ║                                             "optionKeys": [beef]
flutter: ║                                             "optionIds": [6a2136b16c0fcd5fd3736e2c]
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "key": "fish"
flutter: ║                                             "name": "سمك"
flutter: ║                                             "nameI18n": {ar: سمك, en: Fish},
flutter: ║                                             "optionKeys": [fish]
flutter: ║                                             "optionIds": [6a2136b16c0fcd5fd3736e2f]
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "key": "eggs"
flutter: ║                                             "name": "بيض"
flutter: ║                                             "nameI18n": {ar: بيض, en: Eggs},
flutter: ║                                             "optionKeys": [eggs]
flutter: ║                                             "optionIds": [6a2136b26c0fcd5fd3736e32]
flutter: ║                                        }
flutter: ║                                     ]
flutter: ║                                }
flutter: ║                             ]
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a21374b6c0fcd5fd373731f",
flutter: ║                             "key": "beef_steak_meal_150g",
flutter: ║                             "categoryId": "6a2136ad6c0fcd5fd3736e0a",
flutter: ║                             "name": "وجبة ستيك لحم 150 جرام",
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                     "groupId": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                     "key": "extra_protein_50g"
flutter: ║                                     "name": "إضافة بروتين",
flutter: ║                                     "nameI18n": {ar: إضافة بروتين, en: Extra Protein},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2136d06c0fcd5fd3736f31"
flutter: ║                                             "optionId": "6a2136d06c0fcd5fd3736f31"
flutter: ║                                             "groupId": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                             "key": "extra_beef_steak_50g"
flutter: ║                                             "name": "زيادة 50 جرام ستيك لحم"
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
flutter: ║                             "id": "6a21374c6c0fcd5fd3737328",
flutter: ║                             "key": "salmon_meal_100g",
flutter: ║                             "categoryId": "6a2136ad6c0fcd5fd3736e0a",
flutter: ║                             "name": "وجبة سالمون 100 جرام",
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                     "groupId": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                     "key": "extra_protein_50g"
flutter: ║                                     "name": "إضافة بروتين",
flutter: ║                                     "nameI18n": {ar: إضافة بروتين, en: Extra Protein},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2136d16c0fcd5fd3736f34"
flutter: ║                                             "optionId": "6a2136d16c0fcd5fd3736f34"
flutter: ║                                             "groupId": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                             "key": "extra_salmon_50g"
flutter: ║                                             "name": "زيادة 50 جرام سالمون"
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
flutter: ║                             "id": "6a21374d6c0fcd5fd3737331",
flutter: ║                             "key": "shrimp_meal_100g",
flutter: ║                             "categoryId": "6a2136ad6c0fcd5fd3736e0a",
flutter: ║                             "name": "وجبة جمبري 100 جرام",
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                     "groupId": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                     "key": "extra_protein_50g"
flutter: ║                                     "name": "إضافة بروتين",
flutter: ║                                     "nameI18n": {ar: إضافة بروتين, en: Extra Protein},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2136d16c0fcd5fd3736f37"
flutter: ║                                             "optionId": "6a2136d16c0fcd5fd3736f37"
flutter: ║                                             "groupId": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                             "key": "extra_shrimp_50g"
flutter: ║                                             "name": "زيادة 50 جرام جمبري"
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
flutter: ║                             "id": "6a21374e6c0fcd5fd373733a",
flutter: ║                             "key": "chicken_fajita_meal_100g",
flutter: ║                             "categoryId": "6a2136ad6c0fcd5fd3736e0a",
flutter: ║                             "name": "وجبة دجاج فاهيتا 100 جرام",
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                     "groupId": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                     "key": "extra_protein_50g"
flutter: ║                                     "name": "إضافة بروتين",
flutter: ║                                     "nameI18n": {ar: إضافة بروتين, en: Extra Protein},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2136d26c0fcd5fd3736f3a"
flutter: ║                                             "optionId": "6a2136d26c0fcd5fd3736f3a"
flutter: ║                                             "groupId": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                             "key": "extra_chicken_fajita_50g"
flutter: ║                                             "name": "زيادة 50 جرام دجاج فاهيتا"
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
flutter: ║                             "id": "6a21374f6c0fcd5fd3737343",
flutter: ║                             "key": "beef_stroganoff_meal_100g",
flutter: ║                             "categoryId": "6a2136ad6c0fcd5fd3736e0a",
flutter: ║                             "name": "وجبة لحم استرغانوف 100 جرام",
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                     "groupId": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                     "key": "extra_protein_50g"
flutter: ║                                     "name": "إضافة بروتين",
flutter: ║                                     "nameI18n": {ar: إضافة بروتين, en: Extra Protein},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2136d26c0fcd5fd3736f3d"
flutter: ║                                             "optionId": "6a2136d26c0fcd5fd3736f3d"
flutter: ║                                             "groupId": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                             "key": "extra_beef_stroganoff_50g"
flutter: ║                                             "name": "زيادة 50 جرام لحم استرغانوف"
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
flutter: ║                             "id": "6a2137506c0fcd5fd373734c",
flutter: ║                             "key": "mexican_chicken_meal_100g",
flutter: ║                             "categoryId": "6a2136ad6c0fcd5fd3736e0a",
flutter: ║                             "name": "وجبة دجاج مكسيكي 100 جرام",
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                     "groupId": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                     "key": "extra_protein_50g"
flutter: ║                                     "name": "إضافة بروتين",
flutter: ║                                     "nameI18n": {ar: إضافة بروتين, en: Extra Protein},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2136d26c0fcd5fd3736f40"
flutter: ║                                             "optionId": "6a2136d26c0fcd5fd3736f40"
flutter: ║                                             "groupId": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                             "key": "extra_mexican_chicken_50g"
flutter: ║                                             "name": "زيادة 50 جرام دجاج مكسيكي"
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
flutter: ║                             "id": "6a2137516c0fcd5fd3737355",
flutter: ║                             "key": "grilled_chicken_meal_100g",
flutter: ║                             "categoryId": "6a2136ad6c0fcd5fd3736e0a",
flutter: ║                             "name": "وجبة دجاج مشوي 100 جرام",
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                     "groupId": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                     "key": "extra_protein_50g"
flutter: ║                                     "name": "إضافة بروتين",
flutter: ║                                     "nameI18n": {ar: إضافة بروتين, en: Extra Protein},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2136d36c0fcd5fd3736f43"
flutter: ║                                             "optionId": "6a2136d36c0fcd5fd3736f43"
flutter: ║                                             "groupId": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                             "key": "extra_grilled_chicken_50g"
flutter: ║                                             "name": "زيادة 50 جرام دجاج مشوي"
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
flutter: ║                             "id": "6a2137526c0fcd5fd373735e",
flutter: ║                             "key": "asian_chicken_meal_100g",
flutter: ║                             "categoryId": "6a2136ad6c0fcd5fd3736e0a",
flutter: ║                             "name": "وجبة دجاج آسيوي 100 جرام",
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                     "groupId": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                     "key": "extra_protein_50g"
flutter: ║                                     "name": "إضافة بروتين",
flutter: ║                                     "nameI18n": {ar: إضافة بروتين, en: Extra Protein},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2136d36c0fcd5fd3736f46"
flutter: ║                                             "optionId": "6a2136d36c0fcd5fd3736f46"
flutter: ║                                             "groupId": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                             "key": "extra_asian_chicken_50g"
flutter: ║                                             "name": "زيادة 50 جرام دجاج آسيوي"
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
flutter: ║                             "id": "6a2137546c0fcd5fd3737367",
flutter: ║                             "key": "chicken_tikka_meal_100g",
flutter: ║                             "categoryId": "6a2136ad6c0fcd5fd3736e0a",
flutter: ║                             "name": "وجبة دجاج تكا 100 جرام",
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                     "groupId": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                     "key": "extra_protein_50g"
flutter: ║                                     "name": "إضافة بروتين",
flutter: ║                                     "nameI18n": {ar: إضافة بروتين, en: Extra Protein},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2136d36c0fcd5fd3736f49"
flutter: ║                                             "optionId": "6a2136d36c0fcd5fd3736f49"
flutter: ║                                             "groupId": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                             "key": "extra_chicken_tikka_50g"
flutter: ║                                             "name": "زيادة 50 جرام دجاج تكا"
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
flutter: ║                             "id": "6a2137556c0fcd5fd3737370",
flutter: ║                             "key": "italian_spiced_chicken_meal_100g",
flutter: ║                             "categoryId": "6a2136ad6c0fcd5fd3736e0a",
flutter: ║                             "name": "وجبة دجاج توابل إيطالية 100 جرام",
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                     "groupId": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                     "key": "extra_protein_50g"
flutter: ║                                     "name": "إضافة بروتين",
flutter: ║                                     "nameI18n": {ar: إضافة بروتين, en: Extra Protein},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2136d46c0fcd5fd3736f4c"
flutter: ║                                             "optionId": "6a2136d46c0fcd5fd3736f4c"
flutter: ║                                             "groupId": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                             "key": "extra_italian_spiced_chicken_50g"
flutter: ║                                             "name": "زيادة 50 جرام دجاج توابل إيطالية"
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
flutter: ║                             "id": "6a2137556c0fcd5fd3737379",
flutter: ║                             "key": "spicy_chicken_meal_100g",
flutter: ║                             "categoryId": "6a2136ad6c0fcd5fd3736e0a",
flutter: ║                             "name": "وجبة دجاج سبايسي 100 جرام",
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                     "groupId": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                     "key": "extra_protein_50g"
flutter: ║                                     "name": "إضافة بروتين",
flutter: ║                                     "nameI18n": {ar: إضافة بروتين, en: Extra Protein},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2136d46c0fcd5fd3736f4f"
flutter: ║                                             "optionId": "6a2136d46c0fcd5fd3736f4f"
flutter: ║                                             "groupId": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                             "key": "extra_spicy_chicken_50g"
flutter: ║                                             "name": "زيادة 50 جرام دجاج سبايسي"
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
flutter: ║                             "id": "6a2137566c0fcd5fd3737382",
flutter: ║                             "key": "creamy_chicken_meal_100g",
flutter: ║                             "categoryId": "6a2136ad6c0fcd5fd3736e0a",
flutter: ║                             "name": "وجبة دجاج كريمة 100 جرام",
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                     "groupId": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                     "key": "extra_protein_50g"
flutter: ║                                     "name": "إضافة بروتين",
flutter: ║                                     "nameI18n": {ar: إضافة بروتين, en: Extra Protein},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2136d46c0fcd5fd3736f52"
flutter: ║                                             "optionId": "6a2136d46c0fcd5fd3736f52"
flutter: ║                                             "groupId": "6a2136d06c0fcd5fd3736f2b"
flutter: ║                                             "key": "extra_creamy_chicken_50g"
flutter: ║                                             "name": "زيادة 50 جرام دجاج كريمة"
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
flutter: ║                             "id": "6a2137576c0fcd5fd373738b",
flutter: ║                             "key": "chicken_okra_meal",
flutter: ║                             "categoryId": "6a2136ad6c0fcd5fd3736e0a",
flutter: ║                             "name": "وجبة دجاج بالبامية",
flutter: ║                             "nameI18n": {ar: وجبة دجاج بالبامية, en: Chicken Okra Meal},
flutter: ║                             "description": "طعم البيت الأصيل بلمسة صحية خفيفة، قطع الدجاج الطرية والغنية
flutter: ║                              بالبروتين مطهوة ببطء مع البامية الطازجة بصلصة صحية غنية بالنكه
flutter: ║                              ات."
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2137586c0fcd5fd373738e",
flutter: ║                             "key": "chicken_molokhia_meal",
flutter: ║                             "categoryId": "6a2136ad6c0fcd5fd3736e0a",
flutter: ║                             "name": "وجبة دجاج بالملوخية",
flutter: ║                             "nameI18n": {ar: وجبة دجاج بالملوخية, en: Chicken Molokhia Meal},
flutter: ║                             "description": "استمتع بنكهة صحية مختلفة دجاج مع الملوخية الخضراء اللذيذة، مح
flutter: ║                              ضرة بلمسة صحية تناسب نظامك الغذائي الصحي."
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2137586c0fcd5fd3737391",
flutter: ║                             "key": "shish_tawook_meal",
flutter: ║                             "categoryId": "6a2136ad6c0fcd5fd3736e0a",
flutter: ║                             "name": "شيش طاووق",
flutter: ║                             "nameI18n": {ar: شيش طاووق, en: Shish Tawook},
flutter: ║                             "description": "مكعبات دجاج مشوية بتتبيلة تقليدية تمنحها طراوة ونكهة مشوية غن
flutter: ║                              ية بالبروتين."
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2137596c0fcd5fd3737394",
flutter: ║                             "key": "bbq_chicken_meal",
flutter: ║                             "categoryId": "6a2136ad6c0fcd5fd3736e0a",
flutter: ║                             "name": "دجاج باربكيو",
flutter: ║                             "nameI18n": {ar: دجاج باربكيو, en: BBQ Chicken},
flutter: ║                             "description": "قطع دجاج مشوية وصحية متبلة بعناية ومغطاة بصوص باربيكيو غني بط
flutter: ║                              عم مدخن خفيف يمنحها نكهة لذيذة ومتوازنة"
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2137596c0fcd5fd3737397",
flutter: ║                             "key": "chicken_65_meal",
flutter: ║                             "categoryId": "6a2136ad6c0fcd5fd3736e0a",
flutter: ║                             "name": "دجاج 65",
flutter: ║                             "nameI18n": {ar: دجاج 65, en: Chicken 65},
flutter: ║                             "description": "قطع دجاج متبلة بتوابل مميزة بنكهة حارة بطريقة صحية ولمسة مقرم
flutter: ║                              شة بطابع هندي شهي"
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2137596c0fcd5fd373739a",
flutter: ║                             "key": "tuna_meal_100g",
flutter: ║                             "categoryId": "6a2136ad6c0fcd5fd3736e0a",
flutter: ║                             "name": "وجبة تونا 100 جرام",
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a21375a6c0fcd5fd373739d",
flutter: ║                             "key": "fish_fillet_meal_100g",
flutter: ║                             "categoryId": "6a2136ad6c0fcd5fd3736e0a",
flutter: ║                             "name": "وجبة سمك فيليه 100 جرام",
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        }
flutter: ║                     ]
flutter: ║                },
flutter: ║                {
flutter: ║                     "id": "6a2136ad6c0fcd5fd3736e0e",
flutter: ║                     "key": "carbs",
flutter: ║                     "name": "الكارب",
flutter: ║                     "nameI18n": {ar: الكارب, en: Carbs},
flutter: ║                     "description": "",
flutter: ║                     "descriptionI18n": {ar: , en: },
flutter: ║                     "imageUrl": "",
flutter: ║                     "sortOrder": 30,
flutter: ║                     "ui": {cardVariant: light_collection},
flutter: ║                     "products": [
flutter: ║                        {
flutter: ║                             "id": "6a21375a6c0fcd5fd37373a0",
flutter: ║                             "key": "white_rice",
flutter: ║                             "categoryId": "6a2136ad6c0fcd5fd3736e0e",
flutter: ║                             "name": "رز أبيض من 150 جرام",
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a21375a6c0fcd5fd37373a3",
flutter: ║                             "key": "turmeric_rice",
flutter: ║                             "categoryId": "6a2136ad6c0fcd5fd3736e0e",
flutter: ║                             "name": "رز بالكركم من 150 جرام",
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a21375a6c0fcd5fd37373a6",
flutter: ║                             "key": "alfredo_pasta",
flutter: ║                             "categoryId": "6a2136ad6c0fcd5fd3736e0e",
flutter: ║                             "name": "باستا الفريدو 150 جرام",
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a21375b6c0fcd5fd37373a9",
flutter: ║                             "key": "red_sauce_pasta",
flutter: ║                             "categoryId": "6a2136ad6c0fcd5fd3736e0e",
flutter: ║                             "name": "باستا صوص احمر 150 جرام",
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a21375b6c0fcd5fd37373ac",
flutter: ║                             "key": "roasted_potato",
flutter: ║                             "categoryId": "6a2136ad6c0fcd5fd3736e0e",
flutter: ║                             "name": "بطاطا مشوية 150 جرام",
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a21375b6c0fcd5fd37373af",
flutter: ║                             "key": "sweet_potato",
flutter: ║                             "categoryId": "6a2136ad6c0fcd5fd3736e0e",
flutter: ║                             "name": "بطاطا حلوة 150 جرام",
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a21375c6c0fcd5fd37373b2",
flutter: ║                             "key": "grilled_mixed_vegetables",
flutter: ║                             "categoryId": "6a2136ad6c0fcd5fd3736e0e",
flutter: ║                             "name": "خضار مشكلة مشوية 150 جرام",
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        }
flutter: ║                     ]
flutter: ║                },
flutter: ║                {
flutter: ║                     "id": "6a2136ad6c0fcd5fd3736e11",
flutter: ║                     "key": "light_options",
flutter: ║                     "name": "اختيارات خفيفة",
flutter: ║                     "nameI18n": {ar: اختيارات خفيفة, en: Light Options},
flutter: ║                     "description": "",
flutter: ║                     "descriptionI18n": {ar: , en: },
flutter: ║                     "imageUrl": "",
flutter: ║                     "sortOrder": 40,
flutter: ║                     "ui": {cardVariant: light_collection},
flutter: ║                     "products": [
flutter: ║                        {
flutter: ║                             "id": "6a2137276c0fcd5fd37371ff",
flutter: ║                             "key": "green_salad",
flutter: ║                             "categoryId": "6a2136ad6c0fcd5fd3736e11",
flutter: ║                             "name": "سلطة خضراء - 100 جرام",
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2136bc6c0fcd5fd3736e86"
flutter: ║                                     "groupId": "6a2136bc6c0fcd5fd3736e86"
flutter: ║                                     "key": "leafy_greens",
flutter: ║                                     "name": "ورقيات",
flutter: ║                                     "nameI18n": {ar: ورقيات, en: Leafy Greens},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 2,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2136bc6c0fcd5fd3736e89"
flutter: ║                                             "optionId": "6a2136bc6c0fcd5fd3736e89"
flutter: ║                                             "groupId": "6a2136bc6c0fcd5fd3736e86"
flutter: ║                                             "key": "lettuce"
flutter: ║                                             "name": "خس"
flutter: ║                                             "nameI18n": {ar: خس, en: Lettuce},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136bc6c0fcd5fd3736e8c"
flutter: ║                                             "optionId": "6a2136bc6c0fcd5fd3736e8c"
flutter: ║                                             "groupId": "6a2136bc6c0fcd5fd3736e86"
flutter: ║                                             "key": "arugula"
flutter: ║                                             "name": "جرجير"
flutter: ║                                             "nameI18n": {ar: جرجير, en: Arugula},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 20
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136bd6c0fcd5fd3736e8f"
flutter: ║                                             "optionId": "6a2136bd6c0fcd5fd3736e8f"
flutter: ║                                             "groupId": "6a2136bc6c0fcd5fd3736e86"
flutter: ║                                             "key": "cabbage"
flutter: ║                                             "name": "ملفوف"
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
flutter: ║                                     "id": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                     "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                     "key": "vegetables_legumes"
flutter: ║                                     "name": "خضراوات وبقوليات",
flutter: ║                                     "nameI18n": {ar: خضراوات وبقوليات, en: Vegetables & Legumes},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 19,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 20,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2136be6c0fcd5fd3736e98"
flutter: ║                                             "optionId": "6a2136be6c0fcd5fd3736e98"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "tomato"
flutter: ║                                             "name": "طماطم"
flutter: ║                                             "nameI18n": {ar: طماطم, en: Tomato},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136be6c0fcd5fd3736e9b"
flutter: ║                                             "optionId": "6a2136be6c0fcd5fd3736e9b"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "carrot"
flutter: ║                                             "name": "جزر"
flutter: ║                                             "nameI18n": {ar: جزر, en: Carrot},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 20
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136bf6c0fcd5fd3736e9e"
flutter: ║                                             "optionId": "6a2136bf6c0fcd5fd3736e9e"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "cucumber"
flutter: ║                                             "name": "خيار"
flutter: ║                                             "nameI18n": {ar: خيار, en: Cucumber},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 30
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136bf6c0fcd5fd3736ea1"
flutter: ║                                             "optionId": "6a2136bf6c0fcd5fd3736ea1"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "corn"
flutter: ║                                             "name": "ذرة"
flutter: ║                                             "nameI18n": {ar: ذرة, en: Corn},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 40
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136bf6c0fcd5fd3736ea4"
flutter: ║                                             "optionId": "6a2136bf6c0fcd5fd3736ea4"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "hummus"
flutter: ║                                             "name": "حمص"
flutter: ║                                             "nameI18n": {ar: حمص, en: Hummus},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 50
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c06c0fcd5fd3736ea7"
flutter: ║                                             "optionId": "6a2136c06c0fcd5fd3736ea7"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "jalapeno"
flutter: ║                                             "name": "هالبينو"
flutter: ║                                             "nameI18n": {ar: هالبينو, en: Jalapeno},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 60
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c06c0fcd5fd3736eaa"
flutter: ║                                             "optionId": "6a2136c06c0fcd5fd3736eaa"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "red_beans"
flutter: ║                                             "name": "فاصوليا حمراء"
flutter: ║                                             "nameI18n": {ar: فاصوليا حمراء, en: Red Beans},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 70
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c06c0fcd5fd3736ead"
flutter: ║                                             "optionId": "6a2136c06c0fcd5fd3736ead"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "beetroot"
flutter: ║                                             "name": "بنجر"
flutter: ║                                             "nameI18n": {ar: بنجر, en: Beetroot},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 80
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c16c0fcd5fd3736eb0"
flutter: ║                                             "optionId": "6a2136c16c0fcd5fd3736eb0"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "hot_pepper"
flutter: ║                                             "name": "فلفل حار"
flutter: ║                                             "nameI18n": {ar: فلفل حار, en: Hot Pepper},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 90
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c16c0fcd5fd3736eb3"
flutter: ║                                             "optionId": "6a2136c16c0fcd5fd3736eb3"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "coriander"
flutter: ║                                             "name": "كزبرة"
flutter: ║                                             "nameI18n": {ar: كزبرة, en: Coriander},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 100
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c26c0fcd5fd3736eb6"
flutter: ║                                             "optionId": "6a2136c26c0fcd5fd3736eb6"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "mushroom"
flutter: ║                                             "name": "فطر"
flutter: ║                                             "nameI18n": {ar: فطر, en: Mushroom},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 110
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c26c0fcd5fd3736eb9"
flutter: ║                                             "optionId": "6a2136c26c0fcd5fd3736eb9"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "broccoli"
flutter: ║                                             "name": "بروكلي"
flutter: ║                                             "nameI18n": {ar: بروكلي, en: Broccoli},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 120
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c26c0fcd5fd3736ebc"
flutter: ║                                             "optionId": "6a2136c26c0fcd5fd3736ebc"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "salad_grilled_mixed_vegetables"
flutter: ║                                             "name": "خضار مشكل مشوي"
flutter: ║                                             "nameI18n": {ar: خضار مشكل مشوي, en: Grilled Mixed Vegetables},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 130
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c36c0fcd5fd3736ebf"
flutter: ║                                             "optionId": "6a2136c36c0fcd5fd3736ebf"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "red_onion"
flutter: ║                                             "name": "بصل احمر"
flutter: ║                                             "nameI18n": {ar: بصل احمر, en: Red Onion},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 140
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c36c0fcd5fd3736ec2"
flutter: ║                                             "optionId": "6a2136c36c0fcd5fd3736ec2"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "green_onion"
flutter: ║                                             "name": "بصل اخضر"
flutter: ║                                             "nameI18n": {ar: بصل اخضر, en: Green Onion},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 150
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c36c0fcd5fd3736ec5"
flutter: ║                                             "optionId": "6a2136c36c0fcd5fd3736ec5"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "green_olives"
flutter: ║                                             "name": "زيتون اخضر"
flutter: ║                                             "nameI18n": {ar: زيتون اخضر, en: Green Olives},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 160
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c46c0fcd5fd3736ec8"
flutter: ║                                             "optionId": "6a2136c46c0fcd5fd3736ec8"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "black_olives"
flutter: ║                                             "name": "زيتون اسود"
flutter: ║                                             "nameI18n": {ar: زيتون اسود, en: Black Olives},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 170
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c46c0fcd5fd3736ecb"
flutter: ║                                             "optionId": "6a2136c46c0fcd5fd3736ecb"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "mint"
flutter: ║                                             "name": "نعناع"
flutter: ║                                             "nameI18n": {ar: نعناع, en: Mint},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 180
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c46c0fcd5fd3736ece"
flutter: ║                                             "optionId": "6a2136c46c0fcd5fd3736ece"
flutter: ║                                             "groupId": "6a2136bd6c0fcd5fd3736e95"
flutter: ║                                             "key": "pickled_onion"
flutter: ║                                             "name": "بصل مخلل"
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
flutter: ║                                     "id": "6a2136cb6c0fcd5fd3736f0a"
flutter: ║                                     "groupId": "6a2136cb6c0fcd5fd3736f0a"
flutter: ║                                     "key": "sauces",
flutter: ║                                     "name": "الصوصات",
flutter: ║                                     "nameI18n": {ar: الصوصات, en: Sauces},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 30,
flutter: ║                                     "ui": {displayStyle: radio_cards},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2136cc6c0fcd5fd3736f0d"
flutter: ║                                             "optionId": "6a2136cc6c0fcd5fd3736f0d"
flutter: ║                                             "groupId": "6a2136cb6c0fcd5fd3736f0a"
flutter: ║                                             "key": "ranch"
flutter: ║                                             "name": "رانش"
flutter: ║                                             "nameI18n": {ar: رانش, en: Ranch},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136cc6c0fcd5fd3736f10"
flutter: ║                                             "optionId": "6a2136cc6c0fcd5fd3736f10"
flutter: ║                                             "groupId": "6a2136cb6c0fcd5fd3736f0a"
flutter: ║                                             "key": "spicy_ranch"
flutter: ║                                             "name": "سبايسي رانش"
flutter: ║                                             "nameI18n": {ar: سبايسي رانش, en: Spicy Ranch},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 20
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136cd6c0fcd5fd3736f13"
flutter: ║                                             "optionId": "6a2136cd6c0fcd5fd3736f13"
flutter: ║                                             "groupId": "6a2136cb6c0fcd5fd3736f0a"
flutter: ║                                             "key": "pesto_sauce"
flutter: ║                                             "name": "صوص بيستو"
flutter: ║                                             "nameI18n": {ar: صوص بيستو, en: Pesto Sauce},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 30
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136cd6c0fcd5fd3736f16"
flutter: ║                                             "optionId": "6a2136cd6c0fcd5fd3736f16"
flutter: ║                                             "groupId": "6a2136cb6c0fcd5fd3736f0a"
flutter: ║                                             "key": "balsamic"
flutter: ║                                             "name": "بالسميك"
flutter: ║                                             "nameI18n": {ar: بالسميك, en: Balsamic},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 40
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136cd6c0fcd5fd3736f19"
flutter: ║                                             "optionId": "6a2136cd6c0fcd5fd3736f19"
flutter: ║                                             "groupId": "6a2136cb6c0fcd5fd3736f0a"
flutter: ║                                             "key": "caesar"
flutter: ║                                             "name": "سيزر"
flutter: ║                                             "nameI18n": {ar: سيزر, en: Caesar},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 50
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136ce6c0fcd5fd3736f1c"
flutter: ║                                             "optionId": "6a2136ce6c0fcd5fd3736f1c"
flutter: ║                                             "groupId": "6a2136cb6c0fcd5fd3736f0a"
flutter: ║                                             "key": "honey_mustard"
flutter: ║                                             "name": "هاني ماستر"
flutter: ║                                             "nameI18n": {ar: هاني ماستر, en: Honey Mustard},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 60
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136ce6c0fcd5fd3736f1f"
flutter: ║                                             "optionId": "6a2136ce6c0fcd5fd3736f1f"
flutter: ║                                             "groupId": "6a2136cb6c0fcd5fd3736f0a"
flutter: ║                                             "key": "yogurt_mint"
flutter: ║                                             "name": "زبادي بالنعناع"
flutter: ║                                             "nameI18n": {ar: زبادي بالنعناع, en: Yogurt Mint},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 70
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136ce6c0fcd5fd3736f22"
flutter: ║                                             "optionId": "6a2136ce6c0fcd5fd3736f22"
flutter: ║                                             "groupId": "6a2136cb6c0fcd5fd3736f0a"
flutter: ║                                             "key": "honey_garlic"
flutter: ║                                             "name": "عسل بالثوم"
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
flutter: ║                             "id": "6a2137346c0fcd5fd3737265",
flutter: ║                             "key": "fruit_salad",
flutter: ║                             "categoryId": "6a2136ad6c0fcd5fd3736e11",
flutter: ║                             "name": "سلطة فواكه – 150 جرام",
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                     "groupId": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                     "key": "fruits",
flutter: ║                                     "name": "فواكه",
flutter: ║                                     "nameI18n": {ar: فواكه, en: Fruits},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 9,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c86c0fcd5fd3736eec"
flutter: ║                                             "optionId": "6a2136c86c0fcd5fd3736eec"
flutter: ║                                             "groupId": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                             "key": "mango"
flutter: ║                                             "name": "مانجا"
flutter: ║                                             "nameI18n": {ar: مانجا, en: Mango},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c86c0fcd5fd3736eef"
flutter: ║                                             "optionId": "6a2136c86c0fcd5fd3736eef"
flutter: ║                                             "groupId": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                             "key": "green_apple"
flutter: ║                                             "name": "تفاح اخضر"
flutter: ║                                             "nameI18n": {ar: تفاح اخضر, en: Green Apple},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 20
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c96c0fcd5fd3736ef2"
flutter: ║                                             "optionId": "6a2136c96c0fcd5fd3736ef2"
flutter: ║                                             "groupId": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                             "key": "pomegranate"
flutter: ║                                             "name": "رمان"
flutter: ║                                             "nameI18n": {ar: رمان, en: Pomegranate},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 30
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c96c0fcd5fd3736ef5"
flutter: ║                                             "optionId": "6a2136c96c0fcd5fd3736ef5"
flutter: ║                                             "groupId": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                             "key": "strawberry"
flutter: ║                                             "name": "فراولة"
flutter: ║                                             "nameI18n": {ar: فراولة, en: Strawberry},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 40
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136ca6c0fcd5fd3736ef8"
flutter: ║                                             "optionId": "6a2136ca6c0fcd5fd3736ef8"
flutter: ║                                             "groupId": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                             "key": "blueberry"
flutter: ║                                             "name": "توت ازرق"
flutter: ║                                             "nameI18n": {ar: توت ازرق, en: Blueberry},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 50
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136ca6c0fcd5fd3736efb"
flutter: ║                                             "optionId": "6a2136ca6c0fcd5fd3736efb"
flutter: ║                                             "groupId": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                             "key": "raspberry"
flutter: ║                                             "name": "توت احمر"
flutter: ║                                             "nameI18n": {ar: توت احمر, en: Raspberry},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 60
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136ca6c0fcd5fd3736efe"
flutter: ║                                             "optionId": "6a2136ca6c0fcd5fd3736efe"
flutter: ║                                             "groupId": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                             "key": "watermelon"
flutter: ║                                             "name": "بطيخ"
flutter: ║                                             "nameI18n": {ar: بطيخ, en: Watermelon},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 70
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136ca6c0fcd5fd3736f01"
flutter: ║                                             "optionId": "6a2136ca6c0fcd5fd3736f01"
flutter: ║                                             "groupId": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                             "key": "cantaloupe"
flutter: ║                                             "name": "شمام"
flutter: ║                                             "nameI18n": {ar: شمام, en: Cantaloupe},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 80
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136cb6c0fcd5fd3736f04"
flutter: ║                                             "optionId": "6a2136cb6c0fcd5fd3736f04"
flutter: ║                                             "groupId": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                             "key": "dates"
flutter: ║                                             "name": "تمر"
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
flutter: ║                                     "id": "6a2136cb6c0fcd5fd3736f0a"
flutter: ║                                     "groupId": "6a2136cb6c0fcd5fd3736f0a"
flutter: ║                                     "key": "sauces",
flutter: ║                                     "name": "الصوصات",
flutter: ║                                     "nameI18n": {ar: الصوصات, en: Sauces},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 20,
flutter: ║                                     "ui": {displayStyle: radio_cards},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2136cf6c0fcd5fd3736f25"
flutter: ║                                             "optionId": "6a2136cf6c0fcd5fd3736f25"
flutter: ║                                             "groupId": "6a2136cb6c0fcd5fd3736f0a"
flutter: ║                                             "key": "honey"
flutter: ║                                             "name": "عسل"
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
flutter: ║                             "id": "6a2137396c0fcd5fd373728c",
flutter: ║                             "key": "greek_yogurt",
flutter: ║                             "categoryId": "6a2136ad6c0fcd5fd3736e11",
flutter: ║                             "name": "زبادي يوناني - 200 جرام",
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": true,
flutter: ║                             "canAddDirectly": false,
flutter: ║                             "optionGroups": [
flutter: ║                                {
flutter: ║                                     "id": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                     "groupId": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                     "key": "fruits",
flutter: ║                                     "name": "فواكه",
flutter: ║                                     "nameI18n": {ar: فواكه, en: Fruits},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 5,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 10,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c86c0fcd5fd3736eec"
flutter: ║                                             "optionId": "6a2136c86c0fcd5fd3736eec"
flutter: ║                                             "groupId": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                             "key": "mango"
flutter: ║                                             "name": "مانجا"
flutter: ║                                             "nameI18n": {ar: مانجا, en: Mango},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c86c0fcd5fd3736eef"
flutter: ║                                             "optionId": "6a2136c86c0fcd5fd3736eef"
flutter: ║                                             "groupId": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                             "key": "green_apple"
flutter: ║                                             "name": "تفاح اخضر"
flutter: ║                                             "nameI18n": {ar: تفاح اخضر, en: Green Apple},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 20
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c96c0fcd5fd3736ef2"
flutter: ║                                             "optionId": "6a2136c96c0fcd5fd3736ef2"
flutter: ║                                             "groupId": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                             "key": "pomegranate"
flutter: ║                                             "name": "رمان"
flutter: ║                                             "nameI18n": {ar: رمان, en: Pomegranate},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 30
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c96c0fcd5fd3736ef5"
flutter: ║                                             "optionId": "6a2136c96c0fcd5fd3736ef5"
flutter: ║                                             "groupId": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                             "key": "strawberry"
flutter: ║                                             "name": "فراولة"
flutter: ║                                             "nameI18n": {ar: فراولة, en: Strawberry},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 40
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136ca6c0fcd5fd3736ef8"
flutter: ║                                             "optionId": "6a2136ca6c0fcd5fd3736ef8"
flutter: ║                                             "groupId": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                             "key": "blueberry"
flutter: ║                                             "name": "توت ازرق"
flutter: ║                                             "nameI18n": {ar: توت ازرق, en: Blueberry},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 50
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136ca6c0fcd5fd3736efb"
flutter: ║                                             "optionId": "6a2136ca6c0fcd5fd3736efb"
flutter: ║                                             "groupId": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                             "key": "raspberry"
flutter: ║                                             "name": "توت احمر"
flutter: ║                                             "nameI18n": {ar: توت احمر, en: Raspberry},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 60
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136ca6c0fcd5fd3736efe"
flutter: ║                                             "optionId": "6a2136ca6c0fcd5fd3736efe"
flutter: ║                                             "groupId": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                             "key": "watermelon"
flutter: ║                                             "name": "بطيخ"
flutter: ║                                             "nameI18n": {ar: بطيخ, en: Watermelon},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 70
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136ca6c0fcd5fd3736f01"
flutter: ║                                             "optionId": "6a2136ca6c0fcd5fd3736f01"
flutter: ║                                             "groupId": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                             "key": "cantaloupe"
flutter: ║                                             "name": "شمام"
flutter: ║                                             "nameI18n": {ar: شمام, en: Cantaloupe},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 80
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136cb6c0fcd5fd3736f04"
flutter: ║                                             "optionId": "6a2136cb6c0fcd5fd3736f04"
flutter: ║                                             "groupId": "6a2136c86c0fcd5fd3736ee9"
flutter: ║                                             "key": "dates"
flutter: ║                                             "name": "تمر"
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
flutter: ║                                     "id": "6a2136cb6c0fcd5fd3736f0a"
flutter: ║                                     "groupId": "6a2136cb6c0fcd5fd3736f0a"
flutter: ║                                     "key": "sauces",
flutter: ║                                     "name": "الصوصات",
flutter: ║                                     "nameI18n": {ar: الصوصات, en: Sauces},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 1,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 20,
flutter: ║                                     "ui": {displayStyle: radio_cards},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2136cf6c0fcd5fd3736f25"
flutter: ║                                             "optionId": "6a2136cf6c0fcd5fd3736f25"
flutter: ║                                             "groupId": "6a2136cb6c0fcd5fd3736f0a"
flutter: ║                                             "key": "honey"
flutter: ║                                             "name": "عسل"
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
flutter: ║                                     "id": "6a2136c56c0fcd5fd3736ed1"
flutter: ║                                     "groupId": "6a2136c56c0fcd5fd3736ed1"
flutter: ║                                     "key": "cheese_nuts",
flutter: ║                                     "name": "الاجبان و المكسرات"
flutter: ║                                     "nameI18n": {ar: الاجبان و المكسرات, en: Cheese & Nuts},
flutter: ║                                     "minSelections": 0,
flutter: ║                                     "maxSelections": 3,
flutter: ║                                     "isRequired": false,
flutter: ║                                     "sortOrder": 30,
flutter: ║                                     "ui": {displayStyle: checkbox_grid},
flutter: ║                                     "options": [
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c56c0fcd5fd3736ed4"
flutter: ║                                             "optionId": "6a2136c56c0fcd5fd3736ed4"
flutter: ║                                             "groupId": "6a2136c56c0fcd5fd3736ed1"
flutter: ║                                             "key": "cashew"
flutter: ║                                             "name": "كاجو"
flutter: ║                                             "nameI18n": {ar: كاجو, en: Cashew},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 10
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c66c0fcd5fd3736ed7"
flutter: ║                                             "optionId": "6a2136c66c0fcd5fd3736ed7"
flutter: ║                                             "groupId": "6a2136c56c0fcd5fd3736ed1"
flutter: ║                                             "key": "walnut"
flutter: ║                                             "name": "عين الجمل"
flutter: ║                                             "nameI18n": {ar: عين الجمل, en: Walnut},
flutter: ║                                             "imageUrl": "",
flutter: ║                                             "extraPriceHalala": 0,
flutter: ║                                             "extraWeightUnitGrams": 0,
flutter: ║                                             "extraWeightPriceHalala": 0,
flutter: ║                                             "sortOrder": 20
flutter: ║                                        },
flutter: ║                                        {
flutter: ║                                             "id": "6a2136c66c0fcd5fd3736eda"
flutter: ║                                             "optionId": "6a2136c66c0fcd5fd3736eda"
flutter: ║                                             "groupId": "6a2136c56c0fcd5fd3736ed1"
flutter: ║                                             "key": "sesame"
flutter: ║                                             "name": "سمسم"
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
flutter: ║                     "id": "6a2136ae6c0fcd5fd3736e14",
flutter: ║                     "key": "cold_sandwiches",
flutter: ║                     "name": "الساندويتش البارد",
flutter: ║                     "nameI18n": {ar: الساندويتش البارد, en: Cold Sandwiches},
flutter: ║                     "description": "",
flutter: ║                     "descriptionI18n": {ar: , en: },
flutter: ║                     "imageUrl": "",
flutter: ║                     "sortOrder": 50,
flutter: ║                     "ui": {cardVariant: sandwich_collection},
flutter: ║                     "products": [
flutter: ║                        {
flutter: ║                             "id": "6a2137406c0fcd5fd37372c5",
flutter: ║                             "key": "beef_burger_sandwich",
flutter: ║                             "categoryId": "6a2136ae6c0fcd5fd3736e14",
flutter: ║                             "name": "برجر لحم",
flutter: ║                             "nameI18n": {ar: برجر لحم, en: Beef Burger},
flutter: ║                             "description": "شريحة لحم مشوية وغنية بالعصارة، داخل خبز البرجر الصحي مع الخض
flutter: ║                              ار الطازجة والجبن الخالي من الدسم. الوجبة المثالية لتستمتع بطع
flutter: ║                              م البرجر الكلاسيكي وتحافظ على نظامك الصحي في نفس الوقت."
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2137406c0fcd5fd37372c8",
flutter: ║                             "key": "turkey_cold_sandwich",
flutter: ║                             "categoryId": "6a2136ae6c0fcd5fd3736e14",
flutter: ║                             "name": "تركي",
flutter: ║                             "nameI18n": {ar: تركي, en: Turkey},
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
flutter: ║                             "sortOrder": 110,
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2137406c0fcd5fd37372cb",
flutter: ║                             "key": "boiled_egg_cold_sandwich",
flutter: ║                             "categoryId": "6a2136ae6c0fcd5fd3736e14",
flutter: ║                             "name": "بيض مسلوق",
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2137416c0fcd5fd37372ce",
flutter: ║                             "key": "tuna_cold_sandwich",
flutter: ║                             "categoryId": "6a2136ae6c0fcd5fd3736e14",
flutter: ║                             "name": "تونا",
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2137416c0fcd5fd37372d1",
flutter: ║                             "key": "scrambled_egg_cold_sandwich",
flutter: ║                             "categoryId": "6a2136ae6c0fcd5fd3736e14",
flutter: ║                             "name": "بيض مخفوق",
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2137426c0fcd5fd37372d4",
flutter: ║                             "key": "classic_halloumi_cold_sandwich",
flutter: ║                             "categoryId": "6a2136ae6c0fcd5fd3736e14",
flutter: ║                             "name": "حلوم كلاسيك",
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2137426c0fcd5fd37372d7",
flutter: ║                             "key": "chicken_fajita_cold_sandwich",
flutter: ║                             "categoryId": "6a2136ae6c0fcd5fd3736e14",
flutter: ║                             "name": "دجاج فاهيتا",
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2137426c0fcd5fd37372da",
flutter: ║                             "key": "mexican_chicken_cold_sandwich",
flutter: ║                             "categoryId": "6a2136ae6c0fcd5fd3736e14",
flutter: ║                             "name": "دجاج مكسيكي",
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2137436c0fcd5fd37372dd",
flutter: ║                             "key": "grilled_chicken_cold_sandwich",
flutter: ║                             "categoryId": "6a2136ae6c0fcd5fd3736e14",
flutter: ║                             "name": "دجاج مشوي",
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
flutter: ║                             "ui": {cardVariant: standard, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        }
flutter: ║                     ]
flutter: ║                },
flutter: ║                {
flutter: ║                     "id": "6a2136ae6c0fcd5fd3736e1a",
flutter: ║                     "key": "desserts",
flutter: ║                     "name": "الحلويات",
flutter: ║                     "nameI18n": {ar: الحلويات, en: Desserts},
flutter: ║                     "description": "",
flutter: ║                     "descriptionI18n": {ar: , en: },
flutter: ║                     "imageUrl": "",
flutter: ║                     "sortOrder": 70,
flutter: ║                     "ui": {cardVariant: addon_collection},
flutter: ║                     "products": [
flutter: ║                        {
flutter: ║                             "id": "6a2137436c0fcd5fd37372e0",
flutter: ║                             "key": "orange_cake",
flutter: ║                             "categoryId": "6a2136ae6c0fcd5fd3736e1a",
flutter: ║                             "name": "كيكة البرتقال",
flutter: ║                             "nameI18n": {ar: كيكة البرتقال, en: Orange Cake},
flutter: ║                             "description": "كيكة برتقال صحية محضرة بمكونات خفيفة، بطعم برتقال طبيعي منعش
flutter: ║                              وقوام ناعم، بدون سكر."
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
flutter: ║                             "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2137436c0fcd5fd37372e3",
flutter: ║                             "key": "apple_cinnamon_muffin_2pcs",
flutter: ║                             "categoryId": "6a2136ae6c0fcd5fd3736e1a",
flutter: ║                             "name": "مافن التفاح بالقرفة قطعتين",
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
flutter: ║                             "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2137446c0fcd5fd37372e6",
flutter: ║                             "key": "berry_cheesecake",
flutter: ║                             "categoryId": "6a2136ae6c0fcd5fd3736e1a",
flutter: ║                             "name": "تشيز كيك بالتوت",
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
flutter: ║                             "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2137446c0fcd5fd37372e9",
flutter: ║                             "key": "strawberry_cheesecake",
flutter: ║                             "categoryId": "6a2136ae6c0fcd5fd3736e1a",
flutter: ║                             "name": "تشيز كيك بالفراولة",
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
flutter: ║                             "maxWeightGrams": 0,
flutter: ║                             "weightStepGrams": 50,
flutter: ║                             "sortOrder": 220,
flutter: ║                             "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2137446c0fcd5fd37372ec",
flutter: ║                             "key": "dark_brownies",
flutter: ║                             "categoryId": "6a2136ae6c0fcd5fd3736e1a",
flutter: ║                             "name": "براونيز داكن",
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
flutter: ║                             "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2137456c0fcd5fd37372ef",
flutter: ║                             "key": "protein_bar",
flutter: ║                             "categoryId": "6a2136ae6c0fcd5fd3736e1a",
flutter: ║                             "name": "بروتين بار",
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
flutter: ║                             "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2137456c0fcd5fd37372f2",
flutter: ║                             "key": "basic_classic",
flutter: ║                             "categoryId": "6a2136ae6c0fcd5fd3736e1a",
flutter: ║                             "name": "بيسك كلاسيك",
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
flutter: ║                             "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2137466c0fcd5fd37372f5",
flutter: ║                             "key": "protein_chocolate_cake",
flutter: ║                             "categoryId": "6a2136ae6c0fcd5fd3736e1a",
flutter: ║                             "name": "كيك شوكولاتة بروتين",
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
flutter: ║                             "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        }
flutter: ║                     ]
flutter: ║                },
flutter: ║                {
flutter: ║                     "id": "6a2136af6c0fcd5fd3736e1d",
flutter: ║                     "key": "juices",
flutter: ║                     "name": "العصائر",
flutter: ║                     "nameI18n": {ar: العصائر, en: Juices},
flutter: ║                     "description": "",
flutter: ║                     "descriptionI18n": {ar: , en: },
flutter: ║                     "imageUrl": "",
flutter: ║                     "sortOrder": 80,
flutter: ║                     "ui": {cardVariant: addon_collection},
flutter: ║                     "products": [
flutter: ║                        {
flutter: ║                             "id": "6a2137466c0fcd5fd37372f8",
flutter: ║                             "key": "berry_blast",
flutter: ║                             "categoryId": "6a2136af6c0fcd5fd3736e1d",
flutter: ║                             "name": "بيري بلاست",
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
flutter: ║                             "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2137466c0fcd5fd37372fb",
flutter: ║                             "key": "berry_prot",
flutter: ║                             "categoryId": "6a2136af6c0fcd5fd3736e1d",
flutter: ║                             "name": "بيري بروت",
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
flutter: ║                             "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2137476c0fcd5fd37372fe",
flutter: ║                             "key": "classic_green",
flutter: ║                             "categoryId": "6a2136af6c0fcd5fd3736e1d",
flutter: ║                             "name": "كلاسيك جرين",
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
flutter: ║                             "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2137476c0fcd5fd3737301",
flutter: ║                             "key": "beet_punch",
flutter: ║                             "categoryId": "6a2136af6c0fcd5fd3736e1d",
flutter: ║                             "name": "بيت بنش",
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
flutter: ║                             "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2137486c0fcd5fd3737304",
flutter: ║                             "key": "orange_carrot",
flutter: ║                             "categoryId": "6a2136af6c0fcd5fd3736e1d",
flutter: ║                             "name": "برتقال وجزر",
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
flutter: ║                             "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2137486c0fcd5fd3737307",
flutter: ║                             "key": "watermelon_mint",
flutter: ║                             "categoryId": "6a2136af6c0fcd5fd3736e1d",
flutter: ║                             "name": "بطيخ بالنعناع",
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
flutter: ║                             "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        }
flutter: ║                     ]
flutter: ║                },
flutter: ║                {
flutter: ║                     "id": "6a2136af6c0fcd5fd3736e20",
flutter: ║                     "key": "drinks",
flutter: ║                     "name": "المشروبات",
flutter: ║                     "nameI18n": {ar: المشروبات, en: Drinks},
flutter: ║                     "description": "",
flutter: ║                     "descriptionI18n": {ar: , en: },
flutter: ║                     "imageUrl": "",
flutter: ║                     "sortOrder": 90,
flutter: ║                     "ui": {cardVariant: addon_collection},
flutter: ║                     "products": [
flutter: ║                        {
flutter: ║                             "id": "6a2137496c0fcd5fd3737313",
flutter: ║                             "key": "protein_drink",
flutter: ║                             "categoryId": "6a2136af6c0fcd5fd3736e20",
flutter: ║                             "name": "مشروب بروتين",
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
flutter: ║                             "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a21374a6c0fcd5fd3737316",
flutter: ║                             "key": "diet_iced_tea",
flutter: ║                             "categoryId": "6a2136af6c0fcd5fd3736e20",
flutter: ║                             "name": "ايس تى دايت",
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
flutter: ║                             "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a21374a6c0fcd5fd3737319",
flutter: ║                             "key": "diet_soda",
flutter: ║                             "categoryId": "6a2136af6c0fcd5fd3736e20",
flutter: ║                             "name": "صودا دايت",
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
flutter: ║                             "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a21374a6c0fcd5fd373731c",
flutter: ║                             "key": "water",
flutter: ║                             "categoryId": "6a2136af6c0fcd5fd3736e20",
flutter: ║                             "name": "مياه عادية",
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
flutter: ║                             "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        }
flutter: ║                     ]
flutter: ║                },
flutter: ║                {
flutter: ║                     "id": "6a2136b06c0fcd5fd3736e23",
flutter: ║                     "key": "ice_cream",
flutter: ║                     "name": "الايس كريم",
flutter: ║                     "nameI18n": {ar: الايس كريم, en: Ice Cream},
flutter: ║                     "description": "",
flutter: ║                     "descriptionI18n": {ar: , en: },
flutter: ║                     "imageUrl": "",
flutter: ║                     "sortOrder": 100,
flutter: ║                     "ui": {cardVariant: addon_collection},
flutter: ║                     "products": [
flutter: ║                        {
flutter: ║                             "id": "6a2137486c0fcd5fd373730a",
flutter: ║                             "key": "vanilla_ice_cream",
flutter: ║                             "categoryId": "6a2136b06c0fcd5fd3736e23",
flutter: ║                             "name": "ايس كريم فانيليا",
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
flutter: ║                             "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2137496c0fcd5fd373730d",
flutter: ║                             "key": "chocolate_ice_cream",
flutter: ║                             "categoryId": "6a2136b06c0fcd5fd3736e23",
flutter: ║                             "name": "ايس كريم شوكولا",
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
flutter: ║                             "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square},
flutter: ║                             "requiresBuilder": false,
flutter: ║                             "canAddDirectly": true,
flutter: ║                             "optionGroups": []
flutter: ║                        },
flutter: ║                        {
flutter: ║                             "id": "6a2137496c0fcd5fd3737310",
flutter: ║                             "key": "ice_cream_addon",
flutter: ║                             "categoryId": "6a2136b06c0fcd5fd3736e23",
flutter: ║                             "name": "اضافة ايس كريم",
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
flutter: ║                             "ui": {cardVariant: addon, badge: , ctaLabel: , imageRatio: square},
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
flutter: ║                 "businessDate": "2026-06-04",
flutter: ║                 "businessTomorrow": "2026-06-05",
flutter: ║                 "fulfillmentMethod": "pickup"
flutter: ║            }
flutter: ║        }
flutter: ║    }
flutter: ║
flutter: ╚══════════════════════════════════════════════════════════════════════════════════════════╝
flutter: onChange -- MenuBloc, Change { currentState: MenuLoading(), nextState: MenuError(defaultError) }
