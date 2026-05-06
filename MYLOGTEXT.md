╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 755 ms
I/flutter (15842): ║  https://basicdiet145.onrender.com/api/subscriptions/69fa3244ed00625a2e045e6b/days/2026-05-06/pickup/status
I/flutter (15842): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter (15842): ╔ Headers
I/flutter (15842): ╟ x-dns-prefetch-control: [off]
I/flutter (15842): ╟ x-render-origin-server: [Render]
I/flutter (15842): ╟ date: [Wed, 06 May 2026 17:06:55 GMT]
I/flutter (15842): ╟ transfer-encoding: [chunked]
I/flutter (15842): ╟ origin-agent-cluster: [?1]
I/flutter (15842): ╟ vary: [Origin, Accept-Encoding]
I/flutter (15842): ╟ content-encoding: [gzip]
I/flutter (15842): ╟ server: [cloudflare]
I/flutter (15842): ╟ cross-origin-resource-policy: [same-origin]
I/flutter (15842): ╟ cf-ray: [9f7994026c5e1a5e-MRS]
I/flutter (15842): ╟ etag: [W/"44f-Lf7vmt4MvSW4Z3Qa5lR8h3wnkGE"]
I/flutter (15842): ╟ x-frame-options: [SAMEORIGIN]
I/flutter (15842): ╟ content-security-policy:
I/flutter (15842): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter (15842): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter (15842): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter (15842): ╟ connection: [keep-alive]
I/flutter (15842): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter (15842): ╟ referrer-policy: [no-referrer]
I/flutter (15842): ╟ cf-cache-status: [DYNAMIC]
I/flutter (15842): ╟ x-permitted-cross-domain-policies: [none]
I/flutter (15842): ╟ cross-origin-opener-policy: [same-origin]
I/flutter (15842): ╟ content-type: [application/json; charset=utf-8]
I/flutter (15842): ╟ rndr-id: [b1668dcb-e260-4497]
I/flutter (15842): ╟ x-xss-protection: [0]
I/flutter (15842): ╟ access-control-allow-credentials: [true]
I/flutter (15842): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter (15842): ╟ x-download-options: [noopen]
I/flutter (15842): ╟ x-content-type-options: [nosniff]
I/flutter (15842): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter (15842): ╔ Body
I/flutter (15842): ║
I/flutter (15842): ║    {
I/flutter (15842): ║         "status": true,
I/flutter (15842): ║         "data": {
I/flutter (15842): ║             "subscriptionId": "69fa3244ed00625a2e045e6b",
I/flutter (15842): ║             "date": "2026-05-06",
I/flutter (15842): ║             "currentStep": 4,
I/flutter (15842): ║             "status": "fulfilled",
I/flutter (15842): ║             "statusLabel": "مكتمل",
I/flutter (15842): ║             "statusLabelAr": "مكتمل",
I/flutter (15842): ║             "statusLabelEn": "Completed",
I/flutter (15842): ║             "message": "تم استلام الطلب بنجاح.",
I/flutter (15842): ║             "messageAr": "تم استلام الطلب بنجاح.",
I/flutter (15842): ║             "messageEn": "Order picked up successfully.",
I/flutter (15842): ║             "canModify": false,
I/flutter (15842): ║             "isReady": true,
I/flutter (15842): ║             "isCompleted": true,
I/flutter (15842): ║             "pickupRequested": false,
I/flutter (15842): ║             "pickupPrepared": true,
I/flutter (15842): ║             "pickupPreparationFlowStatus": "fulfilled",
I/flutter (15842): ║             "consumptionState": "consumed",
I/flutter (15842): ║             "fulfillmentMode": "customer_selected",
I/flutter (15842): ║             "dayEndConsumptionReason": null,
I/flutter (15842): ║             "canRequestPrepare": false,
I/flutter (15842): ║             "requestBlockedReason": "PICKUP_ALREADY_COMPLETED",
I/flutter (15842): ║             "requestBlockedMessage": "تم استلام هذا اليوم بالفعل",
I/flutter (15842): ║             "requestBlockedMessageAr": "تم استلام هذا اليوم بالفعل",
I/flutter (15842): ║             "requestBlockedMessageEn": "Pickup already completed for this day",
I/flutter (15842): ║             "pickupLocation": null,
I/flutter (15842): ║             "restaurantHours": {openTime: 10:00, closeTime: 23:00, isOpenNow: true},
I/flutter (15842): ║             "pickupCode": "216395",
I/flutter (15842): ║             "pickupCodeIssuedAt": "2026-05-06T16:52:07.219Z",
I/flutter (15842): ║             "fulfilledAt": "2026-05-06T16:53:01.842Z"
I/flutter (15842): ║        }
I/flutter (15842): ║    }
I/flutter (15842): ║
I/flutter (15842): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter (15842): onChange -- PickupStatusCubit, Change { currentState: PickupStatusInitial(), nextState: PickupStatusLoaded(fulfilled, 216395) }
E/libEGL  (15842): called unimplemented OpenGL ES API
E/libEGL  (15842): called unimplemented OpenGL ES API
I/flutter (15842):
I/flutter (15842): ╔╣ Request ║ GET
I/flutter (15842): ║  https://basicdiet145.onrender.com/api/subscriptions/69fa3244ed00625a2e045e6b/days/2026-05-06/pickup/status
I/flutter (15842): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter (15842): ╔ Headers
I/flutter (15842): ╟ accept: application/json
I/flutter (15842): ╟ content-type: application/json
I/flutter (15842): ╟ authorization:
I/flutter (15842): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2OWYyMzdmMjE5Mjg4ZGJjOWUxNjMxZG
I/flutter (15842): ║ UiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc3ODAwMTU5MCwiZXhwIjox
I/flutter (15842): ║ NzgwNjc5OTkwfQ.T36wXb4fA6Ujv7vSOH29iyJLZJc2Qys_IEEMH_xyUKo
I/flutter (15842): ╟ Accept-Language: ar
I/flutter (15842): ╟ contentType: application/json
I/flutter (15842): ╟ responseType: ResponseType.json
I/flutter (15842): ╟ followRedirects: true
I/flutter (15842): ╟ receiveTimeout: 16:40:00.000000
I/flutter (15842): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
E/libEGL  (15842): called unimplemented OpenGL ES API
I/flutter (15842):
I/flutter (15842): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 850 ms
I/flutter (15842): ║  https://basicdiet145.onrender.com/api/subscriptions/69fa3244ed00625a2e045e6b/days/2026-05-06/pickup/status
I/flutter (15842): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter (15842): ╔ Headers
I/flutter (15842): ╟ x-dns-prefetch-control: [off]
I/flutter (15842): ╟ x-render-origin-server: [Render]
I/flutter (15842): ╟ date: [Wed, 06 May 2026 17:07:25 GMT]
I/flutter (15842): ╟ transfer-encoding: [chunked]
I/flutter (15842): ╟ origin-agent-cluster: [?1]
I/flutter (15842): ╟ vary: [Origin, Accept-Encoding]
I/flutter (15842): ╟ content-encoding: [gzip]
I/flutter (15842): ╟ server: [cloudflare]
I/flutter (15842): ╟ cross-origin-resource-policy: [same-origin]
I/flutter (15842): ╟ cf-ray: [9f7994c35c32787a-MRS]
I/flutter (15842): ╟ etag: [W/"44f-Lf7vmt4MvSW4Z3Qa5lR8h3wnkGE"]
I/flutter (15842): ╟ x-frame-options: [SAMEORIGIN]
I/flutter (15842): ╟ content-security-policy:
I/flutter (15842): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter (15842): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter (15842): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter (15842): ╟ connection: [keep-alive]
I/flutter (15842): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter (15842): ╟ referrer-policy: [no-referrer]
I/flutter (15842): ╟ cf-cache-status: [DYNAMIC]
I/flutter (15842): ╟ x-permitted-cross-domain-policies: [none]
I/flutter (15842): ╟ cross-origin-opener-policy: [same-origin]
I/flutter (15842): ╟ content-type: [application/json; charset=utf-8]
I/flutter (15842): ╟ rndr-id: [6ae36059-7129-44fe]
I/flutter (15842): ╟ x-xss-protection: [0]
I/flutter (15842): ╟ access-control-allow-credentials: [true]
I/flutter (15842): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter (15842): ╟ x-download-options: [noopen]
I/flutter (15842): ╟ x-content-type-options: [nosniff]
I/flutter (15842): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter (15842): ╔ Body
I/flutter (15842): ║
I/flutter (15842): ║    {
I/flutter (15842): ║         "status": true,
I/flutter (15842): ║         "data": {
I/flutter (15842): ║             "subscriptionId": "69fa3244ed00625a2e045e6b",
I/flutter (15842): ║             "date": "2026-05-06",
I/flutter (15842): ║             "currentStep": 4,
I/flutter (15842): ║             "status": "fulfilled",
I/flutter (15842): ║             "statusLabel": "مكتمل",
I/flutter (15842): ║             "statusLabelAr": "مكتمل",
I/flutter (15842): ║             "statusLabelEn": "Completed",
I/flutter (15842): ║             "message": "تم استلام الطلب بنجاح.",
I/flutter (15842): ║             "messageAr": "تم استلام الطلب بنجاح.",
I/flutter (15842): ║             "messageEn": "Order picked up successfully.",
I/flutter (15842): ║             "canModify": false,
I/flutter (15842): ║             "isReady": true,
I/flutter (15842): ║             "isCompleted": true,
I/flutter (15842): ║             "pickupRequested": false,
I/flutter (15842): ║             "pickupPrepared": true,
I/flutter (15842): ║             "pickupPreparationFlowStatus": "fulfilled",
I/flutter (15842): ║             "consumptionState": "consumed",
I/flutter (15842): ║             "fulfillmentMode": "customer_selected",
I/flutter (15842): ║             "dayEndConsumptionReason": null,
I/flutter (15842): ║             "canRequestPrepare": false,
I/flutter (15842): ║             "requestBlockedReason": "PICKUP_ALREADY_COMPLETED",
I/flutter (15842): ║             "requestBlockedMessage": "تم استلام هذا اليوم بالفعل",
I/flutter (15842): ║             "requestBlockedMessageAr": "تم استلام هذا اليوم بالفعل",
I/flutter (15842): ║             "requestBlockedMessageEn": "Pickup already completed for this day",
I/flutter (15842): ║             "pickupLocation": null,
I/flutter (15842): ║             "restaurantHours": {openTime: 10:00, closeTime: 23:00, isOpenNow: true},
I/flutter (15842): ║             "pickupCode": "216395",
I/flutter (15842): ║             "pickupCodeIssuedAt": "2026-05-06T16:52:07.219Z",
I/flutter (15842): ║             "fulfilledAt": "2026-05-06T16:53:01.842Z"
I/flutter (15842): ║        }
I/flutter (15842): ║    }
I/flutter (15842): ║
I/flutter (15842): ╚══════════════════════════════════════════════════════════════════════════════════════════╝