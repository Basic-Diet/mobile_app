I/flutter (14509): ╔╣ Request ║ GET
I/flutter (14509): ║  https://basicdiet145.onrender.com/api/subscriptions/6a304c7b1f241f5e709af91c/pickup-availability?date=2026-06-15
I/flutter (14509): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter (14509): ╔ Query Parameters
I/flutter (14509): ╟ date: 2026-06-15
I/flutter (14509): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter (14509): ╔ Headers
I/flutter (14509): ╟ accept: application/json
I/flutter (14509): ╟ content-type: application/json
I/flutter (14509): ╟ authorization:
I/flutter (14509): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTI0NTNiMmYwMWVhMmI0MDg3Y2Q2Nj
I/flutter (14509): ║ kiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc4MTU1MDIyMSwiZXhwIjox
I/flutter (14509): ║ NzgxNTUxMTIxfQ.p9Gw5MAr99C5MDjfk8vs2w8sZ6adwQef80_szbpzSkc
I/flutter (14509): ╟ Accept-Language: ar
I/flutter (14509): ╟ contentType: application/json
I/flutter (14509): ╟ responseType: ResponseType.json
I/flutter (14509): ╟ followRedirects: true
I/flutter (14509): ╟ connectTimeout: 0:01:00.000000
I/flutter (14509): ╟ receiveTimeout: 0:01:00.000000
I/flutter (14509): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter (14509):
I/flutter (14509): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 852 ms
I/flutter (14509): ║  https://basicdiet145.onrender.com/api/subscriptions/6a304c7b1f241f5e709af91c/pickup-availability?date=2026-06-15
I/flutter (14509): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter (14509): ╔ Headers
I/flutter (14509): ╟ x-dns-prefetch-control: [off]
I/flutter (14509): ╟ x-render-origin-server: [Render]
I/flutter (14509): ╟ date: [Mon, 15 Jun 2026 19:08:43 GMT]
I/flutter (14509): ╟ transfer-encoding: [chunked]
I/flutter (14509): ╟ origin-agent-cluster: [?1]
I/flutter (14509): ╟ vary: [Origin, Accept-Encoding]
I/flutter (14509): ╟ content-encoding: [gzip]
I/flutter (14509): ╟ server: [cloudflare]
I/flutter (14509): ╟ x-request-id: [1345c441-6f06-470d-a090-135687a69d4a]
I/flutter (14509): ╟ cross-origin-resource-policy: [same-origin]
I/flutter (14509): ╟ cf-ray: [a0c3dd6f79cb1a5e-MRS]
I/flutter (14509): ╟ etag: [W/"95ab-+IvC5OnI7PhM9kEjDsCWHtz4e6I"]
I/flutter (14509): ╟ x-frame-options: [SAMEORIGIN]
I/flutter (14509): ╟ content-security-policy:
I/flutter (14509): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter (14509): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter (14509): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter (14509): ╟ connection: [keep-alive]
I/flutter (14509): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter (14509): ╟ referrer-policy: [no-referrer]
I/flutter (14509): ╟ cf-cache-status: [DYNAMIC]
I/flutter (14509): ╟ x-permitted-cross-domain-policies: [none]
I/flutter (14509): ╟ cross-origin-opener-policy: [same-origin]
I/flutter (14509): ╟ content-type: [application/json; charset=utf-8]
I/flutter (14509): ╟ rndr-id: [c48bdccc-4de8-43de]
I/flutter (14509): ╟ x-xss-protection: [0]
I/flutter (14509): ╟ access-control-allow-credentials: [true]
I/flutter (14509): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter (14509): ╟ x-download-options: [noopen]
I/flutter (14509): ╟ x-content-type-options: [nosniff]
I/flutter (14509): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter (14509): ╔ Body
I/flutter (14509): ║
I/flutter (14509): ║    {
I/flutter (14509): ║         "status": true,
I/flutter (14509): ║         "data": {
I/flutter (14509): ║             "subscriptionId": "6a304c7b1f241f5e709af91c",
I/flutter (14509): ║             "date": "2026-06-15",
I/flutter (14509): ║             "subscriptionDayId": "6a304c7b1f241f5e709af920",
I/flutter (14509): ║             "remainingMeals": 41,
I/flutter (14509): ║             "paymentReason": null,
I/flutter (14509): ║             "wallet": {
I/flutter (14509): ║                 "remainingMeals": 41,
I/flutter (14509): ║                 "availableMeals": 41,
I/flutter (14509): ║                 "reservedMeals": 1,
I/flutter (14509): ║                 "consumedMeals": 0,
I/flutter (14509): ║                 "totalEntitlement": 42
I/flutter (14509): ║            }
I/flutter (14509): ║             "summary": {
I/flutter (14509): ║                 "availableCount": 2,
I/flutter (14509): ║                 "unavailableCount": 1,
I/flutter (14509): ║                 "canCreatePickupRequest": true,
I/flutter (14509): ║                 "canAppendMeals": true,
I/flutter (14509): ║                 "appendLimit": 41,
I/flutter (14509): ║                 "titleAr": "وجبات متاحة للاستلام",
I/flutter (14509): ║                 "titleEn": "Meals available for pickup",
I/flutter (14509): ║                 "emptyTextAr": null,
I/flutter (14509): ║                 "emptyTextEn": null
I/flutter (14509): ║            }
I/flutter (14509): ║             "slots": [
I/flutter (14509): ║                {
I/flutter (14509): ║                     "slotId": "slot_1",
I/flutter (14509): ║                     "slotKey": "slot_1",
I/flutter (14509): ║                     "slotIndex": 1,
I/flutter (14509): ║                     "selectionType": "premium_meal",
I/flutter (14509): ║                     "isPremium": true,
I/flutter (14509): ║                     "premiumSource": "paid_extra",
I/flutter (14509): ║                     "available": false,
I/flutter (14509): ║                     "unavailableReason": "SLOT_ALREADY_RESERVED",
I/flutter (14509): ║                     "reasons": [SLOT_ALREADY_RESERVED]
I/flutter (14509): ║                     "reservedByPickupRequestId": "6a304d9b1f241f5e709afb2a",
I/flutter (14509): ║                     "canSelect": false,
I/flutter (14509): ║                     "product": {
I/flutter (14509): ║                         "id": "6a245312510f4ddc97ca5615",
I/flutter (14509): ║                         "key": "shrimp",
I/flutter (14509): ║                         "name": {ar: جمبري / رز أبيض, en: Shrimp / White Rice},
I/flutter (14509): ║                         "description": {ar: null, en: null},
I/flutter (14509): ║                         "image": null,
I/flutter (14509): ║                         "calories": 570,
I/flutter (14509): ║                         "macros": {protein: 0, carbs: 0, fat: 0}
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "meal": {
I/flutter (14509): ║                         "title": {ar: جمبري / رز أبيض, en: Shrimp / White Rice},
I/flutter (14509): ║                         "subtitle": {ar: null, en: null},
I/flutter (14509): ║                         "image": null,
I/flutter (14509): ║                         "mealType": "premium_meal",
I/flutter (14509): ║                         "quantity": 1
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "options": [
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "id": "6a245312510f4ddc97ca5615",
I/flutter (14509): ║                             "key": "shrimp",
I/flutter (14509): ║                             "name": {ar: جمبري, en: Shrimp},
I/flutter (14509): ║                             "groupKey": "protein",
I/flutter (14509): ║                             "groupName": {ar: البروتين, en: Protein},
I/flutter (14509): ║                             "quantity": 1
I/flutter (14509): ║                        },
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "id": "6a2453f04a2465a2f7a07168",
I/flutter (14509): ║                             "key": "white_rice",
I/flutter (14509): ║                             "name": {ar: رز أبيض, en: White Rice},
I/flutter (14509): ║                             "groupKey": "carbs",
I/flutter (14509): ║                             "groupName": {ar: الكارب, en: Carbs},
I/flutter (14509): ║                             "quantity": 1
I/flutter (14509): ║                        }
I/flutter (14509): ║                     ],
I/flutter (14509): ║                     "addons": [
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "id": "6a24548c4a2465a2f7a07656",
I/flutter (14509): ║                             "key": null,
I/flutter (14509): ║                             "name": {ar: Berry Prot, en: Berry Prot},
I/flutter (14509): ║                             "quantity": 1,
I/flutter (14509): ║                             "price": 0,
I/flutter (14509): ║                             "paymentStatus": "paid",
I/flutter (14509): ║                             "paymentRequired": false,
I/flutter (14509): ║                             "addonScope": "day",
I/flutter (14509): ║                             "inheritedFromDay": true
I/flutter (14509): ║                        },
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "id": "6a24548b4a2465a2f7a07651",
I/flutter (14509): ║                             "key": null,
I/flutter (14509): ║                             "name": {ar: Berry Blast, en: Berry Blast},
I/flutter (14509): ║                             "quantity": 1,
I/flutter (14509): ║                             "price": 11,
I/flutter (14509): ║                             "paymentStatus": "paid",
I/flutter (14509): ║                             "paymentRequired": false,
I/flutter (14509): ║                             "addonScope": "day",
I/flutter (14509): ║                             "inheritedFromDay": true
I/flutter (14509): ║                        },
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "id": "6a24548d4a2465a2f7a0765b",
I/flutter (14509): ║                             "key": null,
I/flutter (14509): ║                             "name": {ar: Classic Green, en: Classic Green},
I/flutter (14509): ║                             "quantity": 1,
I/flutter (14509): ║                             "price": 11,
I/flutter (14509): ║                             "paymentStatus": "paid",
I/flutter (14509): ║                             "paymentRequired": false,
I/flutter (14509): ║                             "addonScope": "day",
I/flutter (14509): ║                             "inheritedFromDay": true
I/flutter (14509): ║                        }
I/flutter (14509): ║                     ],
I/flutter (14509): ║                     "payment": {
I/flutter (14509): ║                         "required": false,
I/flutter (14509): ║                         "status": "paid",
I/flutter (14509): ║                         "reason": null,
I/flutter (14509): ║                         "reasonLabel": {
I/flutter (14509): ║                             "ar": "تم طلب استلام هذه الوجبة بالفعل",
I/flutter (14509): ║                             "en": "This meal has already been requested for pickup"
I/flutter (14509): ║                        }
I/flutter (14509): ║                         "amountDue": 0,
I/flutter (14509): ║                         "currency": "SAR",
I/flutter (14509): ║                         "premiumRequired": false,
I/flutter (14509): ║                         "addonRequired": false
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "display": {
I/flutter (14509): ║                         "titleAr": "جمبري / رز أبيض",
I/flutter (14509): ║                         "titleEn": "Shrimp / White Rice",
I/flutter (14509): ║                         "subtitleAr": null,
I/flutter (14509): ║                         "subtitleEn": null,
I/flutter (14509): ║                         "image": null,
I/flutter (14509): ║                         "badgesAr": [وجبة مميزة, مدفوعة]
I/flutter (14509): ║                         "badgesEn": [Premium, Paid]
I/flutter (14509): ║                         "statusTextAr": "تم طلب استلام هذه الوجبة بالفعل",
I/flutter (14509): ║                         "statusTextEn": "This meal has already been requested for pickup"
I/flutter (14509): ║                         "selectionTextAr": null,
I/flutter (14509): ║                         "selectionTextEn": null,
I/flutter (14509): ║                         "unavailableTextAr": "تم طلب استلام هذه الوجبة بالفعل",
I/flutter (14509): ║                         "unavailableTextEn": "This meal has already been requested for pickup"
I/flutter (14509): ║                    }
I/flutter (14509): ║                },
I/flutter (14509): ║                {
I/flutter (14509): ║                     "slotId": "slot_2",
I/flutter (14509): ║                     "slotKey": "slot_2",
I/flutter (14509): ║                     "slotIndex": 2,
I/flutter (14509): ║                     "selectionType": "premium_meal",
I/flutter (14509): ║                     "isPremium": true,
I/flutter (14509): ║                     "premiumSource": "balance",
I/flutter (14509): ║                     "available": true,
I/flutter (14509): ║                     "unavailableReason": null,
I/flutter (14509): ║                     "reasons": []
I/flutter (14509): ║                     "reservedByPickupRequestId": null,
I/flutter (14509): ║                     "canSelect": true,
I/flutter (14509): ║                     "product": {
I/flutter (14509): ║                         "id": "6a2453ea4a2465a2f7a0713b",
I/flutter (14509): ║                         "key": "salmon",
I/flutter (14509): ║                         "name": {ar: سالمون / باستا الفريدو, en: Salmon / Alfredo Pasta},
I/flutter (14509): ║                         "description": {ar: null, en: null},
I/flutter (14509): ║                         "image": null,
I/flutter (14509): ║                         "calories": 510,
I/flutter (14509): ║                         "macros": {protein: 0, carbs: 0, fat: 0}
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "meal": {
I/flutter (14509): ║                         "title": {ar: سالمون / باستا الفريدو, en: Salmon / Alfredo Pasta},
I/flutter (14509): ║                         "subtitle": {ar: null, en: null},
I/flutter (14509): ║                         "image": null,
I/flutter (14509): ║                         "mealType": "premium_meal",
I/flutter (14509): ║                         "quantity": 1
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "options": [
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "id": "6a2453ea4a2465a2f7a0713b",
I/flutter (14509): ║                             "key": "salmon",
I/flutter (14509): ║                             "name": {ar: سالمون, en: Salmon},
I/flutter (14509): ║                             "groupKey": "protein",
I/flutter (14509): ║                             "groupName": {ar: البروتين, en: Protein},
I/flutter (14509): ║                             "quantity": 1
I/flutter (14509): ║                        },
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "id": "6a2453f04a2465a2f7a0716e",
I/flutter (14509): ║                             "key": "alfredo_pasta",
I/flutter (14509): ║                             "name": {ar: باستا الفريدو, en: Alfredo Pasta},
I/flutter (14509): ║                             "groupKey": "carbs",
I/flutter (14509): ║                             "groupName": {ar: الكارب, en: Carbs},
I/flutter (14509): ║                             "quantity": 1
I/flutter (14509): ║                        }
I/flutter (14509): ║                     ],
I/flutter (14509): ║                     "addons": [
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "id": "6a24548c4a2465a2f7a07656",
I/flutter (14509): ║                             "key": null,
I/flutter (14509): ║                             "name": {ar: Berry Prot, en: Berry Prot},
I/flutter (14509): ║                             "quantity": 1,
I/flutter (14509): ║                             "price": 0,
I/flutter (14509): ║                             "paymentStatus": "paid",
I/flutter (14509): ║                             "paymentRequired": false,
I/flutter (14509): ║                             "addonScope": "day",
I/flutter (14509): ║                             "inheritedFromDay": true
I/flutter (14509): ║                        },
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "id": "6a24548b4a2465a2f7a07651",
I/flutter (14509): ║                             "key": null,
I/flutter (14509): ║                             "name": {ar: Berry Blast, en: Berry Blast},
I/flutter (14509): ║                             "quantity": 1,
I/flutter (14509): ║                             "price": 11,
I/flutter (14509): ║                             "paymentStatus": "paid",
I/flutter (14509): ║                             "paymentRequired": false,
I/flutter (14509): ║                             "addonScope": "day",
I/flutter (14509): ║                             "inheritedFromDay": true
I/flutter (14509): ║                        },
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "id": "6a24548d4a2465a2f7a0765b",
I/flutter (14509): ║                             "key": null,
I/flutter (14509): ║                             "name": {ar: Classic Green, en: Classic Green},
I/flutter (14509): ║                             "quantity": 1,
I/flutter (14509): ║                             "price": 11,
I/flutter (14509): ║                             "paymentStatus": "paid",
I/flutter (14509): ║                             "paymentRequired": false,
I/flutter (14509): ║                             "addonScope": "day",
I/flutter (14509): ║                             "inheritedFromDay": true
I/flutter (14509): ║                        }
I/flutter (14509): ║                     ],
I/flutter (14509): ║                     "payment": {
I/flutter (14509): ║                         "required": false,
I/flutter (14509): ║                         "status": "paid",
I/flutter (14509): ║                         "reason": null,
I/flutter (14509): ║                         "reasonLabel": {ar: null, en: null},
I/flutter (14509): ║                         "amountDue": 0,
I/flutter (14509): ║                         "currency": "SAR",
I/flutter (14509): ║                         "premiumRequired": false,
I/flutter (14509): ║                         "addonRequired": false
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "display": {
I/flutter (14509): ║                         "titleAr": "سالمون / باستا الفريدو",
I/flutter (14509): ║                         "titleEn": "Salmon / Alfredo Pasta",
I/flutter (14509): ║                         "subtitleAr": null,
I/flutter (14509): ║                         "subtitleEn": null,
I/flutter (14509): ║                         "image": null,
I/flutter (14509): ║                         "badgesAr": [وجبة مميزة, مدفوعة]
I/flutter (14509): ║                         "badgesEn": [Premium, Paid]
I/flutter (14509): ║                         "statusTextAr": "متاحة للاستلام",
I/flutter (14509): ║                         "statusTextEn": "Available for pickup",
I/flutter (14509): ║                         "selectionTextAr": "اختر هذه الوجبة للاستلام",
I/flutter (14509): ║                         "selectionTextEn": "Select this meal for pickup",
I/flutter (14509): ║                         "unavailableTextAr": null,
I/flutter (14509): ║                         "unavailableTextEn": null
I/flutter (14509): ║                    }
I/flutter (14509): ║                },
I/flutter (14509): ║                {
I/flutter (14509): ║                     "slotId": "slot_3",
I/flutter (14509): ║                     "slotKey": "slot_3",
I/flutter (14509): ║                     "slotIndex": 3,
I/flutter (14509): ║                     "selectionType": "standard_meal",
I/flutter (14509): ║                     "isPremium": false,
I/flutter (14509): ║                     "premiumSource": "none",
I/flutter (14509): ║                     "available": true,
I/flutter (14509): ║                     "unavailableReason": null,
I/flutter (14509): ║                     "reasons": []
I/flutter (14509): ║                     "reservedByPickupRequestId": null,
I/flutter (14509): ║                     "canSelect": true,
I/flutter (14509): ║                     "product": {
I/flutter (14509): ║                         "id": "6a2453ee4a2465a2f7a0715c",
I/flutter (14509): ║                         "key": "meatballs",
I/flutter (14509): ║                         "name": {ar: كرات لحم / رز بالكركم, en: Meatballs / Turmeric Rice},
I/flutter (14509): ║                         "description": {ar: null, en: null},
I/flutter (14509): ║                         "image": null,
I/flutter (14509): ║                         "calories": 480,
I/flutter (14509): ║                         "macros": {protein: 0, carbs: 0, fat: 0}
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "meal": {
I/flutter (14509): ║                         "title": {ar: كرات لحم / رز بالكركم, en: Meatballs / Turmeric Rice},
I/flutter (14509): ║                         "subtitle": {ar: null, en: null},
I/flutter (14509): ║                         "image": null,
I/flutter (14509): ║                         "mealType": "standard_meal",
I/flutter (14509): ║                         "quantity": 1
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "options": [
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "id": "6a2453ee4a2465a2f7a0715c",
I/flutter (14509): ║                             "key": "meatballs",
I/flutter (14509): ║                             "name": {ar: كرات لحم, en: Meatballs},
I/flutter (14509): ║                             "groupKey": "protein",
I/flutter (14509): ║                             "groupName": {ar: البروتين, en: Protein},
I/flutter (14509): ║                             "quantity": 1
I/flutter (14509): ║                        },
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "id": "6a2453f04a2465a2f7a0716b",
I/flutter (14509): ║                             "key": "turmeric_rice",
I/flutter (14509): ║                             "name": {ar: رز بالكركم, en: Turmeric Rice},
I/flutter (14509): ║                             "groupKey": "carbs",
I/flutter (14509): ║                             "groupName": {ar: الكارب, en: Carbs},
I/flutter (14509): ║                             "quantity": 1
I/flutter (14509): ║                        }
I/flutter (14509): ║                     ],
I/flutter (14509): ║                     "addons": [
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "id": "6a24548c4a2465a2f7a07656",
I/flutter (14509): ║                             "key": null,
I/flutter (14509): ║                             "name": {ar: Berry Prot, en: Berry Prot},
I/flutter (14509): ║                             "quantity": 1,
I/flutter (14509): ║                             "price": 0,
I/flutter (14509): ║                             "paymentStatus": "paid",
I/flutter (14509): ║                             "paymentRequired": false,
I/flutter (14509): ║                             "addonScope": "day",
I/flutter (14509): ║                             "inheritedFromDay": true
I/flutter (14509): ║                        },
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "id": "6a24548b4a2465a2f7a07651",
I/flutter (14509): ║                             "key": null,
I/flutter (14509): ║                             "name": {ar: Berry Blast, en: Berry Blast},
I/flutter (14509): ║                             "quantity": 1,
I/flutter (14509): ║                             "price": 11,
I/flutter (14509): ║                             "paymentStatus": "paid",
I/flutter (14509): ║                             "paymentRequired": false,
I/flutter (14509): ║                             "addonScope": "day",
I/flutter (14509): ║                             "inheritedFromDay": true
I/flutter (14509): ║                        },
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "id": "6a24548d4a2465a2f7a0765b",
I/flutter (14509): ║                             "key": null,
I/flutter (14509): ║                             "name": {ar: Classic Green, en: Classic Green},
I/flutter (14509): ║                             "quantity": 1,
I/flutter (14509): ║                             "price": 11,
I/flutter (14509): ║                             "paymentStatus": "paid",
I/flutter (14509): ║                             "paymentRequired": false,
I/flutter (14509): ║                             "addonScope": "day",
I/flutter (14509): ║                             "inheritedFromDay": true
I/flutter (14509): ║                        }
I/flutter (14509): ║                     ],
I/flutter (14509): ║                     "payment": {
I/flutter (14509): ║                         "required": false,
I/flutter (14509): ║                         "status": "not_required",
I/flutter (14509): ║                         "reason": null,
I/flutter (14509): ║                         "reasonLabel": {ar: null, en: null},
I/flutter (14509): ║                         "amountDue": 0,
I/flutter (14509): ║                         "currency": "SAR",
I/flutter (14509): ║                         "premiumRequired": false,
I/flutter (14509): ║                         "addonRequired": false
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "display": {
I/flutter (14509): ║                         "titleAr": "كرات لحم / رز بالكركم",
I/flutter (14509): ║                         "titleEn": "Meatballs / Turmeric Rice",
I/flutter (14509): ║                         "subtitleAr": null,
I/flutter (14509): ║                         "subtitleEn": null,
I/flutter (14509): ║                         "image": null,
I/flutter (14509): ║                         "badgesAr": []
I/flutter (14509): ║                         "badgesEn": []
I/flutter (14509): ║                         "statusTextAr": "متاحة للاستلام",
I/flutter (14509): ║                         "statusTextEn": "Available for pickup",
I/flutter (14509): ║                         "selectionTextAr": "اختر هذه الوجبة للاستلام",
I/flutter (14509): ║                         "selectionTextEn": "Select this meal for pickup",
I/flutter (14509): ║                         "unavailableTextAr": null,
I/flutter (14509): ║                         "unavailableTextEn": null
I/flutter (14509): ║                    }
I/flutter (14509): ║                }
I/flutter (14509): ║             ],
I/flutter (14509): ║             "dayAddons": [
I/flutter (14509): ║                {
I/flutter (14509): ║                     "id": "6a24548c4a2465a2f7a07656",
I/flutter (14509): ║                     "key": null,
I/flutter (14509): ║                     "name": {ar: Berry Prot, en: Berry Prot},
I/flutter (14509): ║                     "quantity": 1,
I/flutter (14509): ║                     "price": 0,
I/flutter (14509): ║                     "paymentStatus": "paid",
I/flutter (14509): ║                     "paymentRequired": false,
I/flutter (14509): ║                     "addonScope": "day",
I/flutter (14509): ║                     "inheritedFromDay": true
I/flutter (14509): ║                },
I/flutter (14509): ║                {
I/flutter (14509): ║                     "id": "6a24548b4a2465a2f7a07651",
I/flutter (14509): ║                     "key": null,
I/flutter (14509): ║                     "name": {ar: Berry Blast, en: Berry Blast},
I/flutter (14509): ║                     "quantity": 1,
I/flutter (14509): ║                     "price": 11,
I/flutter (14509): ║                     "paymentStatus": "paid",
I/flutter (14509): ║                     "paymentRequired": false,
I/flutter (14509): ║                     "addonScope": "day",
I/flutter (14509): ║                     "inheritedFromDay": true
I/flutter (14509): ║                },
I/flutter (14509): ║                {
I/flutter (14509): ║                     "id": "6a24548d4a2465a2f7a0765b",
I/flutter (14509): ║                     "key": null,
I/flutter (14509): ║                     "name": {ar: Classic Green, en: Classic Green},
I/flutter (14509): ║                     "quantity": 1,
I/flutter (14509): ║                     "price": 11,
I/flutter (14509): ║                     "paymentStatus": "paid",
I/flutter (14509): ║                     "paymentRequired": false,
I/flutter (14509): ║                     "addonScope": "day",
I/flutter (14509): ║                     "inheritedFromDay": true
I/flutter (14509): ║                }
I/flutter (14509): ║             ],
I/flutter (14509): ║             "addonSummary": {totalCount: 3, pendingCount: 0, paidCount: 3, amountDue: 0, currency: SAR},
I/flutter (14509): ║             "pickupItems": [
I/flutter (14509): ║                {
I/flutter (14509): ║                     "itemId": "slot_1",
I/flutter (14509): ║                     "itemType": "premium_meal",
I/flutter (14509): ║                     "source": "mealSlot",
I/flutter (14509): ║                     "sourceId": "slot_1",
I/flutter (14509): ║                     "slotId": "slot_1",
I/flutter (14509): ║                     "slotKey": "slot_1",
I/flutter (14509): ║                     "slotIndex": 1,
I/flutter (14509): ║                     "selectionType": "premium_meal",
I/flutter (14509): ║                     "categoryKey": "premium_meals",
I/flutter (14509): ║                     "quantity": 1,
I/flutter (14509): ║                     "title": {ar: جمبري / رز أبيض, en: Shrimp / White Rice},
I/flutter (14509): ║                     "subtitle": {ar: null, en: null},
I/flutter (14509): ║                     "image": null,
I/flutter (14509): ║                     "product": {
I/flutter (14509): ║                         "id": "6a245312510f4ddc97ca5615",
I/flutter (14509): ║                         "key": "shrimp",
I/flutter (14509): ║                         "name": {ar: جمبري / رز أبيض, en: Shrimp / White Rice},
I/flutter (14509): ║                         "description": {ar: null, en: null},
I/flutter (14509): ║                         "image": null,
I/flutter (14509): ║                         "calories": 570,
I/flutter (14509): ║                         "macros": {protein: 0, carbs: 0, fat: 0}
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "components": [
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "id": "6a245312510f4ddc97ca5615",
I/flutter (14509): ║                             "key": "shrimp",
I/flutter (14509): ║                             "type": "protein",
I/flutter (14509): ║                             "name": {ar: جمبري, en: Shrimp},
I/flutter (14509): ║                             "groupKey": "protein",
I/flutter (14509): ║                             "groupName": {ar: البروتين, en: Protein},
I/flutter (14509): ║                             "quantity": 1
I/flutter (14509): ║                        },
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "id": "6a2453f04a2465a2f7a07168",
I/flutter (14509): ║                             "key": "white_rice",
I/flutter (14509): ║                             "type": "carb",
I/flutter (14509): ║                             "name": {ar: رز أبيض, en: White Rice},
I/flutter (14509): ║                             "groupKey": "carbs",
I/flutter (14509): ║                             "groupName": {ar: الكارب, en: Carbs},
I/flutter (14509): ║                             "quantity": 1
I/flutter (14509): ║                        }
I/flutter (14509): ║                     ],
I/flutter (14509): ║                     "payment": {
I/flutter (14509): ║                         "required": false,
I/flutter (14509): ║                         "status": "paid",
I/flutter (14509): ║                         "reason": null,
I/flutter (14509): ║                         "reasonLabel": {
I/flutter (14509): ║                             "ar": "تم طلب استلام هذه الوجبة بالفعل",
I/flutter (14509): ║                             "en": "This meal has already been requested for pickup"
I/flutter (14509): ║                        }
I/flutter (14509): ║                         "amountDue": 0,
I/flutter (14509): ║                         "currency": "SAR",
I/flutter (14509): ║                         "premiumRequired": false,
I/flutter (14509): ║                         "addonRequired": false
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "availability": {
I/flutter (14509): ║                         "available": false,
I/flutter (14509): ║                         "canSelect": false,
I/flutter (14509): ║                         "unavailableReason": "SLOT_ALREADY_RESERVED",
I/flutter (14509): ║                         "reservedByPickupRequestId": "6a304d9b1f241f5e709afb2a",
I/flutter (14509): ║                         "reasons": [SLOT_ALREADY_RESERVED]
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "display": {
I/flutter (14509): ║                         "titleAr": "جمبري / رز أبيض",
I/flutter (14509): ║                         "titleEn": "Shrimp / White Rice",
I/flutter (14509): ║                         "subtitleAr": null,
I/flutter (14509): ║                         "subtitleEn": null,
I/flutter (14509): ║                         "image": null,
I/flutter (14509): ║                         "badgesAr": [وجبة مميزة, مدفوعة]
I/flutter (14509): ║                         "badgesEn": [Premium, Paid]
I/flutter (14509): ║                         "statusTextAr": "تم طلب استلام هذه الوجبة بالفعل",
I/flutter (14509): ║                         "statusTextEn": "This meal has already been requested for pickup"
I/flutter (14509): ║                         "selectionTextAr": null,
I/flutter (14509): ║                         "selectionTextEn": null,
I/flutter (14509): ║                         "unavailableTextAr": "تم طلب استلام هذه الوجبة بالفعل",
I/flutter (14509): ║                         "unavailableTextEn": "This meal has already been requested for pickup"
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "selectionMode": "independent"
I/flutter (14509): ║                },
I/flutter (14509): ║                {
I/flutter (14509): ║                     "itemId": "slot_2",
I/flutter (14509): ║                     "itemType": "premium_meal",
I/flutter (14509): ║                     "source": "mealSlot",
I/flutter (14509): ║                     "sourceId": "slot_2",
I/flutter (14509): ║                     "slotId": "slot_2",
I/flutter (14509): ║                     "slotKey": "slot_2",
I/flutter (14509): ║                     "slotIndex": 2,
I/flutter (14509): ║                     "selectionType": "premium_meal",
I/flutter (14509): ║                     "categoryKey": "premium_meals",
I/flutter (14509): ║                     "quantity": 1,
I/flutter (14509): ║                     "title": {ar: سالمون / باستا الفريدو, en: Salmon / Alfredo Pasta},
I/flutter (14509): ║                     "subtitle": {ar: null, en: null},
I/flutter (14509): ║                     "image": null,
I/flutter (14509): ║                     "product": {
I/flutter (14509): ║                         "id": "6a2453ea4a2465a2f7a0713b",
I/flutter (14509): ║                         "key": "salmon",
I/flutter (14509): ║                         "name": {ar: سالمون / باستا الفريدو, en: Salmon / Alfredo Pasta},
I/flutter (14509): ║                         "description": {ar: null, en: null},
I/flutter (14509): ║                         "image": null,
I/flutter (14509): ║                         "calories": 510,
I/flutter (14509): ║                         "macros": {protein: 0, carbs: 0, fat: 0}
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "components": [
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "id": "6a2453ea4a2465a2f7a0713b",
I/flutter (14509): ║                             "key": "salmon",
I/flutter (14509): ║                             "type": "protein",
I/flutter (14509): ║                             "name": {ar: سالمون, en: Salmon},
I/flutter (14509): ║                             "groupKey": "protein",
I/flutter (14509): ║                             "groupName": {ar: البروتين, en: Protein},
I/flutter (14509): ║                             "quantity": 1
I/flutter (14509): ║                        },
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "id": "6a2453f04a2465a2f7a0716e",
I/flutter (14509): ║                             "key": "alfredo_pasta",
I/flutter (14509): ║                             "type": "carb",
I/flutter (14509): ║                             "name": {ar: باستا الفريدو, en: Alfredo Pasta},
I/flutter (14509): ║                             "groupKey": "carbs",
I/flutter (14509): ║                             "groupName": {ar: الكارب, en: Carbs},
I/flutter (14509): ║                             "quantity": 1
I/flutter (14509): ║                        }
I/flutter (14509): ║                     ],
I/flutter (14509): ║                     "payment": {
I/flutter (14509): ║                         "required": false,
I/flutter (14509): ║                         "status": "paid",
I/flutter (14509): ║                         "reason": null,
I/flutter (14509): ║                         "reasonLabel": {ar: null, en: null},
I/flutter (14509): ║                         "amountDue": 0,
I/flutter (14509): ║                         "currency": "SAR",
I/flutter (14509): ║                         "premiumRequired": false,
I/flutter (14509): ║                         "addonRequired": false
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "availability": {
I/flutter (14509): ║                         "available": true,
I/flutter (14509): ║                         "canSelect": true,
I/flutter (14509): ║                         "unavailableReason": null,
I/flutter (14509): ║                         "reservedByPickupRequestId": null,
I/flutter (14509): ║                         "reasons": []
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "display": {
I/flutter (14509): ║                         "titleAr": "سالمون / باستا الفريدو",
I/flutter (14509): ║                         "titleEn": "Salmon / Alfredo Pasta",
I/flutter (14509): ║                         "subtitleAr": null,
I/flutter (14509): ║                         "subtitleEn": null,
I/flutter (14509): ║                         "image": null,
I/flutter (14509): ║                         "badgesAr": [وجبة مميزة, مدفوعة]
I/flutter (14509): ║                         "badgesEn": [Premium, Paid]
I/flutter (14509): ║                         "statusTextAr": "متاحة للاستلام",
I/flutter (14509): ║                         "statusTextEn": "Available for pickup",
I/flutter (14509): ║                         "selectionTextAr": "اختر هذه الوجبة للاستلام",
I/flutter (14509): ║                         "selectionTextEn": "Select this meal for pickup",
I/flutter (14509): ║                         "unavailableTextAr": null,
I/flutter (14509): ║                         "unavailableTextEn": null
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "selectionMode": "independent"
I/flutter (14509): ║                },
I/flutter (14509): ║                {
I/flutter (14509): ║                     "itemId": "slot_3",
I/flutter (14509): ║                     "itemType": "meal",
I/flutter (14509): ║                     "source": "mealSlot",
I/flutter (14509): ║                     "sourceId": "slot_3",
I/flutter (14509): ║                     "slotId": "slot_3",
I/flutter (14509): ║                     "slotKey": "slot_3",
I/flutter (14509): ║                     "slotIndex": 3,
I/flutter (14509): ║                     "selectionType": "standard_meal",
I/flutter (14509): ║                     "categoryKey": "meals",
I/flutter (14509): ║                     "quantity": 1,
I/flutter (14509): ║                     "title": {ar: كرات لحم / رز بالكركم, en: Meatballs / Turmeric Rice},
I/flutter (14509): ║                     "subtitle": {ar: null, en: null},
I/flutter (14509): ║                     "image": null,
I/flutter (14509): ║                     "product": {
I/flutter (14509): ║                         "id": "6a2453ee4a2465a2f7a0715c",
I/flutter (14509): ║                         "key": "meatballs",
I/flutter (14509): ║                         "name": {ar: كرات لحم / رز بالكركم, en: Meatballs / Turmeric Rice},
I/flutter (14509): ║                         "description": {ar: null, en: null},
I/flutter (14509): ║                         "image": null,
I/flutter (14509): ║                         "calories": 480,
I/flutter (14509): ║                         "macros": {protein: 0, carbs: 0, fat: 0}
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "components": [
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "id": "6a2453ee4a2465a2f7a0715c",
I/flutter (14509): ║                             "key": "meatballs",
I/flutter (14509): ║                             "type": "protein",
I/flutter (14509): ║                             "name": {ar: كرات لحم, en: Meatballs},
I/flutter (14509): ║                             "groupKey": "protein",
I/flutter (14509): ║                             "groupName": {ar: البروتين, en: Protein},
I/flutter (14509): ║                             "quantity": 1
I/flutter (14509): ║                        },
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "id": "6a2453f04a2465a2f7a0716b",
I/flutter (14509): ║                             "key": "turmeric_rice",
I/flutter (14509): ║                             "type": "carb",
I/flutter (14509): ║                             "name": {ar: رز بالكركم, en: Turmeric Rice},
I/flutter (14509): ║                             "groupKey": "carbs",
I/flutter (14509): ║                             "groupName": {ar: الكارب, en: Carbs},
I/flutter (14509): ║                             "quantity": 1
I/flutter (14509): ║                        }
I/flutter (14509): ║                     ],
I/flutter (14509): ║                     "payment": {
I/flutter (14509): ║                         "required": false,
I/flutter (14509): ║                         "status": "not_required",
I/flutter (14509): ║                         "reason": null,
I/flutter (14509): ║                         "reasonLabel": {ar: null, en: null},
I/flutter (14509): ║                         "amountDue": 0,
I/flutter (14509): ║                         "currency": "SAR",
I/flutter (14509): ║                         "premiumRequired": false,
I/flutter (14509): ║                         "addonRequired": false
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "availability": {
I/flutter (14509): ║                         "available": true,
I/flutter (14509): ║                         "canSelect": true,
I/flutter (14509): ║                         "unavailableReason": null,
I/flutter (14509): ║                         "reservedByPickupRequestId": null,
I/flutter (14509): ║                         "reasons": []
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "display": {
I/flutter (14509): ║                         "titleAr": "كرات لحم / رز بالكركم",
I/flutter (14509): ║                         "titleEn": "Meatballs / Turmeric Rice",
I/flutter (14509): ║                         "subtitleAr": null,
I/flutter (14509): ║                         "subtitleEn": null,
I/flutter (14509): ║                         "image": null,
I/flutter (14509): ║                         "badgesAr": []
I/flutter (14509): ║                         "badgesEn": []
I/flutter (14509): ║                         "statusTextAr": "متاحة للاستلام",
I/flutter (14509): ║                         "statusTextEn": "Available for pickup",
I/flutter (14509): ║                         "selectionTextAr": "اختر هذه الوجبة للاستلام",
I/flutter (14509): ║                         "selectionTextEn": "Select this meal for pickup",
I/flutter (14509): ║                         "unavailableTextAr": null,
I/flutter (14509): ║                         "unavailableTextEn": null
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "selectionMode": "independent"
I/flutter (14509): ║                },
I/flutter (14509): ║                {
I/flutter (14509): ║                     "itemId": "slot_1_protein_6a245312510f4ddc97ca5615",
I/flutter (14509): ║                     "itemType": "protein",
I/flutter (14509): ║                     "source": "plannerSelection",
I/flutter (14509): ║                     "sourceId": "6a245312510f4ddc97ca5615",
I/flutter (14509): ║                     "slotId": "slot_1",
I/flutter (14509): ║                     "slotKey": "slot_1",
I/flutter (14509): ║                     "slotIndex": 1,
I/flutter (14509): ║                     "selectionType": "protein",
I/flutter (14509): ║                     "categoryKey": "proteins",
I/flutter (14509): ║                     "quantity": 1,
I/flutter (14509): ║                     "title": {ar: جمبري, en: Shrimp},
I/flutter (14509): ║                     "subtitle": {ar: جمبري / رز أبيض, en: Shrimp / White Rice},
I/flutter (14509): ║                     "image": null,
I/flutter (14509): ║                     "product": {
I/flutter (14509): ║                         "id": "6a245312510f4ddc97ca5615",
I/flutter (14509): ║                         "key": "shrimp",
I/flutter (14509): ║                         "name": {ar: جمبري, en: Shrimp},
I/flutter (14509): ║                         "description": {ar: null, en: null},
I/flutter (14509): ║                         "image": null,
I/flutter (14509): ║                         "calories": 0,
I/flutter (14509): ║                         "macros": {protein: 0, carbs: 0, fat: 0}
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "components": [
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "id": "6a245312510f4ddc97ca5615",
I/flutter (14509): ║                             "key": "shrimp",
I/flutter (14509): ║                             "type": "protein",
I/flutter (14509): ║                             "name": {ar: جمبري, en: Shrimp},
I/flutter (14509): ║                             "groupKey": "protein",
I/flutter (14509): ║                             "groupName": {ar: البروتين, en: Protein},
I/flutter (14509): ║                             "quantity": 1
I/flutter (14509): ║                        }
I/flutter (14509): ║                     ],
I/flutter (14509): ║                     "payment": {
I/flutter (14509): ║                         "required": false,
I/flutter (14509): ║                         "status": "paid",
I/flutter (14509): ║                         "reason": null,
I/flutter (14509): ║                         "reasonLabel": {
I/flutter (14509): ║                             "ar": "تم طلب استلام هذه الوجبة بالفعل",
I/flutter (14509): ║                             "en": "This meal has already been requested for pickup"
I/flutter (14509): ║                        }
I/flutter (14509): ║                         "amountDue": 0,
I/flutter (14509): ║                         "currency": "SAR",
I/flutter (14509): ║                         "premiumRequired": false,
I/flutter (14509): ║                         "addonRequired": false
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "availability": {
I/flutter (14509): ║                         "available": false,
I/flutter (14509): ║                         "canSelect": false,
I/flutter (14509): ║                         "unavailableReason": "SLOT_ALREADY_RESERVED",
I/flutter (14509): ║                         "reservedByPickupRequestId": "6a304d9b1f241f5e709afb2a",
I/flutter (14509): ║                         "reasons": [SLOT_ALREADY_RESERVED]
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "display": {
I/flutter (14509): ║                         "titleAr": "جمبري",
I/flutter (14509): ║                         "titleEn": "Shrimp",
I/flutter (14509): ║                         "subtitleAr": null,
I/flutter (14509): ║                         "subtitleEn": null,
I/flutter (14509): ║                         "image": null,
I/flutter (14509): ║                         "badgesAr": [وجبة مميزة, مدفوعة]
I/flutter (14509): ║                         "badgesEn": [Premium, Paid]
I/flutter (14509): ║                         "statusTextAr": "تم طلب استلام هذه الوجبة بالفعل",
I/flutter (14509): ║                         "statusTextEn": "This meal has already been requested for pickup"
I/flutter (14509): ║                         "selectionTextAr": null,
I/flutter (14509): ║                         "selectionTextEn": null,
I/flutter (14509): ║                         "unavailableTextAr": "تم طلب استلام هذه الوجبة بالفعل",
I/flutter (14509): ║                         "unavailableTextEn": "This meal has already been requested for pickup"
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "selectionMode": "included_with_slot"
I/flutter (14509): ║                },
I/flutter (14509): ║                {
I/flutter (14509): ║                     "itemId": "slot_2_protein_6a2453ea4a2465a2f7a0713b",
I/flutter (14509): ║                     "itemType": "protein",
I/flutter (14509): ║                     "source": "plannerSelection",
I/flutter (14509): ║                     "sourceId": "6a2453ea4a2465a2f7a0713b",
I/flutter (14509): ║                     "slotId": "slot_2",
I/flutter (14509): ║                     "slotKey": "slot_2",
I/flutter (14509): ║                     "slotIndex": 2,
I/flutter (14509): ║                     "selectionType": "protein",
I/flutter (14509): ║                     "categoryKey": "proteins",
I/flutter (14509): ║                     "quantity": 1,
I/flutter (14509): ║                     "title": {ar: سالمون, en: Salmon},
I/flutter (14509): ║                     "subtitle": {ar: سالمون / باستا الفريدو, en: Salmon / Alfredo Pasta},
I/flutter (14509): ║                     "image": null,
I/flutter (14509): ║                     "product": {
I/flutter (14509): ║                         "id": "6a2453ea4a2465a2f7a0713b",
I/flutter (14509): ║                         "key": "salmon",
I/flutter (14509): ║                         "name": {ar: سالمون, en: Salmon},
I/flutter (14509): ║                         "description": {ar: null, en: null},
I/flutter (14509): ║                         "image": null,
I/flutter (14509): ║                         "calories": 0,
I/flutter (14509): ║                         "macros": {protein: 0, carbs: 0, fat: 0}
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "components": [
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "id": "6a2453ea4a2465a2f7a0713b",
I/flutter (14509): ║                             "key": "salmon",
I/flutter (14509): ║                             "type": "protein",
I/flutter (14509): ║                             "name": {ar: سالمون, en: Salmon},
I/flutter (14509): ║                             "groupKey": "protein",
I/flutter (14509): ║                             "groupName": {ar: البروتين, en: Protein},
I/flutter (14509): ║                             "quantity": 1
I/flutter (14509): ║                        }
I/flutter (14509): ║                     ],
I/flutter (14509): ║                     "payment": {
I/flutter (14509): ║                         "required": false,
I/flutter (14509): ║                         "status": "paid",
I/flutter (14509): ║                         "reason": null,
I/flutter (14509): ║                         "reasonLabel": {ar: null, en: null},
I/flutter (14509): ║                         "amountDue": 0,
I/flutter (14509): ║                         "currency": "SAR",
I/flutter (14509): ║                         "premiumRequired": false,
I/flutter (14509): ║                         "addonRequired": false
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "availability": {
I/flutter (14509): ║                         "available": true,
I/flutter (14509): ║                         "canSelect": false,
I/flutter (14509): ║                         "unavailableReason": null,
I/flutter (14509): ║                         "reservedByPickupRequestId": null,
I/flutter (14509): ║                         "reasons": []
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "display": {
I/flutter (14509): ║                         "titleAr": "سالمون",
I/flutter (14509): ║                         "titleEn": "Salmon",
I/flutter (14509): ║                         "subtitleAr": null,
I/flutter (14509): ║                         "subtitleEn": null,
I/flutter (14509): ║                         "image": null,
I/flutter (14509): ║                         "badgesAr": [وجبة مميزة, مدفوعة]
I/flutter (14509): ║                         "badgesEn": [Premium, Paid]
I/flutter (14509): ║                         "statusTextAr": "متاحة للاستلام",
I/flutter (14509): ║                         "statusTextEn": "Available for pickup",
I/flutter (14509): ║                         "selectionTextAr": null,
I/flutter (14509): ║                         "selectionTextEn": null,
I/flutter (14509): ║                         "unavailableTextAr": null,
I/flutter (14509): ║                         "unavailableTextEn": null
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "selectionMode": "included_with_slot"
I/flutter (14509): ║                },
I/flutter (14509): ║                {
I/flutter (14509): ║                     "itemId": "slot_3_protein_6a2453ee4a2465a2f7a0715c",
I/flutter (14509): ║                     "itemType": "protein",
I/flutter (14509): ║                     "source": "plannerSelection",
I/flutter (14509): ║                     "sourceId": "6a2453ee4a2465a2f7a0715c",
I/flutter (14509): ║                     "slotId": "slot_3",
I/flutter (14509): ║                     "slotKey": "slot_3",
I/flutter (14509): ║                     "slotIndex": 3,
I/flutter (14509): ║                     "selectionType": "protein",
I/flutter (14509): ║                     "categoryKey": "proteins",
I/flutter (14509): ║                     "quantity": 1,
I/flutter (14509): ║                     "title": {ar: كرات لحم, en: Meatballs},
I/flutter (14509): ║                     "subtitle": {ar: كرات لحم / رز بالكركم, en: Meatballs / Turmeric Rice},
I/flutter (14509): ║                     "image": null,
I/flutter (14509): ║                     "product": {
I/flutter (14509): ║                         "id": "6a2453ee4a2465a2f7a0715c",
I/flutter (14509): ║                         "key": "meatballs",
I/flutter (14509): ║                         "name": {ar: كرات لحم, en: Meatballs},
I/flutter (14509): ║                         "description": {ar: null, en: null},
I/flutter (14509): ║                         "image": null,
I/flutter (14509): ║                         "calories": 0,
I/flutter (14509): ║                         "macros": {protein: 0, carbs: 0, fat: 0}
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "components": [
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "id": "6a2453ee4a2465a2f7a0715c",
I/flutter (14509): ║                             "key": "meatballs",
I/flutter (14509): ║                             "type": "protein",
I/flutter (14509): ║                             "name": {ar: كرات لحم, en: Meatballs},
I/flutter (14509): ║                             "groupKey": "protein",
I/flutter (14509): ║                             "groupName": {ar: البروتين, en: Protein},
I/flutter (14509): ║                             "quantity": 1
I/flutter (14509): ║                        }
I/flutter (14509): ║                     ],
I/flutter (14509): ║                     "payment": {
I/flutter (14509): ║                         "required": false,
I/flutter (14509): ║                         "status": "not_required",
I/flutter (14509): ║                         "reason": null,
I/flutter (14509): ║                         "reasonLabel": {ar: null, en: null},
I/flutter (14509): ║                         "amountDue": 0,
I/flutter (14509): ║                         "currency": "SAR",
I/flutter (14509): ║                         "premiumRequired": false,
I/flutter (14509): ║                         "addonRequired": false
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "availability": {
I/flutter (14509): ║                         "available": true,
I/flutter (14509): ║                         "canSelect": false,
I/flutter (14509): ║                         "unavailableReason": null,
I/flutter (14509): ║                         "reservedByPickupRequestId": null,
I/flutter (14509): ║                         "reasons": []
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "display": {
I/flutter (14509): ║                         "titleAr": "كرات لحم",
I/flutter (14509): ║                         "titleEn": "Meatballs",
I/flutter (14509): ║                         "subtitleAr": null,
I/flutter (14509): ║                         "subtitleEn": null,
I/flutter (14509): ║                         "image": null,
I/flutter (14509): ║                         "badgesAr": []
I/flutter (14509): ║                         "badgesEn": []
I/flutter (14509): ║                         "statusTextAr": "متاحة للاستلام",
I/flutter (14509): ║                         "statusTextEn": "Available for pickup",
I/flutter (14509): ║                         "selectionTextAr": null,
I/flutter (14509): ║                         "selectionTextEn": null,
I/flutter (14509): ║                         "unavailableTextAr": null,
I/flutter (14509): ║                         "unavailableTextEn": null
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "selectionMode": "included_with_slot"
I/flutter (14509): ║                },
I/flutter (14509): ║                {
I/flutter (14509): ║                     "itemId": "addon_6a24548c4a2465a2f7a07656",
I/flutter (14509): ║                     "itemType": "addon",
I/flutter (14509): ║                     "source": "dayAddon",
I/flutter (14509): ║                     "sourceId": "6a24548c4a2465a2f7a07656",
I/flutter (14509): ║                     "slotId": null,
I/flutter (14509): ║                     "slotKey": null,
I/flutter (14509): ║                     "slotIndex": null,
I/flutter (14509): ║                     "selectionType": "addon",
I/flutter (14509): ║                     "categoryKey": "addons",
I/flutter (14509): ║                     "quantity": 1,
I/flutter (14509): ║                     "title": {ar: Berry Prot, en: Berry Prot},
I/flutter (14509): ║                     "subtitle": {ar: null, en: null},
I/flutter (14509): ║                     "image": null,
I/flutter (14509): ║                     "product": {
I/flutter (14509): ║                         "id": "6a24548c4a2465a2f7a07656",
I/flutter (14509): ║                         "key": null,
I/flutter (14509): ║                         "name": {ar: Berry Prot, en: Berry Prot},
I/flutter (14509): ║                         "description": {ar: null, en: null},
I/flutter (14509): ║                         "image": null,
I/flutter (14509): ║                         "calories": 0,
I/flutter (14509): ║                         "macros": {protein: 0, carbs: 0, fat: 0}
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "components": [
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "id": "6a24548c4a2465a2f7a07656",
I/flutter (14509): ║                             "key": null,
I/flutter (14509): ║                             "type": "addon",
I/flutter (14509): ║                             "name": {ar: Berry Prot, en: Berry Prot},
I/flutter (14509): ║                             "groupKey": "addons",
I/flutter (14509): ║                             "groupName": {ar: الإضافات, en: Add-ons},
I/flutter (14509): ║                             "quantity": 1
I/flutter (14509): ║                        }
I/flutter (14509): ║                     ],
I/flutter (14509): ║                     "payment": {
I/flutter (14509): ║                         "required": false,
I/flutter (14509): ║                         "status": "paid",
I/flutter (14509): ║                         "reason": null,
I/flutter (14509): ║                         "amountDue": 0,
I/flutter (14509): ║                         "currency": "SAR",
I/flutter (14509): ║                         "premiumRequired": false,
I/flutter (14509): ║                         "addonRequired": false
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "availability": {
I/flutter (14509): ║                         "available": true,
I/flutter (14509): ║                         "canSelect": false,
I/flutter (14509): ║                         "unavailableReason": null,
I/flutter (14509): ║                         "reservedByPickupRequestId": null,
I/flutter (14509): ║                         "reasons": []
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "display": {
I/flutter (14509): ║                         "titleAr": "Berry Prot",
I/flutter (14509): ║                         "titleEn": "Berry Prot",
I/flutter (14509): ║                         "subtitleAr": null,
I/flutter (14509): ║                         "subtitleEn": null,
I/flutter (14509): ║                         "image": null,
I/flutter (14509): ║                         "badgesAr": []
I/flutter (14509): ║                         "badgesEn": []
I/flutter (14509): ║                         "statusTextAr": "مشمولة مع طلب الاستلام",
I/flutter (14509): ║                         "statusTextEn": "Included with pickup",
I/flutter (14509): ║                         "selectionTextAr": null,
I/flutter (14509): ║                         "selectionTextEn": null,
I/flutter (14509): ║                         "unavailableTextAr": null,
I/flutter (14509): ║                         "unavailableTextEn": null
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "selectionMode": "included_with_day",
I/flutter (14509): ║                     "addonScope": "day",
I/flutter (14509): ║                     "inheritedFromDay": false
I/flutter (14509): ║                },
I/flutter (14509): ║                {
I/flutter (14509): ║                     "itemId": "addon_6a24548b4a2465a2f7a07651",
I/flutter (14509): ║                     "itemType": "addon",
I/flutter (14509): ║                     "source": "dayAddon",
I/flutter (14509): ║                     "sourceId": "6a24548b4a2465a2f7a07651",
I/flutter (14509): ║                     "slotId": null,
I/flutter (14509): ║                     "slotKey": null,
I/flutter (14509): ║                     "slotIndex": null,
I/flutter (14509): ║                     "selectionType": "addon",
I/flutter (14509): ║                     "categoryKey": "addons",
I/flutter (14509): ║                     "quantity": 1,
I/flutter (14509): ║                     "title": {ar: Berry Blast, en: Berry Blast},
I/flutter (14509): ║                     "subtitle": {ar: null, en: null},
I/flutter (14509): ║                     "image": null,
I/flutter (14509): ║                     "product": {
I/flutter (14509): ║                         "id": "6a24548b4a2465a2f7a07651",
I/flutter (14509): ║                         "key": null,
I/flutter (14509): ║                         "name": {ar: Berry Blast, en: Berry Blast},
I/flutter (14509): ║                         "description": {ar: null, en: null},
I/flutter (14509): ║                         "image": null,
I/flutter (14509): ║                         "calories": 0,
I/flutter (14509): ║                         "macros": {protein: 0, carbs: 0, fat: 0}
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "components": [
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "id": "6a24548b4a2465a2f7a07651",
I/flutter (14509): ║                             "key": null,
I/flutter (14509): ║                             "type": "addon",
I/flutter (14509): ║                             "name": {ar: Berry Blast, en: Berry Blast},
I/flutter (14509): ║                             "groupKey": "addons",
I/flutter (14509): ║                             "groupName": {ar: الإضافات, en: Add-ons},
I/flutter (14509): ║                             "quantity": 1
I/flutter (14509): ║                        }
I/flutter (14509): ║                     ],
I/flutter (14509): ║                     "payment": {
I/flutter (14509): ║                         "required": false,
I/flutter (14509): ║                         "status": "paid",
I/flutter (14509): ║                         "reason": null,
I/flutter (14509): ║                         "amountDue": 0,
I/flutter (14509): ║                         "currency": "SAR",
I/flutter (14509): ║                         "premiumRequired": false,
I/flutter (14509): ║                         "addonRequired": false
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "availability": {
I/flutter (14509): ║                         "available": true,
I/flutter (14509): ║                         "canSelect": false,
I/flutter (14509): ║                         "unavailableReason": null,
I/flutter (14509): ║                         "reservedByPickupRequestId": null,
I/flutter (14509): ║                         "reasons": []
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "display": {
I/flutter (14509): ║                         "titleAr": "Berry Blast",
I/flutter (14509): ║                         "titleEn": "Berry Blast",
I/flutter (14509): ║                         "subtitleAr": null,
I/flutter (14509): ║                         "subtitleEn": null,
I/flutter (14509): ║                         "image": null,
I/flutter (14509): ║                         "badgesAr": []
I/flutter (14509): ║                         "badgesEn": []
I/flutter (14509): ║                         "statusTextAr": "مشمولة مع طلب الاستلام",
I/flutter (14509): ║                         "statusTextEn": "Included with pickup",
I/flutter (14509): ║                         "selectionTextAr": null,
I/flutter (14509): ║                         "selectionTextEn": null,
I/flutter (14509): ║                         "unavailableTextAr": null,
I/flutter (14509): ║                         "unavailableTextEn": null
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "selectionMode": "included_with_day",
I/flutter (14509): ║                     "addonScope": "day",
I/flutter (14509): ║                     "inheritedFromDay": false
I/flutter (14509): ║                },
I/flutter (14509): ║                {
I/flutter (14509): ║                     "itemId": "addon_6a24548d4a2465a2f7a0765b",
I/flutter (14509): ║                     "itemType": "addon",
I/flutter (14509): ║                     "source": "dayAddon",
I/flutter (14509): ║                     "sourceId": "6a24548d4a2465a2f7a0765b",
I/flutter (14509): ║                     "slotId": null,
I/flutter (14509): ║                     "slotKey": null,
I/flutter (14509): ║                     "slotIndex": null,
I/flutter (14509): ║                     "selectionType": "addon",
I/flutter (14509): ║                     "categoryKey": "addons",
I/flutter (14509): ║                     "quantity": 1,
I/flutter (14509): ║                     "title": {ar: Classic Green, en: Classic Green},
I/flutter (14509): ║                     "subtitle": {ar: null, en: null},
I/flutter (14509): ║                     "image": null,
I/flutter (14509): ║                     "product": {
I/flutter (14509): ║                         "id": "6a24548d4a2465a2f7a0765b",
I/flutter (14509): ║                         "key": null,
I/flutter (14509): ║                         "name": {ar: Classic Green, en: Classic Green},
I/flutter (14509): ║                         "description": {ar: null, en: null},
I/flutter (14509): ║                         "image": null,
I/flutter (14509): ║                         "calories": 0,
I/flutter (14509): ║                         "macros": {protein: 0, carbs: 0, fat: 0}
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "components": [
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "id": "6a24548d4a2465a2f7a0765b",
I/flutter (14509): ║                             "key": null,
I/flutter (14509): ║                             "type": "addon",
I/flutter (14509): ║                             "name": {ar: Classic Green, en: Classic Green},
I/flutter (14509): ║                             "groupKey": "addons",
I/flutter (14509): ║                             "groupName": {ar: الإضافات, en: Add-ons},
I/flutter (14509): ║                             "quantity": 1
I/flutter (14509): ║                        }
I/flutter (14509): ║                     ],
I/flutter (14509): ║                     "payment": {
I/flutter (14509): ║                         "required": false,
I/flutter (14509): ║                         "status": "paid",
I/flutter (14509): ║                         "reason": null,
I/flutter (14509): ║                         "amountDue": 0,
I/flutter (14509): ║                         "currency": "SAR",
I/flutter (14509): ║                         "premiumRequired": false,
I/flutter (14509): ║                         "addonRequired": false
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "availability": {
I/flutter (14509): ║                         "available": true,
I/flutter (14509): ║                         "canSelect": false,
I/flutter (14509): ║                         "unavailableReason": null,
I/flutter (14509): ║                         "reservedByPickupRequestId": null,
I/flutter (14509): ║                         "reasons": []
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "display": {
I/flutter (14509): ║                         "titleAr": "Classic Green",
I/flutter (14509): ║                         "titleEn": "Classic Green",
I/flutter (14509): ║                         "subtitleAr": null,
I/flutter (14509): ║                         "subtitleEn": null,
I/flutter (14509): ║                         "image": null,
I/flutter (14509): ║                         "badgesAr": []
I/flutter (14509): ║                         "badgesEn": []
I/flutter (14509): ║                         "statusTextAr": "مشمولة مع طلب الاستلام",
I/flutter (14509): ║                         "statusTextEn": "Included with pickup",
I/flutter (14509): ║                         "selectionTextAr": null,
I/flutter (14509): ║                         "selectionTextEn": null,
I/flutter (14509): ║                         "unavailableTextAr": null,
I/flutter (14509): ║                         "unavailableTextEn": null
I/flutter (14509): ║                    }
I/flutter (14509): ║                     "selectionMode": "included_with_day",
I/flutter (14509): ║                     "addonScope": "day",
I/flutter (14509): ║                     "inheritedFromDay": false
I/flutter (14509): ║                }
I/flutter (14509): ║             ],
I/flutter (14509): ║             "sections": [
I/flutter (14509): ║                {
I/flutter (14509): ║                     "sectionKey": "meals",
I/flutter (14509): ║                     "titleAr": "الوجبات",
I/flutter (14509): ║                     "titleEn": "Meals",
I/flutter (14509): ║                     "items": [
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "itemId": "slot_3",
I/flutter (14509): ║                             "itemType": "meal",
I/flutter (14509): ║                             "source": "mealSlot",
I/flutter (14509): ║                             "sourceId": "slot_3",
I/flutter (14509): ║                             "slotId": "slot_3",
I/flutter (14509): ║                             "slotKey": "slot_3",
I/flutter (14509): ║                             "slotIndex": 3,
I/flutter (14509): ║                             "selectionType": "standard_meal",
I/flutter (14509): ║                             "categoryKey": "meals",
I/flutter (14509): ║                             "quantity": 1,
I/flutter (14509): ║                             "title": {ar: كرات لحم / رز بالكركم, en: Meatballs / Turmeric Rice},
I/flutter (14509): ║                             "subtitle": {ar: null, en: null},
I/flutter (14509): ║                             "image": null,
I/flutter (14509): ║                             "product": {
I/flutter (14509): ║                                 "id": "6a2453ee4a2465a2f7a0715c",
I/flutter (14509): ║                                 "key": "meatballs",
I/flutter (14509): ║                                 "name": {ar: كرات لحم / رز بالكركم, en: Meatballs / Turmeric Rice},
I/flutter (14509): ║                                 "description": {ar: null, en: null},
I/flutter (14509): ║                                 "image": null,
I/flutter (14509): ║                                 "calories": 480,
I/flutter (14509): ║                                 "macros": {protein: 0, carbs: 0, fat: 0}
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "components": [
I/flutter (14509): ║                                {
I/flutter (14509): ║                                     "id": "6a2453ee4a2465a2f7a0715c"
I/flutter (14509): ║                                     "key": "meatballs",
I/flutter (14509): ║                                     "type": "protein",
I/flutter (14509): ║                                     "name": {ar: كرات لحم, en: Meatballs},
I/flutter (14509): ║                                     "groupKey": "protein",
I/flutter (14509): ║                                     "groupName": {ar: البروتين, en: Protein},
I/flutter (14509): ║                                     "quantity": 1
I/flutter (14509): ║                                },
I/flutter (14509): ║                                {
I/flutter (14509): ║                                     "id": "6a2453f04a2465a2f7a0716b"
I/flutter (14509): ║                                     "key": "turmeric_rice",
I/flutter (14509): ║                                     "type": "carb",
I/flutter (14509): ║                                     "name": {ar: رز بالكركم, en: Turmeric Rice},
I/flutter (14509): ║                                     "groupKey": "carbs",
I/flutter (14509): ║                                     "groupName": {ar: الكارب, en: Carbs},
I/flutter (14509): ║                                     "quantity": 1
I/flutter (14509): ║                                }
I/flutter (14509): ║                             ],
I/flutter (14509): ║                             "payment": {
I/flutter (14509): ║                                 "required": false,
I/flutter (14509): ║                                 "status": "not_required",
I/flutter (14509): ║                                 "reason": null,
I/flutter (14509): ║                                 "reasonLabel": {ar: null, en: null},
I/flutter (14509): ║                                 "amountDue": 0,
I/flutter (14509): ║                                 "currency": "SAR",
I/flutter (14509): ║                                 "premiumRequired": false,
I/flutter (14509): ║                                 "addonRequired": false
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "availability": {
I/flutter (14509): ║                                 "available": true,
I/flutter (14509): ║                                 "canSelect": true,
I/flutter (14509): ║                                 "unavailableReason": null,
I/flutter (14509): ║                                 "reservedByPickupRequestId": null,
I/flutter (14509): ║                                 "reasons": []
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "display": {
I/flutter (14509): ║                                 "titleAr": "كرات لحم / رز بالكركم",
I/flutter (14509): ║                                 "titleEn": "Meatballs / Turmeric Rice"
I/flutter (14509): ║                                 "subtitleAr": null,
I/flutter (14509): ║                                 "subtitleEn": null,
I/flutter (14509): ║                                 "image": null,
I/flutter (14509): ║                                 "badgesAr": []
I/flutter (14509): ║                                 "badgesEn": []
I/flutter (14509): ║                                 "statusTextAr": "متاحة للاستلام",
I/flutter (14509): ║                                 "statusTextEn": "Available for pickup",
I/flutter (14509): ║                                 "selectionTextAr": "اختر هذه الوجبة للاستلام",
I/flutter (14509): ║                                 "selectionTextEn": "Select this meal for pickup"
I/flutter (14509): ║                                 "unavailableTextAr": null,
I/flutter (14509): ║                                 "unavailableTextEn": null
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "selectionMode": "independent"
I/flutter (14509): ║                        }
I/flutter (14509): ║                     ]
I/flutter (14509): ║                },
I/flutter (14509): ║                {
I/flutter (14509): ║                     "sectionKey": "premium_meals",
I/flutter (14509): ║                     "titleAr": "الوجبات المميزة",
I/flutter (14509): ║                     "titleEn": "Premium Meals",
I/flutter (14509): ║                     "items": [
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "itemId": "slot_1",
I/flutter (14509): ║                             "itemType": "premium_meal",
I/flutter (14509): ║                             "source": "mealSlot",
I/flutter (14509): ║                             "sourceId": "slot_1",
I/flutter (14509): ║                             "slotId": "slot_1",
I/flutter (14509): ║                             "slotKey": "slot_1",
I/flutter (14509): ║                             "slotIndex": 1,
I/flutter (14509): ║                             "selectionType": "premium_meal",
I/flutter (14509): ║                             "categoryKey": "premium_meals",
I/flutter (14509): ║                             "quantity": 1,
I/flutter (14509): ║                             "title": {ar: جمبري / رز أبيض, en: Shrimp / White Rice},
I/flutter (14509): ║                             "subtitle": {ar: null, en: null},
I/flutter (14509): ║                             "image": null,
I/flutter (14509): ║                             "product": {
I/flutter (14509): ║                                 "id": "6a245312510f4ddc97ca5615",
I/flutter (14509): ║                                 "key": "shrimp",
I/flutter (14509): ║                                 "name": {ar: جمبري / رز أبيض, en: Shrimp / White Rice},
I/flutter (14509): ║                                 "description": {ar: null, en: null},
I/flutter (14509): ║                                 "image": null,
I/flutter (14509): ║                                 "calories": 570,
I/flutter (14509): ║                                 "macros": {protein: 0, carbs: 0, fat: 0}
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "components": [
I/flutter (14509): ║                                {
I/flutter (14509): ║                                     "id": "6a245312510f4ddc97ca5615"
I/flutter (14509): ║                                     "key": "shrimp",
I/flutter (14509): ║                                     "type": "protein",
I/flutter (14509): ║                                     "name": {ar: جمبري, en: Shrimp},
I/flutter (14509): ║                                     "groupKey": "protein",
I/flutter (14509): ║                                     "groupName": {ar: البروتين, en: Protein},
I/flutter (14509): ║                                     "quantity": 1
I/flutter (14509): ║                                },
I/flutter (14509): ║                                {
I/flutter (14509): ║                                     "id": "6a2453f04a2465a2f7a07168"
I/flutter (14509): ║                                     "key": "white_rice",
I/flutter (14509): ║                                     "type": "carb",
I/flutter (14509): ║                                     "name": {ar: رز أبيض, en: White Rice},
I/flutter (14509): ║                                     "groupKey": "carbs",
I/flutter (14509): ║                                     "groupName": {ar: الكارب, en: Carbs},
I/flutter (14509): ║                                     "quantity": 1
I/flutter (14509): ║                                }
I/flutter (14509): ║                             ],
I/flutter (14509): ║                             "payment": {
I/flutter (14509): ║                                 "required": false,
I/flutter (14509): ║                                 "status": "paid",
I/flutter (14509): ║                                 "reason": null,
I/flutter (14509): ║                                 "reasonLabel": {
I/flutter (14509): ║                                     "ar": "تم طلب استلام هذه الوجبة بالفعل"
I/flutter (14509): ║                                     "en": "This meal has already been requested for pickup"
I/flutter (14509): ║                                }
I/flutter (14509): ║                                 "amountDue": 0,
I/flutter (14509): ║                                 "currency": "SAR",
I/flutter (14509): ║                                 "premiumRequired": false,
I/flutter (14509): ║                                 "addonRequired": false
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "availability": {
I/flutter (14509): ║                                 "available": false,
I/flutter (14509): ║                                 "canSelect": false,
I/flutter (14509): ║                                 "unavailableReason": "SLOT_ALREADY_RESERVED",
I/flutter (14509): ║                                 "reservedByPickupRequestId": "6a304d9b1f241f5e709afb2a",
I/flutter (14509): ║                                 "reasons": [SLOT_ALREADY_RESERVED]
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "display": {
I/flutter (14509): ║                                 "titleAr": "جمبري / رز أبيض",
I/flutter (14509): ║                                 "titleEn": "Shrimp / White Rice",
I/flutter (14509): ║                                 "subtitleAr": null,
I/flutter (14509): ║                                 "subtitleEn": null,
I/flutter (14509): ║                                 "image": null,
I/flutter (14509): ║                                 "badgesAr": [وجبة مميزة, مدفوعة]
I/flutter (14509): ║                                 "badgesEn": [Premium, Paid]
I/flutter (14509): ║                                 "statusTextAr": "تم طلب استلام هذه الوجبة بالفعل"
I/flutter (14509): ║                                 "statusTextEn": "This meal has already been requested for pickup"
I/flutter (14509): ║                                 "selectionTextAr": null,
I/flutter (14509): ║                                 "selectionTextEn": null,
I/flutter (14509): ║                                 "unavailableTextAr": "تم طلب استلام هذه الوجبة بالفعل"
I/flutter (14509): ║                                 "unavailableTextEn": "This meal has already been requested for pickup"
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "selectionMode": "independent"
I/flutter (14509): ║                        },
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "itemId": "slot_2",
I/flutter (14509): ║                             "itemType": "premium_meal",
I/flutter (14509): ║                             "source": "mealSlot",
I/flutter (14509): ║                             "sourceId": "slot_2",
I/flutter (14509): ║                             "slotId": "slot_2",
I/flutter (14509): ║                             "slotKey": "slot_2",
I/flutter (14509): ║                             "slotIndex": 2,
I/flutter (14509): ║                             "selectionType": "premium_meal",
I/flutter (14509): ║                             "categoryKey": "premium_meals",
I/flutter (14509): ║                             "quantity": 1,
I/flutter (14509): ║                             "title": {ar: سالمون / باستا الفريدو, en: Salmon / Alfredo Pasta},
I/flutter (14509): ║                             "subtitle": {ar: null, en: null},
I/flutter (14509): ║                             "image": null,
I/flutter (14509): ║                             "product": {
I/flutter (14509): ║                                 "id": "6a2453ea4a2465a2f7a0713b",
I/flutter (14509): ║                                 "key": "salmon",
I/flutter (14509): ║                                 "name": {ar: سالمون / باستا الفريدو, en: Salmon / Alfredo Pasta},
I/flutter (14509): ║                                 "description": {ar: null, en: null},
I/flutter (14509): ║                                 "image": null,
I/flutter (14509): ║                                 "calories": 510,
I/flutter (14509): ║                                 "macros": {protein: 0, carbs: 0, fat: 0}
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "components": [
I/flutter (14509): ║                                {
I/flutter (14509): ║                                     "id": "6a2453ea4a2465a2f7a0713b"
I/flutter (14509): ║                                     "key": "salmon",
I/flutter (14509): ║                                     "type": "protein",
I/flutter (14509): ║                                     "name": {ar: سالمون, en: Salmon},
I/flutter (14509): ║                                     "groupKey": "protein",
I/flutter (14509): ║                                     "groupName": {ar: البروتين, en: Protein},
I/flutter (14509): ║                                     "quantity": 1
I/flutter (14509): ║                                },
I/flutter (14509): ║                                {
I/flutter (14509): ║                                     "id": "6a2453f04a2465a2f7a0716e"
I/flutter (14509): ║                                     "key": "alfredo_pasta",
I/flutter (14509): ║                                     "type": "carb",
I/flutter (14509): ║                                     "name": {ar: باستا الفريدو, en: Alfredo Pasta},
I/flutter (14509): ║                                     "groupKey": "carbs",
I/flutter (14509): ║                                     "groupName": {ar: الكارب, en: Carbs},
I/flutter (14509): ║                                     "quantity": 1
I/flutter (14509): ║                                }
I/flutter (14509): ║                             ],
I/flutter (14509): ║                             "payment": {
I/flutter (14509): ║                                 "required": false,
I/flutter (14509): ║                                 "status": "paid",
I/flutter (14509): ║                                 "reason": null,
I/flutter (14509): ║                                 "reasonLabel": {ar: null, en: null},
I/flutter (14509): ║                                 "amountDue": 0,
I/flutter (14509): ║                                 "currency": "SAR",
I/flutter (14509): ║                                 "premiumRequired": false,
I/flutter (14509): ║                                 "addonRequired": false
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "availability": {
I/flutter (14509): ║                                 "available": true,
I/flutter (14509): ║                                 "canSelect": true,
I/flutter (14509): ║                                 "unavailableReason": null,
I/flutter (14509): ║                                 "reservedByPickupRequestId": null,
I/flutter (14509): ║                                 "reasons": []
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "display": {
I/flutter (14509): ║                                 "titleAr": "سالمون / باستا الفريدو",
I/flutter (14509): ║                                 "titleEn": "Salmon / Alfredo Pasta",
I/flutter (14509): ║                                 "subtitleAr": null,
I/flutter (14509): ║                                 "subtitleEn": null,
I/flutter (14509): ║                                 "image": null,
I/flutter (14509): ║                                 "badgesAr": [وجبة مميزة, مدفوعة]
I/flutter (14509): ║                                 "badgesEn": [Premium, Paid]
I/flutter (14509): ║                                 "statusTextAr": "متاحة للاستلام",
I/flutter (14509): ║                                 "statusTextEn": "Available for pickup",
I/flutter (14509): ║                                 "selectionTextAr": "اختر هذه الوجبة للاستلام",
I/flutter (14509): ║                                 "selectionTextEn": "Select this meal for pickup"
I/flutter (14509): ║                                 "unavailableTextAr": null,
I/flutter (14509): ║                                 "unavailableTextEn": null
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "selectionMode": "independent"
I/flutter (14509): ║                        }
I/flutter (14509): ║                     ]
I/flutter (14509): ║                },
I/flutter (14509): ║                {
I/flutter (14509): ║                     "sectionKey": "salads",
I/flutter (14509): ║                     "titleAr": "السلطات",
I/flutter (14509): ║                     "titleEn": "Salads",
I/flutter (14509): ║                     "items": []
I/flutter (14509): ║                },
I/flutter (14509): ║                {
I/flutter (14509): ║                     "sectionKey": "proteins",
I/flutter (14509): ║                     "titleAr": "البروتين",
I/flutter (14509): ║                     "titleEn": "Protein",
I/flutter (14509): ║                     "items": [
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "itemId": "slot_1_protein_6a245312510f4ddc97ca5615"
I/flutter (14509): ║                             "itemType": "protein",
I/flutter (14509): ║                             "source": "plannerSelection",
I/flutter (14509): ║                             "sourceId": "6a245312510f4ddc97ca5615",
I/flutter (14509): ║                             "slotId": "slot_1",
I/flutter (14509): ║                             "slotKey": "slot_1",
I/flutter (14509): ║                             "slotIndex": 1,
I/flutter (14509): ║                             "selectionType": "protein",
I/flutter (14509): ║                             "categoryKey": "proteins",
I/flutter (14509): ║                             "quantity": 1,
I/flutter (14509): ║                             "title": {ar: جمبري, en: Shrimp},
I/flutter (14509): ║                             "subtitle": {ar: جمبري / رز أبيض, en: Shrimp / White Rice},
I/flutter (14509): ║                             "image": null,
I/flutter (14509): ║                             "product": {
I/flutter (14509): ║                                 "id": "6a245312510f4ddc97ca5615",
I/flutter (14509): ║                                 "key": "shrimp",
I/flutter (14509): ║                                 "name": {ar: جمبري, en: Shrimp},
I/flutter (14509): ║                                 "description": {ar: null, en: null},
I/flutter (14509): ║                                 "image": null,
I/flutter (14509): ║                                 "calories": 0,
I/flutter (14509): ║                                 "macros": {protein: 0, carbs: 0, fat: 0}
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "components": [
I/flutter (14509): ║                                {
I/flutter (14509): ║                                     "id": "6a245312510f4ddc97ca5615"
I/flutter (14509): ║                                     "key": "shrimp",
I/flutter (14509): ║                                     "type": "protein",
I/flutter (14509): ║                                     "name": {ar: جمبري, en: Shrimp},
I/flutter (14509): ║                                     "groupKey": "protein",
I/flutter (14509): ║                                     "groupName": {ar: البروتين, en: Protein},
I/flutter (14509): ║                                     "quantity": 1
I/flutter (14509): ║                                }
I/flutter (14509): ║                             ],
I/flutter (14509): ║                             "payment": {
I/flutter (14509): ║                                 "required": false,
I/flutter (14509): ║                                 "status": "paid",
I/flutter (14509): ║                                 "reason": null,
I/flutter (14509): ║                                 "reasonLabel": {
I/flutter (14509): ║                                     "ar": "تم طلب استلام هذه الوجبة بالفعل"
I/flutter (14509): ║                                     "en": "This meal has already been requested for pickup"
I/flutter (14509): ║                                }
I/flutter (14509): ║                                 "amountDue": 0,
I/flutter (14509): ║                                 "currency": "SAR",
I/flutter (14509): ║                                 "premiumRequired": false,
I/flutter (14509): ║                                 "addonRequired": false
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "availability": {
I/flutter (14509): ║                                 "available": false,
I/flutter (14509): ║                                 "canSelect": false,
I/flutter (14509): ║                                 "unavailableReason": "SLOT_ALREADY_RESERVED",
I/flutter (14509): ║                                 "reservedByPickupRequestId": "6a304d9b1f241f5e709afb2a",
I/flutter (14509): ║                                 "reasons": [SLOT_ALREADY_RESERVED]
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "display": {
I/flutter (14509): ║                                 "titleAr": "جمبري",
I/flutter (14509): ║                                 "titleEn": "Shrimp",
I/flutter (14509): ║                                 "subtitleAr": null,
I/flutter (14509): ║                                 "subtitleEn": null,
I/flutter (14509): ║                                 "image": null,
I/flutter (14509): ║                                 "badgesAr": [وجبة مميزة, مدفوعة]
I/flutter (14509): ║                                 "badgesEn": [Premium, Paid]
I/flutter (14509): ║                                 "statusTextAr": "تم طلب استلام هذه الوجبة بالفعل"
I/flutter (14509): ║                                 "statusTextEn": "This meal has already been requested for pickup"
I/flutter (14509): ║                                 "selectionTextAr": null,
I/flutter (14509): ║                                 "selectionTextEn": null,
I/flutter (14509): ║                                 "unavailableTextAr": "تم طلب استلام هذه الوجبة بالفعل"
I/flutter (14509): ║                                 "unavailableTextEn": "This meal has already been requested for pickup"
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "selectionMode": "included_with_slot"
I/flutter (14509): ║                        },
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "itemId": "slot_2_protein_6a2453ea4a2465a2f7a0713b"
I/flutter (14509): ║                             "itemType": "protein",
I/flutter (14509): ║                             "source": "plannerSelection",
I/flutter (14509): ║                             "sourceId": "6a2453ea4a2465a2f7a0713b",
I/flutter (14509): ║                             "slotId": "slot_2",
I/flutter (14509): ║                             "slotKey": "slot_2",
I/flutter (14509): ║                             "slotIndex": 2,
I/flutter (14509): ║                             "selectionType": "protein",
I/flutter (14509): ║                             "categoryKey": "proteins",
I/flutter (14509): ║                             "quantity": 1,
I/flutter (14509): ║                             "title": {ar: سالمون, en: Salmon},
I/flutter (14509): ║                             "subtitle": {ar: سالمون / باستا الفريدو, en: Salmon / Alfredo Pasta},
I/flutter (14509): ║                             "image": null,
I/flutter (14509): ║                             "product": {
I/flutter (14509): ║                                 "id": "6a2453ea4a2465a2f7a0713b",
I/flutter (14509): ║                                 "key": "salmon",
I/flutter (14509): ║                                 "name": {ar: سالمون, en: Salmon},
I/flutter (14509): ║                                 "description": {ar: null, en: null},
I/flutter (14509): ║                                 "image": null,
I/flutter (14509): ║                                 "calories": 0,
I/flutter (14509): ║                                 "macros": {protein: 0, carbs: 0, fat: 0}
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "components": [
I/flutter (14509): ║                                {
I/flutter (14509): ║                                     "id": "6a2453ea4a2465a2f7a0713b"
I/flutter (14509): ║                                     "key": "salmon",
I/flutter (14509): ║                                     "type": "protein",
I/flutter (14509): ║                                     "name": {ar: سالمون, en: Salmon},
I/flutter (14509): ║                                     "groupKey": "protein",
I/flutter (14509): ║                                     "groupName": {ar: البروتين, en: Protein},
I/flutter (14509): ║                                     "quantity": 1
I/flutter (14509): ║                                }
I/flutter (14509): ║                             ],
I/flutter (14509): ║                             "payment": {
I/flutter (14509): ║                                 "required": false,
I/flutter (14509): ║                                 "status": "paid",
I/flutter (14509): ║                                 "reason": null,
I/flutter (14509): ║                                 "reasonLabel": {ar: null, en: null},
I/flutter (14509): ║                                 "amountDue": 0,
I/flutter (14509): ║                                 "currency": "SAR",
I/flutter (14509): ║                                 "premiumRequired": false,
I/flutter (14509): ║                                 "addonRequired": false
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "availability": {
I/flutter (14509): ║                                 "available": true,
I/flutter (14509): ║                                 "canSelect": false,
I/flutter (14509): ║                                 "unavailableReason": null,
I/flutter (14509): ║                                 "reservedByPickupRequestId": null,
I/flutter (14509): ║                                 "reasons": []
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "display": {
I/flutter (14509): ║                                 "titleAr": "سالمون",
I/flutter (14509): ║                                 "titleEn": "Salmon",
I/flutter (14509): ║                                 "subtitleAr": null,
I/flutter (14509): ║                                 "subtitleEn": null,
I/flutter (14509): ║                                 "image": null,
I/flutter (14509): ║                                 "badgesAr": [وجبة مميزة, مدفوعة]
I/flutter (14509): ║                                 "badgesEn": [Premium, Paid]
I/flutter (14509): ║                                 "statusTextAr": "متاحة للاستلام",
I/flutter (14509): ║                                 "statusTextEn": "Available for pickup",
I/flutter (14509): ║                                 "selectionTextAr": null,
I/flutter (14509): ║                                 "selectionTextEn": null,
I/flutter (14509): ║                                 "unavailableTextAr": null,
I/flutter (14509): ║                                 "unavailableTextEn": null
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "selectionMode": "included_with_slot"
I/flutter (14509): ║                        },
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "itemId": "slot_3_protein_6a2453ee4a2465a2f7a0715c"
I/flutter (14509): ║                             "itemType": "protein",
I/flutter (14509): ║                             "source": "plannerSelection",
I/flutter (14509): ║                             "sourceId": "6a2453ee4a2465a2f7a0715c",
I/flutter (14509): ║                             "slotId": "slot_3",
I/flutter (14509): ║                             "slotKey": "slot_3",
I/flutter (14509): ║                             "slotIndex": 3,
I/flutter (14509): ║                             "selectionType": "protein",
I/flutter (14509): ║                             "categoryKey": "proteins",
I/flutter (14509): ║                             "quantity": 1,
I/flutter (14509): ║                             "title": {ar: كرات لحم, en: Meatballs},
I/flutter (14509): ║                             "subtitle": {ar: كرات لحم / رز بالكركم, en: Meatballs / Turmeric Rice},
I/flutter (14509): ║                             "image": null,
I/flutter (14509): ║                             "product": {
I/flutter (14509): ║                                 "id": "6a2453ee4a2465a2f7a0715c",
I/flutter (14509): ║                                 "key": "meatballs",
I/flutter (14509): ║                                 "name": {ar: كرات لحم, en: Meatballs},
I/flutter (14509): ║                                 "description": {ar: null, en: null},
I/flutter (14509): ║                                 "image": null,
I/flutter (14509): ║                                 "calories": 0,
I/flutter (14509): ║                                 "macros": {protein: 0, carbs: 0, fat: 0}
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "components": [
I/flutter (14509): ║                                {
I/flutter (14509): ║                                     "id": "6a2453ee4a2465a2f7a0715c"
I/flutter (14509): ║                                     "key": "meatballs",
I/flutter (14509): ║                                     "type": "protein",
I/flutter (14509): ║                                     "name": {ar: كرات لحم, en: Meatballs},
I/flutter (14509): ║                                     "groupKey": "protein",
I/flutter (14509): ║                                     "groupName": {ar: البروتين, en: Protein},
I/flutter (14509): ║                                     "quantity": 1
I/flutter (14509): ║                                }
I/flutter (14509): ║                             ],
I/flutter (14509): ║                             "payment": {
I/flutter (14509): ║                                 "required": false,
I/flutter (14509): ║                                 "status": "not_required",
I/flutter (14509): ║                                 "reason": null,
I/flutter (14509): ║                                 "reasonLabel": {ar: null, en: null},
I/flutter (14509): ║                                 "amountDue": 0,
I/flutter (14509): ║                                 "currency": "SAR",
I/flutter (14509): ║                                 "premiumRequired": false,
I/flutter (14509): ║                                 "addonRequired": false
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "availability": {
I/flutter (14509): ║                                 "available": true,
I/flutter (14509): ║                                 "canSelect": false,
I/flutter (14509): ║                                 "unavailableReason": null,
I/flutter (14509): ║                                 "reservedByPickupRequestId": null,
I/flutter (14509): ║                                 "reasons": []
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "display": {
I/flutter (14509): ║                                 "titleAr": "كرات لحم",
I/flutter (14509): ║                                 "titleEn": "Meatballs",
I/flutter (14509): ║                                 "subtitleAr": null,
I/flutter (14509): ║                                 "subtitleEn": null,
I/flutter (14509): ║                                 "image": null,
I/flutter (14509): ║                                 "badgesAr": []
I/flutter (14509): ║                                 "badgesEn": []
I/flutter (14509): ║                                 "statusTextAr": "متاحة للاستلام",
I/flutter (14509): ║                                 "statusTextEn": "Available for pickup",
I/flutter (14509): ║                                 "selectionTextAr": null,
I/flutter (14509): ║                                 "selectionTextEn": null,
I/flutter (14509): ║                                 "unavailableTextAr": null,
I/flutter (14509): ║                                 "unavailableTextEn": null
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "selectionMode": "included_with_slot"
I/flutter (14509): ║                        }
I/flutter (14509): ║                     ]
I/flutter (14509): ║                },
I/flutter (14509): ║                {
I/flutter (14509): ║                     "sectionKey": "sandwiches",
I/flutter (14509): ║                     "titleAr": "الساندوتشات",
I/flutter (14509): ║                     "titleEn": "Sandwiches",
I/flutter (14509): ║                     "items": []
I/flutter (14509): ║                },
I/flutter (14509): ║                {
I/flutter (14509): ║                     "sectionKey": "addons",
I/flutter (14509): ║                     "titleAr": "الإضافات",
I/flutter (14509): ║                     "titleEn": "Add-ons",
I/flutter (14509): ║                     "items": [
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "itemId": "addon_6a24548c4a2465a2f7a07656",
I/flutter (14509): ║                             "itemType": "addon",
I/flutter (14509): ║                             "source": "dayAddon",
I/flutter (14509): ║                             "sourceId": "6a24548c4a2465a2f7a07656",
I/flutter (14509): ║                             "slotId": null,
I/flutter (14509): ║                             "slotKey": null,
I/flutter (14509): ║                             "slotIndex": null,
I/flutter (14509): ║                             "selectionType": "addon",
I/flutter (14509): ║                             "categoryKey": "addons",
I/flutter (14509): ║                             "quantity": 1,
I/flutter (14509): ║                             "title": {ar: Berry Prot, en: Berry Prot},
I/flutter (14509): ║                             "subtitle": {ar: null, en: null},
I/flutter (14509): ║                             "image": null,
I/flutter (14509): ║                             "product": {
I/flutter (14509): ║                                 "id": "6a24548c4a2465a2f7a07656",
I/flutter (14509): ║                                 "key": null,
I/flutter (14509): ║                                 "name": {ar: Berry Prot, en: Berry Prot},
I/flutter (14509): ║                                 "description": {ar: null, en: null},
I/flutter (14509): ║                                 "image": null,
I/flutter (14509): ║                                 "calories": 0,
I/flutter (14509): ║                                 "macros": {protein: 0, carbs: 0, fat: 0}
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "components": [
I/flutter (14509): ║                                {
I/flutter (14509): ║                                     "id": "6a24548c4a2465a2f7a07656"
I/flutter (14509): ║                                     "key": null,
I/flutter (14509): ║                                     "type": "addon",
I/flutter (14509): ║                                     "name": {ar: Berry Prot, en: Berry Prot},
I/flutter (14509): ║                                     "groupKey": "addons",
I/flutter (14509): ║                                     "groupName": {ar: الإضافات, en: Add-ons},
I/flutter (14509): ║                                     "quantity": 1
I/flutter (14509): ║                                }
I/flutter (14509): ║                             ],
I/flutter (14509): ║                             "payment": {
I/flutter (14509): ║                                 "required": false,
I/flutter (14509): ║                                 "status": "paid",
I/flutter (14509): ║                                 "reason": null,
I/flutter (14509): ║                                 "amountDue": 0,
I/flutter (14509): ║                                 "currency": "SAR",
I/flutter (14509): ║                                 "premiumRequired": false,
I/flutter (14509): ║                                 "addonRequired": false
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "availability": {
I/flutter (14509): ║                                 "available": true,
I/flutter (14509): ║                                 "canSelect": false,
I/flutter (14509): ║                                 "unavailableReason": null,
I/flutter (14509): ║                                 "reservedByPickupRequestId": null,
I/flutter (14509): ║                                 "reasons": []
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "display": {
I/flutter (14509): ║                                 "titleAr": "Berry Prot",
I/flutter (14509): ║                                 "titleEn": "Berry Prot",
I/flutter (14509): ║                                 "subtitleAr": null,
I/flutter (14509): ║                                 "subtitleEn": null,
I/flutter (14509): ║                                 "image": null,
I/flutter (14509): ║                                 "badgesAr": []
I/flutter (14509): ║                                 "badgesEn": []
I/flutter (14509): ║                                 "statusTextAr": "مشمولة مع طلب الاستلام",
I/flutter (14509): ║                                 "statusTextEn": "Included with pickup",
I/flutter (14509): ║                                 "selectionTextAr": null,
I/flutter (14509): ║                                 "selectionTextEn": null,
I/flutter (14509): ║                                 "unavailableTextAr": null,
I/flutter (14509): ║                                 "unavailableTextEn": null
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "selectionMode": "included_with_day",
I/flutter (14509): ║                             "addonScope": "day",
I/flutter (14509): ║                             "inheritedFromDay": false
I/flutter (14509): ║                        },
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "itemId": "addon_6a24548b4a2465a2f7a07651",
I/flutter (14509): ║                             "itemType": "addon",
I/flutter (14509): ║                             "source": "dayAddon",
I/flutter (14509): ║                             "sourceId": "6a24548b4a2465a2f7a07651",
I/flutter (14509): ║                             "slotId": null,
I/flutter (14509): ║                             "slotKey": null,
I/flutter (14509): ║                             "slotIndex": null,
I/flutter (14509): ║                             "selectionType": "addon",
I/flutter (14509): ║                             "categoryKey": "addons",
I/flutter (14509): ║                             "quantity": 1,
I/flutter (14509): ║                             "title": {ar: Berry Blast, en: Berry Blast},
I/flutter (14509): ║                             "subtitle": {ar: null, en: null},
I/flutter (14509): ║                             "image": null,
I/flutter (14509): ║                             "product": {
I/flutter (14509): ║                                 "id": "6a24548b4a2465a2f7a07651",
I/flutter (14509): ║                                 "key": null,
I/flutter (14509): ║                                 "name": {ar: Berry Blast, en: Berry Blast},
I/flutter (14509): ║                                 "description": {ar: null, en: null},
I/flutter (14509): ║                                 "image": null,
I/flutter (14509): ║                                 "calories": 0,
I/flutter (14509): ║                                 "macros": {protein: 0, carbs: 0, fat: 0}
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "components": [
I/flutter (14509): ║                                {
I/flutter (14509): ║                                     "id": "6a24548b4a2465a2f7a07651"
I/flutter (14509): ║                                     "key": null,
I/flutter (14509): ║                                     "type": "addon",
I/flutter (14509): ║                                     "name": {ar: Berry Blast, en: Berry Blast},
I/flutter (14509): ║                                     "groupKey": "addons",
I/flutter (14509): ║                                     "groupName": {ar: الإضافات, en: Add-ons},
I/flutter (14509): ║                                     "quantity": 1
I/flutter (14509): ║                                }
I/flutter (14509): ║                             ],
I/flutter (14509): ║                             "payment": {
I/flutter (14509): ║                                 "required": false,
I/flutter (14509): ║                                 "status": "paid",
I/flutter (14509): ║                                 "reason": null,
I/flutter (14509): ║                                 "amountDue": 0,
I/flutter (14509): ║                                 "currency": "SAR",
I/flutter (14509): ║                                 "premiumRequired": false,
I/flutter (14509): ║                                 "addonRequired": false
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "availability": {
I/flutter (14509): ║                                 "available": true,
I/flutter (14509): ║                                 "canSelect": false,
I/flutter (14509): ║                                 "unavailableReason": null,
I/flutter (14509): ║                                 "reservedByPickupRequestId": null,
I/flutter (14509): ║                                 "reasons": []
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "display": {
I/flutter (14509): ║                                 "titleAr": "Berry Blast",
I/flutter (14509): ║                                 "titleEn": "Berry Blast",
I/flutter (14509): ║                                 "subtitleAr": null,
I/flutter (14509): ║                                 "subtitleEn": null,
I/flutter (14509): ║                                 "image": null,
I/flutter (14509): ║                                 "badgesAr": []
I/flutter (14509): ║                                 "badgesEn": []
I/flutter (14509): ║                                 "statusTextAr": "مشمولة مع طلب الاستلام",
I/flutter (14509): ║                                 "statusTextEn": "Included with pickup",
I/flutter (14509): ║                                 "selectionTextAr": null,
I/flutter (14509): ║                                 "selectionTextEn": null,
I/flutter (14509): ║                                 "unavailableTextAr": null,
I/flutter (14509): ║                                 "unavailableTextEn": null
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "selectionMode": "included_with_day",
I/flutter (14509): ║                             "addonScope": "day",
I/flutter (14509): ║                             "inheritedFromDay": false
I/flutter (14509): ║                        },
I/flutter (14509): ║                        {
I/flutter (14509): ║                             "itemId": "addon_6a24548d4a2465a2f7a0765b",
I/flutter (14509): ║                             "itemType": "addon",
I/flutter (14509): ║                             "source": "dayAddon",
I/flutter (14509): ║                             "sourceId": "6a24548d4a2465a2f7a0765b",
I/flutter (14509): ║                             "slotId": null,
I/flutter (14509): ║                             "slotKey": null,
I/flutter (14509): ║                             "slotIndex": null,
I/flutter (14509): ║                             "selectionType": "addon",
I/flutter (14509): ║                             "categoryKey": "addons",
I/flutter (14509): ║                             "quantity": 1,
I/flutter (14509): ║                             "title": {ar: Classic Green, en: Classic Green},
I/flutter (14509): ║                             "subtitle": {ar: null, en: null},
I/flutter (14509): ║                             "image": null,
I/flutter (14509): ║                             "product": {
I/flutter (14509): ║                                 "id": "6a24548d4a2465a2f7a0765b",
I/flutter (14509): ║                                 "key": null,
I/flutter (14509): ║                                 "name": {ar: Classic Green, en: Classic Green},
I/flutter (14509): ║                                 "description": {ar: null, en: null},
I/flutter (14509): ║                                 "image": null,
I/flutter (14509): ║                                 "calories": 0,
I/flutter (14509): ║                                 "macros": {protein: 0, carbs: 0, fat: 0}
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "components": [
I/flutter (14509): ║                                {
I/flutter (14509): ║                                     "id": "6a24548d4a2465a2f7a0765b"
I/flutter (14509): ║                                     "key": null,
I/flutter (14509): ║                                     "type": "addon",
I/flutter (14509): ║                                     "name": {ar: Classic Green, en: Classic Green},
I/flutter (14509): ║                                     "groupKey": "addons",
I/flutter (14509): ║                                     "groupName": {ar: الإضافات, en: Add-ons},
I/flutter (14509): ║                                     "quantity": 1
I/flutter (14509): ║                                }
I/flutter (14509): ║                             ],
I/flutter (14509): ║                             "payment": {
I/flutter (14509): ║                                 "required": false,
I/flutter (14509): ║                                 "status": "paid",
I/flutter (14509): ║                                 "reason": null,
I/flutter (14509): ║                                 "amountDue": 0,
I/flutter (14509): ║                                 "currency": "SAR",
I/flutter (14509): ║                                 "premiumRequired": false,
I/flutter (14509): ║                                 "addonRequired": false
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "availability": {
I/flutter (14509): ║                                 "available": true,
I/flutter (14509): ║                                 "canSelect": false,
I/flutter (14509): ║                                 "unavailableReason": null,
I/flutter (14509): ║                                 "reservedByPickupRequestId": null,
I/flutter (14509): ║                                 "reasons": []
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "display": {
I/flutter (14509): ║                                 "titleAr": "Classic Green",
I/flutter (14509): ║                                 "titleEn": "Classic Green",
I/flutter (14509): ║                                 "subtitleAr": null,
I/flutter (14509): ║                                 "subtitleEn": null,
I/flutter (14509): ║                                 "image": null,
I/flutter (14509): ║                                 "badgesAr": []
I/flutter (14509): ║                                 "badgesEn": []
I/flutter (14509): ║                                 "statusTextAr": "مشمولة مع طلب الاستلام",
I/flutter (14509): ║                                 "statusTextEn": "Included with pickup",
I/flutter (14509): ║                                 "selectionTextAr": null,
I/flutter (14509): ║                                 "selectionTextEn": null,
I/flutter (14509): ║                                 "unavailableTextAr": null,
I/flutter (14509): ║                                 "unavailableTextEn": null
I/flutter (14509): ║                            }
I/flutter (14509): ║                             "selectionMode": "included_with_day",
I/flutter (14509): ║                             "addonScope": "day",
I/flutter (14509): ║                             "inheritedFromDay": false
I/flutter (14509): ║                        }
I/flutter (14509): ║                     ]
I/flutter (14509): ║                }
I/flutter (14509): ║             ],
I/flutter (14509): ║             "availableSlotIds": [slot_2, slot_3]
I/flutter (14509): ║             "unavailableSlotIds": [slot_1]
I/flutter (14509): ║        }
I/flutter (14509): ║    }
I/flutter (14509): ║
I/flutter (14509): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter (14509): onChange -- PickupRequestsCubit, Change { currentState: PickupRequestsState(false, true, false, , , 6a304c7b1f241f5e709af91c, 2026-06-15, null, [PickupRequestModel(6a304d9b1f241f5e709afb2a, 6a304c7b1f241f5e709af91c, 6a304c7b1f241f5e709af920, 2026-06-15, 1, [slot_1], locked, Your order is locked, 2, true, , [])], {}, {}, c9206d0c-cd40-4974-aae6-13c9180397ad), nextState: PickupRequestsState(false, false, false, , , 6a304c7b1f241f5e709af91c, 2026-06-15, PickupAvailabilityModel(6a304c7b1f241f5e709af91c, 2026-06-15, 6a304c7b1f241f5e709af920, PickupWalletModel(42, 0, 1, 41), [PickupAvailabilitySlotModel(slot_2, 2, سالمون / باستا الفريدو, Salmon / Alfredo Pasta, , , [وجبة مميزة, مدفوعة], [Premium, Paid], , true, , , , false, , 0.0, [PickupAvailabilityAddonModel(6a24548c4a2465a2f7a07656, Berry Prot, Berry Prot, 1, 0.0, paid, false, day), PickupAvailabilityAddonModel(6a24548b4a2465a2f7a07651, Berry Blast, Berry Blast, 1, 11.0, paid, false, day), PickupAvailabilityAddonModel(6a24548d4a
E/libEGL  (14509): called unimplemented OpenGL ES API
E/libEGL  (14509): called unimplemente