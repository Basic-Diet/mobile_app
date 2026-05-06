
I/flutter (17529): ╔╣ Request ║ GET
I/flutter (17529): ║  https://basicdiet145.onrender.com/api/orders/menu
I/flutter (17529): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter (17529): ╔ Headers
I/flutter (17529): ╟ accept: application/json
I/flutter (17529): ╟ content-type: application/json
I/flutter (17529): ╟ authorization:
I/flutter (17529): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2OWYyMzdmMjE5Mjg4ZGJjOWUxNjMxZG
I/flutter (17529): ║ UiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc3ODAwMTU5MCwiZXhwIjox
I/flutter (17529): ║ NzgwNjc5OTkwfQ.T36wXb4fA6Ujv7vSOH29iyJLZJc2Qys_IEEMH_xyUKo
I/flutter (17529): ╟ Accept-Language: ar
I/flutter (17529): ╟ contentType: application/json
I/flutter (17529): ╟ responseType: ResponseType.json
I/flutter (17529): ╟ followRedirects: true
I/flutter (17529): ╟ receiveTimeout: 16:40:00.000000
I/flutter (17529): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter (17529):
I/flutter (17529): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 723 ms
I/flutter (17529): ║  https://basicdiet145.onrender.com/api/orders/menu
I/flutter (17529): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter (17529): ╔ Headers
I/flutter (17529): ╟ x-dns-prefetch-control: [off]
I/flutter (17529): ╟ x-render-origin-server: [Render]
I/flutter (17529): ╟ date: [Wed, 06 May 2026 18:07:07 GMT]
I/flutter (17529): ╟ transfer-encoding: [chunked]
I/flutter (17529): ╟ origin-agent-cluster: [?1]
I/flutter (17529): ╟ vary: [Origin, Accept-Encoding]
I/flutter (17529): ╟ content-encoding: [gzip]
I/flutter (17529): ╟ server: [cloudflare]
I/flutter (17529): ╟ cross-origin-resource-policy: [same-origin]
I/flutter (17529): ╟ cf-ray: [9f79ec329d5c4912-MRS]
I/flutter (17529): ╟ etag: [W/"6239-K0ioIf9FthGqY4EaGTCFsQMgmQY"]
I/flutter (17529): ╟ x-frame-options: [SAMEORIGIN]
I/flutter (17529): ╟ content-security-policy:
I/flutter (17529): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter (17529): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter (17529): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter (17529): ╟ connection: [keep-alive]
I/flutter (17529): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter (17529): ╟ referrer-policy: [no-referrer]
I/flutter (17529): ╟ cf-cache-status: [DYNAMIC]
I/flutter (17529): ╟ x-permitted-cross-domain-policies: [none]
I/flutter (17529): ╟ cross-origin-opener-policy: [same-origin]
I/flutter (17529): ╟ content-type: [application/json; charset=utf-8]
I/flutter (17529): ╟ rndr-id: [4d9dafd1-1923-412e]
I/flutter (17529): ╟ x-xss-protection: [0]
I/flutter (17529): ╟ access-control-allow-credentials: [true]
I/flutter (17529): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter (17529): ╟ x-download-options: [noopen]
I/flutter (17529): ╟ x-content-type-options: [nosniff]
I/flutter (17529): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter (17529): ╔ Body
I/flutter (17529): ║
I/flutter (17529): ║    {
I/flutter (17529): ║         "status": true,
I/flutter (17529): ║         "data": {
I/flutter (17529): ║             "currency": "SAR",
I/flutter (17529): ║             "itemTypes": [standard_meal, sandwich, salad, addon_item]
I/flutter (17529): ║             "standardMeals": {
I/flutter (17529): ║                 "proteins": [
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1897831962803c54be731",
I/flutter (17529): ║                         "name": "بيض مسلوق",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 1,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "displayCategoryKey": "eggs",
I/flutter (17529): ║                         "proteinFamilyKey": "eggs",
I/flutter (17529): ║                         "isPremium": false,
I/flutter (17529): ║                         "extraFeeHalala": 0,
I/flutter (17529): ║                         "currency": "SAR",
I/flutter (17529): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1897d31962803c54be741",
I/flutter (17529): ║                         "name": "لحم استرغانوف",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 2,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "displayCategoryKey": "beef",
I/flutter (17529): ║                         "proteinFamilyKey": "beef",
I/flutter (17529): ║                         "isPremium": false,
I/flutter (17529): ║                         "extraFeeHalala": 0,
I/flutter (17529): ║                         "currency": "SAR",
I/flutter (17529): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1897931962803c54be736",
I/flutter (17529): ║                         "name": "دجاج زبدة",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 2,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "displayCategoryKey": "chicken",
I/flutter (17529): ║                         "proteinFamilyKey": "chicken",
I/flutter (17529): ║                         "isPremium": false,
I/flutter (17529): ║                         "extraFeeHalala": 0,
I/flutter (17529): ║                         "currency": "SAR",
I/flutter (17529): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1897a31962803c54be737",
I/flutter (17529): ║                         "name": "دجاج كريمة",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 3,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "displayCategoryKey": "chicken",
I/flutter (17529): ║                         "proteinFamilyKey": "chicken",
I/flutter (17529): ║                         "isPremium": false,
I/flutter (17529): ║                         "extraFeeHalala": 0,
I/flutter (17529): ║                         "currency": "SAR",
I/flutter (17529): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1897a31962803c54be738",
I/flutter (17529): ║                         "name": "دجاج كاري وجوز الهند",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 4,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "displayCategoryKey": "chicken",
I/flutter (17529): ║                         "proteinFamilyKey": "chicken",
I/flutter (17529): ║                         "isPremium": false,
I/flutter (17529): ║                         "extraFeeHalala": 0,
I/flutter (17529): ║                         "currency": "SAR",
I/flutter (17529): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1897a31962803c54be739",
I/flutter (17529): ║                         "name": "دجاج سبايسي",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 5,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "displayCategoryKey": "chicken",
I/flutter (17529): ║                         "proteinFamilyKey": "chicken",
I/flutter (17529): ║                         "isPremium": false,
I/flutter (17529): ║                         "extraFeeHalala": 0,
I/flutter (17529): ║                         "currency": "SAR",
I/flutter (17529): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1897b31962803c54be73a",
I/flutter (17529): ║                         "name": "دجاج توابل إيطالية",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 6,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "displayCategoryKey": "chicken",
I/flutter (17529): ║                         "proteinFamilyKey": "chicken",
I/flutter (17529): ║                         "isPremium": false,
I/flutter (17529): ║                         "extraFeeHalala": 0,
I/flutter (17529): ║                         "currency": "SAR",
I/flutter (17529): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1897b31962803c54be73b",
I/flutter (17529): ║                         "name": "دجاج تكا",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 7,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "displayCategoryKey": "chicken",
I/flutter (17529): ║                         "proteinFamilyKey": "chicken",
I/flutter (17529): ║                         "isPremium": false,
I/flutter (17529): ║                         "extraFeeHalala": 0,
I/flutter (17529): ║                         "currency": "SAR",
I/flutter (17529): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1897b31962803c54be73c",
I/flutter (17529): ║                         "name": "دجاج آسيوي",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 8,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "displayCategoryKey": "chicken",
I/flutter (17529): ║                         "proteinFamilyKey": "chicken",
I/flutter (17529): ║                         "isPremium": false,
I/flutter (17529): ║                         "extraFeeHalala": 0,
I/flutter (17529): ║                         "currency": "SAR",
I/flutter (17529): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1897c31962803c54be73d",
I/flutter (17529): ║                         "name": "استربس",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 9,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "displayCategoryKey": "chicken",
I/flutter (17529): ║                         "proteinFamilyKey": "chicken",
I/flutter (17529): ║                         "isPremium": false,
I/flutter (17529): ║                         "extraFeeHalala": 0,
I/flutter (17529): ║                         "currency": "SAR",
I/flutter (17529): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1897c31962803c54be73e",
I/flutter (17529): ║                         "name": "دجاج مشوي",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 10,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "displayCategoryKey": "chicken",
I/flutter (17529): ║                         "proteinFamilyKey": "chicken",
I/flutter (17529): ║                         "isPremium": false,
I/flutter (17529): ║                         "extraFeeHalala": 0,
I/flutter (17529): ║                         "currency": "SAR",
I/flutter (17529): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f188fdc48e7ad405aff5a0",
I/flutter (17529): ║                         "name": "ستيك لحم",
I/flutter (17529): ║                         "description": "ستيك لحم طري مشوي يقدم بتتبيلة غنية ولمسة مطاعم راقية."
I/flutter (17529): ║                         "sortOrder": 10,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "displayCategoryKey": "premium",
I/flutter (17529): ║                         "proteinFamilyKey": "beef",
I/flutter (17529): ║                         "isPremium": true,
I/flutter (17529): ║                         "extraFeeHalala": 2200,
I/flutter (17529): ║                         "currency": "SAR",
I/flutter (17529): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1897c31962803c54be73f",
I/flutter (17529): ║                         "name": "دجاج مكسيكي",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 11,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "displayCategoryKey": "chicken",
I/flutter (17529): ║                         "proteinFamilyKey": "chicken",
I/flutter (17529): ║                         "isPremium": false,
I/flutter (17529): ║                         "extraFeeHalala": 0,
I/flutter (17529): ║                         "currency": "SAR",
I/flutter (17529): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f188fdc48e7ad405aff5a3",
I/flutter (17529): ║                         "name": "سلمون",
I/flutter (17529): ║                         "description": "فيليه سلمون مشوي مع خضار طازجة ولمسة ليمون وأعشاب خفيفة."
I/flutter (17529): ║                         "sortOrder": 20,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "displayCategoryKey": "premium",
I/flutter (17529): ║                         "proteinFamilyKey": "fish",
I/flutter (17529): ║                         "isPremium": true,
I/flutter (17529): ║                         "extraFeeHalala": 2500,
I/flutter (17529): ║                         "currency": "SAR",
I/flutter (17529): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f188fdc48e7ad405aff59d",
I/flutter (17529): ║                         "name": "روبيان",
I/flutter (17529): ║                         "description": "طبق روبيان مشوي مع خضار ملونة وصوص خفيف بنكهة غنية."
I/flutter (17529): ║                         "sortOrder": 30,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "displayCategoryKey": "premium",
I/flutter (17529): ║                         "proteinFamilyKey": "fish",
I/flutter (17529): ║                         "isPremium": true,
I/flutter (17529): ║                         "extraFeeHalala": 2000,
I/flutter (17529): ║                         "currency": "SAR",
I/flutter (17529): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter (17529): ║                    }
I/flutter (17529): ║                 ],
I/flutter (17529): ║                 "carbs": [
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f236cf8fa6b04ccc6fbcd0",
I/flutter (17529): ║                         "name": "كارب غير متاح",
I/flutter (17529): ║                         "description": "غير متاح",
I/flutter (17529): ║                         "sortOrder": 0,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "displayCategoryKey": "standard_carbs",
I/flutter (17529): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f190fb1f03fdbe74c64f4f",
I/flutter (17529): ║                         "name": "كارب غير متاح",
I/flutter (17529): ║                         "description": "غير متاح",
I/flutter (17529): ║                         "sortOrder": 0,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "displayCategoryKey": "standard_carbs",
I/flutter (17529): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f18ffa4724d9d86bcdb0c3",
I/flutter (17529): ║                         "name": "كارب غير متاح",
I/flutter (17529): ║                         "description": "غير متاح",
I/flutter (17529): ║                         "sortOrder": 0,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "displayCategoryKey": "standard_carbs",
I/flutter (17529): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f02ab231962803c54b0a36",
I/flutter (17529): ║                         "name": "رز أبيض",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 1,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "displayCategoryKey": "standard_carbs",
I/flutter (17529): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f02ab231962803c54b0a37",
I/flutter (17529): ║                         "name": "رز بالكركم",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 2,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "displayCategoryKey": "standard_carbs",
I/flutter (17529): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f02ab331962803c54b0a38",
I/flutter (17529): ║                         "name": "رز برياني",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 3,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "displayCategoryKey": "standard_carbs",
I/flutter (17529): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f02ab331962803c54b0a39",
I/flutter (17529): ║                         "name": "كينوا",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 4,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "displayCategoryKey": "standard_carbs",
I/flutter (17529): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f02ab331962803c54b0a3b",
I/flutter (17529): ║                         "name": "باستا الفريدو",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 5,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "displayCategoryKey": "standard_carbs",
I/flutter (17529): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f02ab431962803c54b0a3c",
I/flutter (17529): ║                         "name": "باستا بالصوص الأحمر",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 6,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "displayCategoryKey": "standard_carbs",
I/flutter (17529): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f02ab431962803c54b0a3d",
I/flutter (17529): ║                         "name": "بطاطس مشوي",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 7,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "displayCategoryKey": "standard_carbs",
I/flutter (17529): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f02ab431962803c54b0a3e",
I/flutter (17529): ║                         "name": "بطاطا حلوة",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 8,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "displayCategoryKey": "standard_carbs",
I/flutter (17529): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f02ab531962803c54b0a3f",
I/flutter (17529): ║                         "name": "خضار مشكل مشوي",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 9,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "displayCategoryKey": "standard_carbs",
I/flutter (17529): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1897831962803c54be730",
I/flutter (17529): ║                         "name": "سلطة كبيرة مميزة",
I/flutter (17529): ║                         "description": "هوية مرجعية للسلطة الكبيرة المميزة",
I/flutter (17529): ║                         "sortOrder": 999,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "displayCategoryKey": "large_salad",
I/flutter (17529): ║                         "nutrition": {calories: 0, proteinGrams: 0, carbGrams: 0, fatGrams: 0}
I/flutter (17529): ║                    }
I/flutter (17529): ║                 ]
I/flutter (17529): ║            }
I/flutter (17529): ║             "sandwiches": [
I/flutter (17529): ║                {
I/flutter (17529): ║                     "id": "69f3a136d960b113ace19df3",
I/flutter (17529): ║                     "name": "بيض مسلوق",
I/flutter (17529): ║                     "description": "",
I/flutter (17529): ║                     "sortOrder": 1,
I/flutter (17529): ║                     "isActive": true,
I/flutter (17529): ║                     "imageUrl": "",
I/flutter (17529): ║                     "calories": 0,
I/flutter (17529): ║                     "priceHalala": 0,
I/flutter (17529): ║                     "currency": "SAR",
I/flutter (17529): ║                     "proteinFamilyKey": "eggs"
I/flutter (17529): ║                },
I/flutter (17529): ║                {
I/flutter (17529): ║                     "id": "69f3a209d960b113ace19dfd",
I/flutter (17529): ║                     "name": "تركي",
I/flutter (17529): ║                     "description": "",
I/flutter (17529): ║                     "sortOrder": 2,
I/flutter (17529): ║                     "isActive": true,
I/flutter (17529): ║                     "imageUrl": "",
I/flutter (17529): ║                     "calories": 0,
I/flutter (17529): ║                     "priceHalala": 0,
I/flutter (17529): ║                     "currency": "SAR",
I/flutter (17529): ║                     "proteinFamilyKey": "other"
I/flutter (17529): ║                },
I/flutter (17529): ║                {
I/flutter (17529): ║                     "id": "69f3a212d960b113ace19dff",
I/flutter (17529): ║                     "name": "حلوم كلاسيكي",
I/flutter (17529): ║                     "description": "",
I/flutter (17529): ║                     "sortOrder": 3,
I/flutter (17529): ║                     "isActive": true,
I/flutter (17529): ║                     "imageUrl": "",
I/flutter (17529): ║                     "calories": 0,
I/flutter (17529): ║                     "priceHalala": 0,
I/flutter (17529): ║                     "currency": "SAR",
I/flutter (17529): ║                     "proteinFamilyKey": "other"
I/flutter (17529): ║                },
I/flutter (17529): ║                {
I/flutter (17529): ║                     "id": "69f3a21bd960b113ace19e01",
I/flutter (17529): ║                     "name": "تونا",
I/flutter (17529): ║                     "description": "",
I/flutter (17529): ║                     "sortOrder": 4,
I/flutter (17529): ║                     "isActive": true,
I/flutter (17529): ║                     "imageUrl": "",
I/flutter (17529): ║                     "calories": 0,
I/flutter (17529): ║                     "priceHalala": 0,
I/flutter (17529): ║                     "currency": "SAR",
I/flutter (17529): ║                     "proteinFamilyKey": "fish"
I/flutter (17529): ║                },
I/flutter (17529): ║                {
I/flutter (17529): ║                     "id": "69f3a226d960b113ace19e03",
I/flutter (17529): ║                     "name": "بيض اسكرامبل",
I/flutter (17529): ║                     "description": "",
I/flutter (17529): ║                     "sortOrder": 5,
I/flutter (17529): ║                     "isActive": true,
I/flutter (17529): ║                     "imageUrl": "",
I/flutter (17529): ║                     "calories": 0,
I/flutter (17529): ║                     "priceHalala": 0,
I/flutter (17529): ║                     "currency": "SAR",
I/flutter (17529): ║                     "proteinFamilyKey": "eggs"
I/flutter (17529): ║                },
I/flutter (17529): ║                {
I/flutter (17529): ║                     "id": "69f3a22fd960b113ace19e07",
I/flutter (17529): ║                     "name": "دجاج فاهيتا",
I/flutter (17529): ║                     "description": "",
I/flutter (17529): ║                     "sortOrder": 6,
I/flutter (17529): ║                     "isActive": true,
I/flutter (17529): ║                     "imageUrl": "",
I/flutter (17529): ║                     "calories": 0,
I/flutter (17529): ║                     "priceHalala": 0,
I/flutter (17529): ║                     "currency": "SAR",
I/flutter (17529): ║                     "proteinFamilyKey": "chicken"
I/flutter (17529): ║                },
I/flutter (17529): ║                {
I/flutter (17529): ║                     "id": "69f3a238d960b113ace19e09",
I/flutter (17529): ║                     "name": "دجاج مكسيكي",
I/flutter (17529): ║                     "description": "",
I/flutter (17529): ║                     "sortOrder": 7,
I/flutter (17529): ║                     "isActive": true,
I/flutter (17529): ║                     "imageUrl": "",
I/flutter (17529): ║                     "calories": 0,
I/flutter (17529): ║                     "priceHalala": 0,
I/flutter (17529): ║                     "currency": "SAR",
I/flutter (17529): ║                     "proteinFamilyKey": "chicken"
I/flutter (17529): ║                },
I/flutter (17529): ║                {
I/flutter (17529): ║                     "id": "69f3a241d960b113ace19e0b",
I/flutter (17529): ║                     "name": "دجاج مشوي",
I/flutter (17529): ║                     "description": "",
I/flutter (17529): ║                     "sortOrder": 8,
I/flutter (17529): ║                     "isActive": true,
I/flutter (17529): ║                     "imageUrl": "",
I/flutter (17529): ║                     "calories": 0,
I/flutter (17529): ║                     "priceHalala": 0,
I/flutter (17529): ║                     "currency": "SAR",
I/flutter (17529): ║                     "proteinFamilyKey": "chicken"
I/flutter (17529): ║                }
I/flutter (17529): ║             ],
I/flutter (17529): ║             "salad": {
I/flutter (17529): ║                 "ingredients": [
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f00a8431962803c54af61d",
I/flutter (17529): ║                         "name": "الإضافات",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 2,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "groupKey": "cheese_nuts",
I/flutter (17529): ║                         "priceHalala": 0,
I/flutter (17529): ║                         "priceSar": 0,
I/flutter (17529): ║                         "calories": 0,
I/flutter (17529): ║                         "maxQuantity": null
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f00a8531962803c54af620",
I/flutter (17529): ║                         "name": "المكسرات",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 4,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "groupKey": "cheese_nuts",
I/flutter (17529): ║                         "priceHalala": 0,
I/flutter (17529): ║                         "priceSar": 0,
I/flutter (17529): ║                         "calories": 0,
I/flutter (17529): ║                         "maxQuantity": null
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1890131962803c54be6c2",
I/flutter (17529): ║                         "name": "فيتا",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 40.13,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "groupKey": "cheese_nuts",
I/flutter (17529): ║                         "priceHalala": 0,
I/flutter (17529): ║                         "priceSar": 0,
I/flutter (17529): ║                         "calories": 50,
I/flutter (17529): ║                         "maxQuantity": null
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1890231962803c54be6c7",
I/flutter (17529): ║                         "name": "سمسم",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 40.18,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "groupKey": "cheese_nuts",
I/flutter (17529): ║                         "priceHalala": 0,
I/flutter (17529): ║                         "priceSar": 0,
I/flutter (17529): ║                         "calories": 50,
I/flutter (17529): ║                         "maxQuantity": null
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1890231962803c54be6c9",
I/flutter (17529): ║                         "name": "كاجو",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 40.19,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "groupKey": "cheese_nuts",
I/flutter (17529): ║                         "priceHalala": 0,
I/flutter (17529): ║                         "priceSar": 0,
I/flutter (17529): ║                         "calories": 50,
I/flutter (17529): ║                         "maxQuantity": null
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1890131962803c54be6c1",
I/flutter (17529): ║                         "name": "بارميزان",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 50,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "groupKey": "cheese_nuts",
I/flutter (17529): ║                         "priceHalala": 0,
I/flutter (17529): ║                         "priceSar": 0,
I/flutter (17529): ║                         "calories": 0,
I/flutter (17529): ║                         "maxQuantity": null
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1890331962803c54be6ca",
I/flutter (17529): ║                         "name": "عين الجمل",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 60,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "groupKey": "cheese_nuts",
I/flutter (17529): ║                         "priceHalala": 0,
I/flutter (17529): ║                         "priceSar": 0,
I/flutter (17529): ║                         "calories": 0,
I/flutter (17529): ║                         "maxQuantity": null
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f00a8531962803c54af61f",
I/flutter (17529): ║                         "name": "الفواكه",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 3,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "groupKey": "fruits",
I/flutter (17529): ║                         "priceHalala": 0,
I/flutter (17529): ║                         "priceSar": 0,
I/flutter (17529): ║                         "calories": 0,
I/flutter (17529): ║                         "maxQuantity": null
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1890131962803c54be6c3",
I/flutter (17529): ║                         "name": "تمر",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 50.14,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "groupKey": "fruits",
I/flutter (17529): ║                         "priceHalala": 0,
I/flutter (17529): ║                         "priceSar": 0,
I/flutter (17529): ║                         "calories": 50,
I/flutter (17529): ║                         "maxQuantity": null
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1890231962803c54be6c4",
I/flutter (17529): ║                         "name": "توت أزرق",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 50.15,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "groupKey": "fruits",
I/flutter (17529): ║                         "priceHalala": 0,
I/flutter (17529): ║                         "priceSar": 0,
I/flutter (17529): ║                         "calories": 50,
I/flutter (17529): ║                         "maxQuantity": null
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1890231962803c54be6c6",
I/flutter (17529): ║                         "name": "رمان",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 70,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "groupKey": "fruits",
I/flutter (17529): ║                         "priceHalala": 0,
I/flutter (17529): ║                         "priceSar": 0,
I/flutter (17529): ║                         "calories": 0,
I/flutter (17529): ║                         "maxQuantity": null
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1890231962803c54be6c5",
I/flutter (17529): ║                         "name": "فراولة",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 80,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "groupKey": "fruits",
I/flutter (17529): ║                         "priceHalala": 0,
I/flutter (17529): ║                         "priceSar": 0,
I/flutter (17529): ║                         "calories": 0,
I/flutter (17529): ║                         "maxQuantity": null
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f188ff31962803c54be6b5",
I/flutter (17529): ║                         "name": "خس روماني",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 10,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "groupKey": "leafy_greens",
I/flutter (17529): ║                         "priceHalala": 0,
I/flutter (17529): ║                         "priceSar": 0,
I/flutter (17529): ║                         "calories": 0,
I/flutter (17529): ║                         "maxQuantity": null
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f188ff31962803c54be6b6",
I/flutter (17529): ║                         "name": "جرجير",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 20,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "groupKey": "leafy_greens",
I/flutter (17529): ║                         "priceHalala": 0,
I/flutter (17529): ║                         "priceSar": 0,
I/flutter (17529): ║                         "calories": 0,
I/flutter (17529): ║                         "maxQuantity": null
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f00a8531962803c54af621",
I/flutter (17529): ║                         "name": "الصوص",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 5,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "groupKey": "sauce",
I/flutter (17529): ║                         "priceHalala": 0,
I/flutter (17529): ║                         "priceSar": 0,
I/flutter (17529): ║                         "calories": 0,
I/flutter (17529): ║                         "maxQuantity": null
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1890331962803c54be6cc",
I/flutter (17529): ║                         "name": "عسل بالليمون",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 60.21,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "groupKey": "sauce",
I/flutter (17529): ║                         "priceHalala": 0,
I/flutter (17529): ║                         "priceSar": 0,
I/flutter (17529): ║                         "calories": 50,
I/flutter (17529): ║                         "maxQuantity": null
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1890331962803c54be6cd",
I/flutter (17529): ║                         "name": "زبادي بالنعناع",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 60.22,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "groupKey": "sauce",
I/flutter (17529): ║                         "priceHalala": 0,
I/flutter (17529): ║                         "priceSar": 0,
I/flutter (17529): ║                         "calories": 50,
I/flutter (17529): ║                         "maxQuantity": null
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1890331962803c54be6cf",
I/flutter (17529): ║                         "name": "صوص بيستو",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 60.24,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "groupKey": "sauce",
I/flutter (17529): ║                         "priceHalala": 0,
I/flutter (17529): ║                         "priceSar": 0,
I/flutter (17529): ║                         "calories": 50,
I/flutter (17529): ║                         "maxQuantity": null
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1890431962803c54be6d2",
I/flutter (17529): ║                         "name": "رانش",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 60.26,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "groupKey": "sauce",
I/flutter (17529): ║                         "priceHalala": 0,
I/flutter (17529): ║                         "priceSar": 0,
I/flutter (17529): ║                         "calories": 50,
I/flutter (17529): ║                         "maxQuantity": null
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1890431962803c54be6d0",
I/flutter (17529): ║                         "name": "سيزر",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 90,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "groupKey": "sauce",
I/flutter (17529): ║                         "priceHalala": 0,
I/flutter (17529): ║                         "priceSar": 0,
I/flutter (17529): ║                         "calories": 0,
I/flutter (17529): ║                         "maxQuantity": null
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1890331962803c54be6ce",
I/flutter (17529): ║                         "name": "هاني ماستر",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 100,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "groupKey": "sauce",
I/flutter (17529): ║                         "priceHalala": 0,
I/flutter (17529): ║                         "priceSar": 0,
I/flutter (17529): ║                         "calories": 0,
I/flutter (17529): ║                         "maxQuantity": null
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f00a8431962803c54af61c",
I/flutter (17529): ║                         "name": "الخضروات",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 1,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "groupKey": "vegetables",
I/flutter (17529): ║                         "priceHalala": 0,
I/flutter (17529): ║                         "priceSar": 0,
I/flutter (17529): ║                         "calories": 0,
I/flutter (17529): ║                         "maxQuantity": null
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f188ff31962803c54be6b7",
I/flutter (17529): ║                         "name": "بصل مخلل",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 20.02,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "groupKey": "vegetables",
I/flutter (17529): ║                         "priceHalala": 0,
I/flutter (17529): ║                         "priceSar": 0,
I/flutter (17529): ║                         "calories": 50,
I/flutter (17529): ║                         "maxQuantity": null
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1890031962803c54be6b8",
I/flutter (17529): ║                         "name": "نعناع",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 20.03,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "groupKey": "vegetables",
I/flutter (17529): ║                         "priceHalala": 0,
I/flutter (17529): ║                         "priceSar": 0,
I/flutter (17529): ║                         "calories": 50,
I/flutter (17529): ║                         "maxQuantity": null
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1890031962803c54be6b9",
I/flutter (17529): ║                         "name": "زيتون أسود",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 20.04,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "groupKey": "vegetables",
I/flutter (17529): ║                         "priceHalala": 0,
I/flutter (17529): ║                         "priceSar": 0,
I/flutter (17529): ║                         "calories": 50,
I/flutter (17529): ║                         "maxQuantity": null
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1890031962803c54be6ba",
I/flutter (17529): ║                         "name": "زيتون أخضر",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 20.05,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "groupKey": "vegetables",
I/flutter (17529): ║                         "priceHalala": 0,
I/flutter (17529): ║                         "priceSar": 0,
I/flutter (17529): ║                         "calories": 50,
I/flutter (17529): ║                         "maxQuantity": null
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1890031962803c54be6bb",
I/flutter (17529): ║                         "name": "بروكلي",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 20.06,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "groupKey": "vegetables",
I/flutter (17529): ║                         "priceHalala": 0,
I/flutter (17529): ║                         "priceSar": 0,
I/flutter (17529): ║                         "calories": 50,
I/flutter (17529): ║                         "maxQuantity": null
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1890031962803c54be6bc",
I/flutter (17529): ║                         "name": "فطر",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 20.07,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "groupKey": "vegetables",
I/flutter (17529): ║                         "priceHalala": 0,
I/flutter (17529): ║                         "priceSar": 0,
I/flutter (17529): ║                         "calories": 50,
I/flutter (17529): ║                         "maxQuantity": null
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1890031962803c54be6bd",
I/flutter (17529): ║                         "name": "كزبرة",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 20.08,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "groupKey": "vegetables",
I/flutter (17529): ║                         "priceHalala": 0,
I/flutter (17529): ║                         "priceSar": 0,
I/flutter (17529): ║                         "calories": 50,
I/flutter (17529): ║                         "maxQuantity": null
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1890031962803c54be6be",
I/flutter (17529): ║                         "name": "فلفل",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 20.09,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "groupKey": "vegetables",
I/flutter (17529): ║                         "priceHalala": 0,
I/flutter (17529): ║                         "priceSar": 0,
I/flutter (17529): ║                         "calories": 50,
I/flutter (17529): ║                         "maxQuantity": null
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1890131962803c54be6c0",
I/flutter (17529): ║                         "name": "هالينو",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 20.11,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "groupKey": "vegetables",
I/flutter (17529): ║                         "priceHalala": 0,
I/flutter (17529): ║                         "priceSar": 0,
I/flutter (17529): ║                         "calories": 50,
I/flutter (17529): ║                         "maxQuantity": null
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1898431962803c54be749",
I/flutter (17529): ║                         "name": "خيار",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 30,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "groupKey": "vegetables",
I/flutter (17529): ║                         "priceHalala": 0,
I/flutter (17529): ║                         "priceSar": 0,
I/flutter (17529): ║                         "calories": 0,
I/flutter (17529): ║                         "maxQuantity": null
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f1890131962803c54be6bf",
I/flutter (17529): ║                         "name": "بنجر",
I/flutter (17529): ║                         "description": "",
I/flutter (17529): ║                         "sortOrder": 40,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "groupKey": "vegetables",
I/flutter (17529): ║                         "priceHalala": 0,
I/flutter (17529): ║                         "priceSar": 0,
I/flutter (17529): ║                         "calories": 0,
I/flutter (17529): ║                         "maxQuantity": null
I/flutter (17529): ║                    }
I/flutter (17529): ║                 ],
I/flutter (17529): ║                 "groups": [
I/flutter (17529): ║                  {key: leafy_greens, name: ورقيات, minSelect: 0, maxSelect: 99, sortOrder: 10},
I/flutter (17529): ║                  {key: vegetables, name: خضار, minSelect: 0, maxSelect: 99, sortOrder: 20},
I/flutter (17529): ║                  {key: protein, name: بروتين, minSelect: 1, maxSelect: 1, sortOrder: 30},
I/flutter (17529): ║                  {key: cheese_nuts, name: أجبان ومكسرات, minSelect: 0, maxSelect: 99, sortOrder: 40},
I/flutter (17529): ║                  {key: fruits, name: فواكه, minSelect: 0, maxSelect: 99, sortOrder: 50},
I/flutter (17529): ║                  {key: sauce, name: صوص, minSelect: 1, maxSelect: 1, sortOrder: 60}
I/flutter (17529): ║                 ]
I/flutter (17529): ║            }
I/flutter (17529): ║             "addons": {
I/flutter (17529): ║                 "items": [
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f2399d4eee65376d14b40a",
I/flutter (17529): ║                         "name": "بيري بلاست",
I/flutter (17529): ║                         "description": "عصير ضمن فئة العصير.",
I/flutter (17529): ║                         "sortOrder": 10,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "category": "juice",
I/flutter (17529): ║                         "kind": "item",
I/flutter (17529): ║                         "priceHalala": 1100,
I/flutter (17529): ║                         "currency": "SAR"
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f2399d4eee65376d14b40b",
I/flutter (17529): ║                         "name": "بيري بروت",
I/flutter (17529): ║                         "description": "عصير ضمن فئة العصير.",
I/flutter (17529): ║                         "sortOrder": 11,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "category": "juice",
I/flutter (17529): ║                         "kind": "item",
I/flutter (17529): ║                         "priceHalala": 1300,
I/flutter (17529): ║                         "currency": "SAR"
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f2399d4eee65376d14b40c",
I/flutter (17529): ║                         "name": "كلاسيك جرين",
I/flutter (17529): ║                         "description": "عصير ضمن فئة العصير.",
I/flutter (17529): ║                         "sortOrder": 12,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "category": "juice",
I/flutter (17529): ║                         "kind": "item",
I/flutter (17529): ║                         "priceHalala": 1100,
I/flutter (17529): ║                         "currency": "SAR"
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f2399d4eee65376d14b40d",
I/flutter (17529): ║                         "name": "بيت بانش",
I/flutter (17529): ║                         "description": "عصير ضمن فئة العصير.",
I/flutter (17529): ║                         "sortOrder": 13,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "category": "juice",
I/flutter (17529): ║                         "kind": "item",
I/flutter (17529): ║                         "priceHalala": 1100,
I/flutter (17529): ║                         "currency": "SAR"
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f2399d4eee65376d14b40e",
I/flutter (17529): ║                         "name": "أورانج كاروت",
I/flutter (17529): ║                         "description": "عصير ضمن فئة العصير.",
I/flutter (17529): ║                         "sortOrder": 14,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "category": "juice",
I/flutter (17529): ║                         "kind": "item",
I/flutter (17529): ║                         "priceHalala": 1100,
I/flutter (17529): ║                         "currency": "SAR"
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f2399d4eee65376d14b40f",
I/flutter (17529): ║                         "name": "واترميلون منت",
I/flutter (17529): ║                         "description": "عصير ضمن فئة العصير.",
I/flutter (17529): ║                         "sortOrder": 15,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "category": "juice",
I/flutter (17529): ║                         "kind": "item",
I/flutter (17529): ║                         "priceHalala": 1100,
I/flutter (17529): ║                         "currency": "SAR"
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f2399d4eee65376d14b410",
I/flutter (17529): ║                         "name": "بروتين درينك",
I/flutter (17529): ║                         "description": "مشروب ضمن فئة العصير.",
I/flutter (17529): ║                         "sortOrder": 16,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "category": "juice",
I/flutter (17529): ║                         "kind": "item",
I/flutter (17529): ║                         "priceHalala": 1900,
I/flutter (17529): ║                         "currency": "SAR"
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f2399d4eee65376d14b411",
I/flutter (17529): ║                         "name": "دايت آيسد تي",
I/flutter (17529): ║                         "description": "مشروب ضمن فئة العصير.",
I/flutter (17529): ║                         "sortOrder": 17,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "category": "juice",
I/flutter (17529): ║                         "kind": "item",
I/flutter (17529): ║                         "priceHalala": 400,
I/flutter (17529): ║                         "currency": "SAR"
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f2399d4eee65376d14b412",
I/flutter (17529): ║                         "name": "دايت صودا",
I/flutter (17529): ║                         "description": "مشروب ضمن فئة العصير.",
I/flutter (17529): ║                         "sortOrder": 18,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "category": "juice",
I/flutter (17529): ║                         "kind": "item",
I/flutter (17529): ║                         "priceHalala": 300,
I/flutter (17529): ║                         "currency": "SAR"
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f2399d4eee65376d14b413",
I/flutter (17529): ║                         "name": "ماء",
I/flutter (17529): ║                         "description": "مياه ضمن فئة العصير.",
I/flutter (17529): ║                         "sortOrder": 19,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "category": "juice",
I/flutter (17529): ║                         "kind": "item",
I/flutter (17529): ║                         "priceHalala": 200,
I/flutter (17529): ║                         "currency": "SAR"
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f2399d4eee65376d14b41b",
I/flutter (17529): ║                         "name": "سلطة صغيرة",
I/flutter (17529): ║                         "description": "سلطة ضمن فئة السلطة الصغيرة.",
I/flutter (17529): ║                         "sortOrder": 50,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "category": "small_salad",
I/flutter (17529): ║                         "kind": "item",
I/flutter (17529): ║                         "priceHalala": 1200,
I/flutter (17529): ║                         "currency": "SAR"
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f2399d4eee65376d14b414",
I/flutter (17529): ║                         "name": "مافن تفاح بالقرفة (قطعتان)",
I/flutter (17529): ║                         "description": "سناك ضمن فئة السناك.",
I/flutter (17529): ║                         "sortOrder": 30,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "category": "snack",
I/flutter (17529): ║                         "kind": "item",
I/flutter (17529): ║                         "priceHalala": 1200,
I/flutter (17529): ║                         "currency": "SAR"
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f2399d4eee65376d14b415",
I/flutter (17529): ║                         "name": "بلو بيري تشيزكيك",
I/flutter (17529): ║                         "description": "سناك ضمن فئة السناك.",
I/flutter (17529): ║                         "sortOrder": 31,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "category": "snack",
I/flutter (17529): ║                         "kind": "item",
I/flutter (17529): ║                         "priceHalala": 1900,
I/flutter (17529): ║                         "currency": "SAR"
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f2399d4eee65376d14b416",
I/flutter (17529): ║                         "name": "ستروبيري تشيزكيك",
I/flutter (17529): ║                         "description": "سناك ضمن فئة السناك.",
I/flutter (17529): ║                         "sortOrder": 32,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "category": "snack",
I/flutter (17529): ║                         "kind": "item",
I/flutter (17529): ║                         "priceHalala": 1900,
I/flutter (17529): ║                         "currency": "SAR"
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f2399d4eee65376d14b417",
I/flutter (17529): ║                         "name": "دارك براونيز",
I/flutter (17529): ║                         "description": "سناك ضمن فئة السناك.",
I/flutter (17529): ║                         "sortOrder": 33,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "category": "snack",
I/flutter (17529): ║                         "kind": "item",
I/flutter (17529): ║                         "priceHalala": 1300,
I/flutter (17529): ║                         "currency": "SAR"
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f2399d4eee65376d14b418",
I/flutter (17529): ║                         "name": "بروتين بار",
I/flutter (17529): ║                         "description": "سناك ضمن فئة السناك.",
I/flutter (17529): ║                         "sortOrder": 34,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "category": "snack",
I/flutter (17529): ║                         "kind": "item",
I/flutter (17529): ║                         "priceHalala": 1500,
I/flutter (17529): ║                         "currency": "SAR"
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f2399d4eee65376d14b419",
I/flutter (17529): ║                         "name": "كلاسيك بيسك",
I/flutter (17529): ║                         "description": "سناك ضمن فئة السناك.",
I/flutter (17529): ║                         "sortOrder": 35,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "category": "snack",
I/flutter (17529): ║                         "kind": "item",
I/flutter (17529): ║                         "priceHalala": 1400,
I/flutter (17529): ║                         "currency": "SAR"
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f2399d4eee65376d14b41a",
I/flutter (17529): ║                         "name": "كيكة بروتين بالشوكولاتة",
I/flutter (17529): ║                         "description": "سناك ضمن فئة السناك.",
I/flutter (17529): ║                         "sortOrder": 36,
I/flutter (17529): ║                         "isActive": true,
I/flutter (17529): ║                         "category": "snack",
I/flutter (17529): ║                         "kind": "item",
I/flutter (17529): ║                         "priceHalala": 400,
I/flutter (17529): ║                         "currency": "SAR"
I/flutter (17529): ║                    }
I/flutter (17529): ║                 ],
I/flutter (17529): ║                 "byCategory": {
I/flutter (17529): ║                     "juice": [
I/flutter (17529): ║                        {
I/flutter (17529): ║                             "id": "69f2399d4eee65376d14b40a",
I/flutter (17529): ║                             "name": "بيري بلاست",
I/flutter (17529): ║                             "description": "عصير ضمن فئة العصير.",
I/flutter (17529): ║                             "sortOrder": 10,
I/flutter (17529): ║                             "isActive": true,
I/flutter (17529): ║                             "category": "juice",
I/flutter (17529): ║                             "kind": "item",
I/flutter (17529): ║                             "priceHalala": 1100,
I/flutter (17529): ║                             "currency": "SAR"
I/flutter (17529): ║                        },
I/flutter (17529): ║                        {
I/flutter (17529): ║                             "id": "69f2399d4eee65376d14b40b",
I/flutter (17529): ║                             "name": "بيري بروت",
I/flutter (17529): ║                             "description": "عصير ضمن فئة العصير.",
I/flutter (17529): ║                             "sortOrder": 11,
I/flutter (17529): ║                             "isActive": true,
I/flutter (17529): ║                             "category": "juice",
I/flutter (17529): ║                             "kind": "item",
I/flutter (17529): ║                             "priceHalala": 1300,
I/flutter (17529): ║                             "currency": "SAR"
I/flutter (17529): ║                        },
I/flutter (17529): ║                        {
I/flutter (17529): ║                             "id": "69f2399d4eee65376d14b40c",
I/flutter (17529): ║                             "name": "كلاسيك جرين",
I/flutter (17529): ║                             "description": "عصير ضمن فئة العصير.",
I/flutter (17529): ║                             "sortOrder": 12,
I/flutter (17529): ║                             "isActive": true,
I/flutter (17529): ║                             "category": "juice",
I/flutter (17529): ║                             "kind": "item",
I/flutter (17529): ║                             "priceHalala": 1100,
I/flutter (17529): ║                             "currency": "SAR"
I/flutter (17529): ║                        },
I/flutter (17529): ║                        {
I/flutter (17529): ║                             "id": "69f2399d4eee65376d14b40d",
I/flutter (17529): ║                             "name": "بيت بانش",
I/flutter (17529): ║                             "description": "عصير ضمن فئة العصير.",
I/flutter (17529): ║                             "sortOrder": 13,
I/flutter (17529): ║                             "isActive": true,
I/flutter (17529): ║                             "category": "juice",
I/flutter (17529): ║                             "kind": "item",
I/flutter (17529): ║                             "priceHalala": 1100,
I/flutter (17529): ║                             "currency": "SAR"
I/flutter (17529): ║                        },
I/flutter (17529): ║                        {
I/flutter (17529): ║                             "id": "69f2399d4eee65376d14b40e",
I/flutter (17529): ║                             "name": "أورانج كاروت",
I/flutter (17529): ║                             "description": "عصير ضمن فئة العصير.",
I/flutter (17529): ║                             "sortOrder": 14,
I/flutter (17529): ║                             "isActive": true,
I/flutter (17529): ║                             "category": "juice",
I/flutter (17529): ║                             "kind": "item",
I/flutter (17529): ║                             "priceHalala": 1100,
I/flutter (17529): ║                             "currency": "SAR"
I/flutter (17529): ║                        },
I/flutter (17529): ║                        {
I/flutter (17529): ║                             "id": "69f2399d4eee65376d14b40f",
I/flutter (17529): ║                             "name": "واترميلون منت",
I/flutter (17529): ║                             "description": "عصير ضمن فئة العصير.",
I/flutter (17529): ║                             "sortOrder": 15,
I/flutter (17529): ║                             "isActive": true,
I/flutter (17529): ║                             "category": "juice",
I/flutter (17529): ║                             "kind": "item",
I/flutter (17529): ║                             "priceHalala": 1100,
I/flutter (17529): ║                             "currency": "SAR"
I/flutter (17529): ║                        },
I/flutter (17529): ║                        {
I/flutter (17529): ║                             "id": "69f2399d4eee65376d14b410",
I/flutter (17529): ║                             "name": "بروتين درينك",
I/flutter (17529): ║                             "description": "مشروب ضمن فئة العصير.",
I/flutter (17529): ║                             "sortOrder": 16,
I/flutter (17529): ║                             "isActive": true,
I/flutter (17529): ║                             "category": "juice",
I/flutter (17529): ║                             "kind": "item",
I/flutter (17529): ║                             "priceHalala": 1900,
I/flutter (17529): ║                             "currency": "SAR"
I/flutter (17529): ║                        },
I/flutter (17529): ║                        {
I/flutter (17529): ║                             "id": "69f2399d4eee65376d14b411",
I/flutter (17529): ║                             "name": "دايت آيسد تي",
I/flutter (17529): ║                             "description": "مشروب ضمن فئة العصير.",
I/flutter (17529): ║                             "sortOrder": 17,
I/flutter (17529): ║                             "isActive": true,
I/flutter (17529): ║                             "category": "juice",
I/flutter (17529): ║                             "kind": "item",
I/flutter (17529): ║                             "priceHalala": 400,
I/flutter (17529): ║                             "currency": "SAR"
I/flutter (17529): ║                        },
I/flutter (17529): ║                        {
I/flutter (17529): ║                             "id": "69f2399d4eee65376d14b412",
I/flutter (17529): ║                             "name": "دايت صودا",
I/flutter (17529): ║                             "description": "مشروب ضمن فئة العصير.",
I/flutter (17529): ║                             "sortOrder": 18,
I/flutter (17529): ║                             "isActive": true,
I/flutter (17529): ║                             "category": "juice",
I/flutter (17529): ║                             "kind": "item",
I/flutter (17529): ║                             "priceHalala": 300,
I/flutter (17529): ║                             "currency": "SAR"
I/flutter (17529): ║                        },
I/flutter (17529): ║                        {
I/flutter (17529): ║                             "id": "69f2399d4eee65376d14b413",
I/flutter (17529): ║                             "name": "ماء",
I/flutter (17529): ║                             "description": "مياه ضمن فئة العصير.",
I/flutter (17529): ║                             "sortOrder": 19,
I/flutter (17529): ║                             "isActive": true,
I/flutter (17529): ║                             "category": "juice",
I/flutter (17529): ║                             "kind": "item",
I/flutter (17529): ║                             "priceHalala": 200,
I/flutter (17529): ║                             "currency": "SAR"
I/flutter (17529): ║                        }
I/flutter (17529): ║                     ],
I/flutter (17529): ║                     "small_salad": [
I/flutter (17529): ║                        {
I/flutter (17529): ║                             "id": "69f2399d4eee65376d14b41b",
I/flutter (17529): ║                             "name": "سلطة صغيرة",
I/flutter (17529): ║                             "description": "سلطة ضمن فئة السلطة الصغيرة.",
I/flutter (17529): ║                             "sortOrder": 50,
I/flutter (17529): ║                             "isActive": true,
I/flutter (17529): ║                             "category": "small_salad",
I/flutter (17529): ║                             "kind": "item",
I/flutter (17529): ║                             "priceHalala": 1200,
I/flutter (17529): ║                             "currency": "SAR"
I/flutter (17529): ║                        }
I/flutter (17529): ║                     ],
I/flutter (17529): ║                     "snack": [
I/flutter (17529): ║                        {
I/flutter (17529): ║                             "id": "69f2399d4eee65376d14b414",
I/flutter (17529): ║                             "name": "مافن تفاح بالقرفة (قطعتان)",
I/flutter (17529): ║                             "description": "سناك ضمن فئة السناك.",
I/flutter (17529): ║                             "sortOrder": 30,
I/flutter (17529): ║                             "isActive": true,
I/flutter (17529): ║                             "category": "snack",
I/flutter (17529): ║                             "kind": "item",
I/flutter (17529): ║                             "priceHalala": 1200,
I/flutter (17529): ║                             "currency": "SAR"
I/flutter (17529): ║                        },
I/flutter (17529): ║                        {
I/flutter (17529): ║                             "id": "69f2399d4eee65376d14b415",
I/flutter (17529): ║                             "name": "بلو بيري تشيزكيك",
I/flutter (17529): ║                             "description": "سناك ضمن فئة السناك.",
I/flutter (17529): ║                             "sortOrder": 31,
I/flutter (17529): ║                             "isActive": true,
I/flutter (17529): ║                             "category": "snack",
I/flutter (17529): ║                             "kind": "item",
I/flutter (17529): ║                             "priceHalala": 1900,
I/flutter (17529): ║                             "currency": "SAR"
I/flutter (17529): ║                        },
I/flutter (17529): ║                        {
I/flutter (17529): ║                             "id": "69f2399d4eee65376d14b416",
I/flutter (17529): ║                             "name": "ستروبيري تشيزكيك",
I/flutter (17529): ║                             "description": "سناك ضمن فئة السناك.",
I/flutter (17529): ║                             "sortOrder": 32,
I/flutter (17529): ║                             "isActive": true,
I/flutter (17529): ║                             "category": "snack",
I/flutter (17529): ║                             "kind": "item",
I/flutter (17529): ║                             "priceHalala": 1900,
I/flutter (17529): ║                             "currency": "SAR"
I/flutter (17529): ║                        },
I/flutter (17529): ║                        {
I/flutter (17529): ║                             "id": "69f2399d4eee65376d14b417",
I/flutter (17529): ║                             "name": "دارك براونيز",
I/flutter (17529): ║                             "description": "سناك ضمن فئة السناك.",
I/flutter (17529): ║                             "sortOrder": 33,
I/flutter (17529): ║                             "isActive": true,
I/flutter (17529): ║                             "category": "snack",
I/flutter (17529): ║                             "kind": "item",
I/flutter (17529): ║                             "priceHalala": 1300,
I/flutter (17529): ║                             "currency": "SAR"
I/flutter (17529): ║                        },
I/flutter (17529): ║                        {
I/flutter (17529): ║                             "id": "69f2399d4eee65376d14b418",
I/flutter (17529): ║                             "name": "بروتين بار",
I/flutter (17529): ║                             "description": "سناك ضمن فئة السناك.",
I/flutter (17529): ║                             "sortOrder": 34,
I/flutter (17529): ║                             "isActive": true,
I/flutter (17529): ║                             "category": "snack",
I/flutter (17529): ║                             "kind": "item",
I/flutter (17529): ║                             "priceHalala": 1500,
I/flutter (17529): ║                             "currency": "SAR"
I/flutter (17529): ║                        },
I/flutter (17529): ║                        {
I/flutter (17529): ║                             "id": "69f2399d4eee65376d14b419",
I/flutter (17529): ║                             "name": "كلاسيك بيسك",
I/flutter (17529): ║                             "description": "سناك ضمن فئة السناك.",
I/flutter (17529): ║                             "sortOrder": 35,
I/flutter (17529): ║                             "isActive": true,
I/flutter (17529): ║                             "category": "snack",
I/flutter (17529): ║                             "kind": "item",
I/flutter (17529): ║                             "priceHalala": 1400,
I/flutter (17529): ║                             "currency": "SAR"
I/flutter (17529): ║                        },
I/flutter (17529): ║                        {
I/flutter (17529): ║                             "id": "69f2399d4eee65376d14b41a",
I/flutter (17529): ║                             "name": "كيكة بروتين بالشوكولاتة",
I/flutter (17529): ║                             "description": "سناك ضمن فئة السناك.",
I/flutter (17529): ║                             "sortOrder": 36,
I/flutter (17529): ║                             "isActive": true,
I/flutter (17529): ║                             "category": "snack",
I/flutter (17529): ║                             "kind": "item",
I/flutter (17529): ║                             "priceHalala": 400,
I/flutter (17529): ║                             "currency": "SAR"
I/flutter (17529): ║                        }
I/flutter (17529): ║                     ]
I/flutter (17529): ║                }
I/flutter (17529): ║            }
I/flutter (17529): ║             "delivery": {
I/flutter (17529): ║                 "windows": [{value: 16:00-18:00, label: 16:00-18:00}, {value: 18:00-20:00, label: 18:00-20:00}]
I/flutter (17529): ║                 "zones": [
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f142e831962803c54bbb52",
I/flutter (17529): ║                         "name": "الملقا",
I/flutter (17529): ║                         "deliveryFeeHalala": 1500,
I/flutter (17529): ║                         "sortOrder": 1,
I/flutter (17529): ║                         "isActive": true
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f142e831962803c54bbb58",
I/flutter (17529): ║                         "name": "الياسمين",
I/flutter (17529): ║                         "deliveryFeeHalala": 1800,
I/flutter (17529): ║                         "sortOrder": 2,
I/flutter (17529): ║                         "isActive": true
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f142e831962803c54bbb5f",
I/flutter (17529): ║                         "name": "النرجس",
I/flutter (17529): ║                         "deliveryFeeHalala": 2000,
I/flutter (17529): ║                         "sortOrder": 3,
I/flutter (17529): ║                         "isActive": true
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f142e831962803c54bbb65",
I/flutter (17529): ║                         "name": "حطين",
I/flutter (17529): ║                         "deliveryFeeHalala": 2200,
I/flutter (17529): ║                         "sortOrder": 4,
I/flutter (17529): ║                         "isActive": true
I/flutter (17529): ║                    },
I/flutter (17529): ║                    {
I/flutter (17529): ║                         "id": "69f142e831962803c54bbb6a",
I/flutter (17529): ║                         "name": "الصحافة",
I/flutter (17529): ║                         "deliveryFeeHalala": 1700,
I/flutter (17529): ║                         "sortOrder": 5,
I/flutter (17529): ║                         "isActive": true
I/flutter (17529): ║                    }
I/flutter (17529): ║                 ]
I/flutter (17529): ║            }
I/flutter (17529): ║             "restaurantHours": {
I/flutter (17529): ║                 "openTime": "10:00",
I/flutter (17529): ║                 "closeTime": "23:00",
I/flutter (17529): ║                 "isOpenNow": true,
I/flutter (17529): ║                 "businessDate": "2026-05-06",
I/flutter (17529): ║                 "businessTomorrow": "2026-05-07"
I/flutter (17529): ║            }
I/flutter (17529): ║        }
I/flutter (17529): ║    }
I/flutter (17529): ║
I/flutter (17529): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter (17529): onChange -- MenuBloc, Change { currentState: MenuLoading(), nextState: MenuSuccess(Instance of 'OrderMenuModel') }
I/flutter (17529): onChange -- CartBloc, Change { currentState: CartLoaded([], null, null, {}), nextState: CartLoaded([], null, null, {openTime: 10:00, closeTime: 23:00, isOpenNow: true, businessDate: 2026-05-06, businessTomorrow: 2026-05-07}) }
E/libEGL  (17529): called unimplemented OpenGL ES API
W/WindowOnBackDispatcher(17529): OnBackInvokedCallback is not enabled for the application.
W/WindowOnBackDispatcher(17529): Set 'android:enableOnBackInvokedCallback="true"' in the application manifest.
E/libEGL  (17529): called unimplemented OpenGL ES API
