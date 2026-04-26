E/libEGL  (28044): called unimplemented OpenGL ES API
I/flutter (28044): onCreate -- MealPlannerBloc
I/flutter (28044): onChange -- MealPlannerBloc, Change { currentState: MealPlannerInitial(), nextState: MealPlannerLoading() }
I/flutter (28044):
I/flutter (28044): ╔╣ Request ║ GET
I/flutter (28044): ║  https://basicdiet145.onrender.com/api/subscriptions/meal-planner-menu
I/flutter (28044): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter (28044): ╔ Headers
I/flutter (28044): ╟ accept: application/json
I/flutter (28044): ╟ content-type: application/json
I/flutter (28044): ╟ Authorization:
I/flutter (28044): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2OWNjOTYyNzYzMWU5YzFiMWRhODI1Yz
I/flutter (28044): ║ EiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc3Njk0NTUxOCwiZXhwIjox
I/flutter (28044): ║ Nzc5NjIzOTE4fQ.joUXrmGUunZvh3BUAg-MDI6eV9DprcGb61uxCzmWBC8
I/flutter (28044): ╟ Accept-Language: ar
I/flutter (28044): ╟ contentType: application/json
I/flutter (28044): ╟ responseType: ResponseType.json
I/flutter (28044): ╟ followRedirects: true
I/flutter (28044): ╟ receiveTimeout: 16:40:00.000000
I/flutter (28044): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
E/libEGL  (28044): called unimplemented OpenGL ES API
E/libEGL  (28044): called unimplemented OpenGL ES API
I/flutter (28044):
I/flutter (28044): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 2026 ms
I/flutter (28044): ║  https://basicdiet145.onrender.com/api/subscriptions/meal-planner-menu
I/flutter (28044): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter (28044): ╔ Headers
I/flutter (28044): ╟ x-dns-prefetch-control: [off]
I/flutter (28044): ╟ x-render-origin-server: [Render]
I/flutter (28044): ╟ date: [Sun, 26 Apr 2026 20:41:37 GMT]
I/flutter (28044): ╟ transfer-encoding: [chunked]
I/flutter (28044): ╟ origin-agent-cluster: [?1]
I/flutter (28044): ╟ vary: [Origin, Accept-Encoding]
I/flutter (28044): ╟ content-encoding: [gzip]
I/flutter (28044): ╟ server: [cloudflare]
I/flutter (28044): ╟ cross-origin-resource-policy: [same-origin]
I/flutter (28044): ╟ cf-ray: [9f2868bcf9a7e1e1-MRS]
I/flutter (28044): ╟ etag: [W/"bcd0-NvSQWfYRRAFCNcrboDuDzY04ff0"]
I/flutter (28044): ╟ x-frame-options: [SAMEORIGIN]
I/flutter (28044): ╟ content-security-policy:
I/flutter (28044): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter (28044): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter (28044): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter (28044): ╟ connection: [keep-alive]
I/flutter (28044): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter (28044): ╟ referrer-policy: [no-referrer]
I/flutter (28044): ╟ cf-cache-status: [DYNAMIC]
I/flutter (28044): ╟ x-permitted-cross-domain-policies: [none]
I/flutter (28044): ╟ content-type: [application/json; charset=utf-8]
I/flutter (28044): ╟ cross-origin-opener-policy: [same-origin]
I/flutter (28044): ╟ rndr-id: [37ff8061-46a6-4ea7]
I/flutter (28044): ╟ x-xss-protection: [0]
I/flutter (28044): ╟ access-control-allow-credentials: [true]
I/flutter (28044): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter (28044): ╟ x-download-options: [noopen]
I/flutter (28044): ╟ x-content-type-options: [nosniff]
I/flutter (28044): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter (28044): ╔ Body
I/flutter (28044): ║
I/flutter (28044): ║    {
I/flutter (28044): ║         "status": true,
I/flutter (28044): ║         "data": {
I/flutter (28044): ║             "currency": "SAR",
I/flutter (28044): ║             "regularMeals": {
I/flutter (28044): ║                 "items": []
I/flutter (28044): ║                 "categories": []
I/flutter (28044): ║                 "sections": []
I/flutter (28044): ║                 "totalCount": 0
I/flutter (28044): ║            }
I/flutter (28044): ║             "premiumMeals": {
I/flutter (28044): ║                 "items": [
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ee0a5a31962803c547bacb",
I/flutter (28044): ║                         "name": "جمبري",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "extraFeeHalala": 2000,
I/flutter (28044): ║                         "extraFeeSar": 20,
I/flutter (28044): ║                         "priceHalala": 2000,
I/flutter (28044): ║                         "priceSar": 20,
I/flutter (28044): ║                         "priceLabel": "20 SAR",
I/flutter (28044): ║                         "proteinGrams": 0,
I/flutter (28044): ║                         "carbGrams": 0,
I/flutter (28044): ║                         "fatGrams": 0,
I/flutter (28044): ║                         "ui": {title: جمبري, subtitle: , ctaLabel: أضف, selectionStyle: stepper},
I/flutter (28044): ║                         "type": "premium",
I/flutter (28044): ║                         "pricingModel": "extra_fee"
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ee0a5a31962803c547baca",
I/flutter (28044): ║                         "name": "ستيك لحم",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "extraFeeHalala": 2500,
I/flutter (28044): ║                         "extraFeeSar": 25,
I/flutter (28044): ║                         "priceHalala": 2500,
I/flutter (28044): ║                         "priceSar": 25,
I/flutter (28044): ║                         "priceLabel": "25 SAR",
I/flutter (28044): ║                         "proteinGrams": 0,
I/flutter (28044): ║                         "carbGrams": 0,
I/flutter (28044): ║                         "fatGrams": 0,
I/flutter (28044): ║                         "ui": {title: ستيك لحم, subtitle: , ctaLabel: أضف, selectionStyle: stepper},
I/flutter (28044): ║                         "type": "premium",
I/flutter (28044): ║                         "pricingModel": "extra_fee"
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca68ad797e60eed6138",
I/flutter (28044): ║                         "name": "جمبري",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "extraFeeHalala": 2000,
I/flutter (28044): ║                         "extraFeeSar": 20,
I/flutter (28044): ║                         "priceHalala": 2000,
I/flutter (28044): ║                         "priceSar": 20,
I/flutter (28044): ║                         "priceLabel": "20 SAR",
I/flutter (28044): ║                         "proteinGrams": 0,
I/flutter (28044): ║                         "carbGrams": 0,
I/flutter (28044): ║                         "fatGrams": 0,
I/flutter (28044): ║                         "ui": {title: جمبري, subtitle: , ctaLabel: أضف, selectionStyle: stepper},
I/flutter (28044): ║                         "type": "premium",
I/flutter (28044): ║                         "pricingModel": "extra_fee"
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca68ad797e60eed6137",
I/flutter (28044): ║                         "name": "ستيك لحم",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "extraFeeHalala": 2500,
I/flutter (28044): ║                         "extraFeeSar": 25,
I/flutter (28044): ║                         "priceHalala": 2500,
I/flutter (28044): ║                         "priceSar": 25,
I/flutter (28044): ║                         "priceLabel": "25 SAR",
I/flutter (28044): ║                         "proteinGrams": 0,
I/flutter (28044): ║                         "carbGrams": 0,
I/flutter (28044): ║                         "fatGrams": 0,
I/flutter (28044): ║                         "ui": {title: ستيك لحم, subtitle: , ctaLabel: أضف, selectionStyle: stepper},
I/flutter (28044): ║                         "type": "premium",
I/flutter (28044): ║                         "pricingModel": "extra_fee"
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ee0a5a31962803c547bacc",
I/flutter (28044): ║                         "name": "سالمون",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "extraFeeHalala": 1500,
I/flutter (28044): ║                         "extraFeeSar": 15,
I/flutter (28044): ║                         "priceHalala": 1500,
I/flutter (28044): ║                         "priceSar": 15,
I/flutter (28044): ║                         "priceLabel": "15 SAR",
I/flutter (28044): ║                         "proteinGrams": 0,
I/flutter (28044): ║                         "carbGrams": 0,
I/flutter (28044): ║                         "fatGrams": 0,
I/flutter (28044): ║                         "ui": {title: سالمون, subtitle: , ctaLabel: أضف, selectionStyle: stepper},
I/flutter (28044): ║                         "type": "premium",
I/flutter (28044): ║                         "pricingModel": "extra_fee"
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca68ad797e60eed6139",
I/flutter (28044): ║                         "name": "سالمون",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "extraFeeHalala": 1500,
I/flutter (28044): ║                         "extraFeeSar": 15,
I/flutter (28044): ║                         "priceHalala": 1500,
I/flutter (28044): ║                         "priceSar": 15,
I/flutter (28044): ║                         "priceLabel": "15 SAR",
I/flutter (28044): ║                         "proteinGrams": 0,
I/flutter (28044): ║                         "carbGrams": 0,
I/flutter (28044): ║                         "fatGrams": 0,
I/flutter (28044): ║                         "ui": {title: سالمون, subtitle: , ctaLabel: أضف, selectionStyle: stepper},
I/flutter (28044): ║                         "type": "premium",
I/flutter (28044): ║                         "pricingModel": "extra_fee"
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "custom_premium_salad:69ee0a5b31962803c547bacd"
I/flutter (28044): ║                         "name": "سلطة كبيرة",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "extraFeeHalala": 3000,
I/flutter (28044): ║                         "extraFeeSar": 30,
I/flutter (28044): ║                         "priceHalala": 3000,
I/flutter (28044): ║                         "priceSar": 30,
I/flutter (28044): ║                         "priceLabel": "30 SAR",
I/flutter (28044): ║                         "proteinGrams": 0,
I/flutter (28044): ║                         "carbGrams": 0,
I/flutter (28044): ║                         "fatGrams": 0,
I/flutter (28044): ║                         "selectionType": "custom_premium_salad",
I/flutter (28044): ║                         "carbId": "69ee0a5b31962803c547bacd",
I/flutter (28044): ║                         "ui": {title: سلطة كبيرة, subtitle: , ctaLabel: أضف, selectionStyle: builder},
I/flutter (28044): ║                         "type": "premium",
I/flutter (28044): ║                         "pricingModel": "extra_fee"
I/flutter (28044): ║                    }
I/flutter (28044): ║                 ],
I/flutter (28044): ║                 "totalCount": 7
I/flutter (28044): ║            }
I/flutter (28044): ║             "addons": {
I/flutter (28044): ║                 "items": [
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ead23e31962803c5407d39",
I/flutter (28044): ║                         "name": "اشتراك عصير",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "priceHalala": 1100,
I/flutter (28044): ║                         "priceSar": 11,
I/flutter (28044): ║                         "priceLabel": "11 SAR / يوم",
I/flutter (28044): ║                         "kind": "plan",
I/flutter (28044): ║                         "category": "juice",
I/flutter (28044): ║                         "type": "subscription",
I/flutter (28044): ║                         "billingMode": "per_day",
I/flutter (28044): ║                         "pricingModel": "daily_recurring",
I/flutter (28044): ║                         "billingUnit": "day",
I/flutter (28044): ║                         "canSubscribe": false,
I/flutter (28044): ║                         "canBuyOneTime": false,
I/flutter (28044): ║                         "purchaseModes": [subscription]
I/flutter (28044): ║                         "ui": {title: اشتراك عصير, subtitle: , ctaLabel: أضف, badge: إضافة مع الاشتراك}
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ead23e31962803c5407d3a",
I/flutter (28044): ║                         "name": "اشتراك سناك",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "priceHalala": 1500,
I/flutter (28044): ║                         "priceSar": 15,
I/flutter (28044): ║                         "priceLabel": "15 SAR / يوم",
I/flutter (28044): ║                         "kind": "plan",
I/flutter (28044): ║                         "category": "snack",
I/flutter (28044): ║                         "type": "subscription",
I/flutter (28044): ║                         "billingMode": "per_day",
I/flutter (28044): ║                         "pricingModel": "daily_recurring",
I/flutter (28044): ║                         "billingUnit": "day",
I/flutter (28044): ║                         "canSubscribe": false,
I/flutter (28044): ║                         "canBuyOneTime": false,
I/flutter (28044): ║                         "purchaseModes": [subscription]
I/flutter (28044): ║                         "ui": {title: اشتراك سناك, subtitle: , ctaLabel: أضف, badge: إضافة مع الاشتراك}
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ead23e31962803c5407d3b",
I/flutter (28044): ║                         "name": "اشتراك سلطة صغيرة",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "priceHalala": 1500,
I/flutter (28044): ║                         "priceSar": 15,
I/flutter (28044): ║                         "priceLabel": "15 SAR / يوم",
I/flutter (28044): ║                         "kind": "plan",
I/flutter (28044): ║                         "category": "small_salad",
I/flutter (28044): ║                         "type": "subscription",
I/flutter (28044): ║                         "billingMode": "per_day",
I/flutter (28044): ║                         "pricingModel": "daily_recurring",
I/flutter (28044): ║                         "billingUnit": "day",
I/flutter (28044): ║                         "canSubscribe": false,
I/flutter (28044): ║                         "canBuyOneTime": false,
I/flutter (28044): ║                         "purchaseModes": [subscription]
I/flutter (28044): ║                         "ui": {title: اشتراك سلطة صغيرة, subtitle: , ctaLabel: أضف, badge: إضافة مع الاشتراك}
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ead23e31962803c5407d3d",
I/flutter (28044): ║                         "name": "مافن التفاح بالقرفة",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "priceHalala": 1200,
I/flutter (28044): ║                         "priceSar": 12,
I/flutter (28044): ║                         "priceLabel": "12 SAR / يوم",
I/flutter (28044): ║                         "kind": "item",
I/flutter (28044): ║                         "category": "snack",
I/flutter (28044): ║                         "type": "subscription",
I/flutter (28044): ║                         "billingMode": "per_day",
I/flutter (28044): ║                         "pricingModel": "daily_recurring",
I/flutter (28044): ║                         "billingUnit": "day",
I/flutter (28044): ║                         "canSubscribe": false,
I/flutter (28044): ║                         "canBuyOneTime": false,
I/flutter (28044): ║                         "purchaseModes": [one_time]
I/flutter (28044): ║                         "ui": {title: مافن التفاح بالقرفة, subtitle: , ctaLabel: أضف, badge: إضافة مع الاشتراك}
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfccaa8ad797e60eed6144",
I/flutter (28044): ║                         "name": "تشيز كيك بالتوت",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "priceHalala": 1900,
I/flutter (28044): ║                         "priceSar": 19,
I/flutter (28044): ║                         "priceLabel": "19 SAR / يوم",
I/flutter (28044): ║                         "kind": "item",
I/flutter (28044): ║                         "category": "snack",
I/flutter (28044): ║                         "type": "subscription",
I/flutter (28044): ║                         "billingMode": "per_day",
I/flutter (28044): ║                         "pricingModel": "daily_recurring",
I/flutter (28044): ║                         "billingUnit": "day",
I/flutter (28044): ║                         "canSubscribe": false,
I/flutter (28044): ║                         "canBuyOneTime": false,
I/flutter (28044): ║                         "purchaseModes": [one_time]
I/flutter (28044): ║                         "ui": {title: تشيز كيك بالتوت, subtitle: , ctaLabel: أضف, badge: إضافة مع الاشتراك}
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfccaa8ad797e60eed6146",
I/flutter (28044): ║                         "name": "تشيز كيك بالفراولة",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "priceHalala": 1900,
I/flutter (28044): ║                         "priceSar": 19,
I/flutter (28044): ║                         "priceLabel": "19 SAR / يوم",
I/flutter (28044): ║                         "kind": "item",
I/flutter (28044): ║                         "category": "snack",
I/flutter (28044): ║                         "type": "subscription",
I/flutter (28044): ║                         "billingMode": "per_day",
I/flutter (28044): ║                         "pricingModel": "daily_recurring",
I/flutter (28044): ║                         "billingUnit": "day",
I/flutter (28044): ║                         "canSubscribe": false,
I/flutter (28044): ║                         "canBuyOneTime": false,
I/flutter (28044): ║                         "purchaseModes": [one_time]
I/flutter (28044): ║                         "ui": {title: تشيز كيك بالفراولة, subtitle: , ctaLabel: أضف, badge: إضافة مع الاشتراك}
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ead23f31962803c5407d3e",
I/flutter (28044): ║                         "name": "براونيز",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "priceHalala": 1300,
I/flutter (28044): ║                         "priceSar": 13,
I/flutter (28044): ║                         "priceLabel": "13 SAR / يوم",
I/flutter (28044): ║                         "kind": "item",
I/flutter (28044): ║                         "category": "snack",
I/flutter (28044): ║                         "type": "subscription",
I/flutter (28044): ║                         "billingMode": "per_day",
I/flutter (28044): ║                         "pricingModel": "daily_recurring",
I/flutter (28044): ║                         "billingUnit": "day",
I/flutter (28044): ║                         "canSubscribe": false,
I/flutter (28044): ║                         "canBuyOneTime": false,
I/flutter (28044): ║                         "purchaseModes": [one_time]
I/flutter (28044): ║                         "ui": {title: براونيز, subtitle: , ctaLabel: أضف, badge: إضافة مع الاشتراك}
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfccab8ad797e60eed614b",
I/flutter (28044): ║                         "name": "بروتين بار",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "priceHalala": 1500,
I/flutter (28044): ║                         "priceSar": 15,
I/flutter (28044): ║                         "priceLabel": "15 SAR / يوم",
I/flutter (28044): ║                         "kind": "item",
I/flutter (28044): ║                         "category": "snack",
I/flutter (28044): ║                         "type": "subscription",
I/flutter (28044): ║                         "billingMode": "per_day",
I/flutter (28044): ║                         "pricingModel": "daily_recurring",
I/flutter (28044): ║                         "billingUnit": "day",
I/flutter (28044): ║                         "canSubscribe": false,
I/flutter (28044): ║                         "canBuyOneTime": false,
I/flutter (28044): ║                         "purchaseModes": [one_time]
I/flutter (28044): ║                         "ui": {title: بروتين بار, subtitle: , ctaLabel: أضف, badge: إضافة مع الاشتراك}
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfccac8ad797e60eed6151",
I/flutter (28044): ║                         "name": "برتقال وجزر",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "priceHalala": 1100,
I/flutter (28044): ║                         "priceSar": 11,
I/flutter (28044): ║                         "priceLabel": "11 SAR / يوم",
I/flutter (28044): ║                         "kind": "item",
I/flutter (28044): ║                         "category": "juice",
I/flutter (28044): ║                         "type": "subscription",
I/flutter (28044): ║                         "billingMode": "per_day",
I/flutter (28044): ║                         "pricingModel": "daily_recurring",
I/flutter (28044): ║                         "billingUnit": "day",
I/flutter (28044): ║                         "canSubscribe": false,
I/flutter (28044): ║                         "canBuyOneTime": false,
I/flutter (28044): ║                         "purchaseModes": [one_time]
I/flutter (28044): ║                         "ui": {title: برتقال وجزر, subtitle: , ctaLabel: أضف, badge: إضافة مع الاشتراك}
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfccac8ad797e60eed6152",
I/flutter (28044): ║                         "name": "بطيخ بالنعناع",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "priceHalala": 1100,
I/flutter (28044): ║                         "priceSar": 11,
I/flutter (28044): ║                         "priceLabel": "11 SAR / يوم",
I/flutter (28044): ║                         "kind": "item",
I/flutter (28044): ║                         "category": "juice",
I/flutter (28044): ║                         "type": "subscription",
I/flutter (28044): ║                         "billingMode": "per_day",
I/flutter (28044): ║                         "pricingModel": "daily_recurring",
I/flutter (28044): ║                         "billingUnit": "day",
I/flutter (28044): ║                         "canSubscribe": false,
I/flutter (28044): ║                         "canBuyOneTime": false,
I/flutter (28044): ║                         "purchaseModes": [one_time]
I/flutter (28044): ║                         "ui": {title: بطيخ بالنعناع, subtitle: , ctaLabel: أضف, badge: إضافة مع الاشتراك}
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfccac8ad797e60eed6150",
I/flutter (28044): ║                         "name": "بيت بنش",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "priceHalala": 1100,
I/flutter (28044): ║                         "priceSar": 11,
I/flutter (28044): ║                         "priceLabel": "11 SAR / يوم",
I/flutter (28044): ║                         "kind": "item",
I/flutter (28044): ║                         "category": "juice",
I/flutter (28044): ║                         "type": "subscription",
I/flutter (28044): ║                         "billingMode": "per_day",
I/flutter (28044): ║                         "pricingModel": "daily_recurring",
I/flutter (28044): ║                         "billingUnit": "day",
I/flutter (28044): ║                         "canSubscribe": false,
I/flutter (28044): ║                         "canBuyOneTime": false,
I/flutter (28044): ║                         "purchaseModes": [one_time]
I/flutter (28044): ║                         "ui": {title: بيت بنش, subtitle: , ctaLabel: أضف, badge: إضافة مع الاشتراك}
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfccab8ad797e60eed614d",
I/flutter (28044): ║                         "name": "بيري بلاست",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "priceHalala": 1100,
I/flutter (28044): ║                         "priceSar": 11,
I/flutter (28044): ║                         "priceLabel": "11 SAR / يوم",
I/flutter (28044): ║                         "kind": "item",
I/flutter (28044): ║                         "category": "juice",
I/flutter (28044): ║                         "type": "subscription",
I/flutter (28044): ║                         "billingMode": "per_day",
I/flutter (28044): ║                         "pricingModel": "daily_recurring",
I/flutter (28044): ║                         "billingUnit": "day",
I/flutter (28044): ║                         "canSubscribe": false,
I/flutter (28044): ║                         "canBuyOneTime": false,
I/flutter (28044): ║                         "purchaseModes": [one_time]
I/flutter (28044): ║                         "ui": {title: بيري بلاست, subtitle: , ctaLabel: أضف, badge: إضافة مع الاشتراك}
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ead24031962803c5407d3f",
I/flutter (28044): ║                         "name": "بروتين شيك",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "priceHalala": 1900,
I/flutter (28044): ║                         "priceSar": 19,
I/flutter (28044): ║                         "priceLabel": "19 SAR / يوم",
I/flutter (28044): ║                         "kind": "item",
I/flutter (28044): ║                         "category": "juice",
I/flutter (28044): ║                         "type": "subscription",
I/flutter (28044): ║                         "billingMode": "per_day",
I/flutter (28044): ║                         "pricingModel": "daily_recurring",
I/flutter (28044): ║                         "billingUnit": "day",
I/flutter (28044): ║                         "canSubscribe": false,
I/flutter (28044): ║                         "canBuyOneTime": false,
I/flutter (28044): ║                         "purchaseModes": [one_time]
I/flutter (28044): ║                         "ui": {title: بروتين شيك, subtitle: , ctaLabel: أضف, badge: إضافة مع الاشتراك}
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ead24031962803c5407d40",
I/flutter (28044): ║                         "name": "سلطة سيزر صغيرة",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "priceHalala": 1500,
I/flutter (28044): ║                         "priceSar": 15,
I/flutter (28044): ║                         "priceLabel": "15 SAR / يوم",
I/flutter (28044): ║                         "kind": "item",
I/flutter (28044): ║                         "category": "small_salad",
I/flutter (28044): ║                         "type": "subscription",
I/flutter (28044): ║                         "billingMode": "per_day",
I/flutter (28044): ║                         "pricingModel": "daily_recurring",
I/flutter (28044): ║                         "billingUnit": "day",
I/flutter (28044): ║                         "canSubscribe": false,
I/flutter (28044): ║                         "canBuyOneTime": false,
I/flutter (28044): ║                         "purchaseModes": [one_time]
I/flutter (28044): ║                         "ui": {title: سلطة سيزر صغيرة, subtitle: , ctaLabel: أضف, badge: إضافة مع الاشتراك}
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ead24031962803c5407d41",
I/flutter (28044): ║                         "name": "سلطة يونانية صغيرة",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "priceHalala": 1600,
I/flutter (28044): ║                         "priceSar": 16,
I/flutter (28044): ║                         "priceLabel": "16 SAR / يوم",
I/flutter (28044): ║                         "kind": "item",
I/flutter (28044): ║                         "category": "small_salad",
I/flutter (28044): ║                         "type": "subscription",
I/flutter (28044): ║                         "billingMode": "per_day",
I/flutter (28044): ║                         "pricingModel": "daily_recurring",
I/flutter (28044): ║                         "billingUnit": "day",
I/flutter (28044): ║                         "canSubscribe": false,
I/flutter (28044): ║                         "canBuyOneTime": false,
I/flutter (28044): ║                         "purchaseModes": [one_time]
I/flutter (28044): ║                         "ui": {title: سلطة يونانية صغيرة, subtitle: , ctaLabel: أضف, badge: إضافة مع الاشتراك}
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ead24031962803c5407d42",
I/flutter (28044): ║                         "name": "سلطة خضراء صغيرة",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "priceHalala": 1400,
I/flutter (28044): ║                         "priceSar": 14,
I/flutter (28044): ║                         "priceLabel": "14 SAR / يوم",
I/flutter (28044): ║                         "kind": "item",
I/flutter (28044): ║                         "category": "small_salad",
I/flutter (28044): ║                         "type": "subscription",
I/flutter (28044): ║                         "billingMode": "per_day",
I/flutter (28044): ║                         "pricingModel": "daily_recurring",
I/flutter (28044): ║                         "billingUnit": "day",
I/flutter (28044): ║                         "canSubscribe": false,
I/flutter (28044): ║                         "canBuyOneTime": false,
I/flutter (28044): ║                         "purchaseModes": [one_time]
I/flutter (28044): ║                         "ui": {title: سلطة خضراء صغيرة, subtitle: , ctaLabel: أضف, badge: إضافة مع الاشتراك}
I/flutter (28044): ║                    }
I/flutter (28044): ║                 ],
I/flutter (28044): ║                 "byType": {
I/flutter (28044): ║                     "subscription": [
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ead23e31962803c5407d39",
I/flutter (28044): ║                             "name": "اشتراك عصير",
I/flutter (28044): ║                             "description": "",
I/flutter (28044): ║                             "imageUrl": "",
I/flutter (28044): ║                             "currency": "SAR",
I/flutter (28044): ║                             "priceHalala": 1100,
I/flutter (28044): ║                             "priceSar": 11,
I/flutter (28044): ║                             "priceLabel": "11 SAR / يوم",
I/flutter (28044): ║                             "kind": "plan",
I/flutter (28044): ║                             "category": "juice",
I/flutter (28044): ║                             "type": "subscription",
I/flutter (28044): ║                             "billingMode": "per_day",
I/flutter (28044): ║                             "pricingModel": "daily_recurring",
I/flutter (28044): ║                             "billingUnit": "day",
I/flutter (28044): ║                             "canSubscribe": false,
I/flutter (28044): ║                             "canBuyOneTime": false,
I/flutter (28044): ║                             "purchaseModes": [subscription]
I/flutter (28044): ║                             "ui": {title: اشتراك عصير, subtitle: , ctaLabel: أضف, badge: إضافة مع الاشتراك}
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ead23e31962803c5407d3a",
I/flutter (28044): ║                             "name": "اشتراك سناك",
I/flutter (28044): ║                             "description": "",
I/flutter (28044): ║                             "imageUrl": "",
I/flutter (28044): ║                             "currency": "SAR",
I/flutter (28044): ║                             "priceHalala": 1500,
I/flutter (28044): ║                             "priceSar": 15,
I/flutter (28044): ║                             "priceLabel": "15 SAR / يوم",
I/flutter (28044): ║                             "kind": "plan",
I/flutter (28044): ║                             "category": "snack",
I/flutter (28044): ║                             "type": "subscription",
I/flutter (28044): ║                             "billingMode": "per_day",
I/flutter (28044): ║                             "pricingModel": "daily_recurring",
I/flutter (28044): ║                             "billingUnit": "day",
I/flutter (28044): ║                             "canSubscribe": false,
I/flutter (28044): ║                             "canBuyOneTime": false,
I/flutter (28044): ║                             "purchaseModes": [subscription]
I/flutter (28044): ║                             "ui": {title: اشتراك سناك, subtitle: , ctaLabel: أضف, badge: إضافة مع الاشتراك}
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ead23e31962803c5407d3b",
I/flutter (28044): ║                             "name": "اشتراك سلطة صغيرة",
I/flutter (28044): ║                             "description": "",
I/flutter (28044): ║                             "imageUrl": "",
I/flutter (28044): ║                             "currency": "SAR",
I/flutter (28044): ║                             "priceHalala": 1500,
I/flutter (28044): ║                             "priceSar": 15,
I/flutter (28044): ║                             "priceLabel": "15 SAR / يوم",
I/flutter (28044): ║                             "kind": "plan",
I/flutter (28044): ║                             "category": "small_salad",
I/flutter (28044): ║                             "type": "subscription",
I/flutter (28044): ║                             "billingMode": "per_day",
I/flutter (28044): ║                             "pricingModel": "daily_recurring",
I/flutter (28044): ║                             "billingUnit": "day",
I/flutter (28044): ║                             "canSubscribe": false,
I/flutter (28044): ║                             "canBuyOneTime": false,
I/flutter (28044): ║                             "purchaseModes": [subscription]
I/flutter (28044): ║                             "ui": {title: اشتراك سلطة صغيرة, subtitle: , ctaLabel: أضف, badge: إضافة مع الاشتراك}
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ead23e31962803c5407d3d",
I/flutter (28044): ║                             "name": "مافن التفاح بالقرفة",
I/flutter (28044): ║                             "description": "",
I/flutter (28044): ║                             "imageUrl": "",
I/flutter (28044): ║                             "currency": "SAR",
I/flutter (28044): ║                             "priceHalala": 1200,
I/flutter (28044): ║                             "priceSar": 12,
I/flutter (28044): ║                             "priceLabel": "12 SAR / يوم",
I/flutter (28044): ║                             "kind": "item",
I/flutter (28044): ║                             "category": "snack",
I/flutter (28044): ║                             "type": "subscription",
I/flutter (28044): ║                             "billingMode": "per_day",
I/flutter (28044): ║                             "pricingModel": "daily_recurring",
I/flutter (28044): ║                             "billingUnit": "day",
I/flutter (28044): ║                             "canSubscribe": false,
I/flutter (28044): ║                             "canBuyOneTime": false,
I/flutter (28044): ║                             "purchaseModes": [one_time]
I/flutter (28044): ║                             "ui": {title: مافن التفاح بالقرفة, subtitle: , ctaLabel: أضف, badge: إضافة مع الاشتراك}
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69dfccaa8ad797e60eed6144",
I/flutter (28044): ║                             "name": "تشيز كيك بالتوت",
I/flutter (28044): ║                             "description": "",
I/flutter (28044): ║                             "imageUrl": "",
I/flutter (28044): ║                             "currency": "SAR",
I/flutter (28044): ║                             "priceHalala": 1900,
I/flutter (28044): ║                             "priceSar": 19,
I/flutter (28044): ║                             "priceLabel": "19 SAR / يوم",
I/flutter (28044): ║                             "kind": "item",
I/flutter (28044): ║                             "category": "snack",
I/flutter (28044): ║                             "type": "subscription",
I/flutter (28044): ║                             "billingMode": "per_day",
I/flutter (28044): ║                             "pricingModel": "daily_recurring",
I/flutter (28044): ║                             "billingUnit": "day",
I/flutter (28044): ║                             "canSubscribe": false,
I/flutter (28044): ║                             "canBuyOneTime": false,
I/flutter (28044): ║                             "purchaseModes": [one_time]
I/flutter (28044): ║                             "ui": {title: تشيز كيك بالتوت, subtitle: , ctaLabel: أضف, badge: إضافة مع الاشتراك}
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69dfccaa8ad797e60eed6146",
I/flutter (28044): ║                             "name": "تشيز كيك بالفراولة",
I/flutter (28044): ║                             "description": "",
I/flutter (28044): ║                             "imageUrl": "",
I/flutter (28044): ║                             "currency": "SAR",
I/flutter (28044): ║                             "priceHalala": 1900,
I/flutter (28044): ║                             "priceSar": 19,
I/flutter (28044): ║                             "priceLabel": "19 SAR / يوم",
I/flutter (28044): ║                             "kind": "item",
I/flutter (28044): ║                             "category": "snack",
I/flutter (28044): ║                             "type": "subscription",
I/flutter (28044): ║                             "billingMode": "per_day",
I/flutter (28044): ║                             "pricingModel": "daily_recurring",
I/flutter (28044): ║                             "billingUnit": "day",
I/flutter (28044): ║                             "canSubscribe": false,
I/flutter (28044): ║                             "canBuyOneTime": false,
I/flutter (28044): ║                             "purchaseModes": [one_time]
I/flutter (28044): ║                             "ui": {title: تشيز كيك بالفراولة, subtitle: , ctaLabel: أضف, badge: إضافة مع الاشتراك}
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ead23f31962803c5407d3e",
I/flutter (28044): ║                             "name": "براونيز",
I/flutter (28044): ║                             "description": "",
I/flutter (28044): ║                             "imageUrl": "",
I/flutter (28044): ║                             "currency": "SAR",
I/flutter (28044): ║                             "priceHalala": 1300,
I/flutter (28044): ║                             "priceSar": 13,
I/flutter (28044): ║                             "priceLabel": "13 SAR / يوم",
I/flutter (28044): ║                             "kind": "item",
I/flutter (28044): ║                             "category": "snack",
I/flutter (28044): ║                             "type": "subscription",
I/flutter (28044): ║                             "billingMode": "per_day",
I/flutter (28044): ║                             "pricingModel": "daily_recurring",
I/flutter (28044): ║                             "billingUnit": "day",
I/flutter (28044): ║                             "canSubscribe": false,
I/flutter (28044): ║                             "canBuyOneTime": false,
I/flutter (28044): ║                             "purchaseModes": [one_time]
I/flutter (28044): ║                             "ui": {title: براونيز, subtitle: , ctaLabel: أضف, badge: إضافة مع الاشتراك}
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69dfccab8ad797e60eed614b",
I/flutter (28044): ║                             "name": "بروتين بار",
I/flutter (28044): ║                             "description": "",
I/flutter (28044): ║                             "imageUrl": "",
I/flutter (28044): ║                             "currency": "SAR",
I/flutter (28044): ║                             "priceHalala": 1500,
I/flutter (28044): ║                             "priceSar": 15,
I/flutter (28044): ║                             "priceLabel": "15 SAR / يوم",
I/flutter (28044): ║                             "kind": "item",
I/flutter (28044): ║                             "category": "snack",
I/flutter (28044): ║                             "type": "subscription",
I/flutter (28044): ║                             "billingMode": "per_day",
I/flutter (28044): ║                             "pricingModel": "daily_recurring",
I/flutter (28044): ║                             "billingUnit": "day",
I/flutter (28044): ║                             "canSubscribe": false,
I/flutter (28044): ║                             "canBuyOneTime": false,
I/flutter (28044): ║                             "purchaseModes": [one_time]
I/flutter (28044): ║                             "ui": {title: بروتين بار, subtitle: , ctaLabel: أضف, badge: إضافة مع الاشتراك}
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69dfccac8ad797e60eed6151",
I/flutter (28044): ║                             "name": "برتقال وجزر",
I/flutter (28044): ║                             "description": "",
I/flutter (28044): ║                             "imageUrl": "",
I/flutter (28044): ║                             "currency": "SAR",
I/flutter (28044): ║                             "priceHalala": 1100,
I/flutter (28044): ║                             "priceSar": 11,
I/flutter (28044): ║                             "priceLabel": "11 SAR / يوم",
I/flutter (28044): ║                             "kind": "item",
I/flutter (28044): ║                             "category": "juice",
I/flutter (28044): ║                             "type": "subscription",
I/flutter (28044): ║                             "billingMode": "per_day",
I/flutter (28044): ║                             "pricingModel": "daily_recurring",
I/flutter (28044): ║                             "billingUnit": "day",
I/flutter (28044): ║                             "canSubscribe": false,
I/flutter (28044): ║                             "canBuyOneTime": false,
I/flutter (28044): ║                             "purchaseModes": [one_time]
I/flutter (28044): ║                             "ui": {title: برتقال وجزر, subtitle: , ctaLabel: أضف, badge: إضافة مع الاشتراك}
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69dfccac8ad797e60eed6152",
I/flutter (28044): ║                             "name": "بطيخ بالنعناع",
I/flutter (28044): ║                             "description": "",
I/flutter (28044): ║                             "imageUrl": "",
I/flutter (28044): ║                             "currency": "SAR",
I/flutter (28044): ║                             "priceHalala": 1100,
I/flutter (28044): ║                             "priceSar": 11,
I/flutter (28044): ║                             "priceLabel": "11 SAR / يوم",
I/flutter (28044): ║                             "kind": "item",
I/flutter (28044): ║                             "category": "juice",
I/flutter (28044): ║                             "type": "subscription",
I/flutter (28044): ║                             "billingMode": "per_day",
I/flutter (28044): ║                             "pricingModel": "daily_recurring",
I/flutter (28044): ║                             "billingUnit": "day",
I/flutter (28044): ║                             "canSubscribe": false,
I/flutter (28044): ║                             "canBuyOneTime": false,
I/flutter (28044): ║                             "purchaseModes": [one_time]
I/flutter (28044): ║                             "ui": {title: بطيخ بالنعناع, subtitle: , ctaLabel: أضف, badge: إضافة مع الاشتراك}
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69dfccac8ad797e60eed6150",
I/flutter (28044): ║                             "name": "بيت بنش",
I/flutter (28044): ║                             "description": "",
I/flutter (28044): ║                             "imageUrl": "",
I/flutter (28044): ║                             "currency": "SAR",
I/flutter (28044): ║                             "priceHalala": 1100,
I/flutter (28044): ║                             "priceSar": 11,
I/flutter (28044): ║                             "priceLabel": "11 SAR / يوم",
I/flutter (28044): ║                             "kind": "item",
I/flutter (28044): ║                             "category": "juice",
I/flutter (28044): ║                             "type": "subscription",
I/flutter (28044): ║                             "billingMode": "per_day",
I/flutter (28044): ║                             "pricingModel": "daily_recurring",
I/flutter (28044): ║                             "billingUnit": "day",
I/flutter (28044): ║                             "canSubscribe": false,
I/flutter (28044): ║                             "canBuyOneTime": false,
I/flutter (28044): ║                             "purchaseModes": [one_time]
I/flutter (28044): ║                             "ui": {title: بيت بنش, subtitle: , ctaLabel: أضف, badge: إضافة مع الاشتراك}
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69dfccab8ad797e60eed614d",
I/flutter (28044): ║                             "name": "بيري بلاست",
I/flutter (28044): ║                             "description": "",
I/flutter (28044): ║                             "imageUrl": "",
I/flutter (28044): ║                             "currency": "SAR",
I/flutter (28044): ║                             "priceHalala": 1100,
I/flutter (28044): ║                             "priceSar": 11,
I/flutter (28044): ║                             "priceLabel": "11 SAR / يوم",
I/flutter (28044): ║                             "kind": "item",
I/flutter (28044): ║                             "category": "juice",
I/flutter (28044): ║                             "type": "subscription",
I/flutter (28044): ║                             "billingMode": "per_day",
I/flutter (28044): ║                             "pricingModel": "daily_recurring",
I/flutter (28044): ║                             "billingUnit": "day",
I/flutter (28044): ║                             "canSubscribe": false,
I/flutter (28044): ║                             "canBuyOneTime": false,
I/flutter (28044): ║                             "purchaseModes": [one_time]
I/flutter (28044): ║                             "ui": {title: بيري بلاست, subtitle: , ctaLabel: أضف, badge: إضافة مع الاشتراك}
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ead24031962803c5407d3f",
I/flutter (28044): ║                             "name": "بروتين شيك",
I/flutter (28044): ║                             "description": "",
I/flutter (28044): ║                             "imageUrl": "",
I/flutter (28044): ║                             "currency": "SAR",
I/flutter (28044): ║                             "priceHalala": 1900,
I/flutter (28044): ║                             "priceSar": 19,
I/flutter (28044): ║                             "priceLabel": "19 SAR / يوم",
I/flutter (28044): ║                             "kind": "item",
I/flutter (28044): ║                             "category": "juice",
I/flutter (28044): ║                             "type": "subscription",
I/flutter (28044): ║                             "billingMode": "per_day",
I/flutter (28044): ║                             "pricingModel": "daily_recurring",
I/flutter (28044): ║                             "billingUnit": "day",
I/flutter (28044): ║                             "canSubscribe": false,
I/flutter (28044): ║                             "canBuyOneTime": false,
I/flutter (28044): ║                             "purchaseModes": [one_time]
I/flutter (28044): ║                             "ui": {title: بروتين شيك, subtitle: , ctaLabel: أضف, badge: إضافة مع الاشتراك}
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ead24031962803c5407d40",
I/flutter (28044): ║                             "name": "سلطة سيزر صغيرة",
I/flutter (28044): ║                             "description": "",
I/flutter (28044): ║                             "imageUrl": "",
I/flutter (28044): ║                             "currency": "SAR",
I/flutter (28044): ║                             "priceHalala": 1500,
I/flutter (28044): ║                             "priceSar": 15,
I/flutter (28044): ║                             "priceLabel": "15 SAR / يوم",
I/flutter (28044): ║                             "kind": "item",
I/flutter (28044): ║                             "category": "small_salad",
I/flutter (28044): ║                             "type": "subscription",
I/flutter (28044): ║                             "billingMode": "per_day",
I/flutter (28044): ║                             "pricingModel": "daily_recurring",
I/flutter (28044): ║                             "billingUnit": "day",
I/flutter (28044): ║                             "canSubscribe": false,
I/flutter (28044): ║                             "canBuyOneTime": false,
I/flutter (28044): ║                             "purchaseModes": [one_time]
I/flutter (28044): ║                             "ui": {title: سلطة سيزر صغيرة, subtitle: , ctaLabel: أضف, badge: إضافة مع الاشتراك}
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ead24031962803c5407d41",
I/flutter (28044): ║                             "name": "سلطة يونانية صغيرة",
I/flutter (28044): ║                             "description": "",
I/flutter (28044): ║                             "imageUrl": "",
I/flutter (28044): ║                             "currency": "SAR",
I/flutter (28044): ║                             "priceHalala": 1600,
I/flutter (28044): ║                             "priceSar": 16,
I/flutter (28044): ║                             "priceLabel": "16 SAR / يوم",
I/flutter (28044): ║                             "kind": "item",
I/flutter (28044): ║                             "category": "small_salad",
I/flutter (28044): ║                             "type": "subscription",
I/flutter (28044): ║                             "billingMode": "per_day",
I/flutter (28044): ║                             "pricingModel": "daily_recurring",
I/flutter (28044): ║                             "billingUnit": "day",
I/flutter (28044): ║                             "canSubscribe": false,
I/flutter (28044): ║                             "canBuyOneTime": false,
I/flutter (28044): ║                             "purchaseModes": [one_time]
I/flutter (28044): ║                             "ui": {title: سلطة يونانية صغيرة, subtitle: , ctaLabel: أضف, badge: إضافة مع الاشتراك}
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ead24031962803c5407d42",
I/flutter (28044): ║                             "name": "سلطة خضراء صغيرة",
I/flutter (28044): ║                             "description": "",
I/flutter (28044): ║                             "imageUrl": "",
I/flutter (28044): ║                             "currency": "SAR",
I/flutter (28044): ║                             "priceHalala": 1400,
I/flutter (28044): ║                             "priceSar": 14,
I/flutter (28044): ║                             "priceLabel": "14 SAR / يوم",
I/flutter (28044): ║                             "kind": "item",
I/flutter (28044): ║                             "category": "small_salad",
I/flutter (28044): ║                             "type": "subscription",
I/flutter (28044): ║                             "billingMode": "per_day",
I/flutter (28044): ║                             "pricingModel": "daily_recurring",
I/flutter (28044): ║                             "billingUnit": "day",
I/flutter (28044): ║                             "canSubscribe": false,
I/flutter (28044): ║                             "canBuyOneTime": false,
I/flutter (28044): ║                             "purchaseModes": [one_time]
I/flutter (28044): ║                             "ui": {title: سلطة خضراء صغيرة, subtitle: , ctaLabel: أضف, badge: إضافة مع الاشتراك}
I/flutter (28044): ║                        }
I/flutter (28044): ║                     ],
I/flutter (28044): ║                     "oneTime": []
I/flutter (28044): ║                }
I/flutter (28044): ║                 "totalCount": 16
I/flutter (28044): ║            }
I/flutter (28044): ║             "builderCatalog": {
I/flutter (28044): ║                 "categories": [
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca08ad797e60eed611f",
I/flutter (28044): ║                         "key": "rice",
I/flutter (28044): ║                         "dimension": "carb",
I/flutter (28044): ║                         "name": "أرز",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "sortOrder": 10,
I/flutter (28044): ║                         "rules": {dailyLimit: null, ruleKey: null}
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca08ad797e60eed6120",
I/flutter (28044): ║                         "key": "pasta",
I/flutter (28044): ║                         "dimension": "carb",
I/flutter (28044): ║                         "name": "باستا",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "sortOrder": 20,
I/flutter (28044): ║                         "rules": {dailyLimit: null, ruleKey: null}
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca18ad797e60eed6121",
I/flutter (28044): ║                         "key": "potato",
I/flutter (28044): ║                         "dimension": "carb",
I/flutter (28044): ║                         "name": "بطاطس",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "sortOrder": 30,
I/flutter (28044): ║                         "rules": {dailyLimit: null, ruleKey: null}
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca18ad797e60eed6122",
I/flutter (28044): ║                         "key": "vegetables",
I/flutter (28044): ║                         "dimension": "carb",
I/flutter (28044): ║                         "name": "خضار",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "sortOrder": 40,
I/flutter (28044): ║                         "rules": {dailyLimit: null, ruleKey: null}
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcc9f8ad797e60eed611b",
I/flutter (28044): ║                         "key": "egg",
I/flutter (28044): ║                         "dimension": "protein",
I/flutter (28044): ║                         "name": "بيض",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "sortOrder": 10,
I/flutter (28044): ║                         "rules": {dailyLimit: null, ruleKey: null}
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca08ad797e60eed611c",
I/flutter (28044): ║                         "key": "seafood",
I/flutter (28044): ║                         "dimension": "protein",
I/flutter (28044): ║                         "name": "مأكولات بحرية",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "sortOrder": 20,
I/flutter (28044): ║                         "rules": {dailyLimit: null, ruleKey: null}
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca08ad797e60eed611d",
I/flutter (28044): ║                         "key": "chicken",
I/flutter (28044): ║                         "dimension": "protein",
I/flutter (28044): ║                         "name": "دجاج",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "sortOrder": 30,
I/flutter (28044): ║                         "rules": {dailyLimit: null, ruleKey: null}
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca08ad797e60eed611e",
I/flutter (28044): ║                         "key": "beef",
I/flutter (28044): ║                         "dimension": "protein",
I/flutter (28044): ║                         "name": "لحم بقري",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "sortOrder": 40,
I/flutter (28044): ║                         "rules": {dailyLimit: 1, ruleKey: beef_daily_limit}
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ee0a5431962803c547baaf",
I/flutter (28044): ║                         "key": "sandwiches",
I/flutter (28044): ║                         "dimension": "protein",
I/flutter (28044): ║                         "name": "سندوتشات",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "sortOrder": 50,
I/flutter (28044): ║                         "rules": {dailyLimit: null, ruleKey: null}
I/flutter (28044): ║                    }
I/flutter (28044): ║                 ],
I/flutter (28044): ║                 "proteins": [
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ee0a5a31962803c547bac8",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611e",
I/flutter (28044): ║                         "displayCategoryKey": "beef",
I/flutter (28044): ║                         "name": "كرات لحم",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "beef",
I/flutter (28044): ║                         "ruleTags": [beef_daily_limit]
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 10
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ee0a5731962803c547babc",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611d",
I/flutter (28044): ║                         "displayCategoryKey": "chicken",
I/flutter (28044): ║                         "name": "فاهيتا",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "chicken",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 10
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ee0a5731962803c547baba",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611c",
I/flutter (28044): ║                         "displayCategoryKey": "seafood",
I/flutter (28044): ║                         "name": "تونا",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "seafood",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 10
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ee0a5531962803c547bab1",
I/flutter (28044): ║                         "displayCategoryId": "69ee0a5431962803c547baaf",
I/flutter (28044): ║                         "displayCategoryKey": "sandwiches",
I/flutter (28044): ║                         "name": "بيض مسلوق",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "other",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "sandwich",
I/flutter (28044): ║                         "isFullMealReplacement": true,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 10
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ee0a5531962803c547bab0",
I/flutter (28044): ║                         "displayCategoryId": "69dfcc9f8ad797e60eed611b",
I/flutter (28044): ║                         "displayCategoryKey": "egg",
I/flutter (28044): ║                         "name": "بيض مسلوق",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "other",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 10
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca58ad797e60eed6134",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611e",
I/flutter (28044): ║                         "displayCategoryKey": "beef",
I/flutter (28044): ║                         "name": "كرات لحم",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "beef",
I/flutter (28044): ║                         "ruleTags": [beef_daily_limit]
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 10
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca28ad797e60eed6127",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611d",
I/flutter (28044): ║                         "displayCategoryKey": "chicken",
I/flutter (28044): ║                         "name": "فاهيتا",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "chicken",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 10
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca18ad797e60eed6125",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611c",
I/flutter (28044): ║                         "displayCategoryKey": "seafood",
I/flutter (28044): ║                         "name": "تونا",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "seafood",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 10
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca18ad797e60eed6124",
I/flutter (28044): ║                         "displayCategoryId": "69dfcc9f8ad797e60eed611b",
I/flutter (28044): ║                         "displayCategoryKey": "egg",
I/flutter (28044): ║                         "name": "بيض مسلوق",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "other",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 10
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ee0a5a31962803c547bac9",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611e",
I/flutter (28044): ║                         "displayCategoryKey": "beef",
I/flutter (28044): ║                         "name": "لحم استرغانوف",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "beef",
I/flutter (28044): ║                         "ruleTags": [beef_daily_limit]
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 20
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ee0a5831962803c547babd",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611d",
I/flutter (28044): ║                         "displayCategoryKey": "chicken",
I/flutter (28044): ║                         "name": "دجاج زبدة",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "chicken",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 20
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ee0a5731962803c547babb",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611c",
I/flutter (28044): ║                         "displayCategoryKey": "seafood",
I/flutter (28044): ║                         "name": "سمك فيليه",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "seafood",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 20
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ee0a5631962803c547bab2",
I/flutter (28044): ║                         "displayCategoryId": "69ee0a5431962803c547baaf",
I/flutter (28044): ║                         "displayCategoryKey": "sandwiches",
I/flutter (28044): ║                         "name": "تركي",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "other",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "sandwich",
I/flutter (28044): ║                         "isFullMealReplacement": true,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 20
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca68ad797e60eed6136",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611e",
I/flutter (28044): ║                         "displayCategoryKey": "beef",
I/flutter (28044): ║                         "name": "لحم استرغانوف",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "beef",
I/flutter (28044): ║                         "ruleTags": [beef_daily_limit]
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 20
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca28ad797e60eed6128",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611d",
I/flutter (28044): ║                         "displayCategoryKey": "chicken",
I/flutter (28044): ║                         "name": "دجاج زبدة",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "chicken",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 20
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca18ad797e60eed6126",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611c",
I/flutter (28044): ║                         "displayCategoryKey": "seafood",
I/flutter (28044): ║                         "name": "سمك فيليه",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "seafood",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 20
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ee0a5a31962803c547bacb",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611c",
I/flutter (28044): ║                         "displayCategoryKey": "seafood",
I/flutter (28044): ║                         "name": "جمبري",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "seafood",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": true,
I/flutter (28044): ║                         "premiumCreditCost": 1,
I/flutter (28044): ║                         "extraFeeHalala": 2000,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 30
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ee0a5a31962803c547baca",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611e",
I/flutter (28044): ║                         "displayCategoryKey": "beef",
I/flutter (28044): ║                         "name": "ستيك لحم",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "beef",
I/flutter (28044): ║                         "ruleTags": [beef_daily_limit]
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": true,
I/flutter (28044): ║                         "premiumCreditCost": 1,
I/flutter (28044): ║                         "extraFeeHalala": 2500,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 30
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ee0a5831962803c547babe",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611d",
I/flutter (28044): ║                         "displayCategoryKey": "chicken",
I/flutter (28044): ║                         "name": "دجاج كريمة",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "chicken",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 30
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ee0a5631962803c547bab3",
I/flutter (28044): ║                         "displayCategoryId": "69ee0a5431962803c547baaf",
I/flutter (28044): ║                         "displayCategoryKey": "sandwiches",
I/flutter (28044): ║                         "name": "حلوم كلاسيكي",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "other",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "sandwich",
I/flutter (28044): ║                         "isFullMealReplacement": true,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 30
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca68ad797e60eed6138",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611c",
I/flutter (28044): ║                         "displayCategoryKey": "seafood",
I/flutter (28044): ║                         "name": "جمبري",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "seafood",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": true,
I/flutter (28044): ║                         "premiumCreditCost": 1,
I/flutter (28044): ║                         "extraFeeHalala": 2000,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 30
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca68ad797e60eed6137",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611e",
I/flutter (28044): ║                         "displayCategoryKey": "beef",
I/flutter (28044): ║                         "name": "ستيك لحم",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "beef",
I/flutter (28044): ║                         "ruleTags": [beef_daily_limit]
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": true,
I/flutter (28044): ║                         "premiumCreditCost": 1,
I/flutter (28044): ║                         "extraFeeHalala": 2500,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 30
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca28ad797e60eed6129",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611d",
I/flutter (28044): ║                         "displayCategoryKey": "chicken",
I/flutter (28044): ║                         "name": "دجاج كريمة",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "chicken",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 30
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ee0a5a31962803c547bacc",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611c",
I/flutter (28044): ║                         "displayCategoryKey": "seafood",
I/flutter (28044): ║                         "name": "سالمون",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "seafood",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": true,
I/flutter (28044): ║                         "premiumCreditCost": 1,
I/flutter (28044): ║                         "extraFeeHalala": 1500,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 40
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ee0a5831962803c547babf",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611d",
I/flutter (28044): ║                         "displayCategoryKey": "chicken",
I/flutter (28044): ║                         "name": "دجاج كاري وجوز الهند",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "chicken",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 40
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ee0a5631962803c547bab4",
I/flutter (28044): ║                         "displayCategoryId": "69ee0a5431962803c547baaf",
I/flutter (28044): ║                         "displayCategoryKey": "sandwiches",
I/flutter (28044): ║                         "name": "تونا",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "other",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "sandwich",
I/flutter (28044): ║                         "isFullMealReplacement": true,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 40
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca68ad797e60eed6139",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611c",
I/flutter (28044): ║                         "displayCategoryKey": "seafood",
I/flutter (28044): ║                         "name": "سالمون",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "seafood",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": true,
I/flutter (28044): ║                         "premiumCreditCost": 1,
I/flutter (28044): ║                         "extraFeeHalala": 1500,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 40
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca28ad797e60eed612a",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611d",
I/flutter (28044): ║                         "displayCategoryKey": "chicken",
I/flutter (28044): ║                         "name": "دجاج كاري وجوز الهند",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "chicken",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 40
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ee0a5831962803c547bac0",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611d",
I/flutter (28044): ║                         "displayCategoryKey": "chicken",
I/flutter (28044): ║                         "name": "دجاج سبايسي",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "chicken",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 50
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ee0a5631962803c547bab5",
I/flutter (28044): ║                         "displayCategoryId": "69ee0a5431962803c547baaf",
I/flutter (28044): ║                         "displayCategoryKey": "sandwiches",
I/flutter (28044): ║                         "name": "بيض اسكرامبل",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "other",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "sandwich",
I/flutter (28044): ║                         "isFullMealReplacement": true,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 50
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca28ad797e60eed612b",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611d",
I/flutter (28044): ║                         "displayCategoryKey": "chicken",
I/flutter (28044): ║                         "name": "دجاج سبايسي",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "chicken",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 50
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ee0a5831962803c547bac1",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611d",
I/flutter (28044): ║                         "displayCategoryKey": "chicken",
I/flutter (28044): ║                         "name": "دجاج توابل إيطالية",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "chicken",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 60
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ee0a5631962803c547bab7",
I/flutter (28044): ║                         "displayCategoryId": "69ee0a5431962803c547baaf",
I/flutter (28044): ║                         "displayCategoryKey": "sandwiches",
I/flutter (28044): ║                         "name": "دجاج فاهيتا",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "other",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "sandwich",
I/flutter (28044): ║                         "isFullMealReplacement": true,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 60
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca38ad797e60eed612c",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611d",
I/flutter (28044): ║                         "displayCategoryKey": "chicken",
I/flutter (28044): ║                         "name": "دجاج توابل إيطالية",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "chicken",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 60
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ee0a5931962803c547bac2",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611d",
I/flutter (28044): ║                         "displayCategoryKey": "chicken",
I/flutter (28044): ║                         "name": "دجاج تكا",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "chicken",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 70
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ee0a5731962803c547bab8",
I/flutter (28044): ║                         "displayCategoryId": "69ee0a5431962803c547baaf",
I/flutter (28044): ║                         "displayCategoryKey": "sandwiches",
I/flutter (28044): ║                         "name": "دجاج مكسيكي",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "other",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "sandwich",
I/flutter (28044): ║                         "isFullMealReplacement": true,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 70
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca48ad797e60eed612f",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611d",
I/flutter (28044): ║                         "displayCategoryKey": "chicken",
I/flutter (28044): ║                         "name": "دجاج تكا",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "chicken",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 70
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ee0a5931962803c547bac3",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611d",
I/flutter (28044): ║                         "displayCategoryKey": "chicken",
I/flutter (28044): ║                         "name": "دجاج آسيوي",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "chicken",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 80
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ee0a5731962803c547bab9",
I/flutter (28044): ║                         "displayCategoryId": "69ee0a5431962803c547baaf",
I/flutter (28044): ║                         "displayCategoryKey": "sandwiches",
I/flutter (28044): ║                         "name": "دجاج مشوي",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "other",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "sandwich",
I/flutter (28044): ║                         "isFullMealReplacement": true,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 80
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca48ad797e60eed6130",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611d",
I/flutter (28044): ║                         "displayCategoryKey": "chicken",
I/flutter (28044): ║                         "name": "دجاج آسيوي",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "chicken",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 80
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ee0a5931962803c547bac5",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611d",
I/flutter (28044): ║                         "displayCategoryKey": "chicken",
I/flutter (28044): ║                         "name": "استربس",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "chicken",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 90
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca58ad797e60eed6131",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611d",
I/flutter (28044): ║                         "displayCategoryKey": "chicken",
I/flutter (28044): ║                         "name": "استربس",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "chicken",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 90
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ee0a5931962803c547bac6",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611d",
I/flutter (28044): ║                         "displayCategoryKey": "chicken",
I/flutter (28044): ║                         "name": "دجاج مشوي",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "chicken",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 100
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca58ad797e60eed6132",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611d",
I/flutter (28044): ║                         "displayCategoryKey": "chicken",
I/flutter (28044): ║                         "name": "دجاج مشوي",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "chicken",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 100
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ee0a5931962803c547bac7",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611d",
I/flutter (28044): ║                         "displayCategoryKey": "chicken",
I/flutter (28044): ║                         "name": "دجاج مكسيكي",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "chicken",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 110
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca58ad797e60eed6133",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611d",
I/flutter (28044): ║                         "displayCategoryKey": "chicken",
I/flutter (28044): ║                         "name": "دجاج مكسيكي",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "imageUrl": "",
I/flutter (28044): ║                         "proteinFamilyKey": "chicken",
I/flutter (28044): ║                         "ruleTags": []
I/flutter (28044): ║                         "selectionType": "standard_combo",
I/flutter (28044): ║                         "isFullMealReplacement": false,
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "premiumCreditCost": 0,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 110
I/flutter (28044): ║                    }
I/flutter (28044): ║                 ],
I/flutter (28044): ║                 "carbs": [
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69ee0a5b31962803c547bacd",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca18ad797e60eed6122",
I/flutter (28044): ║                         "displayCategoryKey": "custom_salad",
I/flutter (28044): ║                         "name": "سلطة كبيرة",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "type": "custom_salad",
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 1
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca98ad797e60eed6142",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca18ad797e60eed6122",
I/flutter (28044): ║                         "displayCategoryKey": "vegetables",
I/flutter (28044): ║                         "name": "خضار مشكل مشوي",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "type": "standard",
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 10
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca98ad797e60eed6140",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca18ad797e60eed6121",
I/flutter (28044): ║                         "displayCategoryKey": "potato",
I/flutter (28044): ║                         "name": "بطاطس مشوي",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "type": "standard",
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 10
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca88ad797e60eed613e",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed6120",
I/flutter (28044): ║                         "displayCategoryKey": "pasta",
I/flutter (28044): ║                         "name": "باستا الفريدو",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "type": "standard",
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 10
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca78ad797e60eed613a",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611f",
I/flutter (28044): ║                         "displayCategoryKey": "rice",
I/flutter (28044): ║                         "name": "رز أبيض",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "type": "standard",
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 10
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca98ad797e60eed6141",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca18ad797e60eed6121",
I/flutter (28044): ║                         "displayCategoryKey": "potato",
I/flutter (28044): ║                         "name": "بطاطا حلوة",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "type": "standard",
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 20
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca88ad797e60eed613f",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed6120",
I/flutter (28044): ║                         "displayCategoryKey": "pasta",
I/flutter (28044): ║                         "name": "باستا بالصوص الأحمر",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "type": "standard",
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 20
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca88ad797e60eed613b",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611f",
I/flutter (28044): ║                         "displayCategoryKey": "rice",
I/flutter (28044): ║                         "name": "رز بالكركم",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "type": "standard",
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 20
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca88ad797e60eed613c",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611f",
I/flutter (28044): ║                         "displayCategoryKey": "rice",
I/flutter (28044): ║                         "name": "رز برياني",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "type": "standard",
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 30
I/flutter (28044): ║                    },
I/flutter (28044): ║                    {
I/flutter (28044): ║                         "id": "69dfcca88ad797e60eed613d",
I/flutter (28044): ║                         "displayCategoryId": "69dfcca08ad797e60eed611f",
I/flutter (28044): ║                         "displayCategoryKey": "rice",
I/flutter (28044): ║                         "name": "كينوا",
I/flutter (28044): ║                         "description": "",
I/flutter (28044): ║                         "type": "standard",
I/flutter (28044): ║                         "isPremium": false,
I/flutter (28044): ║                         "extraFeeHalala": 0,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "sortOrder": 40
I/flutter (28044): ║                    }
I/flutter (28044): ║                 ],
I/flutter (28044): ║                 "customPremiumSalad": {
I/flutter (28044): ║                     "id": "69ee0a5b31962803c547bacd",
I/flutter (28044): ║                     "carbId": "69ee0a5b31962803c547bacd",
I/flutter (28044): ║                     "selectionType": "custom_premium_salad",
I/flutter (28044): ║                     "carbType": "custom_salad",
I/flutter (28044): ║                     "name": "سلطة كبيرة",
I/flutter (28044): ║                     "description": "",
I/flutter (28044): ║                     "isPremium": true,
I/flutter (28044): ║                     "extraFeeHalala": 3000,
I/flutter (28044): ║                     "extraFeeSar": 30,
I/flutter (28044): ║                     "currency": "SAR",
I/flutter (28044): ║                     "preset": {
I/flutter (28044): ║                         "key": "large_salad",
I/flutter (28044): ║                         "name": "سلطة كبيرة + بروتين",
I/flutter (28044): ║                         "selectionType": "custom_premium_salad",
I/flutter (28044): ║                         "fixedPriceHalala": 3000,
I/flutter (28044): ║                         "fixedPriceSar": 30,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "groups": [
I/flutter (28044): ║                          {key: vegetables, minSelect: 0, maxSelect: 99},
I/flutter (28044): ║                          {key: addons, minSelect: 0, maxSelect: 99},
I/flutter (28044): ║                          {key: fruits, minSelect: 0, maxSelect: 99},
I/flutter (28044): ║                          {key: nuts, minSelect: 0, maxSelect: 99},
I/flutter (28044): ║                          {key: sauce, minSelect: 1, maxSelect: 1}
I/flutter (28044): ║                         ]
I/flutter (28044): ║                    }
I/flutter (28044): ║                     "ingredients": [
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b3e31962803c547bb74",
I/flutter (28044): ║                             "groupKey": "fruits",
I/flutter (28044): ║                             "name": "بطيخ",
I/flutter (28044): ║                             "calories": 25,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b3d31962803c547bb70",
I/flutter (28044): ║                             "groupKey": "fruits",
I/flutter (28044): ║                             "name": "تفاح أخضر",
I/flutter (28044): ║                             "calories": 30,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b3e31962803c547bb76",
I/flutter (28044): ║                             "groupKey": "fruits",
I/flutter (28044): ║                             "name": "تمر",
I/flutter (28044): ║                             "calories": 50,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b3e31962803c547bb73",
I/flutter (28044): ║                             "groupKey": "fruits",
I/flutter (28044): ║                             "name": "توت أزرق",
I/flutter (28044): ║                             "calories": 25,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b3d31962803c547bb71",
I/flutter (28044): ║                             "groupKey": "fruits",
I/flutter (28044): ║                             "name": "رمان",
I/flutter (28044): ║                             "calories": 40,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b3e31962803c547bb75",
I/flutter (28044): ║                             "groupKey": "fruits",
I/flutter (28044): ║                             "name": "شمام",
I/flutter (28044): ║                             "calories": 25,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b3e31962803c547bb72",
I/flutter (28044): ║                             "groupKey": "fruits",
I/flutter (28044): ║                             "name": "فراولة",
I/flutter (28044): ║                             "calories": 20,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b3d31962803c547bb6f",
I/flutter (28044): ║                             "groupKey": "fruits",
I/flutter (28044): ║                             "name": "مانجا",
I/flutter (28044): ║                             "calories": 50,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b3f31962803c547bb7b",
I/flutter (28044): ║                             "groupKey": "nuts_cheese",
I/flutter (28044): ║                             "name": "بارميزان",
I/flutter (28044): ║                             "calories": 80,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b3f31962803c547bb79",
I/flutter (28044): ║                             "groupKey": "nuts_cheese",
I/flutter (28044): ║                             "name": "سمسم",
I/flutter (28044): ║                             "calories": 60,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b3e31962803c547bb77",
I/flutter (28044): ║                             "groupKey": "nuts_cheese",
I/flutter (28044): ║                             "name": "عين الجمل",
I/flutter (28044): ║                             "calories": 80,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b3f31962803c547bb7a",
I/flutter (28044): ║                             "groupKey": "nuts_cheese",
I/flutter (28044): ║                             "name": "فيتا",
I/flutter (28044): ║                             "calories": 75,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b3f31962803c547bb78",
I/flutter (28044): ║                             "groupKey": "nuts_cheese",
I/flutter (28044): ║                             "name": "كاجو",
I/flutter (28044): ║                             "calories": 70,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b2b31962803c547bb40",
I/flutter (28044): ║                             "groupKey": "salad_protein",
I/flutter (28044): ║                             "name": "استربس",
I/flutter (28044): ║                             "calories": 140,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b2a31962803c547bb39",
I/flutter (28044): ║                             "groupKey": "salad_protein",
I/flutter (28044): ║                             "name": "بيض مسلوق",
I/flutter (28044): ║                             "calories": 70,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b2a31962803c547bb3a",
I/flutter (28044): ║                             "groupKey": "salad_protein",
I/flutter (28044): ║                             "name": "تونا",
I/flutter (28044): ║                             "calories": 100,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b2c31962803c547bb46",
I/flutter (28044): ║                             "groupKey": "salad_protein",
I/flutter (28044): ║                             "name": "جمبري",
I/flutter (28044): ║                             "calories": 100,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b2b31962803c547bb3f",
I/flutter (28044): ║                             "groupKey": "salad_protein",
I/flutter (28044): ║                             "name": "دجاج آسيوي",
I/flutter (28044): ║                             "calories": 130,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b2b31962803c547bb3e",
I/flutter (28044): ║                             "groupKey": "salad_protein",
I/flutter (28044): ║                             "name": "دجاج تريا",
I/flutter (28044): ║                             "calories": 130,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b2a31962803c547bb3d",
I/flutter (28044): ║                             "groupKey": "salad_protein",
I/flutter (28044): ║                             "name": "دجاج تكا",
I/flutter (28044): ║                             "calories": 130,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b2a31962803c547bb3c",
I/flutter (28044): ║                             "groupKey": "salad_protein",
I/flutter (28044): ║                             "name": "دجاج سيزر",
I/flutter (28044): ║                             "calories": 130,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b2b31962803c547bb41",
I/flutter (28044): ║                             "groupKey": "salad_protein",
I/flutter (28044): ║                             "name": "دجاج مشوي",
I/flutter (28044): ║                             "calories": 130,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b2b31962803c547bb42",
I/flutter (28044): ║                             "groupKey": "salad_protein",
I/flutter (28044): ║                             "name": "دجاج مكسيكي",
I/flutter (28044): ║                             "calories": 130,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b2c31962803c547bb47",
I/flutter (28044): ║                             "groupKey": "salad_protein",
I/flutter (28044): ║                             "name": "سالمون",
I/flutter (28044): ║                             "calories": 180,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b2c31962803c547bb45",
I/flutter (28044): ║                             "groupKey": "salad_protein",
I/flutter (28044): ║                             "name": "ستيك لحم",
I/flutter (28044): ║                             "calories": 250,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b2d31962803c547bb48",
I/flutter (28044): ║                             "groupKey": "salad_protein",
I/flutter (28044): ║                             "name": "سمك فيليه",
I/flutter (28044): ║                             "calories": 120,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b2a31962803c547bb3b",
I/flutter (28044): ║                             "groupKey": "salad_protein",
I/flutter (28044): ║                             "name": "فاهيتا",
I/flutter (28044): ║                             "calories": 120,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b2c31962803c547bb43",
I/flutter (28044): ║                             "groupKey": "salad_protein",
I/flutter (28044): ║                             "name": "كرات لحم",
I/flutter (28044): ║                             "calories": 180,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b2c31962803c547bb44",
I/flutter (28044): ║                             "groupKey": "salad_protein",
I/flutter (28044): ║                             "name": "لحم استرغانوف",
I/flutter (28044): ║                             "calories": 200,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b4031962803c547bb7f",
I/flutter (28044): ║                             "groupKey": "sauce",
I/flutter (28044): ║                             "name": "بالسمك",
I/flutter (28044): ║                             "calories": 45,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b3f31962803c547bb7c",
I/flutter (28044): ║                             "groupKey": "sauce",
I/flutter (28044): ║                             "name": "رانش",
I/flutter (28044): ║                             "calories": 70,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b4031962803c547bb81",
I/flutter (28044): ║                             "groupKey": "sauce",
I/flutter (28044): ║                             "name": "زبادي بالنعناع",
I/flutter (28044): ║                             "calories": 40,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b4031962803c547bb7d",
I/flutter (28044): ║                             "groupKey": "sauce",
I/flutter (28044): ║                             "name": "سيزر",
I/flutter (28044): ║                             "calories": 80,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b4031962803c547bb7e",
I/flutter (28044): ║                             "groupKey": "sauce",
I/flutter (28044): ║                             "name": "صوص بيستو",
I/flutter (28044): ║                             "calories": 90,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b4131962803c547bb82",
I/flutter (28044): ║                             "groupKey": "sauce",
I/flutter (28044): ║                             "name": "عسل بالليمون",
I/flutter (28044): ║                             "calories": 50,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b4031962803c547bb80",
I/flutter (28044): ║                             "groupKey": "sauce",
I/flutter (28044): ║                             "name": "هاني ماستر",
I/flutter (28044): ║                             "calories": 60,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b2f31962803c547bb54",
I/flutter (28044): ║                             "groupKey": "vegetables",
I/flutter (28044): ║                             "name": "بروكلي",
I/flutter (28044): ║                             "calories": 20,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b3c31962803c547bb69",
I/flutter (28044): ║                             "groupKey": "vegetables",
I/flutter (28044): ║                             "name": "بصل أحمر",
I/flutter (28044): ║                             "calories": 20,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b3c31962803c547bb6a",
I/flutter (28044): ║                             "groupKey": "vegetables",
I/flutter (28044): ║                             "name": "بصل أخضر",
I/flutter (28044): ║                             "calories": 15,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b3d31962803c547bb6e",
I/flutter (28044): ║                             "groupKey": "vegetables",
I/flutter (28044): ║                             "name": "بصل مخلل",
I/flutter (28044): ║                             "calories": 15,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b2e31962803c547bb50",
I/flutter (28044): ║                             "groupKey": "vegetables",
I/flutter (28044): ║                             "name": "بنجر",
I/flutter (28044): ║                             "calories": 25,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b2d31962803c547bb4a",
I/flutter (28044): ║                             "groupKey": "vegetables",
I/flutter (28044): ║                             "name": "جزر",
I/flutter (28044): ║                             "calories": 20,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b2e31962803c547bb4d",
I/flutter (28044): ║                             "groupKey": "vegetables",
I/flutter (28044): ║                             "name": "حمص",
I/flutter (28044): ║                             "calories": 40,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b2f31962803c547bb55",
I/flutter (28044): ║                             "groupKey": "vegetables",
I/flutter (28044): ║                             "name": "خضار مشكل مشوي",
I/flutter (28044): ║                             "calories": 40,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b2d31962803c547bb4b",
I/flutter (28044): ║                             "groupKey": "vegetables",
I/flutter (28044): ║                             "name": "خيار",
I/flutter (28044): ║                             "calories": 8,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b2d31962803c547bb4c",
I/flutter (28044): ║                             "groupKey": "vegetables",
I/flutter (28044): ║                             "name": "ذرة",
I/flutter (28044): ║                             "calories": 30,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b3c31962803c547bb6b",
I/flutter (28044): ║                             "groupKey": "vegetables",
I/flutter (28044): ║                             "name": "زيتون أخضر",
I/flutter (28044): ║                             "calories": 25,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b3c31962803c547bb6c",
I/flutter (28044): ║                             "groupKey": "vegetables",
I/flutter (28044): ║                             "name": "زيتون أسود",
I/flutter (28044): ║                             "calories": 25,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b2d31962803c547bb49",
I/flutter (28044): ║                             "groupKey": "vegetables",
I/flutter (28044): ║                             "name": "طماطم",
I/flutter (28044): ║                             "calories": 10,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b2e31962803c547bb4f",
I/flutter (28044): ║                             "groupKey": "vegetables",
I/flutter (28044): ║                             "name": "فاصوليا حمراء",
I/flutter (28044): ║                             "calories": 35,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b2f31962803c547bb53",
I/flutter (28044): ║                             "groupKey": "vegetables",
I/flutter (28044): ║                             "name": "فطر",
I/flutter (28044): ║                             "calories": 12,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b2e31962803c547bb51",
I/flutter (28044): ║                             "groupKey": "vegetables",
I/flutter (28044): ║                             "name": "فلف%",
I/flutter (28044): ║                             "calories": 15,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b2f31962803c547bb52",
I/flutter (28044): ║                             "groupKey": "vegetables",
I/flutter (28044): ║                             "name": "كزبرة",
I/flutter (28044): ║                             "calories": 5,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b3c31962803c547bb6d",
I/flutter (28044): ║                             "groupKey": "vegetables",
I/flutter (28044): ║                             "name": "نعناع",
I/flutter (28044): ║                             "calories": 5,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        },
I/flutter (28044): ║                        {
I/flutter (28044): ║                             "id": "69ee0b2e31962803c547bb4e",
I/flutter (28044): ║                             "groupKey": "vegetables",
I/flutter (28044): ║                             "name": "ه��لينو",
I/flutter (28044): ║                             "calories": 30,
I/flutter (28044): ║                             "price": 0,
I/flutter (28044): ║                             "maxQuantity": 0
I/flutter (28044): ║                        }
I/flutter (28044): ║                     ],
I/flutter (28044): ║                     "ui": {title: سلطة كبيرة + بروتين, subtitle: سلطة كبيرة مع بروتين بسعر ترقية ثابت},
I/flutter (28044): ║                     "available": true
I/flutter (28044): ║                }
I/flutter (28044): ║                 "rules": {
I/flutter (28044): ║                     "version": "meal_planner_rules.v1",
I/flutter (28044): ║                     "beef": {proteinFamilyKey: beef, maxSlotsPerDay: 1},
I/flutter (28044): ║                     "selectionTypes": [standard_combo, custom_premium_salad, sandwich]
I/flutter (28044): ║                     "customPremiumSalad": {
I/flutter (28044): ║                         "key": "large_salad",
I/flutter (28044): ║                         "name": {ar: سلطة كبيرة + بروتين, en: Large Salad + Protein},
I/flutter (28044): ║                         "selectionType": "custom_premium_salad",
I/flutter (28044): ║                         "fixedPriceHalala": 3000,
I/flutter (28044): ║                         "fixedPriceSar": 30,
I/flutter (28044): ║                         "currency": "SAR",
I/flutter (28044): ║                         "groups": [
I/flutter (28044): ║                          {key: vegetables, minSelect: 0, maxSelect: 99},
I/flutter (28044): ║                          {key: addons, minSelect: 0, maxSelect: 99},
I/flutter (28044): ║                          {key: fruits, minSelect: 0, maxSelect: 99},
I/flutter (28044): ║                          {key: nuts, minSelect: 0, maxSelect: 99},
I/flutter (28044): ║                          {key: sauce, minSelect: 1, maxSelect: 1}
I/flutter (28044): ║                         ]
I/flutter (28044): ║                    }
I/flutter (28044): ║                }
I/flutter (28044): ║            }
I/flutter (28044): ║        }
I/flutter (28044): ║    }
I/flutter (28044): ║
I/flutter (28044): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter (28044):
I/flutter (28044): ╔╣ Request ║ GET
I/flutter (28044): ║  https://basicdiet145.onrender.com/api/addons
I/flutter (28044): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter (28044): ╔ Headers
I/flutter (28044): ╟ accept: application/json
I/flutter (28044): ╟ content-type: application/json
I/flutter (28044): ╟ Authorization:
I/flutter (28044): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2OWNjOTYyNzYzMWU5YzFiMWRhODI1Yz
I/flutter (28044): ║ EiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc3Njk0NTUxOCwiZXhwIjox
I/flutter (28044): ║ Nzc5NjIzOTE4fQ.joUXrmGUunZvh3BUAg-MDI6eV9DprcGb61uxCzmWBC8
I/flutter (28044): ╟ Accept-Language: ar
I/flutter (28044): ╟ contentType: application/json
I/flutter (28044): ╟ responseType: ResponseType.json
I/flutter (28044): ╟ followRedirects: true
I/flutter (28044): ╟ receiveTimeout: 16:40:00.000000
I/flutter (28044): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
E/libEGL  (28044): called unimplemented OpenGL ES API
E/libEGL  (28044): called unimplemented OpenGL ES API
E/libEGL  (28044): called unimplemented OpenGL ES API
E/libEGL  (28044): called unimplemented OpenGL ES API
E/libEGL  (28044): called unimplemented OpenGL ES API
E/libEGL  (28044): called unimplemented OpenGL ES API
E/libEGL  (28044): called unimplemented OpenGL ES API
E/libEGL  (28044): called unimplemented OpenGL ES API
E/libEGL  (28044): called unimplemented OpenGL ES API



{
"status": true,
"data": {
"_id": "69ee6deee3a066cee3bdecfd",
"userId": "69cc9627631e9c1b1da825c1",
"planId": "69e4f868fdfc954fcae79f59",
"status": "active",
"startDate": "2026-04-25T21:00:00.000Z",
"endDate": "2026-05-20T21:00:00.000Z",
"validityEndDate": "2026-05-20T21:00:00.000Z",
"canceledAt": null,
"totalMeals": 52,
"remainingMeals": 52,
"addonSubscriptions": [
{
"addonId": "69ead23e31962803c5407d39",
"name": "اشتراك عصير",
"category": "juice",
"maxPerDay": 1
}
],
"selectedGrams": 100,
"selectedMealsPerDay": 2,
"basePlanPriceHalala": 79500,
"discountHalala": 0,
"subtotalHalala": 114600,
"vatPercentage": 15,
"vatHalala": 17190,
"totalPriceHalala": 131790,
"checkoutCurrency": "SAR",
"appliedPromo": null,
"premiumBalance": [
{
"proteinId": "69ee0a5a31962803c547bacb",
"purchasedQty": 2,
"remainingQty": 2,
"unitExtraFeeHalala": 2000,
"currency": "SAR",
"purchasedAt": "2026-04-26T19:56:30.968Z",
"_id": "69ee6deee3a066cee3bdecfe",
"name": "Shrimp"
},
{
"proteinId": "69ee0a5a31962803c547baca",
"purchasedQty": 1,
"remainingQty": 1,
"unitExtraFeeHalala": 2500,
"currency": "SAR",
"purchasedAt": "2026-04-26T19:56:30.968Z",
"_id": "69ee6deee3a066cee3bdecff",
"name": "Beef Steak"
}
],
"contractVersion": "subscription_contract.v1",
"contractMode": "canonical",
"contractCompleteness": "authoritative",
"contractSource": "customer_checkout",
"contractHash": "983d3708c2e0e68b227593076f93898511b8cb4be7d7686449719fe7787cedf7",
"contractSnapshot": {
"meta": {
"version": "subscription_contract.v1",
"capturedAt": "2026-04-26T19:55:58.219Z",
"source": "customer_checkout",
"mode": "canonical",
"completeness": "authoritative"
},
"origin": {
"actorRole": "client",
"actorUserId": "69cc9627631e9c1b1da825c1",
"renewedFromSubscriptionId": null,
"adminOverrideMeta": null,
"deliveryPreferenceSeeded": false
},
"plan": {
"planId": "69e4f868fdfc954fcae79f59",
"planName": {
"ar": "أشتراك 26 ايام",
"en": "26 days"
},
"daysCount": 26,
"selectedGrams": 100,
"mealsPerDay": 2,
"totalMeals": 52,
"currency": "SAR"
},
"start": {
"requestedStartDate": "2026-04-26",
"resolvedStartDate": "2026-04-25T21:00:00.000Z",
"defaultedToTomorrow": false,
"timezone": "Asia/Riyadh"
},
"pricing": {
"basePlanPriceHalala": 79500,
"premiumTotalHalala": 6500,
"addonsTotalHalala": 28600,
"deliveryFeeHalala": 0,
"discountHalala": 0,
"subtotalHalala": 114600,
"vatPercentage": 15,
"vatHalala": 17190,
"totalHalala": 131790,
"currency": "SAR"
},
"promo": null,
"premiumSelections": [
{
"proteinId": "69ee0a5a31962803c547bacb",
"qty": 2,
"unitExtraFeeHalala": 2000,
"currency": "SAR"
},
{
"proteinId": "69ee0a5a31962803c547baca",
"qty": 1,
"unitExtraFeeHalala": 2500,
"currency": "SAR"
}
],
"delivery": {
"mode": "pickup",
"pricingMode": "pickup_legacy",
"seedOnlyFromPreviousPreference": false,
"slot": {
"type": "pickup",
"window": "",
"slotId": ""
},
"address": null,
"zoneId": null,
"zoneName": "",
"pickupLocationId": null
},
"policySnapshot": {
"freezePolicy": {
"enabled": false,
"maxDays": 1,
"maxTimes": 1
},
"skipPolicy": {
"enabled": true,
"maxDays": 4
},
"fallbackMode": "current",
"directPremiumPricing": true,
"oneTimeAddonRequiresPaymentBeforeConfirmation": true
},
"entitlementContract": {
"premiumItems": [
{
"proteinId": "69ee0a5a31962803c547bacb",
"qty": 2,
"unitExtraFeeHalala": 2000,
"currency": "SAR"
},
{
"proteinId": "69ee0a5a31962803c547baca",
"qty": 1,
"unitExtraFeeHalala": 2500,
"currency": "SAR"
}
],
"addonSubscriptions": [
{
"addonId": "69ead23e31962803c5407d39",
"name": "اشتراك عصير",
"category": "juice",
"priceHalala": 1100,
"currency": "SAR"
}
]
},
"compatibility": {
"directPremiumPricingOnly": true,
"usesCategoryAddons": true,
"usesLegacyDeliveryRuntime": true,
"usesLegacySkipRuntime": false
}
},
"renewedFromSubscriptionId": null,
"deliveryMode": "pickup",
"deliveryZoneId": null,
"deliveryZoneName": "",
"deliveryFeeHalala": 0,
"pickupLocationId": "",
"deliverySlot": {
"type": "pickup",
"window": "",
"slotId": ""
},
"skippedCount": 0,
"skipDaysUsed": 0,
"expiryReminder3dSentAt": null,
"expiryReminder24hSentAt": null,
"premiumSelections": [],
"createdAt": "2026-04-26T19:56:30.977Z",
"updatedAt": "2026-04-26T19:56:30.977Z",
"deliveryAddress": null,
"pricingSummary": {
"basePriceHalala": 114600,
"basePriceSar": 1146,
"vatPercentage": 15,
"vatHalala": 17190,
"vatSar": 171.9,
"totalPriceHalala": 131790,
"totalPriceSar": 1317.9,
"currency": "SAR"
},
"contract": {
"isCanonical": true,
"isGrandfathered": false,
"version": "subscription_contract.v1"
},
"statusLabel": "Active",
"statusLabelAr": "نشط",
"statusLabelEn": "Active",
"deliveryModeLabel": "Pickup",
"deliveryModeLabelAr": "استلام",
"deliveryModeLabelEn": "Pickup",
"planName": "26 days",
"skipDaysLimit": 4,
"remainingSkipDays": 4,
"businessDate": "2026-04-26",
"pickupPreparation": {
"flowStatus": "disabled",
"reason": "PLANNING_INCOMPLETE",
"canRequestPrepare": false,
"canBePrepared": false,
"planningReady": false,
"showMealPlannerCta": true,
"mealPlannerCtaLabelAr": "اختيار الوجبات",
"mealPlannerCtaLabelEn": "Choose meals",
"pickupPreparationFlowStatus": "waiting_for_prepare",
"buttonLabel": "Prepare Request",
"buttonLabelAr": "تجهيز الطلب",
"buttonLabelEn": "Prepare Request",
"messageAr": "اختر وجباتك أولًا",
"messageEn": "Choose your meals first",
"message": "Choose your meals first",
"pickupRequested": false,
"pickupPrepared": false,
"consumptionState": "consumable_today",
"fulfillmentMode": "quantity_only",
"dayEndConsumptionReason": null
}
}
}
