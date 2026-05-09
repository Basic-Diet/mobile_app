E/libEGL  ( 3302): called unimplemented OpenGL ES API
I/flutter ( 3302): onChange -- CheckoutBloc, Change { currentState: CheckoutLoaded(OrderQuoteStatus.success, Instance of 'OrderQuoteModel', null, null, OrderCreateStatus.success, Instance of 'OneTimeOrderModel', null, null, OrderVerifyStatus.initial, null, null), nextState: CheckoutLoaded(OrderQuoteStatus.success, Instance of 'OrderQuoteModel', null, null, OrderCreateStatus.success, Instance of 'OneTimeOrderModel', null, null, OrderVerifyStatus.loading, null, null) }
[checkout] Payment WebView returned: true
W/WindowOnBackDispatcher( 3302): OnBackInvokedCallback is not enabled for the application.
W/WindowOnBackDispatcher( 3302): Set 'android:enableOnBackInvokedCallback="true"' in the application manifest.
I/flutter ( 3302):
I/flutter ( 3302): ╔╣ Request ║ POST
I/flutter ( 3302): ║  https://basicdiet145.onrender.com/api/orders/69ff414a9fb65d6e063e14f5/payments/69ff414a9fb65d6e063e14f7/verify
I/flutter ( 3302): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 3302): ╔ Headers
I/flutter ( 3302): ╟ accept: application/json
I/flutter ( 3302): ╟ content-type: application/json
I/flutter ( 3302): ╟ authorization:
I/flutter ( 3302): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2OWYyMzdmMjE5Mjg4ZGJjOWUxNjMxZG
I/flutter ( 3302): ║ UiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc3NzQ5MDg2NSwiZXhwIjox
I/flutter ( 3302): ║ NzgwMTY5MjY1fQ.wQdMvBRkWrYPGGrvx5HtsUbTO-B9NlayVB5uRMS4rVE
I/flutter ( 3302): ╟ Accept-Language: ar
I/flutter ( 3302): ╟ contentType: application/json
I/flutter ( 3302): ╟ responseType: ResponseType.json
I/flutter ( 3302): ╟ followRedirects: true
I/flutter ( 3302): ╟ receiveTimeout: 16:40:00.000000
I/flutter ( 3302): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 3302): ╔ Body
I/flutter ( 3302): ╟ providerPaymentId: null
I/flutter ( 3302): ╟ providerInvoiceId: 8ce329b1-3470-47cd-ae86-42f8a15905b2
I/flutter ( 3302): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 3302): ║ {providerPaymentId: null, providerInvoiceId: 8ce329b1-3470-47cd-ae86-42f8a15905b2}
E/libEGL  ( 3302): called unimplemented OpenGL ES API
E/libEGL  ( 3302): called unimplemented OpenGL ES API
I/flutter ( 3302):
I/flutter ( 3302): ╔╣ Response ║ POST ║ Status: 200 OK  ║ Time: 1560 ms
I/flutter ( 3302): ║  https://basicdiet145.onrender.com/api/orders/69ff414a9fb65d6e063e14f5/payments/69ff414a9fb65d6e063e14f7/verify
I/flutter ( 3302): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 3302): ╔ Headers
I/flutter ( 3302): ╟ x-render-origin-server: [Render]
I/flutter ( 3302): ╟ ratelimit-limit: [20]
I/flutter ( 3302): ╟ x-dns-prefetch-control: [off]
I/flutter ( 3302): ╟ date: [Sat, 09 May 2026 14:14:57 GMT]
I/flutter ( 3302): ╟ transfer-encoding: [chunked]
I/flutter ( 3302): ╟ content-encoding: [gzip]
I/flutter ( 3302): ╟ origin-agent-cluster: [?1]
I/flutter ( 3302): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 3302): ╟ ratelimit-remaining: [18]
I/flutter ( 3302): ╟ ratelimit-policy: [20;w=300]
I/flutter ( 3302): ╟ server: [cloudflare]
I/flutter ( 3302): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 3302): ╟ cf-ray: [9f91503b4ad4cd8f-MRS]
I/flutter ( 3302): ╟ etag: [W/"1387-ZaKOLwb2rVZG/4IM1zBq+wXGJTs"]
I/flutter ( 3302): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 3302): ╟ content-security-policy:
I/flutter ( 3302): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 3302): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 3302): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 3302): ╟ connection: [keep-alive]
I/flutter ( 3302): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 3302): ╟ referrer-policy: [no-referrer]
I/flutter ( 3302): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 3302): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 3302): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 3302): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 3302): ╟ x-xss-protection: [0]
I/flutter ( 3302): ╟ rndr-id: [4e343870-d2ec-4ae8]
I/flutter ( 3302): ╟ access-control-allow-credentials: [true]
I/flutter ( 3302): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 3302): ╟ x-download-options: [noopen]
I/flutter ( 3302): ╟ x-content-type-options: [nosniff]
I/flutter ( 3302): ╟ ratelimit-reset: [272]
I/flutter ( 3302): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 3302): ╔ Body
I/flutter ( 3302): ║
I/flutter ( 3302): ║    {
I/flutter ( 3302): ║         "status": true,
I/flutter ( 3302): ║         "data": {
I/flutter ( 3302): ║             "orderId": "69ff414a9fb65d6e063e14f5",
I/flutter ( 3302): ║             "paymentId": "69ff414a9fb65d6e063e14f7",
I/flutter ( 3302): ║             "orderStatus": "confirmed",
I/flutter ( 3302): ║             "paymentStatus": "paid",
I/flutter ( 3302): ║             "applied": true,
I/flutter ( 3302): ║             "providerInvoiceStatus": "paid",
I/flutter ( 3302): ║             "isFinal": true,
I/flutter ( 3302): ║             "order": {
I/flutter ( 3302): ║                 "pricing": {
I/flutter ( 3302): ║                     "subtotalHalala": 8700,
I/flutter ( 3302): ║                     "deliveryFeeHalala": 0,
I/flutter ( 3302): ║                     "discountHalala": 0,
I/flutter ( 3302): ║                     "totalHalala": 8700,
I/flutter ( 3302): ║                     "vatPercentage": 15,
I/flutter ( 3302): ║                     "vatHalala": 1135,
I/flutter ( 3302): ║                     "vatIncluded": true,
I/flutter ( 3302): ║                     "currency": "SAR",
I/flutter ( 3302): ║                     "appliedPromo": null,
I/flutter ( 3302): ║                     "unitPrice": 0,
I/flutter ( 3302): ║                     "quantity": 0,
I/flutter ( 3302): ║                     "subtotal": 8700,
I/flutter ( 3302): ║                     "basePrice": 0,
I/flutter ( 3302): ║                     "deliveryFee": 0,
I/flutter ( 3302): ║                     "vatAmount": 1135,
I/flutter ( 3302): ║                     "total": 8700,
I/flutter ( 3302): ║                     "totalPrice": 8700
I/flutter ( 3302): ║                }
I/flutter ( 3302): ║                 "pickup": {
I/flutter ( 3302): ║                     "branchId": "main",
I/flutter ( 3302): ║                     "pickupWindow": "18:00-20:00",
I/flutter ( 3302): ║                     "branchName": {ar: , en: },
I/flutter ( 3302): ║                     "pickupCode": ""
I/flutter ( 3302): ║                }
I/flutter ( 3302): ║                 "delivery": {
I/flutter ( 3302): ║                     "address": {label: , line1: , line2: , district: , city: , phone: , notes: },
I/flutter ( 3302): ║                     "deliveryFeeHalala": 0,
I/flutter ( 3302): ║                     "zoneName": {ar: , en: }
I/flutter ( 3302): ║                }
I/flutter ( 3302): ║                 "_id": "69ff414a9fb65d6e063e14f5",
I/flutter ( 3302): ║                 "orderNumber": "ORD-063E14F4",
I/flutter ( 3302): ║                 "userId": "69f237f219288dbc9e1631de",
I/flutter ( 3302): ║                 "status": "confirmed",
I/flutter ( 3302): ║                 "paymentStatus": "paid",
I/flutter ( 3302): ║                 "fulfillmentMethod": "pickup",
I/flutter ( 3302): ║                 "fulfillmentDate": "2026-05-09",
I/flutter ( 3302): ║                 "requestedFulfillmentDate": "2026-05-09",
I/flutter ( 3302): ║                 "fulfillmentDateAdjusted": false,
I/flutter ( 3302): ║                 "deliveryMode": "pickup",
I/flutter ( 3302): ║                 "deliveryDate": "2026-05-09",
I/flutter ( 3302): ║                 "requestedDeliveryDate": "2026-05-09",
I/flutter ( 3302): ║                 "deliveryDateAdjusted": false,
I/flutter ( 3302): ║                 "items": [
I/flutter ( 3302): ║                    {
I/flutter ( 3302): ║                         "itemType": "basic_salad",
I/flutter ( 3302): ║                         "catalogRef": {model: MenuProduct, id: 69fb649936d002eb74445f66},
I/flutter ( 3302): ║                         "productId": "69fb649936d002eb74445f66",
I/flutter ( 3302): ║                         "menuVersionId": "69fd36e711639cab331b2958",
I/flutter ( 3302): ║                         "name": {ar: سلطة بيسك, en: Basic Salad},
I/flutter ( 3302): ║                         "qty": 1,
I/flutter ( 3302): ║                         "unitPriceHalala": 8700,
I/flutter ( 3302): ║                         "lineTotalHalala": 8700,
I/flutter ( 3302): ║                         "currency": "SAR",
I/flutter ( 3302): ║                         "selections": {
I/flutter ( 3302): ║                             "proteinName": {ar: , en: },
I/flutter ( 3302): ║                             "carbs": []
I/flutter ( 3302): ║                             "salad": {
I/flutter ( 3302): ║                                 "ingredients": []
I/flutter ( 3302): ║                            }
I/flutter ( 3302): ║                             "selectedOptions": [
I/flutter ( 3302): ║                                {
I/flutter ( 3302): ║                                     "groupId": "69fb648936d002eb74445f42"
I/flutter ( 3302): ║                                     "groupName": {ar: ورقيات, en: Leafy Greens},
I/flutter ( 3302): ║                                     "optionId": "69fd36a236d002eb7445b5a3"
I/flutter ( 3302): ║                                     "name": {ar: جرجير, en: Arugula},
I/flutter ( 3302): ║                                     "qty": 1,
I/flutter ( 3302): ║                                     "extraPriceHalala": 0,
I/flutter ( 3302): ║                                     "extraWeightGrams": 0,
I/flutter ( 3302): ║                                     "extraWeightUnitGrams": 0,
I/flutter ( 3302): ║                                     "extraWeightPriceHalala": 0,
I/flutter ( 3302): ║                                     "totalHalala": 0
I/flutter ( 3302): ║                                },
I/flutter ( 3302): ║                                {
I/flutter ( 3302): ║                                     "groupId": "69fb648936d002eb74445f42"
I/flutter ( 3302): ║                                     "groupName": {ar: ورقيات, en: Leafy Greens},
I/flutter ( 3302): ║                                     "optionId": "69fd36a236d002eb7445b5a4"
I/flutter ( 3302): ║                                     "name": {ar: ملفوف, en: Cabbage},
I/flutter ( 3302): ║                                     "qty": 1,
I/flutter ( 3302): ║                                     "extraPriceHalala": 0,
I/flutter ( 3302): ║                                     "extraWeightGrams": 0,
I/flutter ( 3302): ║                                     "extraWeightUnitGrams": 0,
I/flutter ( 3302): ║                                     "extraWeightPriceHalala": 0,
I/flutter ( 3302): ║                                     "totalHalala": 0
I/flutter ( 3302): ║                                },
I/flutter ( 3302): ║                                {
I/flutter ( 3302): ║                                     "groupId": "69fb649036d002eb74445f51"
I/flutter ( 3302): ║                                     "groupName": {ar: بروتينات, en: Proteins},
I/flutter ( 3302): ║                                     "optionId": "69fd36aa36d002eb7445b5c3"
I/flutter ( 3302): ║                                     "name": {ar: فاهيتا, en: Fajita},
I/flutter ( 3302): ║                                     "qty": 1,
I/flutter ( 3302): ║                                     "extraPriceHalala": 0,
I/flutter ( 3302): ║                                     "extraWeightGrams": 0,
I/flutter ( 3302): ║                                     "extraWeightUnitGrams": 50,
I/flutter ( 3302): ║                                     "extraWeightPriceHalala": 500,
I/flutter ( 3302): ║                                     "totalHalala": 0
I/flutter ( 3302): ║                                },
I/flutter ( 3302): ║                                {
I/flutter ( 3302): ║                                     "groupId": "69fb649536d002eb74445f5a"
I/flutter ( 3302): ║                                     "groupName": {ar: الصوصات, en: Sauces},
I/flutter ( 3302): ║                                     "optionId": "69fd36b036d002eb7445b5e2"
I/flutter ( 3302): ║                                     "name": {ar: سيزر, en: Caesar},
I/flutter ( 3302): ║                                     "qty": 1,
I/flutter ( 3302): ║                                     "extraPriceHalala": 0,
I/flutter ( 3302): ║                                     "extraWeightGrams": 0,
I/flutter ( 3302): ║                                     "extraWeightUnitGrams": 0,
I/flutter ( 3302): ║                                     "extraWeightPriceHalala": 0,
I/flutter ( 3302): ║                                     "totalHalala": 0
I/flutter ( 3302): ║                                }
I/flutter ( 3302): ║                             ]
I/flutter ( 3302): ║                        }
I/flutter ( 3302): ║                         "productSnapshot": {
I/flutter ( 3302): ║                             "productId": "69fb649936d002eb74445f66",
I/flutter ( 3302): ║                             "categoryId": "69fd36a036d002eb7445b59e",
I/flutter ( 3302): ║                             "categoryName": {ar: اطلب على مزاجك, en: Custom Order},
I/flutter ( 3302): ║                             "key": "basic_salad",
I/flutter ( 3302): ║                             "name": {ar: سلطة بيسك, en: Basic Salad},
I/flutter ( 3302): ║                             "itemType": "basic_salad",
I/flutter ( 3302): ║                             "pricingModel": "per_100g",
I/flutter ( 3302): ║                             "priceHalala": 2900,
I/flutter ( 3302): ║                             "baseUnitGrams": 100,
I/flutter ( 3302): ║                             "weightGrams": 300
I/flutter ( 3302): ║                        }
I/flutter ( 3302): ║                         "selectedOptions": [
I/flutter ( 3302): ║                            {
I/flutter ( 3302): ║                                 "groupId": "69fb648936d002eb74445f42",
I/flutter ( 3302): ║                                 "groupName": {ar: ورقيات, en: Leafy Greens},
I/flutter ( 3302): ║                                 "optionId": "69fd36a236d002eb7445b5a3",
I/flutter ( 3302): ║                                 "name": {ar: جرجير, en: Arugula},
I/flutter ( 3302): ║                                 "qty": 1,
I/flutter ( 3302): ║                                 "extraPriceHalala": 0,
I/flutter ( 3302): ║                                 "extraWeightGrams": 0,
I/flutter ( 3302): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 3302): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 3302): ║                                 "totalHalala": 0
I/flutter ( 3302): ║                            },
I/flutter ( 3302): ║                            {
I/flutter ( 3302): ║                                 "groupId": "69fb648936d002eb74445f42",
I/flutter ( 3302): ║                                 "groupName": {ar: ورقيات, en: Leafy Greens},
I/flutter ( 3302): ║                                 "optionId": "69fd36a236d002eb7445b5a4",
I/flutter ( 3302): ║                                 "name": {ar: ملفوف, en: Cabbage},
I/flutter ( 3302): ║                                 "qty": 1,
I/flutter ( 3302): ║                                 "extraPriceHalala": 0,
I/flutter ( 3302): ║                                 "extraWeightGrams": 0,
I/flutter ( 3302): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 3302): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 3302): ║                                 "totalHalala": 0
I/flutter ( 3302): ║                            },
I/flutter ( 3302): ║                            {
I/flutter ( 3302): ║                                 "groupId": "69fb649036d002eb74445f51",
I/flutter ( 3302): ║                                 "groupName": {ar: بروتينات, en: Proteins},
I/flutter ( 3302): ║                                 "optionId": "69fd36aa36d002eb7445b5c3",
I/flutter ( 3302): ║                                 "name": {ar: فاهيتا, en: Fajita},
I/flutter ( 3302): ║                                 "qty": 1,
I/flutter ( 3302): ║                                 "extraPriceHalala": 0,
I/flutter ( 3302): ║                                 "extraWeightGrams": 0,
I/flutter ( 3302): ║                                 "extraWeightUnitGrams": 50,
I/flutter ( 3302): ║                                 "extraWeightPriceHalala": 500,
I/flutter ( 3302): ║                                 "totalHalala": 0
I/flutter ( 3302): ║                            },
I/flutter ( 3302): ║                            {
I/flutter ( 3302): ║                                 "groupId": "69fb649536d002eb74445f5a",
I/flutter ( 3302): ║                                 "groupName": {ar: الصوصات, en: Sauces},
I/flutter ( 3302): ║                                 "optionId": "69fd36b036d002eb7445b5e2",
I/flutter ( 3302): ║                                 "name": {ar: سيزر, en: Caesar},
I/flutter ( 3302): ║                                 "qty": 1,
I/flutter ( 3302): ║                                 "extraPriceHalala": 0,
I/flutter ( 3302): ║                                 "extraWeightGrams": 0,
I/flutter ( 3302): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 3302): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 3302): ║                                 "totalHalala": 0
I/flutter ( 3302): ║                            }
I/flutter ( 3302): ║                         ],
I/flutter ( 3302): ║                         "pricingSnapshot": {
I/flutter ( 3302): ║                             "basePriceHalala": 8700,
I/flutter ( 3302): ║                             "optionsTotalHalala": 0,
I/flutter ( 3302): ║                             "unitPriceHalala": 8700,
I/flutter ( 3302): ║                             "lineTotalHalala": 8700,
I/flutter ( 3302): ║                             "vatIncluded": true,
I/flutter ( 3302): ║                             "currency": "SAR"
I/flutter ( 3302): ║                        }
I/flutter ( 3302): ║                         "quantity": 1,
I/flutter ( 3302): ║                         "unitPrice": 8700
I/flutter ( 3302): ║                    }
I/flutter ( 3302): ║                 ],
I/flutter ( 3302): ║                 "deliveryWindow": "",
I/flutter ( 3302): ║                 "paymentUrl": "https://checkout.moyasar.com/invoices/8ce329b1-3470-47cd-ae86-42f8a15905b
I/flutter ( 3302): ║                  2?lang=en"
I/flutter ( 3302): ║                 "idempotencyKey": "870a89d2-ea2a-44f0-a396-4dea8bc94d7c",
I/flutter ( 3302): ║                 "requestHash": "4b8287a1b4d3652d9914bf7f377744bce9266666d1087b87486ab992d3af972f"
I/flutter ( 3302): ║                 "expiresAt": null,
I/flutter ( 3302): ║                 "customSalads": []
I/flutter ( 3302): ║                 "customMeals": []
I/flutter ( 3302): ║                 "createdAt": "2026-05-09T14:14:34.562Z",
I/flutter ( 3302): ║                 "updatedAt": "2026-05-09T14:14:57.283Z",
I/flutter ( 3302): ║                 "__v": 1,
I/flutter ( 3302): ║                 "paymentId": "69ff414a9fb65d6e063e14f7",
I/flutter ( 3302): ║                 "providerInvoiceId": "8ce329b1-3470-47cd-ae86-42f8a15905b2",
I/flutter ( 3302): ║                 "confirmedAt": "2026-05-09T14:14:57.215Z"
I/flutter ( 3302): ║            }
I/flutter ( 3302): ║        }
I/flutter ( 3302): ║    }
I/flutter ( 3302): ║
I/flutter ( 3302): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 3302): onChange -- CheckoutBloc, Change { currentState: CheckoutLoaded(OrderQuoteStatus.success, Instance of 'OrderQuoteModel', null, null, OrderCreateStatus.success, Instance of 'OneTimeOrderModel', null, null, OrderVerifyStatus.loading, null, null), nextState: CheckoutLoaded(OrderQuoteStatus.success, Instance of 'OrderQuoteModel', null, null, OrderCreateStatus.success, Instance of 'OneTimeOrderModel', null, null, OrderVerifyStatus.success, Instance of 'VerifyPaymentModel', null) }
I/flutter ( 3302): onCreate -- OrderTrackingBloc
I/flutter ( 3302): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingInitial(), nextState: OrderTrackingLoading() }
W/WindowOnBackDispatcher( 3302): OnBackInvokedCallback is not enabled for the application.
W/WindowOnBackDispatcher( 3302): Set 'android:enableOnBackInvokedCallback="true"' in the application manifest.
I/flutter ( 3302):
I/flutter ( 3302): ╔╣ Request ║ GET
I/flutter ( 3302): ║  https://basicdiet145.onrender.com/api/orders/69ff414a9fb65d6e063e14f5
I/flutter ( 3302): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 3302): ╔ Headers
I/flutter ( 3302): ╟ accept: application/json
I/flutter ( 3302): ╟ content-type: application/json
I/flutter ( 3302): ╟ authorization:
I/flutter ( 3302): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2OWYyMzdmMjE5Mjg4ZGJjOWUxNjMxZG
I/flutter ( 3302): ║ UiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc3NzQ5MDg2NSwiZXhwIjox
I/flutter ( 3302): ║ NzgwMTY5MjY1fQ.wQdMvBRkWrYPGGrvx5HtsUbTO-B9NlayVB5uRMS4rVE
I/flutter ( 3302): ╟ Accept-Language: ar
I/flutter ( 3302): ╟ contentType: application/json
I/flutter ( 3302): ╟ responseType: ResponseType.json
I/flutter ( 3302): ╟ followRedirects: true
I/flutter ( 3302): ╟ receiveTimeout: 16:40:00.000000
I/flutter ( 3302): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 3302): onClose -- CheckoutBloc
I/flutter ( 3302):
I/flutter ( 3302): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 415 ms
I/flutter ( 3302): ║  https://basicdiet145.onrender.com/api/orders/69ff414a9fb65d6e063e14f5
I/flutter ( 3302): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 3302): ╔ Headers
I/flutter ( 3302): ╟ x-dns-prefetch-control: [off]
I/flutter ( 3302): ╟ x-render-origin-server: [Render]
I/flutter ( 3302): ╟ date: [Sat, 09 May 2026 14:14:58 GMT]
I/flutter ( 3302): ╟ transfer-encoding: [chunked]
I/flutter ( 3302): ╟ origin-agent-cluster: [?1]
I/flutter ( 3302): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 3302): ╟ content-encoding: [gzip]
I/flutter ( 3302): ╟ server: [cloudflare]
I/flutter ( 3302): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 3302): ╟ cf-ray: [9f9150449e71cd8f-MRS]
I/flutter ( 3302): ╟ etag: [W/"879-KViicuE/NDhtfeEBeBI7RuSTjNg"]
I/flutter ( 3302): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 3302): ╟ content-security-policy:
I/flutter ( 3302): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 3302): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 3302): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 3302): ╟ connection: [keep-alive]
I/flutter ( 3302): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 3302): ╟ referrer-policy: [no-referrer]
I/flutter ( 3302): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 3302): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 3302): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 3302): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 3302): ╟ rndr-id: [ec73b56f-f2a3-4259]
I/flutter ( 3302): ╟ x-xss-protection: [0]
I/flutter ( 3302): ╟ access-control-allow-credentials: [true]
I/flutter ( 3302): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 3302): ╟ x-download-options: [noopen]
I/flutter ( 3302): ╟ x-content-type-options: [nosniff]
I/flutter ( 3302): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 3302): ╔ Body
I/flutter ( 3302): ║
I/flutter ( 3302): ║    {
I/flutter ( 3302): ║         "status": true,
I/flutter ( 3302): ║         "data": {
I/flutter ( 3302): ║             "id": "69ff414a9fb65d6e063e14f5",
I/flutter ( 3302): ║             "orderId": "69ff414a9fb65d6e063e14f5",
I/flutter ( 3302): ║             "orderNumber": "ORD-063E14F4",
I/flutter ( 3302): ║             "source": "one_time_order",
I/flutter ( 3302): ║             "status": "confirmed",
I/flutter ( 3302): ║             "paymentStatus": "paid",
I/flutter ( 3302): ║             "expiresAt": null,
I/flutter ( 3302): ║             "fulfillmentMethod": "pickup",
I/flutter ( 3302): ║             "fulfillmentDate": "2026-05-09",
I/flutter ( 3302): ║             "requestedFulfillmentDate": "2026-05-09",
I/flutter ( 3302): ║             "items": [
I/flutter ( 3302): ║                {
I/flutter ( 3302): ║                     "itemType": "basic_salad",
I/flutter ( 3302): ║                     "catalogRef": {model: MenuProduct, id: 69fb649936d002eb74445f66},
I/flutter ( 3302): ║                     "name": {ar: سلطة بيسك, en: Basic Salad},
I/flutter ( 3302): ║                     "qty": 1,
I/flutter ( 3302): ║                     "unitPriceHalala": 8700,
I/flutter ( 3302): ║                     "lineTotalHalala": 8700,
I/flutter ( 3302): ║                     "currency": "SAR",
I/flutter ( 3302): ║                     "selections": {
I/flutter ( 3302): ║                         "salad": {
I/flutter ( 3302): ║                             "ingredients": []
I/flutter ( 3302): ║                        }
I/flutter ( 3302): ║                         "proteinName": {ar: , en: },
I/flutter ( 3302): ║                         "carbs": []
I/flutter ( 3302): ║                         "selectedOptions": [
I/flutter ( 3302): ║                            {
I/flutter ( 3302): ║                                 "groupId": "69fb648936d002eb74445f42",
I/flutter ( 3302): ║                                 "groupName": {ar: ورقيات, en: Leafy Greens},
I/flutter ( 3302): ║                                 "optionId": "69fd36a236d002eb7445b5a3",
I/flutter ( 3302): ║                                 "name": {ar: جرجير, en: Arugula},
I/flutter ( 3302): ║                                 "qty": 1,
I/flutter ( 3302): ║                                 "extraPriceHalala": 0,
I/flutter ( 3302): ║                                 "extraWeightGrams": 0,
I/flutter ( 3302): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 3302): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 3302): ║                                 "totalHalala": 0
I/flutter ( 3302): ║                            },
I/flutter ( 3302): ║                            {
I/flutter ( 3302): ║                                 "groupId": "69fb648936d002eb74445f42",
I/flutter ( 3302): ║                                 "groupName": {ar: ورقيات, en: Leafy Greens},
I/flutter ( 3302): ║                                 "optionId": "69fd36a236d002eb7445b5a4",
I/flutter ( 3302): ║                                 "name": {ar: ملفوف, en: Cabbage},
I/flutter ( 3302): ║                                 "qty": 1,
I/flutter ( 3302): ║                                 "extraPriceHalala": 0,
I/flutter ( 3302): ║                                 "extraWeightGrams": 0,
I/flutter ( 3302): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 3302): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 3302): ║                                 "totalHalala": 0
I/flutter ( 3302): ║                            },
I/flutter ( 3302): ║                            {
I/flutter ( 3302): ║                                 "groupId": "69fb649036d002eb74445f51",
I/flutter ( 3302): ║                                 "groupName": {ar: بروتينات, en: Proteins},
I/flutter ( 3302): ║                                 "optionId": "69fd36aa36d002eb7445b5c3",
I/flutter ( 3302): ║                                 "name": {ar: فاهيتا, en: Fajita},
I/flutter ( 3302): ║                                 "qty": 1,
I/flutter ( 3302): ║                                 "extraPriceHalala": 0,
I/flutter ( 3302): ║                                 "extraWeightGrams": 0,
I/flutter ( 3302): ║                                 "extraWeightUnitGrams": 50,
I/flutter ( 3302): ║                                 "extraWeightPriceHalala": 500,
I/flutter ( 3302): ║                                 "totalHalala": 0
I/flutter ( 3302): ║                            },
I/flutter ( 3302): ║                            {
I/flutter ( 3302): ║                                 "groupId": "69fb649536d002eb74445f5a",
I/flutter ( 3302): ║                                 "groupName": {ar: الصوصات, en: Sauces},
I/flutter ( 3302): ║                                 "optionId": "69fd36b036d002eb7445b5e2",
I/flutter ( 3302): ║                                 "name": {ar: سيزر, en: Caesar},
I/flutter ( 3302): ║                                 "qty": 1,
I/flutter ( 3302): ║                                 "extraPriceHalala": 0,
I/flutter ( 3302): ║                                 "extraWeightGrams": 0,
I/flutter ( 3302): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 3302): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 3302): ║                                 "totalHalala": 0
I/flutter ( 3302): ║                            }
I/flutter ( 3302): ║                         ]
I/flutter ( 3302): ║                    }
I/flutter ( 3302): ║                     "nutrition": {}
I/flutter ( 3302): ║                }
I/flutter ( 3302): ║             ],
I/flutter ( 3302): ║             "pricing": {
I/flutter ( 3302): ║                 "subtotalHalala": 8700,
I/flutter ( 3302): ║                 "deliveryFeeHalala": 0,
I/flutter ( 3302): ║                 "discountHalala": 0,
I/flutter ( 3302): ║                 "totalHalala": 8700,
I/flutter ( 3302): ║                 "vatPercentage": 15,
I/flutter ( 3302): ║                 "vatHalala": 1135,
I/flutter ( 3302): ║                 "vatIncluded": true,
I/flutter ( 3302): ║                 "currency": "SAR"
I/flutter ( 3302): ║            }
I/flutter ( 3302): ║             "pickup": {
I/flutter ( 3302): ║                 "branchId": "main",
I/flutter ( 3302): ║                 "pickupWindow": "18:00-20:00",
I/flutter ( 3302): ║                 "branchName": {ar: , en: },
I/flutter ( 3302): ║                 "pickupCode": ""
I/flutter ( 3302): ║            }
I/flutter ( 3302): ║             "createdAt": "2026-05-09T14:14:34.562Z",
I/flutter ( 3302): ║             "updatedAt": "2026-05-09T14:14:57.283Z"
I/flutter ( 3302): ║        }
I/flutter ( 3302): ║    }
I/flutter ( 3302): ║
I/flutter ( 3302): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 3302): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingLoading(), nextState: OrderTrackingSuccess(Instance of 'OrderModel') }
E/libEGL  ( 3302): called unimplemented OpenGL ES API
I/flutter ( 3302): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingSuccess(Instance of 'OrderModel'), nextState: OrderTrackingLoading() }
I/flutter ( 3302):
I/flutter ( 3302): ╔╣ Request ║ GET
I/flutter ( 3302): ║  https://basicdiet145.onrender.com/api/orders/69ff414a9fb65d6e063e14f5
I/flutter ( 3302): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 3302): ╔ Headers
I/flutter ( 3302): ╟ accept: application/json
I/flutter ( 3302): ╟ content-type: application/json
I/flutter ( 3302): ╟ authorization:
I/flutter ( 3302): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2OWYyMzdmMjE5Mjg4ZGJjOWUxNjMxZG
I/flutter ( 3302): ║ UiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc3NzQ5MDg2NSwiZXhwIjox
I/flutter ( 3302): ║ NzgwMTY5MjY1fQ.wQdMvBRkWrYPGGrvx5HtsUbTO-B9NlayVB5uRMS4rVE
I/flutter ( 3302): ╟ Accept-Language: ar
I/flutter ( 3302): ╟ contentType: application/json
I/flutter ( 3302): ╟ responseType: ResponseType.json
I/flutter ( 3302): ╟ followRedirects: true
I/flutter ( 3302): ╟ receiveTimeout: 16:40:00.000000
I/flutter ( 3302): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 3302):
I/flutter ( 3302): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 636 ms
I/flutter ( 3302): ║  https://basicdiet145.onrender.com/api/orders/69ff414a9fb65d6e063e14f5
I/flutter ( 3302): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 3302): ╔ Headers
I/flutter ( 3302): ╟ x-dns-prefetch-control: [off]
I/flutter ( 3302): ╟ x-render-origin-server: [Render]
I/flutter ( 3302): ╟ date: [Sat, 09 May 2026 14:16:16 GMT]
I/flutter ( 3302): ╟ transfer-encoding: [chunked]
I/flutter ( 3302): ╟ origin-agent-cluster: [?1]
I/flutter ( 3302): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 3302): ╟ content-encoding: [gzip]
I/flutter ( 3302): ╟ server: [cloudflare]
I/flutter ( 3302): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 3302): ╟ cf-ray: [9f91522ac9d978d0-MRS]
I/flutter ( 3302): ╟ etag: [W/"8ab-eue99K6wZB3bSR5BY+qeUUNjyQU"]
I/flutter ( 3302): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 3302): ╟ content-security-policy:
I/flutter ( 3302): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 3302): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 3302): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 3302): ╟ connection: [keep-alive]
I/flutter ( 3302): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 3302): ╟ referrer-policy: [no-referrer]
I/flutter ( 3302): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 3302): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 3302): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 3302): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 3302): ╟ rndr-id: [5f1bcca3-ccf7-42e7]
I/flutter ( 3302): ╟ x-xss-protection: [0]
I/flutter ( 3302): ╟ access-control-allow-credentials: [true]
I/flutter ( 3302): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 3302): ╟ x-download-options: [noopen]
I/flutter ( 3302): ╟ x-content-type-options: [nosniff]
I/flutter ( 3302): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 3302): ╔ Body
I/flutter ( 3302): ║
I/flutter ( 3302): ║    {
I/flutter ( 3302): ║         "status": true,
I/flutter ( 3302): ║         "data": {
I/flutter ( 3302): ║             "id": "69ff414a9fb65d6e063e14f5",
I/flutter ( 3302): ║             "orderId": "69ff414a9fb65d6e063e14f5",
I/flutter ( 3302): ║             "orderNumber": "ORD-063E14F4",
I/flutter ( 3302): ║             "source": "one_time_order",
I/flutter ( 3302): ║             "status": "ready_for_pickup",
I/flutter ( 3302): ║             "paymentStatus": "paid",
I/flutter ( 3302): ║             "expiresAt": null,
I/flutter ( 3302): ║             "fulfillmentMethod": "pickup",
I/flutter ( 3302): ║             "fulfillmentDate": "2026-05-09",
I/flutter ( 3302): ║             "requestedFulfillmentDate": "2026-05-09",
I/flutter ( 3302): ║             "items": [
I/flutter ( 3302): ║                {
I/flutter ( 3302): ║                     "itemType": "basic_salad",
I/flutter ( 3302): ║                     "catalogRef": {model: MenuProduct, id: 69fb649936d002eb74445f66},
I/flutter ( 3302): ║                     "name": {ar: سلطة بيسك, en: Basic Salad},
I/flutter ( 3302): ║                     "qty": 1,
I/flutter ( 3302): ║                     "unitPriceHalala": 8700,
I/flutter ( 3302): ║                     "lineTotalHalala": 8700,
I/flutter ( 3302): ║                     "currency": "SAR",
I/flutter ( 3302): ║                     "selections": {
I/flutter ( 3302): ║                         "salad": {
I/flutter ( 3302): ║                             "ingredients": []
I/flutter ( 3302): ║                        }
I/flutter ( 3302): ║                         "proteinName": {ar: , en: },
I/flutter ( 3302): ║                         "carbs": []
I/flutter ( 3302): ║                         "selectedOptions": [
I/flutter ( 3302): ║                            {
I/flutter ( 3302): ║                                 "groupId": "69fb648936d002eb74445f42",
I/flutter ( 3302): ║                                 "groupName": {ar: ورقيات, en: Leafy Greens},
I/flutter ( 3302): ║                                 "optionId": "69fd36a236d002eb7445b5a3",
I/flutter ( 3302): ║                                 "name": {ar: جرجير, en: Arugula},
I/flutter ( 3302): ║                                 "qty": 1,
I/flutter ( 3302): ║                                 "extraPriceHalala": 0,
I/flutter ( 3302): ║                                 "extraWeightGrams": 0,
I/flutter ( 3302): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 3302): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 3302): ║                                 "totalHalala": 0
I/flutter ( 3302): ║                            },
I/flutter ( 3302): ║                            {
I/flutter ( 3302): ║                                 "groupId": "69fb648936d002eb74445f42",
I/flutter ( 3302): ║                                 "groupName": {ar: ورقيات, en: Leafy Greens},
I/flutter ( 3302): ║                                 "optionId": "69fd36a236d002eb7445b5a4",
I/flutter ( 3302): ║                                 "name": {ar: ملفوف, en: Cabbage},
I/flutter ( 3302): ║                                 "qty": 1,
I/flutter ( 3302): ║                                 "extraPriceHalala": 0,
I/flutter ( 3302): ║                                 "extraWeightGrams": 0,
I/flutter ( 3302): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 3302): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 3302): ║                                 "totalHalala": 0
I/flutter ( 3302): ║                            },
I/flutter ( 3302): ║                            {
I/flutter ( 3302): ║                                 "groupId": "69fb649036d002eb74445f51",
I/flutter ( 3302): ║                                 "groupName": {ar: بروتينات, en: Proteins},
I/flutter ( 3302): ║                                 "optionId": "69fd36aa36d002eb7445b5c3",
I/flutter ( 3302): ║                                 "name": {ar: فاهيتا, en: Fajita},
I/flutter ( 3302): ║                                 "qty": 1,
I/flutter ( 3302): ║                                 "extraPriceHalala": 0,
I/flutter ( 3302): ║                                 "extraWeightGrams": 0,
I/flutter ( 3302): ║                                 "extraWeightUnitGrams": 50,
I/flutter ( 3302): ║                                 "extraWeightPriceHalala": 500,
I/flutter ( 3302): ║                                 "totalHalala": 0
I/flutter ( 3302): ║                            },
I/flutter ( 3302): ║                            {
I/flutter ( 3302): ║                                 "groupId": "69fb649536d002eb74445f5a",
I/flutter ( 3302): ║                                 "groupName": {ar: الصوصات, en: Sauces},
I/flutter ( 3302): ║                                 "optionId": "69fd36b036d002eb7445b5e2",
I/flutter ( 3302): ║                                 "name": {ar: سيزر, en: Caesar},
I/flutter ( 3302): ║                                 "qty": 1,
I/flutter ( 3302): ║                                 "extraPriceHalala": 0,
I/flutter ( 3302): ║                                 "extraWeightGrams": 0,
I/flutter ( 3302): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 3302): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 3302): ║                                 "totalHalala": 0
I/flutter ( 3302): ║                            }
I/flutter ( 3302): ║                         ]
I/flutter ( 3302): ║                    }
I/flutter ( 3302): ║                     "nutrition": {}
I/flutter ( 3302): ║                }
I/flutter ( 3302): ║             ],
I/flutter ( 3302): ║             "pricing": {
I/flutter ( 3302): ║                 "subtotalHalala": 8700,
I/flutter ( 3302): ║                 "deliveryFeeHalala": 0,
I/flutter ( 3302): ║                 "discountHalala": 0,
I/flutter ( 3302): ║                 "totalHalala": 8700,
I/flutter ( 3302): ║                 "vatPercentage": 15,
I/flutter ( 3302): ║                 "vatHalala": 1135,
I/flutter ( 3302): ║                 "vatIncluded": true,
I/flutter ( 3302): ║                 "currency": "SAR"
I/flutter ( 3302): ║            }
I/flutter ( 3302): ║             "pickup": {
I/flutter ( 3302): ║                 "branchId": "main",
I/flutter ( 3302): ║                 "pickupWindow": "18:00-20:00",
I/flutter ( 3302): ║                 "branchName": {ar: , en: },
I/flutter ( 3302): ║                 "pickupCode": "301062",
I/flutter ( 3302): ║                 "readyAt": "2026-05-09T14:16:06.764Z"
I/flutter ( 3302): ║            }
I/flutter ( 3302): ║             "createdAt": "2026-05-09T14:14:34.562Z",
I/flutter ( 3302): ║             "updatedAt": "2026-05-09T14:16:06.772Z"
I/flutter ( 3302): ║        }
I/flutter ( 3302): ║    }
I/flutter ( 3302): ║
I/flutter ( 3302): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 3302): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingLoading(), nextState: OrderTrackingSuccess(Instance of 'OrderModel') }
E/libEGL  ( 3302): called unimplemented OpenGL ES API
I/flutter ( 3302): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingSuccess(Instance of 'OrderModel'), nextState: OrderTrackingLoading() }
I/flutter ( 3302):
I/flutter ( 3302): ╔╣ Request ║ GET
I/flutter ( 3302): ║  https://basicdiet145.onrender.com/api/orders/69ff414a9fb65d6e063e14f5
I/flutter ( 3302): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 3302): ╔ Headers
I/flutter ( 3302): ╟ accept: application/json
I/flutter ( 3302): ╟ content-type: application/json
I/flutter ( 3302): ╟ authorization:
I/flutter ( 3302): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2OWYyMzdmMjE5Mjg4ZGJjOWUxNjMxZG
I/flutter ( 3302): ║ UiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc3NzQ5MDg2NSwiZXhwIjox
I/flutter ( 3302): ║ NzgwMTY5MjY1fQ.wQdMvBRkWrYPGGrvx5HtsUbTO-B9NlayVB5uRMS4rVE
I/flutter ( 3302): ╟ Accept-Language: ar
I/flutter ( 3302): ╟ contentType: application/json
I/flutter ( 3302): ╟ responseType: ResponseType.json
I/flutter ( 3302): ╟ followRedirects: true
I/flutter ( 3302): ╟ receiveTimeout: 16:40:00.000000
I/flutter ( 3302): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 3302):
I/flutter ( 3302): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 420 ms
I/flutter ( 3302): ║  https://basicdiet145.onrender.com/api/orders/69ff414a9fb65d6e063e14f5
I/flutter ( 3302): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 3302): ╔ Headers
I/flutter ( 3302): ╟ x-dns-prefetch-control: [off]
I/flutter ( 3302): ╟ x-render-origin-server: [Render]
I/flutter ( 3302): ╟ date: [Sat, 09 May 2026 14:16:18 GMT]
I/flutter ( 3302): ╟ transfer-encoding: [chunked]
I/flutter ( 3302): ╟ origin-agent-cluster: [?1]
I/flutter ( 3302): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 3302): ╟ content-encoding: [gzip]
I/flutter ( 3302): ╟ server: [cloudflare]
I/flutter ( 3302): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 3302): ╟ cf-ray: [9f9152372f2f78d0-MRS]
I/flutter ( 3302): ╟ etag: [W/"8ab-eue99K6wZB3bSR5BY+qeUUNjyQU"]
I/flutter ( 3302): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 3302): ╟ content-security-policy:
I/flutter ( 3302): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 3302): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 3302): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 3302): ╟ connection: [keep-alive]
I/flutter ( 3302): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 3302): ╟ referrer-policy: [no-referrer]
I/flutter ( 3302): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 3302): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 3302): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 3302): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 3302): ╟ rndr-id: [e185b0d1-2e6e-497a]
I/flutter ( 3302): ╟ x-xss-protection: [0]
I/flutter ( 3302): ╟ access-control-allow-credentials: [true]
I/flutter ( 3302): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 3302): ╟ x-download-options: [noopen]
I/flutter ( 3302): ╟ x-content-type-options: [nosniff]
I/flutter ( 3302): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 3302): ╔ Body
I/flutter ( 3302): ║
I/flutter ( 3302): ║    {
I/flutter ( 3302): ║         "status": true,
I/flutter ( 3302): ║         "data": {
I/flutter ( 3302): ║             "id": "69ff414a9fb65d6e063e14f5",
I/flutter ( 3302): ║             "orderId": "69ff414a9fb65d6e063e14f5",
I/flutter ( 3302): ║             "orderNumber": "ORD-063E14F4",
I/flutter ( 3302): ║             "source": "one_time_order",
I/flutter ( 3302): ║             "status": "ready_for_pickup",
I/flutter ( 3302): ║             "paymentStatus": "paid",
I/flutter ( 3302): ║             "expiresAt": null,
I/flutter ( 3302): ║             "fulfillmentMethod": "pickup",
I/flutter ( 3302): ║             "fulfillmentDate": "2026-05-09",
I/flutter ( 3302): ║             "requestedFulfillmentDate": "2026-05-09",
I/flutter ( 3302): ║             "items": [
I/flutter ( 3302): ║                {
I/flutter ( 3302): ║                     "itemType": "basic_salad",
I/flutter ( 3302): ║                     "catalogRef": {model: MenuProduct, id: 69fb649936d002eb74445f66},
I/flutter ( 3302): ║                     "name": {ar: سلطة بيسك, en: Basic Salad},
I/flutter ( 3302): ║                     "qty": 1,
I/flutter ( 3302): ║                     "unitPriceHalala": 8700,
I/flutter ( 3302): ║                     "lineTotalHalala": 8700,
I/flutter ( 3302): ║                     "currency": "SAR",
I/flutter ( 3302): ║                     "selections": {
I/flutter ( 3302): ║                         "salad": {
I/flutter ( 3302): ║                             "ingredients": []
I/flutter ( 3302): ║                        }
I/flutter ( 3302): ║                         "proteinName": {ar: , en: },
I/flutter ( 3302): ║                         "carbs": []
I/flutter ( 3302): ║                         "selectedOptions": [
I/flutter ( 3302): ║                            {
I/flutter ( 3302): ║                                 "groupId": "69fb648936d002eb74445f42",
I/flutter ( 3302): ║                                 "groupName": {ar: ورقيات, en: Leafy Greens},
I/flutter ( 3302): ║                                 "optionId": "69fd36a236d002eb7445b5a3",
I/flutter ( 3302): ║                                 "name": {ar: جرجير, en: Arugula},
I/flutter ( 3302): ║                                 "qty": 1,
I/flutter ( 3302): ║                                 "extraPriceHalala": 0,
I/flutter ( 3302): ║                                 "extraWeightGrams": 0,
I/flutter ( 3302): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 3302): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 3302): ║                                 "totalHalala": 0
I/flutter ( 3302): ║                            },
I/flutter ( 3302): ║                            {
I/flutter ( 3302): ║                                 "groupId": "69fb648936d002eb74445f42",
I/flutter ( 3302): ║                                 "groupName": {ar: ورقيات, en: Leafy Greens},
I/flutter ( 3302): ║                                 "optionId": "69fd36a236d002eb7445b5a4",
I/flutter ( 3302): ║                                 "name": {ar: ملفوف, en: Cabbage},
I/flutter ( 3302): ║                                 "qty": 1,
I/flutter ( 3302): ║                                 "extraPriceHalala": 0,
I/flutter ( 3302): ║                                 "extraWeightGrams": 0,
I/flutter ( 3302): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 3302): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 3302): ║                                 "totalHalala": 0
I/flutter ( 3302): ║                            },
I/flutter ( 3302): ║                            {
I/flutter ( 3302): ║                                 "groupId": "69fb649036d002eb74445f51",
I/flutter ( 3302): ║                                 "groupName": {ar: بروتينات, en: Proteins},
I/flutter ( 3302): ║                                 "optionId": "69fd36aa36d002eb7445b5c3",
I/flutter ( 3302): ║                                 "name": {ar: فاهيتا, en: Fajita},
I/flutter ( 3302): ║                                 "qty": 1,
I/flutter ( 3302): ║                                 "extraPriceHalala": 0,
I/flutter ( 3302): ║                                 "extraWeightGrams": 0,
I/flutter ( 3302): ║                                 "extraWeightUnitGrams": 50,
I/flutter ( 3302): ║                                 "extraWeightPriceHalala": 500,
I/flutter ( 3302): ║                                 "totalHalala": 0
I/flutter ( 3302): ║                            },
I/flutter ( 3302): ║                            {
I/flutter ( 3302): ║                                 "groupId": "69fb649536d002eb74445f5a",
I/flutter ( 3302): ║                                 "groupName": {ar: الصوصات, en: Sauces},
I/flutter ( 3302): ║                                 "optionId": "69fd36b036d002eb7445b5e2",
I/flutter ( 3302): ║                                 "name": {ar: سيزر, en: Caesar},
I/flutter ( 3302): ║                                 "qty": 1,
I/flutter ( 3302): ║                                 "extraPriceHalala": 0,
I/flutter ( 3302): ║                                 "extraWeightGrams": 0,
I/flutter ( 3302): ║                                 "extraWeightUnitGrams": 0,
I/flutter ( 3302): ║                                 "extraWeightPriceHalala": 0,
I/flutter ( 3302): ║                                 "totalHalala": 0
I/flutter ( 3302): ║                            }
I/flutter ( 3302): ║                         ]
I/flutter ( 3302): ║                    }
I/flutter ( 3302): ║                     "nutrition": {}
I/flutter ( 3302): ║                }
I/flutter ( 3302): ║             ],
I/flutter ( 3302): ║             "pricing": {
I/flutter ( 3302): ║                 "subtotalHalala": 8700,
I/flutter ( 3302): ║                 "deliveryFeeHalala": 0,
I/flutter ( 3302): ║                 "discountHalala": 0,
I/flutter ( 3302): ║                 "totalHalala": 8700,
I/flutter ( 3302): ║                 "vatPercentage": 15,
I/flutter ( 3302): ║                 "vatHalala": 1135,
I/flutter ( 3302): ║                 "vatIncluded": true,
I/flutter ( 3302): ║                 "currency": "SAR"
I/flutter ( 3302): ║            }
I/flutter ( 3302): ║             "pickup": {
I/flutter ( 3302): ║                 "branchId": "main",
I/flutter ( 3302): ║                 "pickupWindow": "18:00-20:00",
I/flutter ( 3302): ║                 "branchName": {ar: , en: },
I/flutter ( 3302): ║                 "pickupCode": "301062",
I/flutter ( 3302): ║                 "readyAt": "2026-05-09T14:16:06.764Z"
I/flutter ( 3302): ║            }
I/flutter ( 3302): ║             "createdAt": "2026-05-09T14:14:34.562Z",
I/flutter ( 3302): ║             "updatedAt": "2026-05-09T14:16:06.772Z"
I/flutter ( 3302): ║        }
I/flutter ( 3302): ║    }
I/flutter ( 3302): ║
I/flutter ( 3302): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 3302): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingLoading(), nextState: OrderTrackingSuccess(Instance of 'OrderModel') }
