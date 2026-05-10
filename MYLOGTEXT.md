E/libEGL  ( 4091): called unimplemented OpenGL ES API
I/flutter ( 4091): onClose -- OrderTrackingBloc
E/libEGL  ( 4091): called unimplemented OpenGL ES API
I/flutter ( 4091): onCreate -- OrderTrackingBloc
I/flutter ( 4091): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingInitial(), nextState: OrderTrackingLoading() }
W/WindowOnBackDispatcher( 4091): OnBackInvokedCallback is not enabled for the application.
W/WindowOnBackDispatcher( 4091): Set 'android:enableOnBackInvokedCallback="true"' in the application manifest.
I/flutter ( 4091):
I/flutter ( 4091): ╔╣ Request ║ GET
I/flutter ( 4091): ║  https://basicdiet145.onrender.com/api/orders/
I/flutter ( 4091): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 4091): ╔ Headers
I/flutter ( 4091): ╟ accept: application/json
I/flutter ( 4091): ╟ content-type: application/json
I/flutter ( 4091): ╟ authorization:
I/flutter ( 4091): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2OWYyMzdmMjE5Mjg4ZGJjOWUxNjMxZG
I/flutter ( 4091): ║ UiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc3NzQ5MDg2NSwiZXhwIjox
I/flutter ( 4091): ║ NzgwMTY5MjY1fQ.wQdMvBRkWrYPGGrvx5HtsUbTO-B9NlayVB5uRMS4rVE
I/flutter ( 4091): ╟ Accept-Language: ar
I/flutter ( 4091): ╟ contentType: application/json
I/flutter ( 4091): ╟ responseType: ResponseType.json
I/flutter ( 4091): ╟ followRedirects: true
I/flutter ( 4091): ╟ receiveTimeout: 16:40:00.000000
I/flutter ( 4091): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 4091):
I/flutter ( 4091): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 668 ms
I/flutter ( 4091): ║  https://basicdiet145.onrender.com/api/orders/
I/flutter ( 4091): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 4091): ╔ Headers
I/flutter ( 4091): ╟ x-dns-prefetch-control: [off]
I/flutter ( 4091): ╟ x-render-origin-server: [Render]
I/flutter ( 4091): ╟ date: [Sat, 09 May 2026 15:05:06 GMT]
I/flutter ( 4091): ╟ transfer-encoding: [chunked]
I/flutter ( 4091): ╟ origin-agent-cluster: [?1]
I/flutter ( 4091): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 4091): ╟ content-encoding: [gzip]
I/flutter ( 4091): ╟ server: [cloudflare]
I/flutter ( 4091): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 4091): ╟ cf-ray: [9f9199b61ef8bccd-MRS]
I/flutter ( 4091): ╟ etag: [W/"d20-cIf0U3q8FSGVzGTqTf0EZgveLZQ"]
I/flutter ( 4091): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 4091): ╟ content-security-policy:
I/flutter ( 4091): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 4091): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 4091): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 4091): ╟ connection: [keep-alive]
I/flutter ( 4091): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 4091): ╟ referrer-policy: [no-referrer]
I/flutter ( 4091): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 4091): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 4091): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 4091): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 4091): ╟ rndr-id: [289df4cc-a384-447c]
I/flutter ( 4091): ╟ x-xss-protection: [0]
I/flutter ( 4091): ╟ access-control-allow-credentials: [true]
I/flutter ( 4091): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 4091): ╟ x-download-options: [noopen]
I/flutter ( 4091): ╟ x-content-type-options: [nosniff]
I/flutter ( 4091): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 4091): ╔ Body
I/flutter ( 4091): ║
I/flutter ( 4091): ║    {
I/flutter ( 4091): ║         "status": true,
I/flutter ( 4091): ║         "data": {
I/flutter ( 4091): ║             "items": [
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69ff4ce29fb65d6e063e193c",
I/flutter ( 4091): ║                     "orderNumber": "ORD-063E193B",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "ready_for_pickup",
I/flutter ( 4091): ║                     "paymentStatus": "paid",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-09",
I/flutter ( 4091): ║                     "itemCount": 1,
I/flutter ( 4091): ║                     "totalHalala": 2900,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-09T15:04:02.933Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-09T15:04:39.866Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69ff47e09fb65d6e063e16fe",
I/flutter ( 4091): ║                     "orderNumber": "ORD-063E16FD",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "fulfilled",
I/flutter ( 4091): ║                     "paymentStatus": "paid",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-09",
I/flutter ( 4091): ║                     "itemCount": 1,
I/flutter ( 4091): ║                     "totalHalala": 3800,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-09T14:42:40.462Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-09T14:44:07.668Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69ff46089fb65d6e063e1651",
I/flutter ( 4091): ║                     "orderNumber": "ORD-063E1650",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "cancelled",
I/flutter ( 4091): ║                     "paymentStatus": "paid",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-09",
I/flutter ( 4091): ║                     "itemCount": 1,
I/flutter ( 4091): ║                     "totalHalala": 5700,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-09T14:34:48.831Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-09T14:36:30.980Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69ff414a9fb65d6e063e14f5",
I/flutter ( 4091): ║                     "orderNumber": "ORD-063E14F4",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "cancelled",
I/flutter ( 4091): ║                     "paymentStatus": "paid",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-09",
I/flutter ( 4091): ║                     "itemCount": 1,
I/flutter ( 4091): ║                     "totalHalala": 8700,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-09T14:14:34.562Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-09T14:36:34.334Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69ff39fe9fb65d6e063e13e2",
I/flutter ( 4091): ║                     "orderNumber": "ORD-063E13E1",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "fulfilled",
I/flutter ( 4091): ║                     "paymentStatus": "paid",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-09",
I/flutter ( 4091): ║                     "itemCount": 1,
I/flutter ( 4091): ║                     "totalHalala": 2900,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-09T13:43:26.439Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-09T14:31:34.444Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69ff2efadbe29e6a9d7ddf33",
I/flutter ( 4091): ║                     "orderNumber": "ORD-9D7DDF32",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "cancelled",
I/flutter ( 4091): ║                     "paymentStatus": "failed",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-09",
I/flutter ( 4091): ║                     "itemCount": 1,
I/flutter ( 4091): ║                     "totalHalala": 2900,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-09T12:56:26.367Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-09T12:56:26.918Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69ff298dda2c28504e540e72",
I/flutter ( 4091): ║                     "orderNumber": "ORD-4E540E71",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "cancelled",
I/flutter ( 4091): ║                     "paymentStatus": "failed",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-09",
I/flutter ( 4091): ║                     "itemCount": 1,
I/flutter ( 4091): ║                     "totalHalala": 8700,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-09T12:33:17.656Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-09T12:33:18.290Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69fcd77beba480b27320b5ae",
I/flutter ( 4091): ║                     "orderNumber": "ORD-7320B5AD",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "fulfilled",
I/flutter ( 4091): ║                     "paymentStatus": "paid",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-07",
I/flutter ( 4091): ║                     "itemCount": 2,
I/flutter ( 4091): ║                     "totalHalala": 400,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-07T18:18:35.990Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-07T18:22:11.301Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69fbc83db683f54370983535",
I/flutter ( 4091): ║                     "orderNumber": "ORD-70983534",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "fulfilled",
I/flutter ( 4091): ║                     "paymentStatus": "paid",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-07",
I/flutter ( 4091): ║                     "itemCount": 2,
I/flutter ( 4091): ║                     "totalHalala": 400,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-06T23:01:17.135Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-06T23:08:02.029Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69fbc802b683f54370983522",
I/flutter ( 4091): ║                     "orderNumber": "ORD-70983521",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "cancelled",
I/flutter ( 4091): ║                     "paymentStatus": "failed",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-07",
I/flutter ( 4091): ║                     "itemCount": 2,
I/flutter ( 4091): ║                     "totalHalala": 400,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-06T23:00:18.125Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-06T23:00:19.000Z"
I/flutter ( 4091): ║                }
I/flutter ( 4091): ║             ],
I/flutter ( 4091): ║             "pagination": {page: 1, limit: 10, total: 21, pages: 3}
I/flutter ( 4091): ║        }
I/flutter ( 4091): ║    }
I/flutter ( 4091): ║
I/flutter ( 4091): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 4091): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingLoading(), nextState: OrderTrackingSuccess(Instance of 'OrderModel') }
I/flutter ( 4091): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingSuccess(Instance of 'OrderModel'), nextState: OrderTrackingLoading() }
I/flutter ( 4091):
I/flutter ( 4091): ╔╣ Request ║ GET
I/flutter ( 4091): ║  https://basicdiet145.onrender.com/api/orders/
I/flutter ( 4091): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 4091): ╔ Headers
I/flutter ( 4091): ╟ accept: application/json
I/flutter ( 4091): ╟ content-type: application/json
I/flutter ( 4091): ╟ authorization:
I/flutter ( 4091): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2OWYyMzdmMjE5Mjg4ZGJjOWUxNjMxZG
I/flutter ( 4091): ║ UiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc3NzQ5MDg2NSwiZXhwIjox
I/flutter ( 4091): ║ NzgwMTY5MjY1fQ.wQdMvBRkWrYPGGrvx5HtsUbTO-B9NlayVB5uRMS4rVE
I/flutter ( 4091): ╟ Accept-Language: ar
I/flutter ( 4091): ╟ contentType: application/json
I/flutter ( 4091): ╟ responseType: ResponseType.json
I/flutter ( 4091): ╟ followRedirects: true
I/flutter ( 4091): ╟ receiveTimeout: 16:40:00.000000
I/flutter ( 4091): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
E/libEGL  ( 4091): called unimplemented OpenGL ES API
I/flutter ( 4091):
I/flutter ( 4091): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 574 ms
I/flutter ( 4091): ║  https://basicdiet145.onrender.com/api/orders/
I/flutter ( 4091): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 4091): ╔ Headers
I/flutter ( 4091): ╟ x-dns-prefetch-control: [off]
I/flutter ( 4091): ╟ x-render-origin-server: [Render]
I/flutter ( 4091): ╟ date: [Sat, 09 May 2026 15:05:16 GMT]
I/flutter ( 4091): ╟ transfer-encoding: [chunked]
I/flutter ( 4091): ╟ origin-agent-cluster: [?1]
I/flutter ( 4091): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 4091): ╟ content-encoding: [gzip]
I/flutter ( 4091): ╟ server: [cloudflare]
I/flutter ( 4091): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 4091): ╟ cf-ray: [9f9199f46c1be181-MRS]
I/flutter ( 4091): ╟ etag: [W/"d20-cIf0U3q8FSGVzGTqTf0EZgveLZQ"]
I/flutter ( 4091): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 4091): ╟ content-security-policy:
I/flutter ( 4091): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 4091): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 4091): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 4091): ╟ connection: [keep-alive]
I/flutter ( 4091): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 4091): ╟ referrer-policy: [no-referrer]
I/flutter ( 4091): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 4091): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 4091): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 4091): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 4091): ╟ rndr-id: [879b9624-8b5c-4c0f]
I/flutter ( 4091): ╟ x-xss-protection: [0]
I/flutter ( 4091): ╟ access-control-allow-credentials: [true]
I/flutter ( 4091): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 4091): ╟ x-download-options: [noopen]
I/flutter ( 4091): ╟ x-content-type-options: [nosniff]
I/flutter ( 4091): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 4091): ╔ Body
I/flutter ( 4091): ║
I/flutter ( 4091): ║    {
I/flutter ( 4091): ║         "status": true,
I/flutter ( 4091): ║         "data": {
I/flutter ( 4091): ║             "items": [
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69ff4ce29fb65d6e063e193c",
I/flutter ( 4091): ║                     "orderNumber": "ORD-063E193B",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "ready_for_pickup",
I/flutter ( 4091): ║                     "paymentStatus": "paid",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-09",
I/flutter ( 4091): ║                     "itemCount": 1,
I/flutter ( 4091): ║                     "totalHalala": 2900,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-09T15:04:02.933Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-09T15:04:39.866Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69ff47e09fb65d6e063e16fe",
I/flutter ( 4091): ║                     "orderNumber": "ORD-063E16FD",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "fulfilled",
I/flutter ( 4091): ║                     "paymentStatus": "paid",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-09",
I/flutter ( 4091): ║                     "itemCount": 1,
I/flutter ( 4091): ║                     "totalHalala": 3800,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-09T14:42:40.462Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-09T14:44:07.668Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69ff46089fb65d6e063e1651",
I/flutter ( 4091): ║                     "orderNumber": "ORD-063E1650",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "cancelled",
I/flutter ( 4091): ║                     "paymentStatus": "paid",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-09",
I/flutter ( 4091): ║                     "itemCount": 1,
I/flutter ( 4091): ║                     "totalHalala": 5700,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-09T14:34:48.831Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-09T14:36:30.980Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69ff414a9fb65d6e063e14f5",
I/flutter ( 4091): ║                     "orderNumber": "ORD-063E14F4",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "cancelled",
I/flutter ( 4091): ║                     "paymentStatus": "paid",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-09",
I/flutter ( 4091): ║                     "itemCount": 1,
I/flutter ( 4091): ║                     "totalHalala": 8700,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-09T14:14:34.562Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-09T14:36:34.334Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69ff39fe9fb65d6e063e13e2",
I/flutter ( 4091): ║                     "orderNumber": "ORD-063E13E1",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "fulfilled",
I/flutter ( 4091): ║                     "paymentStatus": "paid",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-09",
I/flutter ( 4091): ║                     "itemCount": 1,
I/flutter ( 4091): ║                     "totalHalala": 2900,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-09T13:43:26.439Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-09T14:31:34.444Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69ff2efadbe29e6a9d7ddf33",
I/flutter ( 4091): ║                     "orderNumber": "ORD-9D7DDF32",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "cancelled",
I/flutter ( 4091): ║                     "paymentStatus": "failed",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-09",
I/flutter ( 4091): ║                     "itemCount": 1,
I/flutter ( 4091): ║                     "totalHalala": 2900,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-09T12:56:26.367Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-09T12:56:26.918Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69ff298dda2c28504e540e72",
I/flutter ( 4091): ║                     "orderNumber": "ORD-4E540E71",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "cancelled",
I/flutter ( 4091): ║                     "paymentStatus": "failed",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-09",
I/flutter ( 4091): ║                     "itemCount": 1,
I/flutter ( 4091): ║                     "totalHalala": 8700,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-09T12:33:17.656Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-09T12:33:18.290Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69fcd77beba480b27320b5ae",
I/flutter ( 4091): ║                     "orderNumber": "ORD-7320B5AD",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "fulfilled",
I/flutter ( 4091): ║                     "paymentStatus": "paid",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-07",
I/flutter ( 4091): ║                     "itemCount": 2,
I/flutter ( 4091): ║                     "totalHalala": 400,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-07T18:18:35.990Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-07T18:22:11.301Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69fbc83db683f54370983535",
I/flutter ( 4091): ║                     "orderNumber": "ORD-70983534",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "fulfilled",
I/flutter ( 4091): ║                     "paymentStatus": "paid",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-07",
I/flutter ( 4091): ║                     "itemCount": 2,
I/flutter ( 4091): ║                     "totalHalala": 400,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-06T23:01:17.135Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-06T23:08:02.029Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69fbc802b683f54370983522",
I/flutter ( 4091): ║                     "orderNumber": "ORD-70983521",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "cancelled",
I/flutter ( 4091): ║                     "paymentStatus": "failed",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-07",
I/flutter ( 4091): ║                     "itemCount": 2,
I/flutter ( 4091): ║                     "totalHalala": 400,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-06T23:00:18.125Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-06T23:00:19.000Z"
I/flutter ( 4091): ║                }
I/flutter ( 4091): ║             ],
I/flutter ( 4091): ║             "pagination": {page: 1, limit: 10, total: 21, pages: 3}
I/flutter ( 4091): ║        }
I/flutter ( 4091): ║    }
I/flutter ( 4091): ║
I/flutter ( 4091): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 4091): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingLoading(), nextState: OrderTrackingSuccess(Instance of 'OrderModel') }
I/flutter ( 4091): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingSuccess(Instance of 'OrderModel'), nextState: OrderTrackingLoading() }
I/flutter ( 4091):
I/flutter ( 4091): ╔╣ Request ║ GET
I/flutter ( 4091): ║  https://basicdiet145.onrender.com/api/orders/
I/flutter ( 4091): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 4091): ╔ Headers
I/flutter ( 4091): ╟ accept: application/json
I/flutter ( 4091): ╟ content-type: application/json
I/flutter ( 4091): ╟ authorization:
I/flutter ( 4091): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2OWYyMzdmMjE5Mjg4ZGJjOWUxNjMxZG
I/flutter ( 4091): ║ UiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc3NzQ5MDg2NSwiZXhwIjox
I/flutter ( 4091): ║ NzgwMTY5MjY1fQ.wQdMvBRkWrYPGGrvx5HtsUbTO-B9NlayVB5uRMS4rVE
I/flutter ( 4091): ╟ Accept-Language: ar
I/flutter ( 4091): ╟ contentType: application/json
I/flutter ( 4091): ╟ responseType: ResponseType.json
I/flutter ( 4091): ╟ followRedirects: true
I/flutter ( 4091): ╟ receiveTimeout: 16:40:00.000000
I/flutter ( 4091): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
E/libEGL  ( 4091): called unimplemented OpenGL ES API
I/flutter ( 4091):
I/flutter ( 4091): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 641 ms
I/flutter ( 4091): ║  https://basicdiet145.onrender.com/api/orders/
I/flutter ( 4091): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 4091): ╔ Headers
I/flutter ( 4091): ╟ x-dns-prefetch-control: [off]
I/flutter ( 4091): ╟ x-render-origin-server: [Render]
I/flutter ( 4091): ╟ date: [Sat, 09 May 2026 15:05:26 GMT]
I/flutter ( 4091): ╟ transfer-encoding: [chunked]
I/flutter ( 4091): ╟ origin-agent-cluster: [?1]
I/flutter ( 4091): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 4091): ╟ content-encoding: [gzip]
I/flutter ( 4091): ╟ server: [cloudflare]
I/flutter ( 4091): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 4091): ╟ cf-ray: [9f919a32ff07cfa3-MRS]
I/flutter ( 4091): ╟ etag: [W/"d20-cIf0U3q8FSGVzGTqTf0EZgveLZQ"]
I/flutter ( 4091): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 4091): ╟ content-security-policy:
I/flutter ( 4091): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 4091): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 4091): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 4091): ╟ connection: [keep-alive]
I/flutter ( 4091): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 4091): ╟ referrer-policy: [no-referrer]
I/flutter ( 4091): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 4091): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 4091): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 4091): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 4091): ╟ rndr-id: [1afb38bb-2cc1-424e]
I/flutter ( 4091): ╟ x-xss-protection: [0]
I/flutter ( 4091): ╟ access-control-allow-credentials: [true]
I/flutter ( 4091): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 4091): ╟ x-download-options: [noopen]
I/flutter ( 4091): ╟ x-content-type-options: [nosniff]
I/flutter ( 4091): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 4091): ╔ Body
I/flutter ( 4091): ║
I/flutter ( 4091): ║    {
I/flutter ( 4091): ║         "status": true,
I/flutter ( 4091): ║         "data": {
I/flutter ( 4091): ║             "items": [
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69ff4ce29fb65d6e063e193c",
I/flutter ( 4091): ║                     "orderNumber": "ORD-063E193B",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "ready_for_pickup",
I/flutter ( 4091): ║                     "paymentStatus": "paid",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-09",
I/flutter ( 4091): ║                     "itemCount": 1,
I/flutter ( 4091): ║                     "totalHalala": 2900,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-09T15:04:02.933Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-09T15:04:39.866Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69ff47e09fb65d6e063e16fe",
I/flutter ( 4091): ║                     "orderNumber": "ORD-063E16FD",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "fulfilled",
I/flutter ( 4091): ║                     "paymentStatus": "paid",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-09",
I/flutter ( 4091): ║                     "itemCount": 1,
I/flutter ( 4091): ║                     "totalHalala": 3800,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-09T14:42:40.462Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-09T14:44:07.668Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69ff46089fb65d6e063e1651",
I/flutter ( 4091): ║                     "orderNumber": "ORD-063E1650",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "cancelled",
I/flutter ( 4091): ║                     "paymentStatus": "paid",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-09",
I/flutter ( 4091): ║                     "itemCount": 1,
I/flutter ( 4091): ║                     "totalHalala": 5700,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-09T14:34:48.831Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-09T14:36:30.980Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69ff414a9fb65d6e063e14f5",
I/flutter ( 4091): ║                     "orderNumber": "ORD-063E14F4",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "cancelled",
I/flutter ( 4091): ║                     "paymentStatus": "paid",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-09",
I/flutter ( 4091): ║                     "itemCount": 1,
I/flutter ( 4091): ║                     "totalHalala": 8700,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-09T14:14:34.562Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-09T14:36:34.334Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69ff39fe9fb65d6e063e13e2",
I/flutter ( 4091): ║                     "orderNumber": "ORD-063E13E1",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "fulfilled",
I/flutter ( 4091): ║                     "paymentStatus": "paid",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-09",
I/flutter ( 4091): ║                     "itemCount": 1,
I/flutter ( 4091): ║                     "totalHalala": 2900,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-09T13:43:26.439Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-09T14:31:34.444Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69ff2efadbe29e6a9d7ddf33",
I/flutter ( 4091): ║                     "orderNumber": "ORD-9D7DDF32",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "cancelled",
I/flutter ( 4091): ║                     "paymentStatus": "failed",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-09",
I/flutter ( 4091): ║                     "itemCount": 1,
I/flutter ( 4091): ║                     "totalHalala": 2900,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-09T12:56:26.367Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-09T12:56:26.918Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69ff298dda2c28504e540e72",
I/flutter ( 4091): ║                     "orderNumber": "ORD-4E540E71",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "cancelled",
I/flutter ( 4091): ║                     "paymentStatus": "failed",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-09",
I/flutter ( 4091): ║                     "itemCount": 1,
I/flutter ( 4091): ║                     "totalHalala": 8700,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-09T12:33:17.656Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-09T12:33:18.290Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69fcd77beba480b27320b5ae",
I/flutter ( 4091): ║                     "orderNumber": "ORD-7320B5AD",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "fulfilled",
I/flutter ( 4091): ║                     "paymentStatus": "paid",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-07",
I/flutter ( 4091): ║                     "itemCount": 2,
I/flutter ( 4091): ║                     "totalHalala": 400,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-07T18:18:35.990Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-07T18:22:11.301Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69fbc83db683f54370983535",
I/flutter ( 4091): ║                     "orderNumber": "ORD-70983534",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "fulfilled",
I/flutter ( 4091): ║                     "paymentStatus": "paid",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-07",
I/flutter ( 4091): ║                     "itemCount": 2,
I/flutter ( 4091): ║                     "totalHalala": 400,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-06T23:01:17.135Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-06T23:08:02.029Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69fbc802b683f54370983522",
I/flutter ( 4091): ║                     "orderNumber": "ORD-70983521",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "cancelled",
I/flutter ( 4091): ║                     "paymentStatus": "failed",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-07",
I/flutter ( 4091): ║                     "itemCount": 2,
I/flutter ( 4091): ║                     "totalHalala": 400,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-06T23:00:18.125Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-06T23:00:19.000Z"
I/flutter ( 4091): ║                }
I/flutter ( 4091): ║             ],
I/flutter ( 4091): ║             "pagination": {page: 1, limit: 10, total: 21, pages: 3}
I/flutter ( 4091): ║        }
I/flutter ( 4091): ║    }
I/flutter ( 4091): ║
I/flutter ( 4091): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 4091): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingLoading(), nextState: OrderTrackingSuccess(Instance of 'OrderModel') }
I/flutter ( 4091): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingSuccess(Instance of 'OrderModel'), nextState: OrderTrackingLoading() }
I/flutter ( 4091):
I/flutter ( 4091): ╔╣ Request ║ GET
I/flutter ( 4091): ║  https://basicdiet145.onrender.com/api/orders/
I/flutter ( 4091): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 4091): ╔ Headers
I/flutter ( 4091): ╟ accept: application/json
I/flutter ( 4091): ╟ content-type: application/json
I/flutter ( 4091): ╟ authorization:
I/flutter ( 4091): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2OWYyMzdmMjE5Mjg4ZGJjOWUxNjMxZG
I/flutter ( 4091): ║ UiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc3NzQ5MDg2NSwiZXhwIjox
I/flutter ( 4091): ║ NzgwMTY5MjY1fQ.wQdMvBRkWrYPGGrvx5HtsUbTO-B9NlayVB5uRMS4rVE
I/flutter ( 4091): ╟ Accept-Language: ar
I/flutter ( 4091): ╟ contentType: application/json
I/flutter ( 4091): ╟ responseType: ResponseType.json
I/flutter ( 4091): ╟ followRedirects: true
I/flutter ( 4091): ╟ receiveTimeout: 16:40:00.000000
I/flutter ( 4091): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
E/libEGL  ( 4091): called unimplemented OpenGL ES API
I/flutter ( 4091):
I/flutter ( 4091): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 584 ms
I/flutter ( 4091): ║  https://basicdiet145.onrender.com/api/orders/
I/flutter ( 4091): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 4091): ╔ Headers
I/flutter ( 4091): ╟ x-dns-prefetch-control: [off]
I/flutter ( 4091): ╟ x-render-origin-server: [Render]
I/flutter ( 4091): ╟ date: [Sat, 09 May 2026 15:05:36 GMT]
I/flutter ( 4091): ╟ transfer-encoding: [chunked]
I/flutter ( 4091): ╟ origin-agent-cluster: [?1]
I/flutter ( 4091): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 4091): ╟ content-encoding: [gzip]
I/flutter ( 4091): ╟ server: [cloudflare]
I/flutter ( 4091): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 4091): ╟ cf-ray: [9f919a715d7de175-MRS]
I/flutter ( 4091): ╟ etag: [W/"d20-cIf0U3q8FSGVzGTqTf0EZgveLZQ"]
I/flutter ( 4091): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 4091): ╟ content-security-policy:
I/flutter ( 4091): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 4091): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 4091): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 4091): ╟ connection: [keep-alive]
I/flutter ( 4091): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 4091): ╟ referrer-policy: [no-referrer]
I/flutter ( 4091): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 4091): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 4091): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 4091): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 4091): ╟ rndr-id: [5b62c4ef-778e-412b]
I/flutter ( 4091): ╟ x-xss-protection: [0]
I/flutter ( 4091): ╟ access-control-allow-credentials: [true]
I/flutter ( 4091): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 4091): ╟ x-download-options: [noopen]
I/flutter ( 4091): ╟ x-content-type-options: [nosniff]
I/flutter ( 4091): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 4091): ╔ Body
I/flutter ( 4091): ║
I/flutter ( 4091): ║    {
I/flutter ( 4091): ║         "status": true,
I/flutter ( 4091): ║         "data": {
I/flutter ( 4091): ║             "items": [
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69ff4ce29fb65d6e063e193c",
I/flutter ( 4091): ║                     "orderNumber": "ORD-063E193B",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "ready_for_pickup",
I/flutter ( 4091): ║                     "paymentStatus": "paid",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-09",
I/flutter ( 4091): ║                     "itemCount": 1,
I/flutter ( 4091): ║                     "totalHalala": 2900,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-09T15:04:02.933Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-09T15:04:39.866Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69ff47e09fb65d6e063e16fe",
I/flutter ( 4091): ║                     "orderNumber": "ORD-063E16FD",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "fulfilled",
I/flutter ( 4091): ║                     "paymentStatus": "paid",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-09",
I/flutter ( 4091): ║                     "itemCount": 1,
I/flutter ( 4091): ║                     "totalHalala": 3800,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-09T14:42:40.462Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-09T14:44:07.668Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69ff46089fb65d6e063e1651",
I/flutter ( 4091): ║                     "orderNumber": "ORD-063E1650",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "cancelled",
I/flutter ( 4091): ║                     "paymentStatus": "paid",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-09",
I/flutter ( 4091): ║                     "itemCount": 1,
I/flutter ( 4091): ║                     "totalHalala": 5700,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-09T14:34:48.831Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-09T14:36:30.980Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69ff414a9fb65d6e063e14f5",
I/flutter ( 4091): ║                     "orderNumber": "ORD-063E14F4",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "cancelled",
I/flutter ( 4091): ║                     "paymentStatus": "paid",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-09",
I/flutter ( 4091): ║                     "itemCount": 1,
I/flutter ( 4091): ║                     "totalHalala": 8700,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-09T14:14:34.562Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-09T14:36:34.334Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69ff39fe9fb65d6e063e13e2",
I/flutter ( 4091): ║                     "orderNumber": "ORD-063E13E1",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "fulfilled",
I/flutter ( 4091): ║                     "paymentStatus": "paid",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-09",
I/flutter ( 4091): ║                     "itemCount": 1,
I/flutter ( 4091): ║                     "totalHalala": 2900,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-09T13:43:26.439Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-09T14:31:34.444Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69ff2efadbe29e6a9d7ddf33",
I/flutter ( 4091): ║                     "orderNumber": "ORD-9D7DDF32",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "cancelled",
I/flutter ( 4091): ║                     "paymentStatus": "failed",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-09",
I/flutter ( 4091): ║                     "itemCount": 1,
I/flutter ( 4091): ║                     "totalHalala": 2900,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-09T12:56:26.367Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-09T12:56:26.918Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69ff298dda2c28504e540e72",
I/flutter ( 4091): ║                     "orderNumber": "ORD-4E540E71",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "cancelled",
I/flutter ( 4091): ║                     "paymentStatus": "failed",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-09",
I/flutter ( 4091): ║                     "itemCount": 1,
I/flutter ( 4091): ║                     "totalHalala": 8700,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-09T12:33:17.656Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-09T12:33:18.290Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69fcd77beba480b27320b5ae",
I/flutter ( 4091): ║                     "orderNumber": "ORD-7320B5AD",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "fulfilled",
I/flutter ( 4091): ║                     "paymentStatus": "paid",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-07",
I/flutter ( 4091): ║                     "itemCount": 2,
I/flutter ( 4091): ║                     "totalHalala": 400,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-07T18:18:35.990Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-07T18:22:11.301Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69fbc83db683f54370983535",
I/flutter ( 4091): ║                     "orderNumber": "ORD-70983534",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "fulfilled",
I/flutter ( 4091): ║                     "paymentStatus": "paid",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-07",
I/flutter ( 4091): ║                     "itemCount": 2,
I/flutter ( 4091): ║                     "totalHalala": 400,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-06T23:01:17.135Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-06T23:08:02.029Z"
I/flutter ( 4091): ║                },
I/flutter ( 4091): ║                {
I/flutter ( 4091): ║                     "orderId": "69fbc802b683f54370983522",
I/flutter ( 4091): ║                     "orderNumber": "ORD-70983521",
I/flutter ( 4091): ║                     "source": "one_time_order",
I/flutter ( 4091): ║                     "status": "cancelled",
I/flutter ( 4091): ║                     "paymentStatus": "failed",
I/flutter ( 4091): ║                     "fulfillmentMethod": "pickup",
I/flutter ( 4091): ║                     "fulfillmentDate": "2026-05-07",
I/flutter ( 4091): ║                     "itemCount": 2,
I/flutter ( 4091): ║                     "totalHalala": 400,
I/flutter ( 4091): ║                     "currency": "SAR",
I/flutter ( 4091): ║                     "createdAt": "2026-05-06T23:00:18.125Z",
I/flutter ( 4091): ║                     "updatedAt": "2026-05-06T23:00:19.000Z"
I/flutter ( 4091): ║                }
I/flutter ( 4091): ║             ],
I/flutter ( 4091): ║             "pagination": {page: 1, limit: 10, total: 21, pages: 3}
I/flutter ( 4091): ║        }
I/flutter ( 4091): ║    }
I/flutter ( 4091): ║
I/flutter ( 4091): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 4091): onChange -- OrderTrackingBloc, Change { currentState: OrderTrackingLoading(), nextState: OrderTrackingSuccess(Instance of 'OrderModel') }
