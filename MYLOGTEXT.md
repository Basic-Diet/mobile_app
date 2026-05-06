I/flutter ( 2077): ╔╣ Request ║ GET
I/flutter ( 2077): ║  https://basicdiet145.onrender.com/api/orders/menu
I/flutter ( 2077): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 2077): ╔ Headers
I/flutter ( 2077): ╟ accept: application/json
I/flutter ( 2077): ╟ content-type: application/json
I/flutter ( 2077): ╟ authorization:
I/flutter ( 2077): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2OWYyMzdmMjE5Mjg4ZGJjOWUxNjMxZG
I/flutter ( 2077): ║ UiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc3NzQ5MDg2NSwiZXhwIjox
I/flutter ( 2077): ║ NzgwMTY5MjY1fQ.wQdMvBRkWrYPGGrvx5HtsUbTO-B9NlayVB5uRMS4rVE
I/flutter ( 2077): ╟ Accept-Language: ar
I/flutter ( 2077): ╟ contentType: application/json
I/flutter ( 2077): ╟ responseType: ResponseType.json
I/flutter ( 2077): ╟ followRedirects: true
I/flutter ( 2077): ╟ receiveTimeout: 16:40:00.000000
I/flutter ( 2077): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 2077):
I/flutter ( 2077): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 405 ms
I/flutter ( 2077): ║  https://basicdiet145.onrender.com/api/orders/menu
I/flutter ( 2077): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 2077): ╔ Headers
I/flutter ( 2077): ╟ x-dns-prefetch-control: [off]
I/flutter ( 2077): ╟ x-render-origin-server: [Render]
I/flutter ( 2077): ╟ date: [Wed, 06 May 2026 12:00:30 GMT]
I/flutter ( 2077): ╟ transfer-encoding: [chunked]
I/flutter ( 2077): ╟ origin-agent-cluster: [?1]
I/flutter ( 2077): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 2077): ╟ content-encoding: [gzip]
I/flutter ( 2077): ╟ server: [cloudflare]
I/flutter ( 2077): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 2077): ╟ cf-ray: [9f77d32d888d12b4-MRS]
I/flutter ( 2077): ╟ etag: [W/"6239-K0ioIf9FthGqY4EaGTCFsQMgmQY"]
I/flutter ( 2077): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 2077): ╟ content-security-policy:
I/flutter ( 2077): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 2077): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 2077): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 2077): ╟ connection: [keep-alive]
I/flutter ( 2077): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 2077): ╟ referrer-policy: [no-referrer]
I/flutter ( 2077): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 2077): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 2077): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 2077): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 2077): ╟ rndr-id: [40da7fe3-20a3-49cf]
I/flutter ( 2077): ╟ x-xss-protection: [0]
I/flutter ( 2077): ╟ access-control-allow-credentials: [true]
I/flutter ( 2077): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 2077): ╟ x-download-options: [noopen]
I/flutter ( 2077): ╟ x-content-type-options: [nosniff]
I/flutter ( 2077): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 2077): ╔ Body
I/flutter ( 2077): ║
I/flutter ( 2077): ║    {
I/flutter ( 2077): ║         "status": true,
I/flutter ( 2077): ║         "data": {
I/flutter ( 2077): ║             "currency": "SAR",
I/flutter ( 2077): ║             "itemTypes": [standard_meal, sandwich, salad, addon_item]
I/flutter ( 2077): ║             "standardMeals": {
I/flutter ( 2077): ║                 "proteins": [
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1897831962803c54be731",
I/flutter ( 2077): ║                         "name": "بيض مسلوق",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 1,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "eggs",
I/flutter ( 2077): ║                         "proteinFamilyKey": "eggs",
I/flutter ( 2077): ║                         "isPremium": false,
I/flutter ( 2077): ║                         "extraFeeHalala": 0,
I/flutter ( 2077): ║                         "currency": "SAR",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1897d31962803c54be741",
I/flutter ( 2077): ║                         "name": "لحم استرغانوف",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 2,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "beef",
I/flutter ( 2077): ║                         "proteinFamilyKey": "beef",
I/flutter ( 2077): ║                         "isPremium": false,
I/flutter ( 2077): ║                         "extraFeeHalala": 0,
I/flutter ( 2077): ║                         "currency": "SAR",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1897931962803c54be736",
I/flutter ( 2077): ║                         "name": "دجاج زبدة",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 2,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "chicken",
I/flutter ( 2077): ║                         "proteinFamilyKey": "chicken",
I/flutter ( 2077): ║                         "isPremium": false,
I/flutter ( 2077): ║                         "extraFeeHalala": 0,
I/flutter ( 2077): ║                         "currency": "SAR",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1897a31962803c54be737",
I/flutter ( 2077): ║                         "name": "دجاج كريمة",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 3,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "chicken",
I/flutter ( 2077): ║                         "proteinFamilyKey": "chicken",
I/flutter ( 2077): ║                         "isPremium": false,
I/flutter ( 2077): ║                         "extraFeeHalala": 0,
I/flutter ( 2077): ║                         "currency": "SAR",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1897a31962803c54be738",
I/flutter ( 2077): ║                         "name": "دجاج كاري وجوز الهند",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 4,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "chicken",
I/flutter ( 2077): ║                         "proteinFamilyKey": "chicken",
I/flutter ( 2077): ║                         "isPremium": false,
I/flutter ( 2077): ║                         "extraFeeHalala": 0,
I/flutter ( 2077): ║                         "currency": "SAR",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1897a31962803c54be739",
I/flutter ( 2077): ║                         "name": "دجاج سبايسي",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 5,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "chicken",
I/flutter ( 2077): ║                         "proteinFamilyKey": "chicken",
I/flutter ( 2077): ║                         "isPremium": false,
I/flutter ( 2077): ║                         "extraFeeHalala": 0,
I/flutter ( 2077): ║                         "currency": "SAR",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1897b31962803c54be73a",
I/flutter ( 2077): ║                         "name": "دجاج توابل إيطالية",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 6,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "chicken",
I/flutter ( 2077): ║                         "proteinFamilyKey": "chicken",
I/flutter ( 2077): ║                         "isPremium": false,
I/flutter ( 2077): ║                         "extraFeeHalala": 0,
I/flutter ( 2077): ║                         "currency": "SAR",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1897b31962803c54be73b",
I/flutter ( 2077): ║                         "name": "دجاج تكا",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 7,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "chicken",
I/flutter ( 2077): ║                         "proteinFamilyKey": "chicken",
I/flutter ( 2077): ║                         "isPremium": false,
I/flutter ( 2077): ║                         "extraFeeHalala": 0,
I/flutter ( 2077): ║                         "currency": "SAR",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1897b31962803c54be73c",
I/flutter ( 2077): ║                         "name": "دجاج آسيوي",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 8,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "chicken",
I/flutter ( 2077): ║                         "proteinFamilyKey": "chicken",
I/flutter ( 2077): ║                         "isPremium": false,
I/flutter ( 2077): ║                         "extraFeeHalala": 0,
I/flutter ( 2077): ║                         "currency": "SAR",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1897c31962803c54be73d",
I/flutter ( 2077): ║                         "name": "استربس",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 9,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "chicken",
I/flutter ( 2077): ║                         "proteinFamilyKey": "chicken",
I/flutter ( 2077): ║                         "isPremium": false,
I/flutter ( 2077): ║                         "extraFeeHalala": 0,
I/flutter ( 2077): ║                         "currency": "SAR",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1897c31962803c54be73e",
I/flutter ( 2077): ║                         "name": "دجاج مشوي",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 10,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "chicken",
I/flutter ( 2077): ║                         "proteinFamilyKey": "chicken",
I/flutter ( 2077): ║                         "isPremium": false,
I/flutter ( 2077): ║                         "extraFeeHalala": 0,
I/flutter ( 2077): ║                         "currency": "SAR",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f188fdc48e7ad405aff5a0",
I/flutter ( 2077): ║                         "name": "ستيك لحم",
I/flutter ( 2077): ║                         "description": "ستيك لحم طري مشوي يقدم بتتبيلة غنية ولمسة مطاعم راقية."
I/flutter ( 2077): ║                         "sortOrder": 10,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "premium",
I/flutter ( 2077): ║                         "proteinFamilyKey": "beef",
I/flutter ( 2077): ║                         "isPremium": true,
I/flutter ( 2077): ║                         "extraFeeHalala": 2200,
I/flutter ( 2077): ║                         "currency": "SAR",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1897c31962803c54be73f",
I/flutter ( 2077): ║                         "name": "دجاج مكسيكي",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 11,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "chicken",
I/flutter ( 2077): ║                         "proteinFamilyKey": "chicken",
I/flutter ( 2077): ║                         "isPremium": false,
I/flutter ( 2077): ║                         "extraFeeHalala": 0,
I/flutter ( 2077): ║                         "currency": "SAR",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f188fdc48e7ad405aff5a3",
I/flutter ( 2077): ║                         "name": "سلمون",
I/flutter ( 2077): ║                         "description": "فيليه سلمون مشوي مع خضار طازجة ولمسة ليمون وأعشاب خفيفة."
I/flutter ( 2077): ║                         "sortOrder": 20,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "premium",
I/flutter ( 2077): ║                         "proteinFamilyKey": "fish",
I/flutter ( 2077): ║                         "isPremium": true,
I/flutter ( 2077): ║                         "extraFeeHalala": 2500,
I/flutter ( 2077): ║                         "currency": "SAR",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f188fdc48e7ad405aff59d",
I/flutter ( 2077): ║                         "name": "روبيان",
I/flutter ( 2077): ║                         "description": "طبق روبيان مشوي مع خضار ملونة وصوص خفيف بنكهة غنية."
I/flutter ( 2077): ║                         "sortOrder": 30,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "premium",
I/flutter ( 2077): ║                         "proteinFamilyKey": "fish",
I/flutter ( 2077): ║                         "isPremium": true,
I/flutter ( 2077): ║                         "extraFeeHalala": 2000,
I/flutter ( 2077): ║                         "currency": "SAR",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    }
I/flutter ( 2077): ║                 ],
I/flutter ( 2077): ║                 "carbs": [
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f236cf8fa6b04ccc6fbcd0",
I/flutter ( 2077): ║                         "name": "كارب غير متاح",
I/flutter ( 2077): ║                         "description": "غير متاح",
I/flutter ( 2077): ║                         "sortOrder": 0,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "standard_carbs",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f190fb1f03fdbe74c64f4f",
I/flutter ( 2077): ║                         "name": "كارب غير متاح",
I/flutter ( 2077): ║                         "description": "غير متاح",
I/flutter ( 2077): ║                         "sortOrder": 0,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "standard_carbs",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f18ffa4724d9d86bcdb0c3",
I/flutter ( 2077): ║                         "name": "كارب غير متاح",
I/flutter ( 2077): ║                         "description": "غير متاح",
I/flutter ( 2077): ║                         "sortOrder": 0,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "standard_carbs",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f02ab231962803c54b0a36",
I/flutter ( 2077): ║                         "name": "رز أبيض",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 1,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "standard_carbs",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f02ab231962803c54b0a37",
I/flutter ( 2077): ║                         "name": "رز بالكركم",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 2,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "standard_carbs",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f02ab331962803c54b0a38",
I/flutter ( 2077): ║                         "name": "رز برياني",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 3,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "standard_carbs",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f02ab331962803c54b0a39",
I/flutter ( 2077): ║                         "name": "كينوا",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 4,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "standard_carbs",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f02ab331962803c54b0a3b",
I/flutter ( 2077): ║                         "name": "باستا الفريدو",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 5,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "standard_carbs",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f02ab431962803c54b0a3c",
I/flutter ( 2077): ║                         "name": "باستا بالصوص الأحمر",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 6,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "standard_carbs",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f02ab431962803c54b0a3d",
I/flutter ( 2077): ║                         "name": "بطاطس مشوي",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 7,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "standard_carbs",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f02ab431962803c54b0a3e",
I/flutter ( 2077): ║                         "name": "بطاطا حلوة",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 8,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "standard_carbs",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f02ab531962803c54b0a3f",
I/flutter ( 2077): ║                         "name": "خضار مشكل مشوي",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 9,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "standard_carbs",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1897831962803c54be730",
I/flutter ( 2077): ║                         "name": "سلطة كبيرة مميزة",
I/flutter ( 2077): ║                         "description": "هوية مرجعية للسلطة الكبيرة المميزة",
I/flutter ( 2077): ║                         "sortOrder": 999,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "large_salad",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    }
I/flutter ( 2077): ║                 ]
I/flutter ( 2077): ║            }
I/flutter ( 2077): ║             "sandwiches": [
I/flutter ( 2077): ║                {
I/flutter ( 2077): ║                     "id": "69f3a136d960b113ace19df3",
I/flutter ( 2077): ║                     "name": "بيض مسلوق",
I/flutter ( 2077): ║                     "description": "",
I/flutter ( 2077): ║                     "sortOrder": 1,
I/flutter ( 2077): ║                     "isActive": true,
I/flutter ( 2077): ║                     "imageUrl": "",
I/flutter ( 2077): ║                     "calories": 0,
I/flutter ( 2077): ║                     "priceHalala": 0,
I/flutter ( 2077): ║                     "currency": "SAR",
I/flutter ( 2077): ║                     "proteinFamilyKey": "eggs"
I/flutter ( 2077): ║                },
I/flutter ( 2077): ║                {
I/flutter ( 2077): ║                     "id": "69f3a209d960b113ace19dfd",
I/flutter ( 2077): ║                     "name": "تركي",
I/flutter ( 2077): ║                     "description": "",
I/flutter ( 2077): ║                     "sortOrder": 2,
I/flutter ( 2077): ║                     "isActive": true,
I/flutter ( 2077): ║                     "imageUrl": "",
I/flutter ( 2077): ║                     "calories": 0,
I/flutter ( 2077): ║                     "priceHalala": 0,
I/flutter ( 2077): ║                     "currency": "SAR",
I/flutter ( 2077): ║                     "proteinFamilyKey": "other"
I/flutter ( 2077): ║                },
I/flutter ( 2077): ║                {
I/flutter ( 2077): ║                     "id": "69f3a212d960b113ace19dff",
I/flutter ( 2077): ║                     "name": "حلوم كلاسيكي",
I/flutter ( 2077): ║                     "description": "",
I/flutter ( 2077): ║                     "sortOrder": 3,
I/flutter ( 2077): ║                     "isActive": true,
I/flutter ( 2077): ║                     "imageUrl": "",
I/flutter ( 2077): ║                     "calories": 0,
I/flutter ( 2077): ║                     "priceHalala": 0,
I/flutter ( 2077): ║                     "currency": "SAR",
I/flutter ( 2077): ║                     "proteinFamilyKey": "other"
I/flutter ( 2077): ║                },
I/flutter ( 2077): ║                {
I/flutter ( 2077): ║                     "id": "69f3a21bd960b113ace19e01",
I/flutter ( 2077): ║                     "name": "تونا",
I/flutter ( 2077): ║                     "description": "",
I/flutter ( 2077): ║                     "sortOrder": 4,
I/flutter ( 2077): ║                     "isActive": true,
I/flutter ( 2077): ║                     "imageUrl": "",
I/flutter ( 2077): ║                     "calories": 0,
I/flutter ( 2077): ║                     "priceHalala": 0,
I/flutter ( 2077): ║                     "currency": "SAR",
I/flutter ( 2077): ║                     "proteinFamilyKey": "fish"
I/flutter ( 2077): ║                },
I/flutter ( 2077): ║                {
I/flutter ( 2077): ║                     "id": "69f3a226d960b113ace19e03",
I/flutter ( 2077): ║                     "name": "بيض اسكرامبل",
I/flutter ( 2077): ║                     "description": "",
I/flutter ( 2077): ║                     "sortOrder": 5,
I/flutter ( 2077): ║                     "isActive": true,
I/flutter ( 2077): ║                     "imageUrl": "",
I/flutter ( 2077): ║                     "calories": 0,
I/flutter ( 2077): ║                     "priceHalala": 0,
I/flutter ( 2077): ║                     "currency": "SAR",
I/flutter ( 2077): ║                     "proteinFamilyKey": "eggs"
I/flutter ( 2077): ║                },
I/flutter ( 2077): ║                {
I/flutter ( 2077): ║                     "id": "69f3a22fd960b113ace19e07",
I/flutter ( 2077): ║                     "name": "دجاج فاهيتا",
I/flutter ( 2077): ║                     "description": "",
I/flutter ( 2077): ║                     "sortOrder": 6,
I/flutter ( 2077): ║                     "isActive": true,
I/flutter ( 2077): ║                     "imageUrl": "",
I/flutter ( 2077): ║                     "calories": 0,
I/flutter ( 2077): ║                     "priceHalala": 0,
I/flutter ( 2077): ║                     "currency": "SAR",
I/flutter ( 2077): ║                     "proteinFamilyKey": "chicken"
I/flutter ( 2077): ║                },
I/flutter ( 2077): ║                {
I/flutter ( 2077): ║                     "id": "69f3a238d960b113ace19e09",
I/flutter ( 2077): ║                     "name": "دجاج مكسيكي",
I/flutter ( 2077): ║                     "description": "",
I/flutter ( 2077): ║                     "sortOrder": 7,
I/flutter ( 2077): ║                     "isActive": true,
I/flutter ( 2077): ║                     "imageUrl": "",
I/flutter ( 2077): ║                     "calories": 0,
I/flutter ( 2077): ║                     "priceHalala": 0,
I/flutter ( 2077): ║                     "currency": "SAR",
I/flutter ( 2077): ║                     "proteinFamilyKey": "chicken"
I/flutter ( 2077): ║                },
I/flutter ( 2077): ║                {
I/flutter ( 2077): ║                     "id": "69f3a241d960b113ace19e0b",
I/flutter ( 2077): ║                     "name": "دجاج مشوي",
I/flutter ( 2077): ║                     "description": "",
I/flutter ( 2077): ║                     "sortOrder": 8,
I/flutter ( 2077): ║                     "isActive": true,
I/flutter ( 2077): ║                     "imageUrl": "",
I/flutter ( 2077): ║                     "calories": 0,
I/flutter ( 2077): ║                     "priceHalala": 0,
I/flutter ( 2077): ║                     "currency": "SAR",
I/flutter ( 2077): ║                     "proteinFamilyKey": "chicken"
I/flutter ( 2077): ║                }
I/flutter ( 2077): ║             ],
I/flutter ( 2077): ║             "salad": {
I/flutter ( 2077): ║                 "ingredients": [
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f00a8431962803c54af61d",
I/flutter ( 2077): ║                         "name": "الإضافات",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 2,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "cheese_nuts",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 0,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f00a8531962803c54af620",
I/flutter ( 2077): ║                         "name": "المكسرات",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 4,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "cheese_nuts",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 0,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890131962803c54be6c2",
I/flutter ( 2077): ║                         "name": "فيتا",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 40.13,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "cheese_nuts",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890231962803c54be6c7",
I/flutter ( 2077): ║                         "name": "سمسم",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 40.18,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "cheese_nuts",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890231962803c54be6c9",
I/flutter ( 2077): ║                         "name": "كاجو",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 40.19,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "cheese_nuts",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890131962803c54be6c1",
I/flutter ( 2077): ║                         "name": "بارميزان",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 50,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "cheese_nuts",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 0,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890331962803c54be6ca",
I/flutter ( 2077): ║                         "name": "عين الجمل",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 60,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "cheese_nuts",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 0,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f00a8531962803c54af61f",
I/flutter ( 2077): ║                         "name": "الفواكه",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 3,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "fruits",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 0,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890131962803c54be6c3",
I/flutter ( 2077): ║                         "name": "تمر",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 50.14,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "fruits",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890231962803c54be6c4",
I/flutter ( 2077): ║                         "name": "توت أزرق",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 50.15,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "fruits",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890231962803c54be6c6",
I/flutter ( 2077): ║                         "name": "رمان",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 70,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "fruits",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 0,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890231962803c54be6c5",
I/flutter ( 2077): ║                         "name": "فراولة",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 80,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "fruits",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 0,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f188ff31962803c54be6b5",
I/flutter ( 2077): ║                         "name": "خس روماني",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 10,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "leafy_greens",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 0,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f188ff31962803c54be6b6",
I/flutter ( 2077): ║                         "name": "جرجير",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 20,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "leafy_greens",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 0,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f00a8531962803c54af621",
I/flutter ( 2077): ║                         "name": "الصوص",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 5,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "sauce",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 0,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890331962803c54be6cc",
I/flutter ( 2077): ║                         "name": "عسل بالليمون",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 60.21,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "sauce",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890331962803c54be6cd",
I/flutter ( 2077): ║                         "name": "زبادي بالنعناع",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 60.22,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "sauce",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890331962803c54be6cf",
I/flutter ( 2077): ║                         "name": "صوص بيستو",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 60.24,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "sauce",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890431962803c54be6d2",
I/flutter ( 2077): ║                         "name": "رانش",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 60.26,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "sauce",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890431962803c54be6d0",
I/flutter ( 2077): ║                         "name": "سيزر",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 90,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "sauce",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 0,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890331962803c54be6ce",
I/flutter ( 2077): ║                         "name": "هاني ماستر",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 100,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "sauce",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 0,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f00a8431962803c54af61c",
I/flutter ( 2077): ║                         "name": "الخضروات",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 1,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "vegetables",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 0,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f188ff31962803c54be6b7",
I/flutter ( 2077): ║                         "name": "بصل مخلل",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 20.02,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "vegetables",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890031962803c54be6b8",
I/flutter ( 2077): ║                         "name": "نعناع",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 20.03,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "vegetables",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890031962803c54be6b9",
I/flutter ( 2077): ║                         "name": "زيتون أسود",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 20.04,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "vegetables",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890031962803c54be6ba",
I/flutter ( 2077): ║                         "name": "زيتون أخضر",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 20.05,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "vegetables",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890031962803c54be6bb",
I/flutter ( 2077): ║                         "name": "بروكلي",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 20.06,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "vegetables",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890031962803c54be6bc",
I/flutter ( 2077): ║                         "name": "فطر",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 20.07,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "vegetables",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890031962803c54be6bd",
I/flutter ( 2077): ║                         "name": "كزبرة",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 20.08,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "vegetables",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890031962803c54be6be",
I/flutter ( 2077): ║                         "name": "فلفل",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 20.09,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "vegetables",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890131962803c54be6c0",
I/flutter ( 2077): ║                         "name": "هالينو",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 20.11,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "vegetables",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1898431962803c54be749",
I/flutter ( 2077): ║                         "name": "خيار",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 30,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "vegetables",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 0,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890131962803c54be6bf",
I/flutter ( 2077): ║                         "name": "بنجر",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 40,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "vegetables",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 0,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    }
I/flutter ( 2077): ║                 ],
I/flutter ( 2077): ║                 "groups": [
I/flutter ( 2077): ║                  {key: leafy_greens, name: ورقيات, minSelect: 0, maxSelect: 99, sortOrder: 10},
I/flutter ( 2077): ║                  {key: vegetables, name: خضار, minSelect: 0, maxSelect: 99, sortOrder: 20},
I/flutter ( 2077): ║                  {key: protein, name: بروتين, minSelect: 1, maxSelect: 1, sortOrder: 30},
I/flutter ( 2077): ║                  {key: cheese_nuts, name: أجبان ومكسرات, minSelect: 0, maxSelect: 99, sortOrder: 40},
I/flutter ( 2077): ║                  {key: fruits, name: فواكه, minSelect: 0, maxSelect: 99, sortOrder: 50},
I/flutter ( 2077): ║                  {key: sauce, name: صوص, minSelect: 1, maxSelect: 1, sortOrder: 60}
I/flutter ( 2077): ║                 ]
I/flutter ( 2077): ║            }
I/flutter ( 2077): ║             "addons": {
I/flutter ( 2077): ║                 "items": [
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b40a",
I/flutter ( 2077): ║                         "name": "بيري بلاست",
I/flutter ( 2077): ║                         "description": "عصير ضمن فئة العصير.",
I/flutter ( 2077): ║                         "sortOrder": 10,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "juice",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 1100,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b40b",
I/flutter ( 2077): ║                         "name": "بيري بروت",
I/flutter ( 2077): ║                         "description": "عصير ضمن فئة العصير.",
I/flutter ( 2077): ║                         "sortOrder": 11,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "juice",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 1300,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b40c",
I/flutter ( 2077): ║                         "name": "كلاسيك جرين",
I/flutter ( 2077): ║                         "description": "عصير ضمن فئة العصير.",
I/flutter ( 2077): ║                         "sortOrder": 12,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "juice",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 1100,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b40d",
I/flutter ( 2077): ║                         "name": "بيت بانش",
I/flutter ( 2077): ║                         "description": "عصير ضمن فئة العصير.",
I/flutter ( 2077): ║                         "sortOrder": 13,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "juice",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 1100,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b40e",
I/flutter ( 2077): ║                         "name": "أورانج كاروت",
I/flutter ( 2077): ║                         "description": "عصير ضمن فئة العصير.",
I/flutter ( 2077): ║                         "sortOrder": 14,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "juice",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 1100,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b40f",
I/flutter ( 2077): ║                         "name": "واترميلون منت",
I/flutter ( 2077): ║                         "description": "عصير ضمن فئة العصير.",
I/flutter ( 2077): ║                         "sortOrder": 15,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "juice",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 1100,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b410",
I/flutter ( 2077): ║                         "name": "بروتين درينك",
I/flutter ( 2077): ║                         "description": "مشروب ضمن فئة العصير.",
I/flutter ( 2077): ║                         "sortOrder": 16,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "juice",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 1900,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b411",
I/flutter ( 2077): ║                         "name": "دايت آيسد تي",
I/flutter ( 2077): ║                         "description": "مشروب ضمن فئة العصير.",
I/flutter ( 2077): ║                         "sortOrder": 17,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "juice",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 400,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b412",
I/flutter ( 2077): ║                         "name": "دايت صودا",
I/flutter ( 2077): ║                         "description": "مشروب ضمن فئة العصير.",
I/flutter ( 2077): ║                         "sortOrder": 18,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "juice",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 300,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b413",
I/flutter ( 2077): ║                         "name": "ماء",
I/flutter ( 2077): ║                         "description": "مياه ضمن فئة العصير.",
I/flutter ( 2077): ║                         "sortOrder": 19,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "juice",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 200,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b41b",
I/flutter ( 2077): ║                         "name": "سلطة صغيرة",
I/flutter ( 2077): ║                         "description": "سلطة ضمن فئة السلطة الصغيرة.",
I/flutter ( 2077): ║                         "sortOrder": 50,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "small_salad",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 1200,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b414",
I/flutter ( 2077): ║                         "name": "مافن تفاح بالقرفة (قطعتان)",
I/flutter ( 2077): ║                         "description": "سناك ضمن فئة السناك.",
I/flutter ( 2077): ║                         "sortOrder": 30,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "snack",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 1200,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b415",
I/flutter ( 2077): ║                         "name": "بلو بيري تشيزكيك",
I/flutter ( 2077): ║                         "description": "سناك ضمن فئة السناك.",
I/flutter ( 2077): ║                         "sortOrder": 31,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "snack",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 1900,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b416",
I/flutter ( 2077): ║                         "name": "ستروبيري تشيزكيك",
I/flutter ( 2077): ║                         "description": "سناك ضمن فئة السناك.",
I/flutter ( 2077): ║                         "sortOrder": 32,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "snack",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 1900,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b417",
I/flutter ( 2077): ║                         "name": "دارك براونيز",
I/flutter ( 2077): ║                         "description": "سناك ضمن فئة السناك.",
I/flutter ( 2077): ║                         "sortOrder": 33,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "snack",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 1300,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b418",
I/flutter ( 2077): ║                         "name": "بروتين بار",
I/flutter ( 2077): ║                         "description": "سناك ضمن فئة السناك.",
I/flutter ( 2077): ║                         "sortOrder": 34,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "snack",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 1500,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b419",
I/flutter ( 2077): ║                         "name": "كلاسيك بيسك",
I/flutter ( 2077): ║                         "description": "سناك ضمن فئة السناك.",
I/flutter ( 2077): ║                         "sortOrder": 35,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "snack",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 1400,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b41a",
I/flutter ( 2077): ║                         "name": "كيكة بروتين بالشوكولاتة",
I/flutter ( 2077): ║                         "description": "سناك ضمن فئة السناك.",
I/flutter ( 2077): ║                         "sortOrder": 36,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "snack",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 400,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    }
I/flutter ( 2077): ║                 ],
I/flutter ( 2077): ║                 "byCategory": {
I/flutter ( 2077): ║                     "juice": [
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b40a",
I/flutter ( 2077): ║                             "name": "بيري بلاست",
I/flutter ( 2077): ║                             "description": "عصير ضمن فئة العصير.",
I/flutter ( 2077): ║                             "sortOrder": 10,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "juice",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 1100,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        },
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b40b",
I/flutter ( 2077): ║                             "name": "بيري بروت",
I/flutter ( 2077): ║                             "description": "عصير ضمن فئة العصير.",
I/flutter ( 2077): ║                             "sortOrder": 11,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "juice",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 1300,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        },
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b40c",
I/flutter ( 2077): ║                             "name": "كلاسيك جرين",
I/flutter ( 2077): ║                             "description": "عصير ضمن فئة العصير.",
I/flutter ( 2077): ║                             "sortOrder": 12,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "juice",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 1100,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        },
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b40d",
I/flutter ( 2077): ║                             "name": "بيت بانش",
I/flutter ( 2077): ║                             "description": "عصير ضمن فئة العصير.",
I/flutter ( 2077): ║                             "sortOrder": 13,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "juice",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 1100,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        },
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b40e",
I/flutter ( 2077): ║                             "name": "أورانج كاروت",
I/flutter ( 2077): ║                             "description": "عصير ضمن فئة العصير.",
I/flutter ( 2077): ║                             "sortOrder": 14,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "juice",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 1100,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        },
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b40f",
I/flutter ( 2077): ║                             "name": "واترميلون منت",
I/flutter ( 2077): ║                             "description": "عصير ضمن فئة العصير.",
I/flutter ( 2077): ║                             "sortOrder": 15,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "juice",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 1100,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        },
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b410",
I/flutter ( 2077): ║                             "name": "بروتين درينك",
I/flutter ( 2077): ║                             "description": "مشروب ضمن فئة العصير.",
I/flutter ( 2077): ║                             "sortOrder": 16,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "juice",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 1900,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        },
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b411",
I/flutter ( 2077): ║                             "name": "دايت آيسد تي",
I/flutter ( 2077): ║                             "description": "مشروب ضمن فئة العصير.",
I/flutter ( 2077): ║                             "sortOrder": 17,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "juice",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 400,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        },
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b412",
I/flutter ( 2077): ║                             "name": "دايت صودا",
I/flutter ( 2077): ║                             "description": "مشروب ضمن فئة العصير.",
I/flutter ( 2077): ║                             "sortOrder": 18,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "juice",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 300,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        },
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b413",
I/flutter ( 2077): ║                             "name": "ماء",
I/flutter ( 2077): ║                             "description": "مياه ضمن فئة العصير.",
I/flutter ( 2077): ║                             "sortOrder": 19,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "juice",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 200,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        }
I/flutter ( 2077): ║                     ],
I/flutter ( 2077): ║                     "small_salad": [
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b41b",
I/flutter ( 2077): ║                             "name": "سلطة صغيرة",
I/flutter ( 2077): ║                             "description": "سلطة ضمن فئة السلطة الصغيرة.",
I/flutter ( 2077): ║                             "sortOrder": 50,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "small_salad",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 1200,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        }
I/flutter ( 2077): ║                     ],
I/flutter ( 2077): ║                     "snack": [
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b414",
I/flutter ( 2077): ║                             "name": "مافن تفاح بالقرفة (قطعتان)",
I/flutter ( 2077): ║                             "description": "سناك ضمن فئة السناك.",
I/flutter ( 2077): ║                             "sortOrder": 30,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "snack",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 1200,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        },
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b415",
I/flutter ( 2077): ║                             "name": "بلو بيري تشيزكيك",
I/flutter ( 2077): ║                             "description": "سناك ضمن فئة السناك.",
I/flutter ( 2077): ║                             "sortOrder": 31,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "snack",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 1900,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        },
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b416",
I/flutter ( 2077): ║                             "name": "ستروبيري تشيزكيك",
I/flutter ( 2077): ║                             "description": "سناك ضمن فئة السناك.",
I/flutter ( 2077): ║                             "sortOrder": 32,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "snack",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 1900,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        },
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b417",
I/flutter ( 2077): ║                             "name": "دارك براونيز",
I/flutter ( 2077): ║                             "description": "سناك ضمن فئة السناك.",
I/flutter ( 2077): ║                             "sortOrder": 33,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "snack",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 1300,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        },
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b418",
I/flutter ( 2077): ║                             "name": "بروتين بار",
I/flutter ( 2077): ║                             "description": "سناك ضمن فئة السناك.",
I/flutter ( 2077): ║                             "sortOrder": 34,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "snack",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 1500,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        },
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b419",
I/flutter ( 2077): ║                             "name": "كلاسيك بيسك",
I/flutter ( 2077): ║                             "description": "سناك ضمن فئة السناك.",
I/flutter ( 2077): ║                             "sortOrder": 35,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "snack",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 1400,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        },
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b41a",
I/flutter ( 2077): ║                             "name": "كيكة بروتين بالشوكولاتة",
I/flutter ( 2077): ║                             "description": "سناك ضمن فئة السناك.",
I/flutter ( 2077): ║                             "sortOrder": 36,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "snack",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 400,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        }
I/flutter ( 2077): ║                     ]
I/flutter ( 2077): ║                }
I/flutter ( 2077): ║            }
I/flutter ( 2077): ║             "delivery": {
I/flutter ( 2077): ║                 "windows": [{value: 16:00-18:00, label: 16:00-18:00}, {value: 18:00-20:00, label: 18:00-20:00}]
I/flutter ( 2077): ║                 "zones": [
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f142e831962803c54bbb52",
I/flutter ( 2077): ║                         "name": "الملقا",
I/flutter ( 2077): ║                         "deliveryFeeHalala": 1500,
I/flutter ( 2077): ║                         "sortOrder": 1,
I/flutter ( 2077): ║                         "isActive": true
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f142e831962803c54bbb58",
I/flutter ( 2077): ║                         "name": "الياسمين",
I/flutter ( 2077): ║                         "deliveryFeeHalala": 1800,
I/flutter ( 2077): ║                         "sortOrder": 2,
I/flutter ( 2077): ║                         "isActive": true
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f142e831962803c54bbb5f",
I/flutter ( 2077): ║                         "name": "النرجس",
I/flutter ( 2077): ║                         "deliveryFeeHalala": 2000,
I/flutter ( 2077): ║                         "sortOrder": 3,
I/flutter ( 2077): ║                         "isActive": true
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f142e831962803c54bbb65",
I/flutter ( 2077): ║                         "name": "حطين",
I/flutter ( 2077): ║                         "deliveryFeeHalala": 2200,
I/flutter ( 2077): ║                         "sortOrder": 4,
I/flutter ( 2077): ║                         "isActive": true
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f142e831962803c54bbb6a",
I/flutter ( 2077): ║                         "name": "الصحافة",
I/flutter ( 2077): ║                         "deliveryFeeHalala": 1700,
I/flutter ( 2077): ║                         "sortOrder": 5,
I/flutter ( 2077): ║                         "isActive": true
I/flutter ( 2077): ║                    }
I/flutter ( 2077): ║                 ]
I/flutter ( 2077): ║            }
I/flutter ( 2077): ║             "restaurantHours": {
I/flutter ( 2077): ║                 "openTime": "10:00",
I/flutter ( 2077): ║                 "closeTime": "23:00",
I/flutter ( 2077): ║                 "isOpenNow": true,
I/flutter ( 2077): ║                 "businessDate": "2026-05-06",
I/flutter ( 2077): ║                 "businessTomorrow": "2026-05-07"
I/flutter ( 2077): ║            }
I/flutter ( 2077): ║        }
I/flutter ( 2077): ║    }
I/flutter ( 2077): ║
I/flutter ( 2077): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 2077): onChange -- MenuBloc, Change { currentState: MenuLoading(), nextState: MenuError(defaultError) }
E/libEGL  ( 2077): called unimplemented OpenGL ES API
I/flutter ( 2077): onChange -- MainBloc, Change { currentState: MainIndexChangedState(1), nextState: MainIndexChangedState(3) }
I/flutter ( 2077): onCreate -- OrdersBloc
I/flutter ( 2077): onChange -- OrdersBloc, Change { currentState: OrdersInitial(), nextState: OrdersLoading() }
I/flutter ( 2077): onClose -- MenuBloc
I/flutter ( 2077):
I/flutter ( 2077): ╔╣ Request ║ GET
I/flutter ( 2077): ║  https://basicdiet145.onrender.com/api/orders?page=1&limit=20
I/flutter ( 2077): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 2077): ╔ Query Parameters
I/flutter ( 2077): ╟ page: 1
I/flutter ( 2077): ╟ limit: 20
I/flutter ( 2077): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 2077): ╔ Headers
I/flutter ( 2077): ╟ accept: application/json
I/flutter ( 2077): ╟ content-type: application/json
I/flutter ( 2077): ╟ authorization:
I/flutter ( 2077): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2OWYyMzdmMjE5Mjg4ZGJjOWUxNjMxZG
I/flutter ( 2077): ║ UiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc3NzQ5MDg2NSwiZXhwIjox
I/flutter ( 2077): ║ NzgwMTY5MjY1fQ.wQdMvBRkWrYPGGrvx5HtsUbTO-B9NlayVB5uRMS4rVE
I/flutter ( 2077): ╟ Accept-Language: ar
I/flutter ( 2077): ╟ contentType: application/json
I/flutter ( 2077): ╟ responseType: ResponseType.json
I/flutter ( 2077): ╟ followRedirects: true
I/flutter ( 2077): ╟ receiveTimeout: 16:40:00.000000
I/flutter ( 2077): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 2077):
I/flutter ( 2077): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 570 ms
I/flutter ( 2077): ║  https://basicdiet145.onrender.com/api/orders?page=1&limit=20
I/flutter ( 2077): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 2077): ╔ Headers
I/flutter ( 2077): ╟ x-dns-prefetch-control: [off]
I/flutter ( 2077): ╟ x-render-origin-server: [Render]
I/flutter ( 2077): ╟ date: [Wed, 06 May 2026 12:00:52 GMT]
I/flutter ( 2077): ╟ transfer-encoding: [chunked]
I/flutter ( 2077): ╟ origin-agent-cluster: [?1]
I/flutter ( 2077): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 2077): ╟ content-encoding: [gzip]
I/flutter ( 2077): ╟ server: [cloudflare]
I/flutter ( 2077): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 2077): ╟ cf-ray: [9f77d3b7ffbfe175-MRS]
I/flutter ( 2077): ╟ etag: [W/"5a-YGkjNHMkV3iVQ79jDdCqxj6YPXg"]
I/flutter ( 2077): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 2077): ╟ content-security-policy:
I/flutter ( 2077): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 2077): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 2077): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 2077): ╟ connection: [keep-alive]
I/flutter ( 2077): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 2077): ╟ referrer-policy: [no-referrer]
I/flutter ( 2077): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 2077): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 2077): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 2077): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 2077): ╟ rndr-id: [de8789e9-0e71-402f]
I/flutter ( 2077): ╟ x-xss-protection: [0]
I/flutter ( 2077): ╟ access-control-allow-credentials: [true]
I/flutter ( 2077): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 2077): ╟ x-download-options: [noopen]
I/flutter ( 2077): ╟ x-content-type-options: [nosniff]
I/flutter ( 2077): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 2077): ╔ Body
I/flutter ( 2077): ║
I/flutter ( 2077): ║    {
I/flutter ( 2077): ║         "status": true,
I/flutter ( 2077): ║         "data": {
I/flutter ( 2077): ║             "items": []
I/flutter ( 2077): ║             "pagination": {page: 1, limit: 20, total: 0, pages: 0}
I/flutter ( 2077): ║        }
I/flutter ( 2077): ║    }
I/flutter ( 2077): ║
I/flutter ( 2077): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 2077): onChange -- OrdersBloc, Change { currentState: OrdersLoading(), nextState: OrdersSuccess([], false, false) }
E/libEGL  ( 2077): called unimplemented OpenGL ES API
I/flutter ( 2077): onChange -- MainBloc, Change { currentState: MainIndexChangedState(3), nextState: MainIndexChangedState(4) }
I/flutter ( 2077): onClose -- OrdersBloc
E/libEGL  ( 2077): called unimplemented OpenGL ES API
I/flutter ( 2077): onChange -- MainBloc, Change { currentState: MainIndexChangedState(4), nextState: MainIndexChangedState(1) }
I/flutter ( 2077): onCreate -- MenuBloc
I/flutter ( 2077): onChange -- MenuBloc, Change { currentState: MenuInitial(), nextState: MenuLoading() }
I/flutter ( 2077):
I/flutter ( 2077): ╔╣ Request ║ GET
I/flutter ( 2077): ║  https://basicdiet145.onrender.com/api/orders/menu
I/flutter ( 2077): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 2077): ╔ Headers
I/flutter ( 2077): ╟ accept: application/json
I/flutter ( 2077): ╟ content-type: application/json
I/flutter ( 2077): ╟ authorization:
I/flutter ( 2077): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2OWYyMzdmMjE5Mjg4ZGJjOWUxNjMxZG
I/flutter ( 2077): ║ UiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc3NzQ5MDg2NSwiZXhwIjox
I/flutter ( 2077): ║ NzgwMTY5MjY1fQ.wQdMvBRkWrYPGGrvx5HtsUbTO-B9NlayVB5uRMS4rVE
I/flutter ( 2077): ╟ Accept-Language: ar
I/flutter ( 2077): ╟ contentType: application/json
I/flutter ( 2077): ╟ responseType: ResponseType.json
I/flutter ( 2077): ╟ followRedirects: true
I/flutter ( 2077): ╟ receiveTimeout: 16:40:00.000000
I/flutter ( 2077): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 2077):
I/flutter ( 2077): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 473 ms
I/flutter ( 2077): ║  https://basicdiet145.onrender.com/api/orders/menu
I/flutter ( 2077): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 2077): ╔ Headers
I/flutter ( 2077): ╟ x-dns-prefetch-control: [off]
I/flutter ( 2077): ╟ x-render-origin-server: [Render]
I/flutter ( 2077): ╟ date: [Wed, 06 May 2026 12:00:58 GMT]
I/flutter ( 2077): ╟ transfer-encoding: [chunked]
I/flutter ( 2077): ╟ origin-agent-cluster: [?1]
I/flutter ( 2077): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 2077): ╟ content-encoding: [gzip]
I/flutter ( 2077): ╟ server: [cloudflare]
I/flutter ( 2077): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 2077): ╟ cf-ray: [9f77d3da394660d4-MRS]
I/flutter ( 2077): ╟ etag: [W/"6239-K0ioIf9FthGqY4EaGTCFsQMgmQY"]
I/flutter ( 2077): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 2077): ╟ content-security-policy:
I/flutter ( 2077): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 2077): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 2077): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 2077): ╟ connection: [keep-alive]
I/flutter ( 2077): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 2077): ╟ referrer-policy: [no-referrer]
I/flutter ( 2077): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 2077): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 2077): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 2077): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 2077): ╟ rndr-id: [9663d789-331f-4b1c]
I/flutter ( 2077): ╟ x-xss-protection: [0]
I/flutter ( 2077): ╟ access-control-allow-credentials: [true]
I/flutter ( 2077): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 2077): ╟ x-download-options: [noopen]
I/flutter ( 2077): ╟ x-content-type-options: [nosniff]
I/flutter ( 2077): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 2077): ╔ Body
I/flutter ( 2077): ║
I/flutter ( 2077): ║    {
I/flutter ( 2077): ║         "status": true,
I/flutter ( 2077): ║         "data": {
I/flutter ( 2077): ║             "currency": "SAR",
I/flutter ( 2077): ║             "itemTypes": [standard_meal, sandwich, salad, addon_item]
I/flutter ( 2077): ║             "standardMeals": {
I/flutter ( 2077): ║                 "proteins": [
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1897831962803c54be731",
I/flutter ( 2077): ║                         "name": "بيض مسلوق",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 1,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "eggs",
I/flutter ( 2077): ║                         "proteinFamilyKey": "eggs",
I/flutter ( 2077): ║                         "isPremium": false,
I/flutter ( 2077): ║                         "extraFeeHalala": 0,
I/flutter ( 2077): ║                         "currency": "SAR",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1897d31962803c54be741",
I/flutter ( 2077): ║                         "name": "لحم استرغانوف",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 2,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "beef",
I/flutter ( 2077): ║                         "proteinFamilyKey": "beef",
I/flutter ( 2077): ║                         "isPremium": false,
I/flutter ( 2077): ║                         "extraFeeHalala": 0,
I/flutter ( 2077): ║                         "currency": "SAR",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1897931962803c54be736",
I/flutter ( 2077): ║                         "name": "دجاج زبدة",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 2,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "chicken",
I/flutter ( 2077): ║                         "proteinFamilyKey": "chicken",
I/flutter ( 2077): ║                         "isPremium": false,
I/flutter ( 2077): ║                         "extraFeeHalala": 0,
I/flutter ( 2077): ║                         "currency": "SAR",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1897a31962803c54be737",
I/flutter ( 2077): ║                         "name": "دجاج كريمة",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 3,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "chicken",
I/flutter ( 2077): ║                         "proteinFamilyKey": "chicken",
I/flutter ( 2077): ║                         "isPremium": false,
I/flutter ( 2077): ║                         "extraFeeHalala": 0,
I/flutter ( 2077): ║                         "currency": "SAR",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1897a31962803c54be738",
I/flutter ( 2077): ║                         "name": "دجاج كاري وجوز الهند",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 4,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "chicken",
I/flutter ( 2077): ║                         "proteinFamilyKey": "chicken",
I/flutter ( 2077): ║                         "isPremium": false,
I/flutter ( 2077): ║                         "extraFeeHalala": 0,
I/flutter ( 2077): ║                         "currency": "SAR",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1897a31962803c54be739",
I/flutter ( 2077): ║                         "name": "دجاج سبايسي",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 5,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "chicken",
I/flutter ( 2077): ║                         "proteinFamilyKey": "chicken",
I/flutter ( 2077): ║                         "isPremium": false,
I/flutter ( 2077): ║                         "extraFeeHalala": 0,
I/flutter ( 2077): ║                         "currency": "SAR",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1897b31962803c54be73a",
I/flutter ( 2077): ║                         "name": "دجاج توابل إيطالية",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 6,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "chicken",
I/flutter ( 2077): ║                         "proteinFamilyKey": "chicken",
I/flutter ( 2077): ║                         "isPremium": false,
I/flutter ( 2077): ║                         "extraFeeHalala": 0,
I/flutter ( 2077): ║                         "currency": "SAR",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1897b31962803c54be73b",
I/flutter ( 2077): ║                         "name": "دجاج تكا",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 7,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "chicken",
I/flutter ( 2077): ║                         "proteinFamilyKey": "chicken",
I/flutter ( 2077): ║                         "isPremium": false,
I/flutter ( 2077): ║                         "extraFeeHalala": 0,
I/flutter ( 2077): ║                         "currency": "SAR",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1897b31962803c54be73c",
I/flutter ( 2077): ║                         "name": "دجاج آسيوي",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 8,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "chicken",
I/flutter ( 2077): ║                         "proteinFamilyKey": "chicken",
I/flutter ( 2077): ║                         "isPremium": false,
I/flutter ( 2077): ║                         "extraFeeHalala": 0,
I/flutter ( 2077): ║                         "currency": "SAR",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1897c31962803c54be73d",
I/flutter ( 2077): ║                         "name": "استربس",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 9,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "chicken",
I/flutter ( 2077): ║                         "proteinFamilyKey": "chicken",
I/flutter ( 2077): ║                         "isPremium": false,
I/flutter ( 2077): ║                         "extraFeeHalala": 0,
I/flutter ( 2077): ║                         "currency": "SAR",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1897c31962803c54be73e",
I/flutter ( 2077): ║                         "name": "دجاج مشوي",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 10,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "chicken",
I/flutter ( 2077): ║                         "proteinFamilyKey": "chicken",
I/flutter ( 2077): ║                         "isPremium": false,
I/flutter ( 2077): ║                         "extraFeeHalala": 0,
I/flutter ( 2077): ║                         "currency": "SAR",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f188fdc48e7ad405aff5a0",
I/flutter ( 2077): ║                         "name": "ستيك لحم",
I/flutter ( 2077): ║                         "description": "ستيك لحم طري مشوي يقدم بتتبيلة غنية ولمسة مطاعم راقية."
I/flutter ( 2077): ║                         "sortOrder": 10,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "premium",
I/flutter ( 2077): ║                         "proteinFamilyKey": "beef",
I/flutter ( 2077): ║                         "isPremium": true,
I/flutter ( 2077): ║                         "extraFeeHalala": 2200,
I/flutter ( 2077): ║                         "currency": "SAR",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1897c31962803c54be73f",
I/flutter ( 2077): ║                         "name": "دجاج مكسيكي",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 11,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "chicken",
I/flutter ( 2077): ║                         "proteinFamilyKey": "chicken",
I/flutter ( 2077): ║                         "isPremium": false,
I/flutter ( 2077): ║                         "extraFeeHalala": 0,
I/flutter ( 2077): ║                         "currency": "SAR",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f188fdc48e7ad405aff5a3",
I/flutter ( 2077): ║                         "name": "سلمون",
I/flutter ( 2077): ║                         "description": "فيليه سلمون مشوي مع خضار طازجة ولمسة ليمون وأعشاب خفيفة."
I/flutter ( 2077): ║                         "sortOrder": 20,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "premium",
I/flutter ( 2077): ║                         "proteinFamilyKey": "fish",
I/flutter ( 2077): ║                         "isPremium": true,
I/flutter ( 2077): ║                         "extraFeeHalala": 2500,
I/flutter ( 2077): ║                         "currency": "SAR",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f188fdc48e7ad405aff59d",
I/flutter ( 2077): ║                         "name": "روبيان",
I/flutter ( 2077): ║                         "description": "طبق روبيان مشوي مع خضار ملونة وصوص خفيف بنكهة غنية."
I/flutter ( 2077): ║                         "sortOrder": 30,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "premium",
I/flutter ( 2077): ║                         "proteinFamilyKey": "fish",
I/flutter ( 2077): ║                         "isPremium": true,
I/flutter ( 2077): ║                         "extraFeeHalala": 2000,
I/flutter ( 2077): ║                         "currency": "SAR",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    }
I/flutter ( 2077): ║                 ],
I/flutter ( 2077): ║                 "carbs": [
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f236cf8fa6b04ccc6fbcd0",
I/flutter ( 2077): ║                         "name": "كارب غير متاح",
I/flutter ( 2077): ║                         "description": "غير متاح",
I/flutter ( 2077): ║                         "sortOrder": 0,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "standard_carbs",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f190fb1f03fdbe74c64f4f",
I/flutter ( 2077): ║                         "name": "كارب غير متاح",
I/flutter ( 2077): ║                         "description": "غير متاح",
I/flutter ( 2077): ║                         "sortOrder": 0,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "standard_carbs",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f18ffa4724d9d86bcdb0c3",
I/flutter ( 2077): ║                         "name": "كارب غير متاح",
I/flutter ( 2077): ║                         "description": "غير متاح",
I/flutter ( 2077): ║                         "sortOrder": 0,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "standard_carbs",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f02ab231962803c54b0a36",
I/flutter ( 2077): ║                         "name": "رز أبيض",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 1,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "standard_carbs",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f02ab231962803c54b0a37",
I/flutter ( 2077): ║                         "name": "رز بالكركم",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 2,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "standard_carbs",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f02ab331962803c54b0a38",
I/flutter ( 2077): ║                         "name": "رز برياني",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 3,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "standard_carbs",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f02ab331962803c54b0a39",
I/flutter ( 2077): ║                         "name": "كينوا",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 4,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "standard_carbs",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f02ab331962803c54b0a3b",
I/flutter ( 2077): ║                         "name": "باستا الفريدو",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 5,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "standard_carbs",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f02ab431962803c54b0a3c",
I/flutter ( 2077): ║                         "name": "باستا بالصوص الأحمر",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 6,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "standard_carbs",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f02ab431962803c54b0a3d",
I/flutter ( 2077): ║                         "name": "بطاطس مشوي",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 7,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "standard_carbs",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f02ab431962803c54b0a3e",
I/flutter ( 2077): ║                         "name": "بطاطا حلوة",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 8,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "standard_carbs",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f02ab531962803c54b0a3f",
I/flutter ( 2077): ║                         "name": "خضار مشكل مشوي",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 9,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "standard_carbs",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1897831962803c54be730",
I/flutter ( 2077): ║                         "name": "سلطة كبيرة مميزة",
I/flutter ( 2077): ║                         "description": "هوية مرجعية للسلطة الكبيرة المميزة",
I/flutter ( 2077): ║                         "sortOrder": 999,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "displayCategoryKey": "large_salad",
I/flutter ( 2077): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter ( 2077): ║                    }
I/flutter ( 2077): ║                 ]
I/flutter ( 2077): ║            }
I/flutter ( 2077): ║             "sandwiches": [
I/flutter ( 2077): ║                {
I/flutter ( 2077): ║                     "id": "69f3a136d960b113ace19df3",
I/flutter ( 2077): ║                     "name": "بيض مسلوق",
I/flutter ( 2077): ║                     "description": "",
I/flutter ( 2077): ║                     "sortOrder": 1,
I/flutter ( 2077): ║                     "isActive": true,
I/flutter ( 2077): ║                     "imageUrl": "",
I/flutter ( 2077): ║                     "calories": 0,
I/flutter ( 2077): ║                     "priceHalala": 0,
I/flutter ( 2077): ║                     "currency": "SAR",
I/flutter ( 2077): ║                     "proteinFamilyKey": "eggs"
I/flutter ( 2077): ║                },
I/flutter ( 2077): ║                {
I/flutter ( 2077): ║                     "id": "69f3a209d960b113ace19dfd",
I/flutter ( 2077): ║                     "name": "تركي",
I/flutter ( 2077): ║                     "description": "",
I/flutter ( 2077): ║                     "sortOrder": 2,
I/flutter ( 2077): ║                     "isActive": true,
I/flutter ( 2077): ║                     "imageUrl": "",
I/flutter ( 2077): ║                     "calories": 0,
I/flutter ( 2077): ║                     "priceHalala": 0,
I/flutter ( 2077): ║                     "currency": "SAR",
I/flutter ( 2077): ║                     "proteinFamilyKey": "other"
I/flutter ( 2077): ║                },
I/flutter ( 2077): ║                {
I/flutter ( 2077): ║                     "id": "69f3a212d960b113ace19dff",
I/flutter ( 2077): ║                     "name": "حلوم كلاسيكي",
I/flutter ( 2077): ║                     "description": "",
I/flutter ( 2077): ║                     "sortOrder": 3,
I/flutter ( 2077): ║                     "isActive": true,
I/flutter ( 2077): ║                     "imageUrl": "",
I/flutter ( 2077): ║                     "calories": 0,
I/flutter ( 2077): ║                     "priceHalala": 0,
I/flutter ( 2077): ║                     "currency": "SAR",
I/flutter ( 2077): ║                     "proteinFamilyKey": "other"
I/flutter ( 2077): ║                },
I/flutter ( 2077): ║                {
I/flutter ( 2077): ║                     "id": "69f3a21bd960b113ace19e01",
I/flutter ( 2077): ║                     "name": "تونا",
I/flutter ( 2077): ║                     "description": "",
I/flutter ( 2077): ║                     "sortOrder": 4,
I/flutter ( 2077): ║                     "isActive": true,
I/flutter ( 2077): ║                     "imageUrl": "",
I/flutter ( 2077): ║                     "calories": 0,
I/flutter ( 2077): ║                     "priceHalala": 0,
I/flutter ( 2077): ║                     "currency": "SAR",
I/flutter ( 2077): ║                     "proteinFamilyKey": "fish"
I/flutter ( 2077): ║                },
I/flutter ( 2077): ║                {
I/flutter ( 2077): ║                     "id": "69f3a226d960b113ace19e03",
I/flutter ( 2077): ║                     "name": "بيض اسكرامبل",
I/flutter ( 2077): ║                     "description": "",
I/flutter ( 2077): ║                     "sortOrder": 5,
I/flutter ( 2077): ║                     "isActive": true,
I/flutter ( 2077): ║                     "imageUrl": "",
I/flutter ( 2077): ║                     "calories": 0,
I/flutter ( 2077): ║                     "priceHalala": 0,
I/flutter ( 2077): ║                     "currency": "SAR",
I/flutter ( 2077): ║                     "proteinFamilyKey": "eggs"
I/flutter ( 2077): ║                },
I/flutter ( 2077): ║                {
I/flutter ( 2077): ║                     "id": "69f3a22fd960b113ace19e07",
I/flutter ( 2077): ║                     "name": "دجاج فاهيتا",
I/flutter ( 2077): ║                     "description": "",
I/flutter ( 2077): ║                     "sortOrder": 6,
I/flutter ( 2077): ║                     "isActive": true,
I/flutter ( 2077): ║                     "imageUrl": "",
I/flutter ( 2077): ║                     "calories": 0,
I/flutter ( 2077): ║                     "priceHalala": 0,
I/flutter ( 2077): ║                     "currency": "SAR",
I/flutter ( 2077): ║                     "proteinFamilyKey": "chicken"
I/flutter ( 2077): ║                },
I/flutter ( 2077): ║                {
I/flutter ( 2077): ║                     "id": "69f3a238d960b113ace19e09",
I/flutter ( 2077): ║                     "name": "دجاج مكسيكي",
I/flutter ( 2077): ║                     "description": "",
I/flutter ( 2077): ║                     "sortOrder": 7,
I/flutter ( 2077): ║                     "isActive": true,
I/flutter ( 2077): ║                     "imageUrl": "",
I/flutter ( 2077): ║                     "calories": 0,
I/flutter ( 2077): ║                     "priceHalala": 0,
I/flutter ( 2077): ║                     "currency": "SAR",
I/flutter ( 2077): ║                     "proteinFamilyKey": "chicken"
I/flutter ( 2077): ║                },
I/flutter ( 2077): ║                {
I/flutter ( 2077): ║                     "id": "69f3a241d960b113ace19e0b",
I/flutter ( 2077): ║                     "name": "دجاج مشوي",
I/flutter ( 2077): ║                     "description": "",
I/flutter ( 2077): ║                     "sortOrder": 8,
I/flutter ( 2077): ║                     "isActive": true,
I/flutter ( 2077): ║                     "imageUrl": "",
I/flutter ( 2077): ║                     "calories": 0,
I/flutter ( 2077): ║                     "priceHalala": 0,
I/flutter ( 2077): ║                     "currency": "SAR",
I/flutter ( 2077): ║                     "proteinFamilyKey": "chicken"
I/flutter ( 2077): ║                }
I/flutter ( 2077): ║             ],
I/flutter ( 2077): ║             "salad": {
I/flutter ( 2077): ║                 "ingredients": [
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f00a8431962803c54af61d",
I/flutter ( 2077): ║                         "name": "الإضافات",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 2,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "cheese_nuts",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 0,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f00a8531962803c54af620",
I/flutter ( 2077): ║                         "name": "المكسرات",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 4,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "cheese_nuts",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 0,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890131962803c54be6c2",
I/flutter ( 2077): ║                         "name": "فيتا",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 40.13,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "cheese_nuts",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890231962803c54be6c7",
I/flutter ( 2077): ║                         "name": "سمسم",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 40.18,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "cheese_nuts",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890231962803c54be6c9",
I/flutter ( 2077): ║                         "name": "كاجو",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 40.19,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "cheese_nuts",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890131962803c54be6c1",
I/flutter ( 2077): ║                         "name": "بارميزان",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 50,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "cheese_nuts",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 0,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890331962803c54be6ca",
I/flutter ( 2077): ║                         "name": "عين الجمل",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 60,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "cheese_nuts",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 0,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f00a8531962803c54af61f",
I/flutter ( 2077): ║                         "name": "الفواكه",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 3,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "fruits",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 0,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890131962803c54be6c3",
I/flutter ( 2077): ║                         "name": "تمر",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 50.14,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "fruits",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890231962803c54be6c4",
I/flutter ( 2077): ║                         "name": "توت أزرق",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 50.15,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "fruits",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890231962803c54be6c6",
I/flutter ( 2077): ║                         "name": "رمان",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 70,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "fruits",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 0,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890231962803c54be6c5",
I/flutter ( 2077): ║                         "name": "فراولة",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 80,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "fruits",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 0,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f188ff31962803c54be6b5",
I/flutter ( 2077): ║                         "name": "خس روماني",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 10,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "leafy_greens",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 0,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f188ff31962803c54be6b6",
I/flutter ( 2077): ║                         "name": "جرجير",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 20,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "leafy_greens",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 0,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f00a8531962803c54af621",
I/flutter ( 2077): ║                         "name": "الصوص",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 5,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "sauce",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 0,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890331962803c54be6cc",
I/flutter ( 2077): ║                         "name": "عسل بالليمون",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 60.21,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "sauce",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890331962803c54be6cd",
I/flutter ( 2077): ║                         "name": "زبادي بالنعناع",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 60.22,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "sauce",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890331962803c54be6cf",
I/flutter ( 2077): ║                         "name": "صوص بيستو",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 60.24,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "sauce",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890431962803c54be6d2",
I/flutter ( 2077): ║                         "name": "رانش",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 60.26,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "sauce",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890431962803c54be6d0",
I/flutter ( 2077): ║                         "name": "سيزر",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 90,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "sauce",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 0,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890331962803c54be6ce",
I/flutter ( 2077): ║                         "name": "هاني ماستر",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 100,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "sauce",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 0,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f00a8431962803c54af61c",
I/flutter ( 2077): ║                         "name": "الخضروات",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 1,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "vegetables",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 0,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f188ff31962803c54be6b7",
I/flutter ( 2077): ║                         "name": "بصل مخلل",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 20.02,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "vegetables",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890031962803c54be6b8",
I/flutter ( 2077): ║                         "name": "نعناع",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 20.03,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "vegetables",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890031962803c54be6b9",
I/flutter ( 2077): ║                         "name": "زيتون أسود",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 20.04,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "vegetables",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890031962803c54be6ba",
I/flutter ( 2077): ║                         "name": "زيتون أخضر",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 20.05,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "vegetables",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890031962803c54be6bb",
I/flutter ( 2077): ║                         "name": "بروكلي",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 20.06,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "vegetables",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890031962803c54be6bc",
I/flutter ( 2077): ║                         "name": "فطر",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 20.07,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "vegetables",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890031962803c54be6bd",
I/flutter ( 2077): ║                         "name": "كزبرة",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 20.08,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "vegetables",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890031962803c54be6be",
I/flutter ( 2077): ║                         "name": "فلفل",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 20.09,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "vegetables",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890131962803c54be6c0",
I/flutter ( 2077): ║                         "name": "هالينو",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 20.11,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "vegetables",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 50,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1898431962803c54be749",
I/flutter ( 2077): ║                         "name": "خيار",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 30,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "vegetables",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 0,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f1890131962803c54be6bf",
I/flutter ( 2077): ║                         "name": "بنجر",
I/flutter ( 2077): ║                         "description": "",
I/flutter ( 2077): ║                         "sortOrder": 40,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "groupKey": "vegetables",
I/flutter ( 2077): ║                         "priceHalala": 0,
I/flutter ( 2077): ║                         "priceSar": 0,
I/flutter ( 2077): ║                         "calories": 0,
I/flutter ( 2077): ║                         "maxQuantity": null
I/flutter ( 2077): ║                    }
I/flutter ( 2077): ║                 ],
I/flutter ( 2077): ║                 "groups": [
I/flutter ( 2077): ║                  {key: leafy_greens, name: ورقيات, minSelect: 0, maxSelect: 99, sortOrder: 10},
I/flutter ( 2077): ║                  {key: vegetables, name: خضار, minSelect: 0, maxSelect: 99, sortOrder: 20},
I/flutter ( 2077): ║                  {key: protein, name: بروتين, minSelect: 1, maxSelect: 1, sortOrder: 30},
I/flutter ( 2077): ║                  {key: cheese_nuts, name: أجبان ومكسرات, minSelect: 0, maxSelect: 99, sortOrder: 40},
I/flutter ( 2077): ║                  {key: fruits, name: فواكه, minSelect: 0, maxSelect: 99, sortOrder: 50},
I/flutter ( 2077): ║                  {key: sauce, name: صوص, minSelect: 1, maxSelect: 1, sortOrder: 60}
I/flutter ( 2077): ║                 ]
I/flutter ( 2077): ║            }
I/flutter ( 2077): ║             "addons": {
I/flutter ( 2077): ║                 "items": [
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b40a",
I/flutter ( 2077): ║                         "name": "بيري بلاست",
I/flutter ( 2077): ║                         "description": "عصير ضمن فئة العصير.",
I/flutter ( 2077): ║                         "sortOrder": 10,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "juice",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 1100,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b40b",
I/flutter ( 2077): ║                         "name": "بيري بروت",
I/flutter ( 2077): ║                         "description": "عصير ضمن فئة العصير.",
I/flutter ( 2077): ║                         "sortOrder": 11,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "juice",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 1300,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b40c",
I/flutter ( 2077): ║                         "name": "كلاسيك جرين",
I/flutter ( 2077): ║                         "description": "عصير ضمن فئة العصير.",
I/flutter ( 2077): ║                         "sortOrder": 12,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "juice",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 1100,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b40d",
I/flutter ( 2077): ║                         "name": "بيت بانش",
I/flutter ( 2077): ║                         "description": "عصير ضمن فئة العصير.",
I/flutter ( 2077): ║                         "sortOrder": 13,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "juice",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 1100,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b40e",
I/flutter ( 2077): ║                         "name": "أورانج كاروت",
I/flutter ( 2077): ║                         "description": "عصير ضمن فئة العصير.",
I/flutter ( 2077): ║                         "sortOrder": 14,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "juice",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 1100,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b40f",
I/flutter ( 2077): ║                         "name": "واترميلون منت",
I/flutter ( 2077): ║                         "description": "عصير ضمن فئة العصير.",
I/flutter ( 2077): ║                         "sortOrder": 15,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "juice",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 1100,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b410",
I/flutter ( 2077): ║                         "name": "بروتين درينك",
I/flutter ( 2077): ║                         "description": "مشروب ضمن فئة العصير.",
I/flutter ( 2077): ║                         "sortOrder": 16,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "juice",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 1900,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b411",
I/flutter ( 2077): ║                         "name": "دايت آيسد تي",
I/flutter ( 2077): ║                         "description": "مشروب ضمن فئة العصير.",
I/flutter ( 2077): ║                         "sortOrder": 17,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "juice",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 400,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b412",
I/flutter ( 2077): ║                         "name": "دايت صودا",
I/flutter ( 2077): ║                         "description": "مشروب ضمن فئة العصير.",
I/flutter ( 2077): ║                         "sortOrder": 18,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "juice",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 300,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b413",
I/flutter ( 2077): ║                         "name": "ماء",
I/flutter ( 2077): ║                         "description": "مياه ضمن فئة العصير.",
I/flutter ( 2077): ║                         "sortOrder": 19,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "juice",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 200,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b41b",
I/flutter ( 2077): ║                         "name": "سلطة صغيرة",
I/flutter ( 2077): ║                         "description": "سلطة ضمن فئة السلطة الصغيرة.",
I/flutter ( 2077): ║                         "sortOrder": 50,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "small_salad",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 1200,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b414",
I/flutter ( 2077): ║                         "name": "مافن تفاح بالقرفة (قطعتان)",
I/flutter ( 2077): ║                         "description": "سناك ضمن فئة السناك.",
I/flutter ( 2077): ║                         "sortOrder": 30,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "snack",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 1200,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b415",
I/flutter ( 2077): ║                         "name": "بلو بيري تشيزكيك",
I/flutter ( 2077): ║                         "description": "سناك ضمن فئة السناك.",
I/flutter ( 2077): ║                         "sortOrder": 31,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "snack",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 1900,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b416",
I/flutter ( 2077): ║                         "name": "ستروبيري تشيزكيك",
I/flutter ( 2077): ║                         "description": "سناك ضمن فئة السناك.",
I/flutter ( 2077): ║                         "sortOrder": 32,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "snack",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 1900,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b417",
I/flutter ( 2077): ║                         "name": "دارك براونيز",
I/flutter ( 2077): ║                         "description": "سناك ضمن فئة السناك.",
I/flutter ( 2077): ║                         "sortOrder": 33,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "snack",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 1300,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b418",
I/flutter ( 2077): ║                         "name": "بروتين بار",
I/flutter ( 2077): ║                         "description": "سناك ضمن فئة السناك.",
I/flutter ( 2077): ║                         "sortOrder": 34,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "snack",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 1500,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b419",
I/flutter ( 2077): ║                         "name": "كلاسيك بيسك",
I/flutter ( 2077): ║                         "description": "سناك ضمن فئة السناك.",
I/flutter ( 2077): ║                         "sortOrder": 35,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "snack",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 1400,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f2399d4eee65376d14b41a",
I/flutter ( 2077): ║                         "name": "كيكة بروتين بالشوكولاتة",
I/flutter ( 2077): ║                         "description": "سناك ضمن فئة السناك.",
I/flutter ( 2077): ║                         "sortOrder": 36,
I/flutter ( 2077): ║                         "isActive": true,
I/flutter ( 2077): ║                         "category": "snack",
I/flutter ( 2077): ║                         "kind": "item",
I/flutter ( 2077): ║                         "priceHalala": 400,
I/flutter ( 2077): ║                         "currency": "SAR"
I/flutter ( 2077): ║                    }
I/flutter ( 2077): ║                 ],
I/flutter ( 2077): ║                 "byCategory": {
I/flutter ( 2077): ║                     "juice": [
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b40a",
I/flutter ( 2077): ║                             "name": "بيري بلاست",
I/flutter ( 2077): ║                             "description": "عصير ضمن فئة العصير.",
I/flutter ( 2077): ║                             "sortOrder": 10,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "juice",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 1100,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        },
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b40b",
I/flutter ( 2077): ║                             "name": "بيري بروت",
I/flutter ( 2077): ║                             "description": "عصير ضمن فئة العصير.",
I/flutter ( 2077): ║                             "sortOrder": 11,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "juice",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 1300,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        },
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b40c",
I/flutter ( 2077): ║                             "name": "كلاسيك جرين",
I/flutter ( 2077): ║                             "description": "عصير ضمن فئة العصير.",
I/flutter ( 2077): ║                             "sortOrder": 12,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "juice",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 1100,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        },
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b40d",
I/flutter ( 2077): ║                             "name": "بيت بانش",
I/flutter ( 2077): ║                             "description": "عصير ضمن فئة العصير.",
I/flutter ( 2077): ║                             "sortOrder": 13,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "juice",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 1100,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        },
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b40e",
I/flutter ( 2077): ║                             "name": "أورانج كاروت",
I/flutter ( 2077): ║                             "description": "عصير ضمن فئة العصير.",
I/flutter ( 2077): ║                             "sortOrder": 14,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "juice",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 1100,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        },
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b40f",
I/flutter ( 2077): ║                             "name": "واترميلون منت",
I/flutter ( 2077): ║                             "description": "عصير ضمن فئة العصير.",
I/flutter ( 2077): ║                             "sortOrder": 15,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "juice",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 1100,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        },
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b410",
I/flutter ( 2077): ║                             "name": "بروتين درينك",
I/flutter ( 2077): ║                             "description": "مشروب ضمن فئة العصير.",
I/flutter ( 2077): ║                             "sortOrder": 16,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "juice",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 1900,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        },
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b411",
I/flutter ( 2077): ║                             "name": "دايت آيسد تي",
I/flutter ( 2077): ║                             "description": "مشروب ضمن فئة العصير.",
I/flutter ( 2077): ║                             "sortOrder": 17,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "juice",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 400,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        },
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b412",
I/flutter ( 2077): ║                             "name": "دايت صودا",
I/flutter ( 2077): ║                             "description": "مشروب ضمن فئة العصير.",
I/flutter ( 2077): ║                             "sortOrder": 18,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "juice",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 300,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        },
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b413",
I/flutter ( 2077): ║                             "name": "ماء",
I/flutter ( 2077): ║                             "description": "مياه ضمن فئة العصير.",
I/flutter ( 2077): ║                             "sortOrder": 19,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "juice",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 200,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        }
I/flutter ( 2077): ║                     ],
I/flutter ( 2077): ║                     "small_salad": [
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b41b",
I/flutter ( 2077): ║                             "name": "سلطة صغيرة",
I/flutter ( 2077): ║                             "description": "سلطة ضمن فئة السلطة الصغيرة.",
I/flutter ( 2077): ║                             "sortOrder": 50,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "small_salad",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 1200,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        }
I/flutter ( 2077): ║                     ],
I/flutter ( 2077): ║                     "snack": [
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b414",
I/flutter ( 2077): ║                             "name": "مافن تفاح بالقرفة (قطعتان)",
I/flutter ( 2077): ║                             "description": "سناك ضمن فئة السناك.",
I/flutter ( 2077): ║                             "sortOrder": 30,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "snack",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 1200,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        },
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b415",
I/flutter ( 2077): ║                             "name": "بلو بيري تشيزكيك",
I/flutter ( 2077): ║                             "description": "سناك ضمن فئة السناك.",
I/flutter ( 2077): ║                             "sortOrder": 31,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "snack",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 1900,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        },
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b416",
I/flutter ( 2077): ║                             "name": "ستروبيري تشيزكيك",
I/flutter ( 2077): ║                             "description": "سناك ضمن فئة السناك.",
I/flutter ( 2077): ║                             "sortOrder": 32,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "snack",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 1900,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        },
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b417",
I/flutter ( 2077): ║                             "name": "دارك براونيز",
I/flutter ( 2077): ║                             "description": "سناك ضمن فئة السناك.",
I/flutter ( 2077): ║                             "sortOrder": 33,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "snack",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 1300,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        },
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b418",
I/flutter ( 2077): ║                             "name": "بروتين بار",
I/flutter ( 2077): ║                             "description": "سناك ضمن فئة السناك.",
I/flutter ( 2077): ║                             "sortOrder": 34,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "snack",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 1500,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        },
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b419",
I/flutter ( 2077): ║                             "name": "كلاسيك بيسك",
I/flutter ( 2077): ║                             "description": "سناك ضمن فئة السناك.",
I/flutter ( 2077): ║                             "sortOrder": 35,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "snack",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 1400,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        },
I/flutter ( 2077): ║                        {
I/flutter ( 2077): ║                             "id": "69f2399d4eee65376d14b41a",
I/flutter ( 2077): ║                             "name": "كيكة بروتين بالشوكولاتة",
I/flutter ( 2077): ║                             "description": "سناك ضمن فئة السناك.",
I/flutter ( 2077): ║                             "sortOrder": 36,
I/flutter ( 2077): ║                             "isActive": true,
I/flutter ( 2077): ║                             "category": "snack",
I/flutter ( 2077): ║                             "kind": "item",
I/flutter ( 2077): ║                             "priceHalala": 400,
I/flutter ( 2077): ║                             "currency": "SAR"
I/flutter ( 2077): ║                        }
I/flutter ( 2077): ║                     ]
I/flutter ( 2077): ║                }
I/flutter ( 2077): ║            }
I/flutter ( 2077): ║             "delivery": {
I/flutter ( 2077): ║                 "windows": [{value: 16:00-18:00, label: 16:00-18:00}, {value: 18:00-20:00, label: 18:00-20:00}]
I/flutter ( 2077): ║                 "zones": [
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f142e831962803c54bbb52",
I/flutter ( 2077): ║                         "name": "الملقا",
I/flutter ( 2077): ║                         "deliveryFeeHalala": 1500,
I/flutter ( 2077): ║                         "sortOrder": 1,
I/flutter ( 2077): ║                         "isActive": true
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f142e831962803c54bbb58",
I/flutter ( 2077): ║                         "name": "الياسمين",
I/flutter ( 2077): ║                         "deliveryFeeHalala": 1800,
I/flutter ( 2077): ║                         "sortOrder": 2,
I/flutter ( 2077): ║                         "isActive": true
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f142e831962803c54bbb5f",
I/flutter ( 2077): ║                         "name": "النرجس",
I/flutter ( 2077): ║                         "deliveryFeeHalala": 2000,
I/flutter ( 2077): ║                         "sortOrder": 3,
I/flutter ( 2077): ║                         "isActive": true
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f142e831962803c54bbb65",
I/flutter ( 2077): ║                         "name": "حطين",
I/flutter ( 2077): ║                         "deliveryFeeHalala": 2200,
I/flutter ( 2077): ║                         "sortOrder": 4,
I/flutter ( 2077): ║                         "isActive": true
I/flutter ( 2077): ║                    },
I/flutter ( 2077): ║                    {
I/flutter ( 2077): ║                         "id": "69f142e831962803c54bbb6a",
I/flutter ( 2077): ║                         "name": "الصحافة",
I/flutter ( 2077): ║                         "deliveryFeeHalala": 1700,
I/flutter ( 2077): ║                         "sortOrder": 5,
I/flutter ( 2077): ║                         "isActive": true
I/flutter ( 2077): ║                    }
I/flutter ( 2077): ║                 ]
I/flutter ( 2077): ║            }
I/flutter ( 2077): ║             "restaurantHours": {
I/flutter ( 2077): ║                 "openTime": "10:00",
I/flutter ( 2077): ║                 "closeTime": "23:00",
I/flutter ( 2077): ║                 "isOpenNow": true,
I/flutter ( 2077): ║                 "businessDate": "2026-05-06",
I/flutter ( 2077): ║                 "businessTomorrow": "2026-05-07"
I/flutter ( 2077): ║            }
I/flutter ( 2077): ║        }
I/flutter ( 2077): ║    }
I/flutter ( 2077): ║
I/flutter ( 2077): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 2077): onChange -- MenuBloc, Change { currentState: MenuLoading(), nextState: MenuError(defaultError) }
E/libEGL  ( 2077): called unimplemented OpenGL ES API

======== Exception caught by widgets library =======================================================
The following ProviderNotFoundException was thrown building KeyedSubtree-[GlobalKey#c9290]:
Error: Could not find the correct Provider<CartBloc> above this BlocBuilder<CartBloc, CartState> Widget

This happens because you used a `BuildContext` that does not include the provider
of your choice. There are a few common scenarios:

- You added a new provider in your `main.dart` and performed a hot-reload.
  To fix, perform a hot-restart.

- The provider you are trying to read is in a different route.

  Providers are "scoped". So if you insert of provider inside a route, then
  other routes will not be able to access that provider.

- You used a `BuildContext` that is an ancestor of the provider you are trying to read.

  Make sure that BlocBuilder<CartBloc, CartState> is under your MultiProvider/Provider<CartBloc>.
  This usually happens when you are creating a provider and trying to read it immediately.

  For example, instead of:

  ```
  Widget build(BuildContext context) {
    return Provider<Example>(
      create: (_) => Example(),
      // Will throw a ProviderNotFoundError, because `context` is associated
      // to the widget that is the parent of `Provider<Example>`
      child: Text(context.watch<Example>().toString()),
    );
  }
  ```

  consider using `builder` like so:

  ```
  Widget build(BuildContext context) {
    return Provider<Example>(
      create: (_) => Example(),
      // we use `builder` to obtain a new `BuildContext` that has access to the provider
      builder: (context, child) {
        // No longer throws
        return Text(context.watch<Example>().toString());
      }
    );
  }
  ```

If none of these solutions work, consider asking for help on StackOverflow:
https://stackoverflow.com/questions/tagged/flutter

The relevant error-causing widget was:
Scaffold Scaffold:file:///Users/moali/AndroidStudioProjects/mobile_app/lib/presentation/main/cart/cart_screen.dart:22:12
When the exception was thrown, this was the stack:
#0      Provider._inheritedElementOf (package:provider/src/provider.dart:377:7)
#1      Provider.of (package:provider/src/provider.dart:327:30)
#2      ReadContext.read (package:provider/src/provider.dart:683:21)
#3      _BlocBuilderBaseState.initState (package:flutter_bloc/src/bloc_builder.dart:152:36)
#4      StatefulElement._firstBuild (package:flutter/src/widgets/framework.dart:5860:55)
#5      ComponentElement.mount (package:flutter/src/widgets/framework.dart:5709:5)
...     Normal element mounting (25 frames)
#30     Element.inflateWidget (package:flutter/src/widgets/framework.dart:4555:16)
#31     MultiChildRenderObjectElement.inflateWidget (package:flutter/src/widgets/framework.dart:7178:36)
#32     MultiChildRenderObjectElement.mount (package:flutter/src/widgets/framework.dart:7194:32)
...     Normal element mounting (267 frames)
#299    Element.inflateWidget (package:flutter/src/widgets/framework.dart:4555:16)
#300    MultiChildRenderObjectElement.inflateWidget (package:flutter/src/widgets/framework.dart:7178:36)
#301    Element.updateChild (package:flutter/src/widgets/framework.dart:4020:18)
#302    Element.updateChildren (package:flutter/src/widgets/framework.dart:4217:11)
#303    MultiChildRenderObjectElement.update (package:flutter/src/widgets/framework.dart:7211:17)
#304    Element.updateChild (package:flutter/src/widgets/framework.dart:3998:15)
#305    ComponentElement.performRebuild (package:flutter/src/widgets/framework.dart:5756:16)
#306    StatefulElement.performRebuild (package:flutter/src/widgets/framework.dart:5892:11)
#307    Element.rebuild (package:flutter/src/widgets/framework.dart:5445:7)
#308    StatefulElement.update (package:flutter/src/widgets/framework.dart:5917:5)
#309    Element.updateChild (package:flutter/src/widgets/framework.dart:3998:15)
#310    ComponentElement.performRebuild (package:flutter/src/widgets/framework.dart:5756:16)
#311    Element.rebuild (package:flutter/src/widgets/framework.dart:5445:7)
#312    ProxyElement.update (package:flutter/src/widgets/framework.dart:6059:5)
#313    Element.updateChild (package:flutter/src/widgets/framework.dart:3998:15)
#314    ComponentElement.performRebuild (package:flutter/src/widgets/framework.dart:5756:16)
#315    Element.rebuild (package:flutter/src/widgets/framework.dart:5445:7)
#316    ProxyElement.update (package:flutter/src/widgets/framework.dart:6059:5)
#317    _InheritedNotifierElement.update (package:flutter/src/widgets/inherited_notifier.dart:108:11)
#318    Element.updateChild (package:flutter/src/widgets/framework.dart:3998:15)
#319    ComponentElement.performRebuild (package:flutter/src/widgets/framework.dart:5756:16)
#320    StatefulElement.performRebuild (package:flutter/src/widgets/framework.dart:5892:11)
#321    Element.rebuild (package:flutter/src/widgets/framework.dart:5445:7)
#322    StatefulElement.update (package:flutter/src/widgets/framework.dart:5917:5)
#323    Element.updateChild (package:flutter/src/widgets/framework.dart:3998:15)
#324    ComponentElement.performRebuild (package:flutter/src/widgets/framework.dart:5756:16)
#325    Element.rebuild (package:flutter/src/widgets/framework.dart:5445:7)
#326    ProxyElement.update (package:flutter/src/widgets/framework.dart:6059:5)
#327    _InheritedNotifierElement.update (package:flutter/src/widgets/inherited_notifier.dart:108:11)
#328    Element.updateChild (package:flutter/src/widgets/framework.dart:3998:15)
#329    ComponentElement.performRebuild (package:flutter/src/widgets/framework.dart:5756:16)
#330    StatefulElement.performRebuild (package:flutter/src/widgets/framework.dart:5892:11)
#331    Element.rebuild (package:flutter/src/widgets/framework.dart:5445:7)
#332    StatefulElement.update (package:flutter/src/widgets/framework.dart:5917:5)
#333    Element.updateChild (package:flutter/src/widgets/framework.dart:3998:15)
#334    ComponentElement.performRebuild (package:flutter/src/widgets/framework.dart:5756:16)
#335    StatefulElement.performRebuild (package:flutter/src/widgets/framework.dart:5892:11)
#336    Element.rebuild (package:flutter/src/widgets/framework.dart:5445:7)
#337    StatefulElement.update (package:flutter/src/widgets/framework.dart:5917:5)
#338    Element.updateChild (package:flutter/src/widgets/framework.dart:3998:15)
#339    SingleChildRenderObjectElement.update (package:flutter/src/widgets/framework.dart:7034:14)
#340    Element.updateChild (package:flutter/src/widgets/framework.dart:3998:15)
#341    SingleChildRenderObjectElement.update (package:flutter/src/widgets/framework.dart:7034:14)
#342    Element.updateChild (package:flutter/src/widgets/framework.dart:3998:15)
#343    ComponentElement.performRebuild (package:flutter/src/widgets/framework.dart:5756:16)
#344    Element.rebuild (package:flutter/src/widgets/framework.dart:5445:7)
#345    ProxyElement.update (package:flutter/src/widgets/framework.dart:6059:5)
#346    Element.updateChild (package:flutter/src/widgets/framework.dart:3998:15)
#347    ComponentElement.performRebuild (package:flutter/src/widgets/framework.dart:5756:16)
#348    Element.rebuild (package:flutter/src/widgets/framework.dart:5445:7)
#349    ProxyElement.update (package:flutter/src/widgets/framework.dart:6059:5)
#350    Element.updateChild (package:flutter/src/widgets/framework.dart:3998:15)
#351    ComponentElement.performRebuild (package:flutter/src/widgets/framework.dart:5756:16)
#352    StatefulElement.performRebuild (package:flutter/src/widgets/framework.dart:5892:11)
#353    Element.rebuild (package:flutter/src/widgets/framework.dart:5445:7)
#354    StatefulElement.update (package:flutter/src/widgets/framework.dart:5917:5)
#355    Element.updateChild (package:flutter/src/widgets/framework.dart:3998:15)
#356    ComponentElement.performRebuild (package:flutter/src/widgets/framework.dart:5756:16)
#357    Element.rebuild (package:flutter/src/widgets/framework.dart:5445:7)
#358    ProxyElement.update (package:flutter/src/widgets/framework.dart:6059:5)
#359    Element.updateChild (package:flutter/src/widgets/framework.dart:3998:15)
#360    ComponentElement.performRebuild (package:flutter/src/widgets/framework.dart:5756:16)
#361    Element.rebuild (package:flutter/src/widgets/framework.dart:5445:7)
#362    ProxyElement.update (package:flutter/src/widgets/framework.dart:6059:5)
#363    _InheritedNotifierElement.update (package:flutter/src/widgets/inherited_notifier.dart:108:11)
#364    Element.updateChild (package:flutter/src/widgets/framework.dart:3998:15)
#365    ComponentElement.performRebuild (package:flutter/src/widgets/framework.dart:5756:16)
#366    StatefulElement.performRebuild (package:flutter/src/widgets/framework.dart:5892:11)
#367    Element.rebuild (package:flutter/src/widgets/framework.dart:5445:7)
#368    StatefulElement.update (package:flutter/src/widgets/framework.dart:5917:5)
#369    Element.updateChild (package:flutter/src/widgets/framework.dart:3998:15)
#370    ComponentElement.performRebuild (package:flutter/src/widgets/framework.dart:5756:16)
#371    Element.rebuild (package:flutter/src/widgets/framework.dart:5445:7)
#372    ProxyElement.update (package:flutter/src/widgets/framework.dart:6059:5)
#373    Element.updateChild (package:flutter/src/widgets/framework.dart:3998:15)
#374    ComponentElement.performRebuild (package:flutter/src/widgets/framework.dart:5756:16)
#375    Element.rebuild (package:flutter/src/widgets/framework.dart:5445:7)
#376    StatelessElement.update (package:flutter/src/widgets/framework.dart:5805:5)
#377    Element.updateChild (package:flutter/src/widgets/framework.dart:3998:15)
#378    ComponentElement.performRebuild (package:flutter/src/widgets/framework.dart:5756:16)
#379    Element.rebuild (package:flutter/src/widgets/framework.dart:5445:7)
#380    ProxyElement.update (package:flutter/src/widgets/framework.dart:6059:5)
#381    Element.updateChild (package:flutter/src/widgets/framework.dart:3998:15)
#382    ComponentElement.performRebuild (package:flutter/src/widgets/framework.dart:5756:16)
#383    Element.rebuild (package:flutter/src/widgets/framework.dart:5445:7)
#384    ProxyElement.update (package:flutter/src/widgets/framework.dart:6059:5)
#385    Element.updateChild (package:flutter/src/widgets/framework.dart:3998:15)
#386    ComponentElement.performRebuild (package:flutter/src/widgets/framework.dart:5756:16)
#387    StatefulElement.performRebuild (package:flutter/src/widgets/framework.dart:5892:11)
#388    Element.rebuild (package:flutter/src/widgets/framework.dart:5445:7)
#389    BuildScope._tryRebuild (package:flutter/src/widgets/framework.dart:2704:15)
#390    BuildScope._flushDirtyElements (package:flutter/src/widgets/framework.dart:2762:11)
#391    BuildOwner.buildScope (package:flutter/src/widgets/framework.dart:3066:18)
#392    WidgetsBinding.drawFrame (package:flutter/src/widgets/binding.dart:1229:21)
#393    RendererBinding._handlePersistentFrameCallback (package:flutter/src/rendering/binding.dart:482:5)
#394    SchedulerBinding._invokeFrameCallback (package:flutter/src/scheduler/binding.dart:1442:15)
#395    SchedulerBinding.handleDrawFrame (package:flutter/src/scheduler/binding.dart:1355:9)
#396    SchedulerBinding._handleDrawFrame (package:flutter/src/scheduler/binding.dart:1208:5)
#397    _invoke (dart:ui/hooks.dart:316:13)
#398    PlatformDispatcher._drawFrame (dart:ui/platform_dispatcher.dart:428:5)
#399    _drawFrame (dart:ui/hooks.dart:288:31)
====================================================================================================
W/WindowOnBackDispatcher( 2077): OnBackInvokedCallback is not enabled for the application.
W/WindowOnBackDispatcher( 2077): Set 'android:enableOnBackInvokedCallback="true"' in the application manifest.
