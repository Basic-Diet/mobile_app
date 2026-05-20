I/flutter (27514):
I/flutter (27514): ╔╣ Request ║ POST
I/flutter (27514): ║  https://basicdiet145.onrender.com/api/auth/register/request-otp
I/flutter (27514): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter (27514): ╔ Headers
I/flutter (27514): ╟ accept: application/json
I/flutter (27514): ╟ content-type: application/json
I/flutter (27514): ╟ Accept-Language: ar
I/flutter (27514): ╟ contentType: application/json
I/flutter (27514): ╟ responseType: ResponseType.json
I/flutter (27514): ╟ followRedirects: true
I/flutter (27514): ╟ receiveTimeout: 16:40:00.000000
I/flutter (27514): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter (27514): ╔ Body
I/flutter (27514): ╟ phoneE164: +201019086737
I/flutter (27514): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter (27514): ║ {phoneE164: +201019086737}
E/libEGL  (27514): called unimplemented OpenGL ES API
I/flutter (27514):
I/flutter (27514): ╔╣ Response ║ POST ║ Status: 200 OK  ║ Time: 1003 ms
I/flutter (27514): ║  https://basicdiet145.onrender.com/api/auth/register/request-otp
I/flutter (27514): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter (27514): ╔ Headers
I/flutter (27514): ╟ x-render-origin-server: [Render]
I/flutter (27514): ╟ ratelimit-limit: [5]
I/flutter (27514): ╟ x-dns-prefetch-control: [off]
I/flutter (27514): ╟ date: [Wed, 20 May 2026 16:13:42 GMT]
I/flutter (27514): ╟ transfer-encoding: [chunked]
I/flutter (27514): ╟ content-encoding: [gzip]
I/flutter (27514): ╟ origin-agent-cluster: [?1]
I/flutter (27514): ╟ vary: [Origin, Accept-Encoding]
I/flutter (27514): ╟ ratelimit-remaining: [4]
I/flutter (27514): ╟ ratelimit-policy: [5;w=60]
I/flutter (27514): ╟ server: [cloudflare]
I/flutter (27514): ╟ cross-origin-resource-policy: [same-origin]
I/flutter (27514): ╟ cf-ray: [9feca151dea688ed-MRS]
I/flutter (27514): ╟ etag: [W/"50-KB05/ErrXeUiIzVGRcrjmzWXA4I"]
I/flutter (27514): ╟ x-frame-options: [SAMEORIGIN]
I/flutter (27514): ╟ content-security-policy:
I/flutter (27514): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter (27514): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter (27514): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter (27514): ╟ connection: [keep-alive]
I/flutter (27514): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter (27514): ╟ referrer-policy: [no-referrer]
I/flutter (27514): ╟ cf-cache-status: [DYNAMIC]
I/flutter (27514): ╟ x-permitted-cross-domain-policies: [none]
I/flutter (27514): ╟ cross-origin-opener-policy: [same-origin]
I/flutter (27514): ╟ content-type: [application/json; charset=utf-8]
I/flutter (27514): ╟ x-xss-protection: [0]
I/flutter (27514): ╟ rndr-id: [9a2ae030-16cb-4e6c]
I/flutter (27514): ╟ access-control-allow-credentials: [true]
I/flutter (27514): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter (27514): ╟ x-download-options: [noopen]
I/flutter (27514): ╟ x-content-type-options: [nosniff]
I/flutter (27514): ╟ ratelimit-reset: [60]
I/flutter (27514): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter (27514): ╔ Body
I/flutter (27514): ║
I/flutter (27514): ║    {
I/flutter (27514): ║         "ok": true,
I/flutter (27514): ║         "status": "otp_sent",
I/flutter (27514): ║         "phoneE164": "+201019086737",
I/flutter (27514): ║         "cooldownSeconds": 30
I/flutter (27514): ║    }
I/flutter (27514): ║
I/flutter (27514): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter (27514): onChange -- RegisterBloc, Change { currentState: RegisterLoadingState(, , +201019086737, , , ), nextState: RegisterErrorState(, , +201019086737, , , , defaultError) }