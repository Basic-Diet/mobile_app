I/flutter ( 2500): ╔╣ Request ║ GET
I/flutter ( 2500): ║  https://basicdiet145.onrender.com/api/subscriptions/meal-planner-menu?lang=ar
I/flutter ( 2500): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
E/libEGL  ( 2500): called unimplemented OpenGL ES API
D/EGL_emulation( 2500): app_time_stats: avg=2.56ms min=1.05ms max=45.58ms count=60
I/flutter ( 2500):
I/flutter ( 2500): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 1216 ms
I/flutter ( 2500): ║  https://basicdiet145.onrender.com/api/subscriptions/meal-planner-menu?lang=ar
I/flutter ( 2500): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 2500): ╔ Headers
I/flutter ( 2500): ╟ x-dns-prefetch-control: [off]
I/flutter ( 2500): ╟ x-render-origin-server: [Render]
I/flutter ( 2500): ╟ date: [Thu, 25 Jun 2026 15:07:37 GMT]
I/flutter ( 2500): ╟ transfer-encoding: [chunked]
I/flutter ( 2500): ╟ origin-agent-cluster: [?1]
I/flutter ( 2500): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 2500): ╟ content-encoding: [gzip]
I/flutter ( 2500): ╟ server: [cloudflare]
I/flutter ( 2500): ╟ x-request-id: [2ce3305a-7030-4844-9ccd-46d5c4f3d446]
I/flutter ( 2500): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 2500): ╟ cf-ray: [a114e1fefab39822-MRS]
I/flutter ( 2500): ╟ etag: [W/"ac46-jsK5C0Jqqw817PwSC/P9dmoNlUU"]
I/flutter ( 2500): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 2500): ╟ content-security-policy:
I/flutter ( 2500): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 2500): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 2500): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 2500): ╟ connection: [keep-alive]
I/flutter ( 2500): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 2500): ╟ referrer-policy: [no-referrer]
I/flutter ( 2500): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 2500): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 2500): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 2500): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 2500): ╟ rndr-id: [4032c32b-a996-41ba]
I/flutter ( 2500): ╟ x-xss-protection: [0]
I/flutter ( 2500): ╟ access-control-allow-credentials: [true]
I/flutter ( 2500): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 2500): ╟ x-download-options: [noopen]
I/flutter ( 2500): ╟ x-content-type-options: [nosniff]
I/flutter ( 2500): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 2500): ╔ Body
I/flutter ( 2500): ║
I/flutter ( 2500): ║    {
I/flutter ( 2500): ║         "status": true,
I/flutter ( 2500): ║         "data": {
I/flutter ( 2500): ║             "builderCatalog": {
I/flutter ( 2500): ║                 "contractVersion": "meal_planner_menu.v3",
I/flutter ( 2500): ║                 "currency": "SAR",
I/flutter ( 2500): ║                 "sections": [
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "section:standard_meal",
I/flutter ( 2500): ║                         "key": "standard_meal",
I/flutter ( 2500): ║                         "type": "configurable_product",
I/flutter ( 2500): ║                         "name": "وجبة عادية",
I/flutter ( 2500): ║                         "nameI18n": {ar: وجبة عادية, en: Standard Meal},
I/flutter ( 2500): ║                         "ui": {cardVariant: standard, layout: vertical_hero_list},
I/flutter ( 2500): ║                         "products": []
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "section:premium_meal",
I/flutter ( 2500): ║                         "key": "premium_meal",
I/flutter ( 2500): ║                         "type": "configurable_product",
I/flutter ( 2500): ║                         "name": "وجبة مميزة",
I/flutter ( 2500): ║                         "nameI18n": {ar: وجبة مميزة, en: Premium Meal},
I/flutter ( 2500): ║                         "ui": {cardVariant: premium, layout: vertical_hero_list},
I/flutter ( 2500): ║                         "products": []
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "section:sandwich",
I/flutter ( 2500): ║                         "key": "sandwich",
I/flutter ( 2500): ║                         "type": "product_list",
I/flutter ( 2500): ║                         "name": "ساندويتشات",
I/flutter ( 2500): ║                         "nameI18n": {ar: ساندويتشات, en: Sandwiches},
I/flutter ( 2500): ║                         "ui": {cardVariant: sandwich_card, layout: vertical_compact_cards},
I/flutter ( 2500): ║                         "products": [
I/flutter ( 2500): ║                            {
I/flutter ( 2500): ║                                 "id": "6a35526a3f6b8e45eac5bb18",
I/flutter ( 2500): ║                                 "key": "turkey_cold_sandwich",
I/flutter ( 2500): ║                                 "selectionType": "sandwich",
I/flutter ( 2500): ║                                 "itemType": "cold_sandwich",
I/flutter ( 2500): ║                                 "name": "تركي",
I/flutter ( 2500): ║                                 "nameI18n": {ar: تركي, en: Turkey},
I/flutter ( 2500): ║                                 "description": "",
I/flutter ( 2500): ║                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                 "imageUrl": "",
I/flutter ( 2500): ║                                 "pricing": {model: fixed, basePriceHalala: 1300, extraFeeHalala: 0, currency: SAR},
I/flutter ( 2500): ║                                 "nutrition": {calories: 220, proteinGrams: 0, carbGrams: 0, fatGrams: 0},
I/flutter ( 2500): ║                                 "action": {type: direct_add, requiresBuilder: false},
I/flutter ( 2500): ║                                 "ui": {cardVariant: sandwich_card, cardSize: small, badge: , ctaLabel: , imageRatio: square},
I/flutter ( 2500): ║                                 "optionGroups": []
I/flutter ( 2500): ║                                 "sortOrder": 200
I/flutter ( 2500): ║                            },
I/flutter ( 2500): ║                            {
I/flutter ( 2500): ║                                 "id": "6a35526b3f6b8e45eac5bb1d",
I/flutter ( 2500): ║                                 "key": "boiled_egg_cold_sandwich",
I/flutter ( 2500): ║                                 "selectionType": "sandwich",
I/flutter ( 2500): ║                                 "itemType": "cold_sandwich",
I/flutter ( 2500): ║                                 "name": "بيض مسلوق",
I/flutter ( 2500): ║                                 "nameI18n": {ar: بيض مسلوق, en: Boiled Egg},
I/flutter ( 2500): ║                                 "description": "",
I/flutter ( 2500): ║                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                 "imageUrl": "",
I/flutter ( 2500): ║                                 "pricing": {model: fixed, basePriceHalala: 900, extraFeeHalala: 0, currency: SAR},
I/flutter ( 2500): ║                                 "nutrition": {calories: 160, proteinGrams: 0, carbGrams: 0, fatGrams: 0},
I/flutter ( 2500): ║                                 "action": {type: direct_add, requiresBuilder: false},
I/flutter ( 2500): ║                                 "ui": {cardVariant: sandwich_card, cardSize: small, badge: , ctaLabel: , imageRatio: square},
I/flutter ( 2500): ║                                 "optionGroups": []
I/flutter ( 2500): ║                                 "sortOrder": 210
I/flutter ( 2500): ║                            },
I/flutter ( 2500): ║                            {
I/flutter ( 2500): ║                                 "id": "6a35526c3f6b8e45eac5bb22",
I/flutter ( 2500): ║                                 "key": "tuna_cold_sandwich",
I/flutter ( 2500): ║                                 "selectionType": "sandwich",
I/flutter ( 2500): ║                                 "itemType": "cold_sandwich",
I/flutter ( 2500): ║                                 "name": "تونا",
I/flutter ( 2500): ║                                 "nameI18n": {ar: تونا, en: Tuna},
I/flutter ( 2500): ║                                 "description": "",
I/flutter ( 2500): ║                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                 "imageUrl": "",
I/flutter ( 2500): ║                                 "pricing": {model: fixed, basePriceHalala: 1300, extraFeeHalala: 0, currency: SAR},
I/flutter ( 2500): ║                                 "nutrition": {calories: 200, proteinGrams: 0, carbGrams: 0, fatGrams: 0},
I/flutter ( 2500): ║                                 "action": {type: direct_add, requiresBuilder: false},
I/flutter ( 2500): ║                                 "ui": {cardVariant: sandwich_card, cardSize: small, badge: , ctaLabel: , imageRatio: square},
I/flutter ( 2500): ║                                 "optionGroups": []
I/flutter ( 2500): ║                                 "sortOrder": 220
I/flutter ( 2500): ║                            },
I/flutter ( 2500): ║                            {
I/flutter ( 2500): ║                                 "id": "6a35526d3f6b8e45eac5bb27",
I/flutter ( 2500): ║                                 "key": "scrambled_egg_cold_sandwich"
I/flutter ( 2500): ║                                 "selectionType": "sandwich",
I/flutter ( 2500): ║                                 "itemType": "cold_sandwich",
I/flutter ( 2500): ║                                 "name": "بيض مخفوق",
I/flutter ( 2500): ║                                 "nameI18n": {ar: بيض مخفوق, en: Scrambled Egg},
I/flutter ( 2500): ║                                 "description": "",
I/flutter ( 2500): ║                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                 "imageUrl": "",
I/flutter ( 2500): ║                                 "pricing": {model: fixed, basePriceHalala: 900, extraFeeHalala: 0, currency: SAR},
I/flutter ( 2500): ║                                 "nutrition": {calories: 150, proteinGrams: 0, carbGrams: 0, fatGrams: 0},
I/flutter ( 2500): ║                                 "action": {type: direct_add, requiresBuilder: false},
I/flutter ( 2500): ║                                 "ui": {cardVariant: sandwich_card, cardSize: small, badge: , ctaLabel: , imageRatio: square},
I/flutter ( 2500): ║                                 "optionGroups": []
I/flutter ( 2500): ║                                 "sortOrder": 230
I/flutter ( 2500): ║                            },
I/flutter ( 2500): ║                            {
I/flutter ( 2500): ║                                 "id": "6a35526d3f6b8e45eac5bb2c",
I/flutter ( 2500): ║                                 "key": "classic_halloumi_cold_sandwich"
I/flutter ( 2500): ║                                 "selectionType": "sandwich",
I/flutter ( 2500): ║                                 "itemType": "cold_sandwich",
I/flutter ( 2500): ║                                 "name": "حلوم كلاسيك",
I/flutter ( 2500): ║                                 "nameI18n": {ar: حلوم كلاسيك, en: Classic Halloumi},
I/flutter ( 2500): ║                                 "description": "",
I/flutter ( 2500): ║                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                 "imageUrl": "",
I/flutter ( 2500): ║                                 "pricing": {model: fixed, basePriceHalala: 1100, extraFeeHalala: 0, currency: SAR},
I/flutter ( 2500): ║                                 "nutrition": {calories: 200, proteinGrams: 0, carbGrams: 0, fatGrams: 0},
I/flutter ( 2500): ║                                 "action": {type: direct_add, requiresBuilder: false},
I/flutter ( 2500): ║                                 "ui": {cardVariant: sandwich_card, cardSize: small, badge: , ctaLabel: , imageRatio: square},
I/flutter ( 2500): ║                                 "optionGroups": []
I/flutter ( 2500): ║                                 "sortOrder": 240
I/flutter ( 2500): ║                            },
I/flutter ( 2500): ║                            {
I/flutter ( 2500): ║                                 "id": "6a35526e3f6b8e45eac5bb31",
I/flutter ( 2500): ║                                 "key": "chicken_fajita_cold_sandwich"
I/flutter ( 2500): ║                                 "selectionType": "sandwich",
I/flutter ( 2500): ║                                 "itemType": "cold_sandwich",
I/flutter ( 2500): ║                                 "name": "دجاج فاهيتا",
I/flutter ( 2500): ║                                 "nameI18n": {ar: دجاج فاهيتا, en: Chicken Fajita},
I/flutter ( 2500): ║                                 "description": "",
I/flutter ( 2500): ║                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                 "imageUrl": "",
I/flutter ( 2500): ║                                 "pricing": {model: fixed, basePriceHalala: 1300, extraFeeHalala: 0, currency: SAR},
I/flutter ( 2500): ║                                 "nutrition": {calories: 230, proteinGrams: 0, carbGrams: 0, fatGrams: 0},
I/flutter ( 2500): ║                                 "action": {type: direct_add, requiresBuilder: false},
I/flutter ( 2500): ║                                 "ui": {cardVariant: sandwich_card, cardSize: small, badge: , ctaLabel: , imageRatio: square},
I/flutter ( 2500): ║                                 "optionGroups": []
I/flutter ( 2500): ║                                 "sortOrder": 250
I/flutter ( 2500): ║                            },
I/flutter ( 2500): ║                            {
I/flutter ( 2500): ║                                 "id": "6a35526e3f6b8e45eac5bb36",
I/flutter ( 2500): ║                                 "key": "mexican_chicken_cold_sandwich"
I/flutter ( 2500): ║                                 "selectionType": "sandwich",
I/flutter ( 2500): ║                                 "itemType": "cold_sandwich",
I/flutter ( 2500): ║                                 "name": "دجاج مكسيكي",
I/flutter ( 2500): ║                                 "nameI18n": {ar: دجاج مكسيكي, en: Mexican Chicken},
I/flutter ( 2500): ║                                 "description": "",
I/flutter ( 2500): ║                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                 "imageUrl": "",
I/flutter ( 2500): ║                                 "pricing": {model: fixed, basePriceHalala: 1300, extraFeeHalala: 0, currency: SAR},
I/flutter ( 2500): ║                                 "nutrition": {calories: 260, proteinGrams: 0, carbGrams: 0, fatGrams: 0},
I/flutter ( 2500): ║                                 "action": {type: direct_add, requiresBuilder: false},
I/flutter ( 2500): ║                                 "ui": {cardVariant: sandwich_card, cardSize: small, badge: , ctaLabel: , imageRatio: square},
I/flutter ( 2500): ║                                 "optionGroups": []
I/flutter ( 2500): ║                                 "sortOrder": 260
I/flutter ( 2500): ║                            },
I/flutter ( 2500): ║                            {
I/flutter ( 2500): ║                                 "id": "6a35526f3f6b8e45eac5bb3b",
I/flutter ( 2500): ║                                 "key": "grilled_chicken_cold_sandwich"
I/flutter ( 2500): ║                                 "selectionType": "sandwich",
I/flutter ( 2500): ║                                 "itemType": "cold_sandwich",
I/flutter ( 2500): ║                                 "name": "دجاج مشوي",
I/flutter ( 2500): ║                                 "nameI18n": {ar: دجاج مشوي, en: Grilled Chicken},
I/flutter ( 2500): ║                                 "description": "",
I/flutter ( 2500): ║                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                 "imageUrl": "",
I/flutter ( 2500): ║                                 "pricing": {model: fixed, basePriceHalala: 1300, extraFeeHalala: 0, currency: SAR},
I/flutter ( 2500): ║                                 "nutrition": {calories: 220, proteinGrams: 0, carbGrams: 0, fatGrams: 0},
I/flutter ( 2500): ║                                 "action": {type: direct_add, requiresBuilder: false},
I/flutter ( 2500): ║                                 "ui": {cardVariant: sandwich_card, cardSize: small, badge: , ctaLabel: , imageRatio: square},
I/flutter ( 2500): ║                                 "optionGroups": []
I/flutter ( 2500): ║                                 "sortOrder": 270
I/flutter ( 2500): ║                            }
I/flutter ( 2500): ║                         ]
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "section:premium_large_salad",
I/flutter ( 2500): ║                         "key": "premium_large_salad",
I/flutter ( 2500): ║                         "type": "configurable_product",
I/flutter ( 2500): ║                         "name": "سلطة كبيرة مميزة",
I/flutter ( 2500): ║                         "nameI18n": {ar: سلطة كبيرة مميزة, en: Premium Large Salad},
I/flutter ( 2500): ║                         "ui": {cardVariant: large_salad, layout: vertical_hero_list},
I/flutter ( 2500): ║                         "products": []
I/flutter ( 2500): ║                    }
I/flutter ( 2500): ║                 ],
I/flutter ( 2500): ║                 "rules": {
I/flutter ( 2500): ║                     "version": "meal_planner_rules.v4",
I/flutter ( 2500): ║                     "beef": {proteinFamilyKey: beef, maxSlotsPerDay: 1},
I/flutter ( 2500): ║                     "standardCarbs": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
I/flutter ( 2500): ║                     "premiumCarbs": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
I/flutter ( 2500): ║                     "proteinGroups": [
I/flutter ( 2500): ║                        {
I/flutter ( 2500): ║                             "key": "chicken",
I/flutter ( 2500): ║                             "name": {ar: دجاج, en: Chicken},
I/flutter ( 2500): ║                             "sortOrder": 10
I/flutter ( 2500): ║                        },
I/flutter ( 2500): ║                        {
I/flutter ( 2500): ║                             "key": "beef",
I/flutter ( 2500): ║                             "name": {ar: لحم, en: Beef},
I/flutter ( 2500): ║                             "sortOrder": 20
I/flutter ( 2500): ║                        },
I/flutter ( 2500): ║                        {
I/flutter ( 2500): ║                             "key": "fish",
I/flutter ( 2500): ║                             "name": {ar: سمك, en: Fish},
I/flutter ( 2500): ║                             "sortOrder": 30
I/flutter ( 2500): ║                        },
I/flutter ( 2500): ║                        {
I/flutter ( 2500): ║                             "key": "eggs",
I/flutter ( 2500): ║                             "name": {ar: بيض, en: Eggs},
I/flutter ( 2500): ║                             "sortOrder": 40
I/flutter ( 2500): ║                        },
I/flutter ( 2500): ║                        {
I/flutter ( 2500): ║                             "key": "premium",
I/flutter ( 2500): ║                             "name": {ar: بريميوم, en: Premium},
I/flutter ( 2500): ║                             "sortOrder": 50
I/flutter ( 2500): ║                        },
I/flutter ( 2500): ║                        {
I/flutter ( 2500): ║                             "key": "other",
I/flutter ( 2500): ║                             "name": {ar: أخرى, en: Other},
I/flutter ( 2500): ║                             "sortOrder": 60
I/flutter ( 2500): ║                        }
I/flutter ( 2500): ║                     ],
I/flutter ( 2500): ║                     "premiumLargeSalad": {
I/flutter ( 2500): ║                         "premiumKey": "premium_large_salad",
I/flutter ( 2500): ║                         "presetKey": "large_salad",
I/flutter ( 2500): ║                         "extraFeeHalala": 2900,
I/flutter ( 2500): ║                         "groups": [
I/flutter ( 2500): ║                          {key: leafy_greens, minSelect: 0, maxSelect: 2},
I/flutter ( 2500): ║                          {key: vegetables, minSelect: 0, maxSelect: 19},
I/flutter ( 2500): ║                          {key: protein, minSelect: 1, maxSelect: 1},
I/flutter ( 2500): ║                          {key: cheese_nuts, minSelect: 0, maxSelect: 2},
I/flutter ( 2500): ║                          {key: fruits, minSelect: 0, maxSelect: 4},
I/flutter ( 2500): ║                          {key: sauce, minSelect: 1, maxSelect: 1}
I/flutter ( 2500): ║                         ],
I/flutter ( 2500): ║                         "allowedProteinKeys": [
I/flutter ( 2500): ║                                 boiled_eggs,
I/flutter ( 2500): ║                                 tuna,
I/flutter ( 2500): ║                                 chicken_fajita,
I/flutter ( 2500): ║                                 spicy_chicken,
I/flutter ( 2500): ║                                 italian_spiced_chicken,
I/flutter ( 2500): ║                                 chicken_tikka,
I/flutter ( 2500): ║                                 asian_chicken,
I/flutter ( 2500): ║                                 chicken_strips,
I/flutter ( 2500): ║                                 grilled_chicken,
I/flutter ( 2500): ║                                 mexican_chicken,
I/flutter ( 2500): ║                                 fish_fillet
I/flutter ( 2500): ║                         ],
I/flutter ( 2500): ║                         "excludedGroupKeys": [extra_protein_50g]
I/flutter ( 2500): ║                    }
I/flutter ( 2500): ║                }
I/flutter ( 2500): ║                 "catalogHash": "sha256:031f7ecfdd71f53bfefaa16b737277c20e7ef8989ccca890d376e55e7e4668e3"
I/flutter ( 2500): ║                 "publishedVersionId": null
I/flutter ( 2500): ║            }
I/flutter ( 2500): ║             "addonCatalog": {
I/flutter ( 2500): ║                 "items": [
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a390c51869cd5426b46c32d",
I/flutter ( 2500): ║                         "name": "حلوى صحية",
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "priceHalala": 1500,
I/flutter ( 2500): ║                         "priceSar": 15,
I/flutter ( 2500): ║                         "priceLabel": "15 SAR",
I/flutter ( 2500): ║                         "kind": "item",
I/flutter ( 2500): ║                         "category": "snack",
I/flutter ( 2500): ║                         "type": "one_time",
I/flutter ( 2500): ║                         "billingMode": "flat_once",
I/flutter ( 2500): ║                         "pricingModel": "one_time",
I/flutter ( 2500): ║                         "billingUnit": "item",
I/flutter ( 2500): ║                         "ui": {title: حلوى صحية, subtitle: , ctaLabel: أضف, badge: إضافة مرة واحدة}
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a3552ac3f6b8e45eac5bcc2",
I/flutter ( 2500): ║                         "name": "صندوق سناك",
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "priceHalala": 1500,
I/flutter ( 2500): ║                         "priceSar": 15,
I/flutter ( 2500): ║                         "priceLabel": "15 SAR",
I/flutter ( 2500): ║                         "kind": "item",
I/flutter ( 2500): ║                         "category": "snack",
I/flutter ( 2500): ║                         "type": "one_time",
I/flutter ( 2500): ║                         "billingMode": "flat_once",
I/flutter ( 2500): ║                         "pricingModel": "one_time",
I/flutter ( 2500): ║                         "billingUnit": "item",
I/flutter ( 2500): ║                         "ui": {title: صندوق سناك, subtitle: , ctaLabel: أضف, badge: إضافة مرة واحدة}
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a3552aa3f6b8e45eac5bcbc",
I/flutter ( 2500): ║                         "name": "سناك بروتين",
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "priceHalala": 1500,
I/flutter ( 2500): ║                         "priceSar": 15,
I/flutter ( 2500): ║                         "priceLabel": "15 SAR",
I/flutter ( 2500): ║                         "kind": "item",
I/flutter ( 2500): ║                         "category": "snack",
I/flutter ( 2500): ║                         "type": "one_time",
I/flutter ( 2500): ║                         "billingMode": "flat_once",
I/flutter ( 2500): ║                         "pricingModel": "one_time",
I/flutter ( 2500): ║                         "billingUnit": "item",
I/flutter ( 2500): ║                         "ui": {title: سناك بروتين, subtitle: , ctaLabel: أضف, badge: إضافة مرة واحدة}
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a3552aa3f6b8e45eac5bcb9",
I/flutter ( 2500): ║                         "name": "عصير مانجو",
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "priceHalala": 1000,
I/flutter ( 2500): ║                         "priceSar": 10,
I/flutter ( 2500): ║                         "priceLabel": "10 SAR",
I/flutter ( 2500): ║                         "kind": "item",
I/flutter ( 2500): ║                         "category": "juice",
I/flutter ( 2500): ║                         "type": "one_time",
I/flutter ( 2500): ║                         "billingMode": "flat_once",
I/flutter ( 2500): ║                         "pricingModel": "one_time",
I/flutter ( 2500): ║                         "billingUnit": "item",
I/flutter ( 2500): ║                         "ui": {title: عصير مانجو, subtitle: , ctaLabel: أضف, badge: إضافة مرة واحدة}
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a3552aa3f6b8e45eac5bcb6",
I/flutter ( 2500): ║                         "name": "عصير تفاح",
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "priceHalala": 1000,
I/flutter ( 2500): ║                         "priceSar": 10,
I/flutter ( 2500): ║                         "priceLabel": "10 SAR",
I/flutter ( 2500): ║                         "kind": "item",
I/flutter ( 2500): ║                         "category": "juice",
I/flutter ( 2500): ║                         "type": "one_time",
I/flutter ( 2500): ║                         "billingMode": "flat_once",
I/flutter ( 2500): ║                         "pricingModel": "one_time",
I/flutter ( 2500): ║                         "billingUnit": "item",
I/flutter ( 2500): ║                         "ui": {title: عصير تفاح, subtitle: , ctaLabel: أضف, badge: إضافة مرة واحدة}
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a3552a93f6b8e45eac5bcb3",
I/flutter ( 2500): ║                         "name": "عصير برتقال",
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "priceHalala": 1000,
I/flutter ( 2500): ║                         "priceSar": 10,
I/flutter ( 2500): ║                         "priceLabel": "10 SAR",
I/flutter ( 2500): ║                         "kind": "item",
I/flutter ( 2500): ║                         "category": "juice",
I/flutter ( 2500): ║                         "type": "one_time",
I/flutter ( 2500): ║                         "billingMode": "flat_once",
I/flutter ( 2500): ║                         "pricingModel": "one_time",
I/flutter ( 2500): ║                         "billingUnit": "item",
I/flutter ( 2500): ║                         "ui": {title: عصير برتقال, subtitle: , ctaLabel: أضف, badge: إضافة مرة واحدة}
I/flutter ( 2500): ║                    }
I/flutter ( 2500): ║                 ],
I/flutter ( 2500): ║                 "byCategory": {
I/flutter ( 2500): ║                     "snack": [
I/flutter ( 2500): ║                        {
I/flutter ( 2500): ║                             "id": "6a390c51869cd5426b46c32d",
I/flutter ( 2500): ║                             "name": "حلوى صحية",
I/flutter ( 2500): ║                             "description": "",
I/flutter ( 2500): ║                             "imageUrl": "",
I/flutter ( 2500): ║                             "currency": "SAR",
I/flutter ( 2500): ║                             "priceHalala": 1500,
I/flutter ( 2500): ║                             "priceSar": 15,
I/flutter ( 2500): ║                             "priceLabel": "15 SAR",
I/flutter ( 2500): ║                             "kind": "item",
I/flutter ( 2500): ║                             "category": "snack",
I/flutter ( 2500): ║                             "type": "one_time",
I/flutter ( 2500): ║                             "billingMode": "flat_once",
I/flutter ( 2500): ║                             "pricingModel": "one_time",
I/flutter ( 2500): ║                             "billingUnit": "item",
I/flutter ( 2500): ║                             "ui": {title: حلوى صحية, subtitle: , ctaLabel: أضف, badge: إضافة مرة واحدة}
I/flutter ( 2500): ║                        },
I/flutter ( 2500): ║                        {
I/flutter ( 2500): ║                             "id": "6a3552ac3f6b8e45eac5bcc2",
I/flutter ( 2500): ║                             "name": "صندوق سناك",
I/flutter ( 2500): ║                             "description": "",
I/flutter ( 2500): ║                             "imageUrl": "",
I/flutter ( 2500): ║                             "currency": "SAR",
I/flutter ( 2500): ║                             "priceHalala": 1500,
I/flutter ( 2500): ║                             "priceSar": 15,
I/flutter ( 2500): ║                             "priceLabel": "15 SAR",
I/flutter ( 2500): ║                             "kind": "item",
I/flutter ( 2500): ║                             "category": "snack",
I/flutter ( 2500): ║                             "type": "one_time",
I/flutter ( 2500): ║                             "billingMode": "flat_once",
I/flutter ( 2500): ║                             "pricingModel": "one_time",
I/flutter ( 2500): ║                             "billingUnit": "item",
I/flutter ( 2500): ║                             "ui": {title: صندوق سناك, subtitle: , ctaLabel: أضف, badge: إضافة مرة واحدة}
I/flutter ( 2500): ║                        },
I/flutter ( 2500): ║                        {
I/flutter ( 2500): ║                             "id": "6a3552aa3f6b8e45eac5bcbc",
I/flutter ( 2500): ║                             "name": "سناك بروتين",
I/flutter ( 2500): ║                             "description": "",
I/flutter ( 2500): ║                             "imageUrl": "",
I/flutter ( 2500): ║                             "currency": "SAR",
I/flutter ( 2500): ║                             "priceHalala": 1500,
I/flutter ( 2500): ║                             "priceSar": 15,
I/flutter ( 2500): ║                             "priceLabel": "15 SAR",
I/flutter ( 2500): ║                             "kind": "item",
I/flutter ( 2500): ║                             "category": "snack",
I/flutter ( 2500): ║                             "type": "one_time",
I/flutter ( 2500): ║                             "billingMode": "flat_once",
I/flutter ( 2500): ║                             "pricingModel": "one_time",
I/flutter ( 2500): ║                             "billingUnit": "item",
I/flutter ( 2500): ║                             "ui": {title: سناك بروتين, subtitle: , ctaLabel: أضف, badge: إضافة مرة واحدة}
I/flutter ( 2500): ║                        }
I/flutter ( 2500): ║                     ],
I/flutter ( 2500): ║                     "juice": [
I/flutter ( 2500): ║                        {
I/flutter ( 2500): ║                             "id": "6a3552aa3f6b8e45eac5bcb9",
I/flutter ( 2500): ║                             "name": "عصير مانجو",
I/flutter ( 2500): ║                             "description": "",
I/flutter ( 2500): ║                             "imageUrl": "",
I/flutter ( 2500): ║                             "currency": "SAR",
I/flutter ( 2500): ║                             "priceHalala": 1000,
I/flutter ( 2500): ║                             "priceSar": 10,
I/flutter ( 2500): ║                             "priceLabel": "10 SAR",
I/flutter ( 2500): ║                             "kind": "item",
I/flutter ( 2500): ║                             "category": "juice",
I/flutter ( 2500): ║                             "type": "one_time",
I/flutter ( 2500): ║                             "billingMode": "flat_once",
I/flutter ( 2500): ║                             "pricingModel": "one_time",
I/flutter ( 2500): ║                             "billingUnit": "item",
I/flutter ( 2500): ║                             "ui": {title: عصير مانجو, subtitle: , ctaLabel: أضف, badge: إضافة مرة واحدة}
I/flutter ( 2500): ║                        },
I/flutter ( 2500): ║                        {
I/flutter ( 2500): ║                             "id": "6a3552aa3f6b8e45eac5bcb6",
I/flutter ( 2500): ║                             "name": "عصير تفاح",
I/flutter ( 2500): ║                             "description": "",
I/flutter ( 2500): ║                             "imageUrl": "",
I/flutter ( 2500): ║                             "currency": "SAR",
I/flutter ( 2500): ║                             "priceHalala": 1000,
I/flutter ( 2500): ║                             "priceSar": 10,
I/flutter ( 2500): ║                             "priceLabel": "10 SAR",
I/flutter ( 2500): ║                             "kind": "item",
I/flutter ( 2500): ║                             "category": "juice",
I/flutter ( 2500): ║                             "type": "one_time",
I/flutter ( 2500): ║                             "billingMode": "flat_once",
I/flutter ( 2500): ║                             "pricingModel": "one_time",
I/flutter ( 2500): ║                             "billingUnit": "item",
I/flutter ( 2500): ║                             "ui": {title: عصير تفاح, subtitle: , ctaLabel: أضف, badge: إضافة مرة واحدة}
I/flutter ( 2500): ║                        },
I/flutter ( 2500): ║                        {
I/flutter ( 2500): ║                             "id": "6a3552a93f6b8e45eac5bcb3",
I/flutter ( 2500): ║                             "name": "عصير برتقال",
I/flutter ( 2500): ║                             "description": "",
I/flutter ( 2500): ║                             "imageUrl": "",
I/flutter ( 2500): ║                             "currency": "SAR",
I/flutter ( 2500): ║                             "priceHalala": 1000,
I/flutter ( 2500): ║                             "priceSar": 10,
I/flutter ( 2500): ║                             "priceLabel": "10 SAR",
I/flutter ( 2500): ║                             "kind": "item",
I/flutter ( 2500): ║                             "category": "juice",
I/flutter ( 2500): ║                             "type": "one_time",
I/flutter ( 2500): ║                             "billingMode": "flat_once",
I/flutter ( 2500): ║                             "pricingModel": "one_time",
I/flutter ( 2500): ║                             "billingUnit": "item",
I/flutter ( 2500): ║                             "ui": {title: عصير برتقال, subtitle: , ctaLabel: أضف, badge: إضافة مرة واحدة}
I/flutter ( 2500): ║                        }
I/flutter ( 2500): ║                     ]
I/flutter ( 2500): ║                }
I/flutter ( 2500): ║                 "totalCount": 6
I/flutter ( 2500): ║            }
I/flutter ( 2500): ║             "plannerCatalog": {
I/flutter ( 2500): ║                 "contractVersion": "meal_planner_menu.v3",
I/flutter ( 2500): ║                 "currency": "SAR",
I/flutter ( 2500): ║                 "sections": [
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "section:standard_meal",
I/flutter ( 2500): ║                         "key": "standard_meal",
I/flutter ( 2500): ║                         "type": "configurable_product",
I/flutter ( 2500): ║                         "name": "وجبة عادية",
I/flutter ( 2500): ║                         "nameI18n": {ar: وجبة عادية, en: Standard Meal},
I/flutter ( 2500): ║                         "ui": {cardVariant: standard, layout: vertical_hero_list},
I/flutter ( 2500): ║                         "products": []
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "section:premium_meal",
I/flutter ( 2500): ║                         "key": "premium_meal",
I/flutter ( 2500): ║                         "type": "configurable_product",
I/flutter ( 2500): ║                         "name": "وجبة مميزة",
I/flutter ( 2500): ║                         "nameI18n": {ar: وجبة مميزة, en: Premium Meal},
I/flutter ( 2500): ║                         "ui": {cardVariant: premium, layout: vertical_hero_list},
I/flutter ( 2500): ║                         "products": []
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "section:sandwich",
I/flutter ( 2500): ║                         "key": "sandwich",
I/flutter ( 2500): ║                         "type": "product_list",
I/flutter ( 2500): ║                         "name": "ساندويتشات",
I/flutter ( 2500): ║                         "nameI18n": {ar: ساندويتشات, en: Sandwiches},
I/flutter ( 2500): ║                         "ui": {cardVariant: sandwich_card, layout: vertical_compact_cards},
I/flutter ( 2500): ║                         "products": [
I/flutter ( 2500): ║                            {
I/flutter ( 2500): ║                                 "id": "6a35526a3f6b8e45eac5bb18",
I/flutter ( 2500): ║                                 "key": "turkey_cold_sandwich",
I/flutter ( 2500): ║                                 "selectionType": "sandwich",
I/flutter ( 2500): ║                                 "itemType": "cold_sandwich",
I/flutter ( 2500): ║                                 "name": "تركي",
I/flutter ( 2500): ║                                 "nameI18n": {ar: تركي, en: Turkey},
I/flutter ( 2500): ║                                 "description": "",
I/flutter ( 2500): ║                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                 "imageUrl": "",
I/flutter ( 2500): ║                                 "pricing": {model: fixed, basePriceHalala: 1300, extraFeeHalala: 0, currency: SAR},
I/flutter ( 2500): ║                                 "nutrition": {calories: 220, proteinGrams: 0, carbGrams: 0, fatGrams: 0},
I/flutter ( 2500): ║                                 "action": {type: direct_add, requiresBuilder: false},
I/flutter ( 2500): ║                                 "ui": {cardVariant: sandwich_card, cardSize: small, badge: , ctaLabel: , imageRatio: square},
I/flutter ( 2500): ║                                 "optionGroups": []
I/flutter ( 2500): ║                                 "sortOrder": 200
I/flutter ( 2500): ║                            },
I/flutter ( 2500): ║                            {
I/flutter ( 2500): ║                                 "id": "6a35526b3f6b8e45eac5bb1d",
I/flutter ( 2500): ║                                 "key": "boiled_egg_cold_sandwich",
I/flutter ( 2500): ║                                 "selectionType": "sandwich",
I/flutter ( 2500): ║                                 "itemType": "cold_sandwich",
I/flutter ( 2500): ║                                 "name": "بيض مسلوق",
I/flutter ( 2500): ║                                 "nameI18n": {ar: بيض مسلوق, en: Boiled Egg},
I/flutter ( 2500): ║                                 "description": "",
I/flutter ( 2500): ║                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                 "imageUrl": "",
I/flutter ( 2500): ║                                 "pricing": {model: fixed, basePriceHalala: 900, extraFeeHalala: 0, currency: SAR},
I/flutter ( 2500): ║                                 "nutrition": {calories: 160, proteinGrams: 0, carbGrams: 0, fatGrams: 0},
I/flutter ( 2500): ║                                 "action": {type: direct_add, requiresBuilder: false},
I/flutter ( 2500): ║                                 "ui": {cardVariant: sandwich_card, cardSize: small, badge: , ctaLabel: , imageRatio: square},
I/flutter ( 2500): ║                                 "optionGroups": []
I/flutter ( 2500): ║                                 "sortOrder": 210
I/flutter ( 2500): ║                            },
I/flutter ( 2500): ║                            {
I/flutter ( 2500): ║                                 "id": "6a35526c3f6b8e45eac5bb22",
I/flutter ( 2500): ║                                 "key": "tuna_cold_sandwich",
I/flutter ( 2500): ║                                 "selectionType": "sandwich",
I/flutter ( 2500): ║                                 "itemType": "cold_sandwich",
I/flutter ( 2500): ║                                 "name": "تونا",
I/flutter ( 2500): ║                                 "nameI18n": {ar: تونا, en: Tuna},
I/flutter ( 2500): ║                                 "description": "",
I/flutter ( 2500): ║                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                 "imageUrl": "",
I/flutter ( 2500): ║                                 "pricing": {model: fixed, basePriceHalala: 1300, extraFeeHalala: 0, currency: SAR},
I/flutter ( 2500): ║                                 "nutrition": {calories: 200, proteinGrams: 0, carbGrams: 0, fatGrams: 0},
I/flutter ( 2500): ║                                 "action": {type: direct_add, requiresBuilder: false},
I/flutter ( 2500): ║                                 "ui": {cardVariant: sandwich_card, cardSize: small, badge: , ctaLabel: , imageRatio: square},
I/flutter ( 2500): ║                                 "optionGroups": []
I/flutter ( 2500): ║                                 "sortOrder": 220
I/flutter ( 2500): ║                            },
I/flutter ( 2500): ║                            {
I/flutter ( 2500): ║                                 "id": "6a35526d3f6b8e45eac5bb27",
I/flutter ( 2500): ║                                 "key": "scrambled_egg_cold_sandwich"
I/flutter ( 2500): ║                                 "selectionType": "sandwich",
I/flutter ( 2500): ║                                 "itemType": "cold_sandwich",
I/flutter ( 2500): ║                                 "name": "بيض مخفوق",
I/flutter ( 2500): ║                                 "nameI18n": {ar: بيض مخفوق, en: Scrambled Egg},
I/flutter ( 2500): ║                                 "description": "",
I/flutter ( 2500): ║                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                 "imageUrl": "",
I/flutter ( 2500): ║                                 "pricing": {model: fixed, basePriceHalala: 900, extraFeeHalala: 0, currency: SAR},
I/flutter ( 2500): ║                                 "nutrition": {calories: 150, proteinGrams: 0, carbGrams: 0, fatGrams: 0},
I/flutter ( 2500): ║                                 "action": {type: direct_add, requiresBuilder: false},
I/flutter ( 2500): ║                                 "ui": {cardVariant: sandwich_card, cardSize: small, badge: , ctaLabel: , imageRatio: square},
I/flutter ( 2500): ║                                 "optionGroups": []
I/flutter ( 2500): ║                                 "sortOrder": 230
I/flutter ( 2500): ║                            },
I/flutter ( 2500): ║                            {
I/flutter ( 2500): ║                                 "id": "6a35526d3f6b8e45eac5bb2c",
I/flutter ( 2500): ║                                 "key": "classic_halloumi_cold_sandwich"
I/flutter ( 2500): ║                                 "selectionType": "sandwich",
I/flutter ( 2500): ║                                 "itemType": "cold_sandwich",
I/flutter ( 2500): ║                                 "name": "حلوم كلاسيك",
I/flutter ( 2500): ║                                 "nameI18n": {ar: حلوم كلاسيك, en: Classic Halloumi},
I/flutter ( 2500): ║                                 "description": "",
I/flutter ( 2500): ║                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                 "imageUrl": "",
I/flutter ( 2500): ║                                 "pricing": {model: fixed, basePriceHalala: 1100, extraFeeHalala: 0, currency: SAR},
I/flutter ( 2500): ║                                 "nutrition": {calories: 200, proteinGrams: 0, carbGrams: 0, fatGrams: 0},
I/flutter ( 2500): ║                                 "action": {type: direct_add, requiresBuilder: false},
I/flutter ( 2500): ║                                 "ui": {cardVariant: sandwich_card, cardSize: small, badge: , ctaLabel: , imageRatio: square},
I/flutter ( 2500): ║                                 "optionGroups": []
I/flutter ( 2500): ║                                 "sortOrder": 240
I/flutter ( 2500): ║                            },
I/flutter ( 2500): ║                            {
I/flutter ( 2500): ║                                 "id": "6a35526e3f6b8e45eac5bb31",
I/flutter ( 2500): ║                                 "key": "chicken_fajita_cold_sandwich"
I/flutter ( 2500): ║                                 "selectionType": "sandwich",
I/flutter ( 2500): ║                                 "itemType": "cold_sandwich",
I/flutter ( 2500): ║                                 "name": "دجاج فاهيتا",
I/flutter ( 2500): ║                                 "nameI18n": {ar: دجاج فاهيتا, en: Chicken Fajita},
I/flutter ( 2500): ║                                 "description": "",
I/flutter ( 2500): ║                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                 "imageUrl": "",
I/flutter ( 2500): ║                                 "pricing": {model: fixed, basePriceHalala: 1300, extraFeeHalala: 0, currency: SAR},
I/flutter ( 2500): ║                                 "nutrition": {calories: 230, proteinGrams: 0, carbGrams: 0, fatGrams: 0},
I/flutter ( 2500): ║                                 "action": {type: direct_add, requiresBuilder: false},
I/flutter ( 2500): ║                                 "ui": {cardVariant: sandwich_card, cardSize: small, badge: , ctaLabel: , imageRatio: square},
I/flutter ( 2500): ║                                 "optionGroups": []
I/flutter ( 2500): ║                                 "sortOrder": 250
I/flutter ( 2500): ║                            },
I/flutter ( 2500): ║                            {
I/flutter ( 2500): ║                                 "id": "6a35526e3f6b8e45eac5bb36",
I/flutter ( 2500): ║                                 "key": "mexican_chicken_cold_sandwich"
I/flutter ( 2500): ║                                 "selectionType": "sandwich",
I/flutter ( 2500): ║                                 "itemType": "cold_sandwich",
I/flutter ( 2500): ║                                 "name": "دجاج مكسيكي",
I/flutter ( 2500): ║                                 "nameI18n": {ar: دجاج مكسيكي, en: Mexican Chicken},
I/flutter ( 2500): ║                                 "description": "",
I/flutter ( 2500): ║                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                 "imageUrl": "",
I/flutter ( 2500): ║                                 "pricing": {model: fixed, basePriceHalala: 1300, extraFeeHalala: 0, currency: SAR},
I/flutter ( 2500): ║                                 "nutrition": {calories: 260, proteinGrams: 0, carbGrams: 0, fatGrams: 0},
I/flutter ( 2500): ║                                 "action": {type: direct_add, requiresBuilder: false},
I/flutter ( 2500): ║                                 "ui": {cardVariant: sandwich_card, cardSize: small, badge: , ctaLabel: , imageRatio: square},
I/flutter ( 2500): ║                                 "optionGroups": []
I/flutter ( 2500): ║                                 "sortOrder": 260
I/flutter ( 2500): ║                            },
I/flutter ( 2500): ║                            {
I/flutter ( 2500): ║                                 "id": "6a35526f3f6b8e45eac5bb3b",
I/flutter ( 2500): ║                                 "key": "grilled_chicken_cold_sandwich"
I/flutter ( 2500): ║                                 "selectionType": "sandwich",
I/flutter ( 2500): ║                                 "itemType": "cold_sandwich",
I/flutter ( 2500): ║                                 "name": "دجاج مشوي",
I/flutter ( 2500): ║                                 "nameI18n": {ar: دجاج مشوي, en: Grilled Chicken},
I/flutter ( 2500): ║                                 "description": "",
I/flutter ( 2500): ║                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                 "imageUrl": "",
I/flutter ( 2500): ║                                 "pricing": {model: fixed, basePriceHalala: 1300, extraFeeHalala: 0, currency: SAR},
I/flutter ( 2500): ║                                 "nutrition": {calories: 220, proteinGrams: 0, carbGrams: 0, fatGrams: 0},
I/flutter ( 2500): ║                                 "action": {type: direct_add, requiresBuilder: false},
I/flutter ( 2500): ║                                 "ui": {cardVariant: sandwich_card, cardSize: small, badge: , ctaLabel: , imageRatio: square},
I/flutter ( 2500): ║                                 "optionGroups": []
I/flutter ( 2500): ║                                 "sortOrder": 270
I/flutter ( 2500): ║                            }
I/flutter ( 2500): ║                         ]
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "section:premium_large_salad",
I/flutter ( 2500): ║                         "key": "premium_large_salad",
I/flutter ( 2500): ║                         "type": "configurable_product",
I/flutter ( 2500): ║                         "name": "سلطة كبيرة مميزة",
I/flutter ( 2500): ║                         "nameI18n": {ar: سلطة كبيرة مميزة, en: Premium Large Salad},
I/flutter ( 2500): ║                         "ui": {cardVariant: large_salad, layout: vertical_hero_list},
I/flutter ( 2500): ║                         "products": []
I/flutter ( 2500): ║                    }
I/flutter ( 2500): ║                 ],
I/flutter ( 2500): ║                 "rules": {
I/flutter ( 2500): ║                     "version": "meal_planner_rules.v4",
I/flutter ( 2500): ║                     "beef": {proteinFamilyKey: beef, maxSlotsPerDay: 1},
I/flutter ( 2500): ║                     "standardCarbs": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
I/flutter ( 2500): ║                     "premiumCarbs": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
I/flutter ( 2500): ║                     "proteinGroups": [
I/flutter ( 2500): ║                        {
I/flutter ( 2500): ║                             "key": "chicken",
I/flutter ( 2500): ║                             "name": {ar: دجاج, en: Chicken},
I/flutter ( 2500): ║                             "sortOrder": 10
I/flutter ( 2500): ║                        },
I/flutter ( 2500): ║                        {
I/flutter ( 2500): ║                             "key": "beef",
I/flutter ( 2500): ║                             "name": {ar: لحم, en: Beef},
I/flutter ( 2500): ║                             "sortOrder": 20
I/flutter ( 2500): ║                        },
I/flutter ( 2500): ║                        {
I/flutter ( 2500): ║                             "key": "fish",
I/flutter ( 2500): ║                             "name": {ar: سمك, en: Fish},
I/flutter ( 2500): ║                             "sortOrder": 30
I/flutter ( 2500): ║                        },
I/flutter ( 2500): ║                        {
I/flutter ( 2500): ║                             "key": "eggs",
I/flutter ( 2500): ║                             "name": {ar: بيض, en: Eggs},
I/flutter ( 2500): ║                             "sortOrder": 40
I/flutter ( 2500): ║                        },
I/flutter ( 2500): ║                        {
I/flutter ( 2500): ║                             "key": "premium",
I/flutter ( 2500): ║                             "name": {ar: بريميوم, en: Premium},
I/flutter ( 2500): ║                             "sortOrder": 50
I/flutter ( 2500): ║                        },
I/flutter ( 2500): ║                        {
I/flutter ( 2500): ║                             "key": "other",
I/flutter ( 2500): ║                             "name": {ar: أخرى, en: Other},
I/flutter ( 2500): ║                             "sortOrder": 60
I/flutter ( 2500): ║                        }
I/flutter ( 2500): ║                     ],
I/flutter ( 2500): ║                     "premiumLargeSalad": {
I/flutter ( 2500): ║                         "premiumKey": "premium_large_salad",
I/flutter ( 2500): ║                         "presetKey": "large_salad",
I/flutter ( 2500): ║                         "extraFeeHalala": 2900,
I/flutter ( 2500): ║                         "groups": [
I/flutter ( 2500): ║                          {key: leafy_greens, minSelect: 0, maxSelect: 2},
I/flutter ( 2500): ║                          {key: vegetables, minSelect: 0, maxSelect: 19},
I/flutter ( 2500): ║                          {key: protein, minSelect: 1, maxSelect: 1},
I/flutter ( 2500): ║                          {key: cheese_nuts, minSelect: 0, maxSelect: 2},
I/flutter ( 2500): ║                          {key: fruits, minSelect: 0, maxSelect: 4},
I/flutter ( 2500): ║                          {key: sauce, minSelect: 1, maxSelect: 1}
I/flutter ( 2500): ║                         ],
I/flutter ( 2500): ║                         "allowedProteinKeys": [
I/flutter ( 2500): ║                                 boiled_eggs,
I/flutter ( 2500): ║                                 tuna,
I/flutter ( 2500): ║                                 chicken_fajita,
I/flutter ( 2500): ║                                 spicy_chicken,
I/flutter ( 2500): ║                                 italian_spiced_chicken,
I/flutter ( 2500): ║                                 chicken_tikka,
I/flutter ( 2500): ║                                 asian_chicken,
I/flutter ( 2500): ║                                 chicken_strips,
I/flutter ( 2500): ║                                 grilled_chicken,
I/flutter ( 2500): ║                                 mexican_chicken,
I/flutter ( 2500): ║                                 fish_fillet
I/flutter ( 2500): ║                         ],
I/flutter ( 2500): ║                         "excludedGroupKeys": [extra_protein_50g]
I/flutter ( 2500): ║                    }
I/flutter ( 2500): ║                }
I/flutter ( 2500): ║                 "catalogHash": "sha256:031f7ecfdd71f53bfefaa16b737277c20e7ef8989ccca890d376e55e7e4668e3"
I/flutter ( 2500): ║                 "publishedVersionId": null
I/flutter ( 2500): ║            }
I/flutter ( 2500): ║             "builderCatalogV2": {
I/flutter ( 2500): ║                 "catalogVersion": "meal_planner_menu.v2",
I/flutter ( 2500): ║                 "currency": "SAR",
I/flutter ( 2500): ║                 "sections": [
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "section:standard_meal",
I/flutter ( 2500): ║                         "key": "standard_meal",
I/flutter ( 2500): ║                         "type": "meal_builder",
I/flutter ( 2500): ║                         "name": "وجبة عادية",
I/flutter ( 2500): ║                         "ui": {cardVariant: standard},
I/flutter ( 2500): ║                         "products": [
I/flutter ( 2500): ║                            {
I/flutter ( 2500): ║                                 "id": "virtual:standard_meal",
I/flutter ( 2500): ║                                 "key": "standard_meal",
I/flutter ( 2500): ║                                 "type": "virtual_builder_product",
I/flutter ( 2500): ║                                 "isVirtual": true,
I/flutter ( 2500): ║                                 "selectionType": "standard_meal",
I/flutter ( 2500): ║                                 "ui": {cardVariant: standard, cardSize: medium, badge: , ctaLabel: , imageRatio: square},
I/flutter ( 2500): ║                                 "optionGroups": [
I/flutter ( 2500): ║                                    {
I/flutter ( 2500): ║                                         "id": "6a3551ae3f6b8e45eac5b5e9"
I/flutter ( 2500): ║                                         "groupId": "6a3551ae3f6b8e45eac5b5e9"
I/flutter ( 2500): ║                                         "key": "protein",
I/flutter ( 2500): ║                                         "sourceKey": "proteins",
I/flutter ( 2500): ║                                         "name": "بروتينات",
I/flutter ( 2500): ║                                         "nameI18n": {ar: بروتينات, en: Proteins},
I/flutter ( 2500): ║                                         "minSelections": 1,
I/flutter ( 2500): ║                                         "maxSelections": 1,
I/flutter ( 2500): ║                                         "isRequired": true,
I/flutter ( 2500): ║                                         "sortOrder": 10,
I/flutter ( 2500): ║                                         "ui": {displayStyle: radio_cards},
I/flutter ( 2500): ║                                         "rules": {
I/flutter ( 2500): ║                                             "beef": {proteinFamilyKey: beef, maxSlotsPerDay: 1}
I/flutter ( 2500): ║                                        }
I/flutter ( 2500): ║                                         "options": [
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551af3f6b8e45eac5b5ec"
I/flutter ( 2500): ║                                                 "optionId": "6a3551af3f6b8e45eac5b5ec"
I/flutter ( 2500): ║                                                 "key": "chicken"
I/flutter ( 2500): ║                                                 "name": "دجاج"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: دجاج, en: Chicken},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 10
I/flutter ( 2500): ║                                                 "displayCategoryKey": "chicken"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": "chicken"
I/flutter ( 2500): ║                                                 "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
I/flutter ( 2500): ║                                                 "premiumKey": null
I/flutter ( 2500): ║                                                 "selectionType": "standard_meal"
I/flutter ( 2500): ║                                                 "isPremium": false
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            },
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551b03f6b8e45eac5b5ef"
I/flutter ( 2500): ║                                                 "optionId": "6a3551b03f6b8e45eac5b5ef"
I/flutter ( 2500): ║                                                 "key": "beef"
I/flutter ( 2500): ║                                                 "name": "لحم"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: لحم, en: Beef},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 20
I/flutter ( 2500): ║                                                 "displayCategoryKey": "beef"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": "beef"
I/flutter ( 2500): ║                                                 "proteinFamilyNameI18n": {ar: لحم, en: Beef},
I/flutter ( 2500): ║                                                 "premiumKey": null
I/flutter ( 2500): ║                                                 "selectionType": "standard_meal"
I/flutter ( 2500): ║                                                 "isPremium": false
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            },
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551b03f6b8e45eac5b5f2"
I/flutter ( 2500): ║                                                 "optionId": "6a3551b03f6b8e45eac5b5f2"
I/flutter ( 2500): ║                                                 "key": "fish"
I/flutter ( 2500): ║                                                 "name": "سمك"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: سمك, en: Fish},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 30
I/flutter ( 2500): ║                                                 "displayCategoryKey": "fish"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": "fish"
I/flutter ( 2500): ║                                                 "proteinFamilyNameI18n": {ar: سمك, en: Fish},
I/flutter ( 2500): ║                                                 "premiumKey": null
I/flutter ( 2500): ║                                                 "selectionType": "standard_meal"
I/flutter ( 2500): ║                                                 "isPremium": false
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            },
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551b13f6b8e45eac5b5f5"
I/flutter ( 2500): ║                                                 "optionId": "6a3551b13f6b8e45eac5b5f5"
I/flutter ( 2500): ║                                                 "key": "eggs"
I/flutter ( 2500): ║                                                 "name": "بيض"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: بيض, en: Eggs},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 40
I/flutter ( 2500): ║                                                 "displayCategoryKey": "eggs"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": "eggs"
I/flutter ( 2500): ║                                                 "proteinFamilyNameI18n": {ar: بيض, en: Eggs},
I/flutter ( 2500): ║                                                 "premiumKey": null
I/flutter ( 2500): ║                                                 "selectionType": "standard_meal"
I/flutter ( 2500): ║                                                 "isPremium": false
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            },
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551b23f6b8e45eac5b601"
I/flutter ( 2500): ║                                                 "optionId": "6a3551b23f6b8e45eac5b601"
I/flutter ( 2500): ║                                                 "key": "boiled_eggs"
I/flutter ( 2500): ║                                                 "name": "بيض مسلوق"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: بيض مسلوق, en: Boiled Eggs},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 80
I/flutter ( 2500): ║                                                 "displayCategoryKey": "eggs"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": "eggs"
I/flutter ( 2500): ║                                                 "proteinFamilyNameI18n": {ar: بيض, en: Eggs},
I/flutter ( 2500): ║                                                 "premiumKey": null
I/flutter ( 2500): ║                                                 "selectionType": "standard_meal"
I/flutter ( 2500): ║                                                 "isPremium": false
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            },
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551b33f6b8e45eac5b604"
I/flutter ( 2500): ║                                                 "optionId": "6a3551b33f6b8e45eac5b604"
I/flutter ( 2500): ║                                                 "key": "tuna"
I/flutter ( 2500): ║                                                 "name": "تونا"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: تونا, en: Tuna},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 90
I/flutter ( 2500): ║                                                 "displayCategoryKey": "fish"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": "fish"
I/flutter ( 2500): ║                                                 "proteinFamilyNameI18n": {ar: سمك, en: Fish},
I/flutter ( 2500): ║                                                 "premiumKey": null
I/flutter ( 2500): ║                                                 "selectionType": "standard_meal"
I/flutter ( 2500): ║                                                 "isPremium": false
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            },
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551b33f6b8e45eac5b607"
I/flutter ( 2500): ║                                                 "optionId": "6a3551b33f6b8e45eac5b607"
I/flutter ( 2500): ║                                                 "key": "chicken_fajita"
I/flutter ( 2500): ║                                                 "name": "فاهيتا"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: فاهيتا, en: Chicken Fajita},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 100
I/flutter ( 2500): ║                                                 "displayCategoryKey": "chicken"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": "chicken"
I/flutter ( 2500): ║                                                 "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
I/flutter ( 2500): ║                                                 "premiumKey": null
I/flutter ( 2500): ║                                                 "selectionType": "standard_meal"
I/flutter ( 2500): ║                                                 "isPremium": false
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            },
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551b33f6b8e45eac5b60a"
I/flutter ( 2500): ║                                                 "optionId": "6a3551b33f6b8e45eac5b60a"
I/flutter ( 2500): ║                                                 "key": "spicy_chicken"
I/flutter ( 2500): ║                                                 "name": "دجاج سبايسي"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: دجاج سبايسي, en: Spicy Chicken},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 110
I/flutter ( 2500): ║                                                 "displayCategoryKey": "chicken"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": "chicken"
I/flutter ( 2500): ║                                                 "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
I/flutter ( 2500): ║                                                 "premiumKey": null
I/flutter ( 2500): ║                                                 "selectionType": "standard_meal"
I/flutter ( 2500): ║                                                 "isPremium": false
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            },
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551b43f6b8e45eac5b60d"
I/flutter ( 2500): ║                                                 "optionId": "6a3551b43f6b8e45eac5b60d"
I/flutter ( 2500): ║                                                 "key": "italian_spiced_chicken"
I/flutter ( 2500): ║                                                 "name": "دجاج توابل إيطالية"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: دجاج توابل إيطالية, en: Italian Spiced Chicken},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 120
I/flutter ( 2500): ║                                                 "displayCategoryKey": "chicken"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": "chicken"
I/flutter ( 2500): ║                                                 "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
I/flutter ( 2500): ║                                                 "premiumKey": null
I/flutter ( 2500): ║                                                 "selectionType": "standard_meal"
I/flutter ( 2500): ║                                                 "isPremium": false
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            },
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551b53f6b8e45eac5b610"
I/flutter ( 2500): ║                                                 "optionId": "6a3551b53f6b8e45eac5b610"
I/flutter ( 2500): ║                                                 "key": "chicken_tikka"
I/flutter ( 2500): ║                                                 "name": "دجاج تكا"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: دجاج تكا, en: Chicken Tikka},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 130
I/flutter ( 2500): ║                                                 "displayCategoryKey": "chicken"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": "chicken"
I/flutter ( 2500): ║                                                 "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
I/flutter ( 2500): ║                                                 "premiumKey": null
I/flutter ( 2500): ║                                                 "selectionType": "standard_meal"
I/flutter ( 2500): ║                                                 "isPremium": false
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            },
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551b53f6b8e45eac5b613"
I/flutter ( 2500): ║                                                 "optionId": "6a3551b53f6b8e45eac5b613"
I/flutter ( 2500): ║                                                 "key": "asian_chicken"
I/flutter ( 2500): ║                                                 "name": "دجاج آسيوي"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: دجاج آسيوي, en: Asian Chicken},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 140
I/flutter ( 2500): ║                                                 "displayCategoryKey": "chicken"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": "chicken"
I/flutter ( 2500): ║                                                 "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
I/flutter ( 2500): ║                                                 "premiumKey": null
I/flutter ( 2500): ║                                                 "selectionType": "standard_meal"
I/flutter ( 2500): ║                                                 "isPremium": false
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            },
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551b53f6b8e45eac5b616"
I/flutter ( 2500): ║                                                 "optionId": "6a3551b53f6b8e45eac5b616"
I/flutter ( 2500): ║                                                 "key": "chicken_strips"
I/flutter ( 2500): ║                                                 "name": "استربس"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: استربس, en: Chicken Strips},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 150
I/flutter ( 2500): ║                                                 "displayCategoryKey": "chicken"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": "chicken"
I/flutter ( 2500): ║                                                 "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
I/flutter ( 2500): ║                                                 "premiumKey": null
I/flutter ( 2500): ║                                                 "selectionType": "standard_meal"
I/flutter ( 2500): ║                                                 "isPremium": false
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            },
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551b63f6b8e45eac5b619"
I/flutter ( 2500): ║                                                 "optionId": "6a3551b63f6b8e45eac5b619"
I/flutter ( 2500): ║                                                 "key": "grilled_chicken"
I/flutter ( 2500): ║                                                 "name": "دجاج مشوي"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: دجاج مشوي, en: Grilled Chicken},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 160
I/flutter ( 2500): ║                                                 "displayCategoryKey": "chicken"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": "chicken"
I/flutter ( 2500): ║                                                 "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
I/flutter ( 2500): ║                                                 "premiumKey": null
I/flutter ( 2500): ║                                                 "selectionType": "standard_meal"
I/flutter ( 2500): ║                                                 "isPremium": false
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            },
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551b73f6b8e45eac5b61c"
I/flutter ( 2500): ║                                                 "optionId": "6a3551b73f6b8e45eac5b61c"
I/flutter ( 2500): ║                                                 "key": "mexican_chicken"
I/flutter ( 2500): ║                                                 "name": "دجاج مكسيكي"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: دجاج مكسيكي, en: Mexican Chicken},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 170
I/flutter ( 2500): ║                                                 "displayCategoryKey": "chicken"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": "chicken"
I/flutter ( 2500): ║                                                 "proteinFamilyNameI18n": {ar: دجاج, en: Chicken},
I/flutter ( 2500): ║                                                 "premiumKey": null
I/flutter ( 2500): ║                                                 "selectionType": "standard_meal"
I/flutter ( 2500): ║                                                 "isPremium": false
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            },
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551b73f6b8e45eac5b61f"
I/flutter ( 2500): ║                                                 "optionId": "6a3551b73f6b8e45eac5b61f"
I/flutter ( 2500): ║                                                 "key": "meatballs"
I/flutter ( 2500): ║                                                 "name": "كرات لحم"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: كرات لحم, en: Meatballs},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 180
I/flutter ( 2500): ║                                                 "displayCategoryKey": "beef"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": "beef"
I/flutter ( 2500): ║                                                 "proteinFamilyNameI18n": {ar: لحم, en: Beef},
I/flutter ( 2500): ║                                                 "premiumKey": null
I/flutter ( 2500): ║                                                 "selectionType": "standard_meal"
I/flutter ( 2500): ║                                                 "isPremium": false
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            },
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551b83f6b8e45eac5b622"
I/flutter ( 2500): ║                                                 "optionId": "6a3551b83f6b8e45eac5b622"
I/flutter ( 2500): ║                                                 "key": "beef_stroganoff"
I/flutter ( 2500): ║                                                 "name": "لحم استرغانوف"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: لحم استرغانوف, en: Beef Stroganoff},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 190
I/flutter ( 2500): ║                                                 "displayCategoryKey": "beef"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": "beef"
I/flutter ( 2500): ║                                                 "proteinFamilyNameI18n": {ar: لحم, en: Beef},
I/flutter ( 2500): ║                                                 "premiumKey": null
I/flutter ( 2500): ║                                                 "selectionType": "standard_meal"
I/flutter ( 2500): ║                                                 "isPremium": false
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            },
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551b83f6b8e45eac5b625"
I/flutter ( 2500): ║                                                 "optionId": "6a3551b83f6b8e45eac5b625"
I/flutter ( 2500): ║                                                 "key": "fish_fillet"
I/flutter ( 2500): ║                                                 "name": "سمك فيليه"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: سمك فيليه, en: Fish Fillet},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 200
I/flutter ( 2500): ║                                                 "displayCategoryKey": "fish"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": "fish"
I/flutter ( 2500): ║                                                 "proteinFamilyNameI18n": {ar: سمك, en: Fish},
I/flutter ( 2500): ║                                                 "premiumKey": null
I/flutter ( 2500): ║                                                 "selectionType": "standard_meal"
I/flutter ( 2500): ║                                                 "isPremium": false
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            }
I/flutter ( 2500): ║                                         ],
I/flutter ( 2500): ║                                         "optionSections": [
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "key": "chicken"
I/flutter ( 2500): ║                                                 "name": "دجاج"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: دجاج, en: Chicken},
I/flutter ( 2500): ║                                                 "optionKeys": [
I/flutter ( 2500): ║                                                         chicken,
I/flutter ( 2500): ║                                                         chicken_fajita,
I/flutter ( 2500): ║                                                         spicy_chicken,
I/flutter ( 2500): ║                                                         italian_spiced_chicken,
I/flutter ( 2500): ║                                                         chicken_tikka,
I/flutter ( 2500): ║                                                         asian_chicken,
I/flutter ( 2500): ║                                                         chicken_strips,
I/flutter ( 2500): ║                                                         grilled_chicken,
I/flutter ( 2500): ║                                                         mexican_chicken
I/flutter ( 2500): ║                                                 ],
I/flutter ( 2500): ║                                                 "optionIds": [
I/flutter ( 2500): ║                                                         6a3551af3f6b8e45eac5b5ec,
I/flutter ( 2500): ║                                                         6a3551b33f6b8e45eac5b607,
I/flutter ( 2500): ║                                                         6a3551b33f6b8e45eac5b60a,
I/flutter ( 2500): ║                                                         6a3551b43f6b8e45eac5b60d,
I/flutter ( 2500): ║                                                         6a3551b53f6b8e45eac5b610,
I/flutter ( 2500): ║                                                         6a3551b53f6b8e45eac5b613,
I/flutter ( 2500): ║                                                         6a3551b53f6b8e45eac5b616,
I/flutter ( 2500): ║                                                         6a3551b63f6b8e45eac5b619,
I/flutter ( 2500): ║                                                         6a3551b73f6b8e45eac5b61c
I/flutter ( 2500): ║                                                 ]
I/flutter ( 2500): ║                                            },
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "key": "beef"
I/flutter ( 2500): ║                                                 "name": "لحم"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: لحم, en: Beef},
I/flutter ( 2500): ║                                                 "optionKeys": [beef, meatballs, beef_stroganoff]
I/flutter ( 2500): ║                                                 "optionIds": [6a3551b03f6b8e45eac5b5ef, 6a3551b73f6b8e45eac5b61f, 6a3551b83f6b8e45eac5b622]
I/flutter ( 2500): ║                                            },
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "key": "fish"
I/flutter ( 2500): ║                                                 "name": "سمك"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: سمك, en: Fish},
I/flutter ( 2500): ║                                                 "optionKeys": [fish, tuna, fish_fillet]
I/flutter ( 2500): ║                                                 "optionIds": [6a3551b03f6b8e45eac5b5f2, 6a3551b33f6b8e45eac5b604, 6a3551b83f6b8e45eac5b625]
I/flutter ( 2500): ║                                            },
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "key": "eggs"
I/flutter ( 2500): ║                                                 "name": "بيض"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: بيض, en: Eggs},
I/flutter ( 2500): ║                                                 "optionKeys": [eggs, boiled_eggs]
I/flutter ( 2500): ║                                                 "optionIds": [6a3551b13f6b8e45eac5b5f5, 6a3551b23f6b8e45eac5b601]
I/flutter ( 2500): ║                                            }
I/flutter ( 2500): ║                                         ]
I/flutter ( 2500): ║                                    },
I/flutter ( 2500): ║                                    {
I/flutter ( 2500): ║                                         "id": "6a3551b83f6b8e45eac5b628"
I/flutter ( 2500): ║                                         "groupId": "6a3551b83f6b8e45eac5b628"
I/flutter ( 2500): ║                                         "key": "carb",
I/flutter ( 2500): ║                                         "sourceKey": "carbs",
I/flutter ( 2500): ║                                         "name": "كارب",
I/flutter ( 2500): ║                                         "nameI18n": {ar: كارب, en: Carbs},
I/flutter ( 2500): ║                                         "minSelections": 1,
I/flutter ( 2500): ║                                         "maxSelections": 2,
I/flutter ( 2500): ║                                         "isRequired": true,
I/flutter ( 2500): ║                                         "sortOrder": 20,
I/flutter ( 2500): ║                                         "ui": {displayStyle: chips},
I/flutter ( 2500): ║                                         "rules": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
I/flutter ( 2500): ║                                         "options": [
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551b93f6b8e45eac5b62b"
I/flutter ( 2500): ║                                                 "optionId": "6a3551b93f6b8e45eac5b62b"
I/flutter ( 2500): ║                                                 "key": "white_rice"
I/flutter ( 2500): ║                                                 "name": "رز أبيض"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: رز أبيض, en: White Rice},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 10
I/flutter ( 2500): ║                                                 "displayCategoryKey": "standard_carbs"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": ""
I/flutter ( 2500): ║                                                 "premiumKey": null
I/flutter ( 2500): ║                                                 "selectionType": ""
I/flutter ( 2500): ║                                                 "isPremium": false
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            },
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551b93f6b8e45eac5b62e"
I/flutter ( 2500): ║                                                 "optionId": "6a3551b93f6b8e45eac5b62e"
I/flutter ( 2500): ║                                                 "key": "turmeric_rice"
I/flutter ( 2500): ║                                                 "name": "رز بالكركم"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: رز بالكركم, en: Turmeric Rice},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 20
I/flutter ( 2500): ║                                                 "displayCategoryKey": "standard_carbs"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": ""
I/flutter ( 2500): ║                                                 "premiumKey": null
I/flutter ( 2500): ║                                                 "selectionType": ""
I/flutter ( 2500): ║                                                 "isPremium": false
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            },
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551ba3f6b8e45eac5b631"
I/flutter ( 2500): ║                                                 "optionId": "6a3551ba3f6b8e45eac5b631"
I/flutter ( 2500): ║                                                 "key": "alfredo_pasta"
I/flutter ( 2500): ║                                                 "name": "باستا الفريدو"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: باستا الفريدو, en: Alfredo Pasta},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 30
I/flutter ( 2500): ║                                                 "displayCategoryKey": "standard_carbs"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": ""
I/flutter ( 2500): ║                                                 "premiumKey": null
I/flutter ( 2500): ║                                                 "selectionType": ""
I/flutter ( 2500): ║                                                 "isPremium": false
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            },
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551ba3f6b8e45eac5b634"
I/flutter ( 2500): ║                                                 "optionId": "6a3551ba3f6b8e45eac5b634"
I/flutter ( 2500): ║                                                 "key": "red_sauce_pasta"
I/flutter ( 2500): ║                                                 "name": "باستا صوص احمر"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: باستا صوص احمر, en: Red Sauce Pasta},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 40
I/flutter ( 2500): ║                                                 "displayCategoryKey": "standard_carbs"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": ""
I/flutter ( 2500): ║                                                 "premiumKey": null
I/flutter ( 2500): ║                                                 "selectionType": ""
I/flutter ( 2500): ║                                                 "isPremium": false
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            },
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551ba3f6b8e45eac5b637"
I/flutter ( 2500): ║                                                 "optionId": "6a3551ba3f6b8e45eac5b637"
I/flutter ( 2500): ║                                                 "key": "roasted_potato"
I/flutter ( 2500): ║                                                 "name": "بطاطا مشوية"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: بطاطا مشوية, en: Roasted Potato},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 50
I/flutter ( 2500): ║                                                 "displayCategoryKey": "standard_carbs"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": ""
I/flutter ( 2500): ║                                                 "premiumKey": null
I/flutter ( 2500): ║                                                 "selectionType": ""
I/flutter ( 2500): ║                                                 "isPremium": false
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            },
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551bb3f6b8e45eac5b63a"
I/flutter ( 2500): ║                                                 "optionId": "6a3551bb3f6b8e45eac5b63a"
I/flutter ( 2500): ║                                                 "key": "sweet_potato"
I/flutter ( 2500): ║                                                 "name": "بطاطا حلوة"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: بطاطا حلوة, en: Sweet Potato},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 60
I/flutter ( 2500): ║                                                 "displayCategoryKey": "standard_carbs"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": ""
I/flutter ( 2500): ║                                                 "premiumKey": null
I/flutter ( 2500): ║                                                 "selectionType": ""
I/flutter ( 2500): ║                                                 "isPremium": false
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            },
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551bb3f6b8e45eac5b63d"
I/flutter ( 2500): ║                                                 "optionId": "6a3551bb3f6b8e45eac5b63d"
I/flutter ( 2500): ║                                                 "key": "grilled_mixed_vegetables"
I/flutter ( 2500): ║                                                 "name": "خضار مشكلة مشوية"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: خضار مشكلة مشوية, en: Grilled Mixed Vegetables},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 70
I/flutter ( 2500): ║                                                 "displayCategoryKey": "standard_carbs"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": ""
I/flutter ( 2500): ║                                                 "premiumKey": null
I/flutter ( 2500): ║                                                 "selectionType": ""
I/flutter ( 2500): ║                                                 "isPremium": false
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            }
I/flutter ( 2500): ║                                         ]
I/flutter ( 2500): ║                                    }
I/flutter ( 2500): ║                                 ]
I/flutter ( 2500): ║                            }
I/flutter ( 2500): ║                         ]
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "section:premium_meal",
I/flutter ( 2500): ║                         "key": "premium_meal",
I/flutter ( 2500): ║                         "type": "meal_builder",
I/flutter ( 2500): ║                         "name": "وجبة مميزة",
I/flutter ( 2500): ║                         "ui": {cardVariant: premium},
I/flutter ( 2500): ║                         "products": [
I/flutter ( 2500): ║                            {
I/flutter ( 2500): ║                                 "id": "virtual:premium_meal",
I/flutter ( 2500): ║                                 "key": "premium_meal",
I/flutter ( 2500): ║                                 "type": "virtual_builder_product",
I/flutter ( 2500): ║                                 "isVirtual": true,
I/flutter ( 2500): ║                                 "selectionType": "premium_meal",
I/flutter ( 2500): ║                                 "ui": {cardVariant: premium, cardSize: medium, badge: , ctaLabel: , imageRatio: square},
I/flutter ( 2500): ║                                 "optionGroups": [
I/flutter ( 2500): ║                                    {
I/flutter ( 2500): ║                                         "id": "6a3551ae3f6b8e45eac5b5e9"
I/flutter ( 2500): ║                                         "groupId": "6a3551ae3f6b8e45eac5b5e9"
I/flutter ( 2500): ║                                         "key": "protein",
I/flutter ( 2500): ║                                         "sourceKey": "proteins",
I/flutter ( 2500): ║                                         "name": "بروتينات",
I/flutter ( 2500): ║                                         "nameI18n": {ar: بروتينات, en: Proteins},
I/flutter ( 2500): ║                                         "minSelections": 1,
I/flutter ( 2500): ║                                         "maxSelections": 1,
I/flutter ( 2500): ║                                         "isRequired": true,
I/flutter ( 2500): ║                                         "sortOrder": 10,
I/flutter ( 2500): ║                                         "ui": {displayStyle: radio_cards},
I/flutter ( 2500): ║                                         "rules": {},
I/flutter ( 2500): ║                                         "options": [
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551b13f6b8e45eac5b5f8"
I/flutter ( 2500): ║                                                 "optionId": "6a3551b13f6b8e45eac5b5f8"
I/flutter ( 2500): ║                                                 "key": "beef_steak"
I/flutter ( 2500): ║                                                 "name": "ستيك لحم"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: ستيك لحم, en: Beef Steak},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 50
I/flutter ( 2500): ║                                                 "displayCategoryKey": "premium"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": "premium"
I/flutter ( 2500): ║                                                 "proteinFamilyNameI18n": {ar: بريميوم, en: Premium},
I/flutter ( 2500): ║                                                 "premiumKey": "beef_steak"
I/flutter ( 2500): ║                                                 "extraFeeHalala": 0
I/flutter ( 2500): ║                                                 "selectionType": "premium_meal"
I/flutter ( 2500): ║                                                 "isPremium": true
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            },
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551b13f6b8e45eac5b5fb"
I/flutter ( 2500): ║                                                 "optionId": "6a3551b13f6b8e45eac5b5fb"
I/flutter ( 2500): ║                                                 "key": "shrimp"
I/flutter ( 2500): ║                                                 "name": "جمبري"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: جمبري, en: Shrimp},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 60
I/flutter ( 2500): ║                                                 "displayCategoryKey": "premium"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": "premium"
I/flutter ( 2500): ║                                                 "proteinFamilyNameI18n": {ar: بريميوم, en: Premium},
I/flutter ( 2500): ║                                                 "premiumKey": "shrimp"
I/flutter ( 2500): ║                                                 "extraFeeHalala": 0
I/flutter ( 2500): ║                                                 "selectionType": "premium_meal"
I/flutter ( 2500): ║                                                 "isPremium": true
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            },
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551b23f6b8e45eac5b5fe"
I/flutter ( 2500): ║                                                 "optionId": "6a3551b23f6b8e45eac5b5fe"
I/flutter ( 2500): ║                                                 "key": "salmon"
I/flutter ( 2500): ║                                                 "name": "سالمون"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: سالمون, en: Salmon},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 70
I/flutter ( 2500): ║                                                 "displayCategoryKey": "premium"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": "premium"
I/flutter ( 2500): ║                                                 "proteinFamilyNameI18n": {ar: بريميوم, en: Premium},
I/flutter ( 2500): ║                                                 "premiumKey": "salmon"
I/flutter ( 2500): ║                                                 "extraFeeHalala": 0
I/flutter ( 2500): ║                                                 "selectionType": "premium_meal"
I/flutter ( 2500): ║                                                 "isPremium": true
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            }
I/flutter ( 2500): ║                                         ],
I/flutter ( 2500): ║                                         "optionSections": [
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "key": "premium"
I/flutter ( 2500): ║                                                 "name": "بريميوم"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: بريميوم, en: Premium},
I/flutter ( 2500): ║                                                 "optionKeys": [beef_steak, shrimp, salmon]
I/flutter ( 2500): ║                                                 "optionIds": [6a3551b13f6b8e45eac5b5f8, 6a3551b13f6b8e45eac5b5fb, 6a3551b23f6b8e45eac5b5fe]
I/flutter ( 2500): ║                                            }
I/flutter ( 2500): ║                                         ]
I/flutter ( 2500): ║                                    },
I/flutter ( 2500): ║                                    {
I/flutter ( 2500): ║                                         "id": "6a3551b83f6b8e45eac5b628"
I/flutter ( 2500): ║                                         "groupId": "6a3551b83f6b8e45eac5b628"
I/flutter ( 2500): ║                                         "key": "carb",
I/flutter ( 2500): ║                                         "sourceKey": "carbs",
I/flutter ( 2500): ║                                         "name": "كارب",
I/flutter ( 2500): ║                                         "nameI18n": {ar: كارب, en: Carbs},
I/flutter ( 2500): ║                                         "minSelections": 1,
I/flutter ( 2500): ║                                         "maxSelections": 2,
I/flutter ( 2500): ║                                         "isRequired": true,
I/flutter ( 2500): ║                                         "sortOrder": 20,
I/flutter ( 2500): ║                                         "ui": {displayStyle: chips},
I/flutter ( 2500): ║                                         "rules": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
I/flutter ( 2500): ║                                         "options": [
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551b93f6b8e45eac5b62b"
I/flutter ( 2500): ║                                                 "optionId": "6a3551b93f6b8e45eac5b62b"
I/flutter ( 2500): ║                                                 "key": "white_rice"
I/flutter ( 2500): ║                                                 "name": "رز أبيض"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: رز أبيض, en: White Rice},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 10
I/flutter ( 2500): ║                                                 "displayCategoryKey": "standard_carbs"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": ""
I/flutter ( 2500): ║                                                 "premiumKey": null
I/flutter ( 2500): ║                                                 "selectionType": ""
I/flutter ( 2500): ║                                                 "isPremium": false
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            },
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551b93f6b8e45eac5b62e"
I/flutter ( 2500): ║                                                 "optionId": "6a3551b93f6b8e45eac5b62e"
I/flutter ( 2500): ║                                                 "key": "turmeric_rice"
I/flutter ( 2500): ║                                                 "name": "رز بالكركم"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: رز بالكركم, en: Turmeric Rice},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 20
I/flutter ( 2500): ║                                                 "displayCategoryKey": "standard_carbs"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": ""
I/flutter ( 2500): ║                                                 "premiumKey": null
I/flutter ( 2500): ║                                                 "selectionType": ""
I/flutter ( 2500): ║                                                 "isPremium": false
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            },
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551ba3f6b8e45eac5b631"
I/flutter ( 2500): ║                                                 "optionId": "6a3551ba3f6b8e45eac5b631"
I/flutter ( 2500): ║                                                 "key": "alfredo_pasta"
I/flutter ( 2500): ║                                                 "name": "باستا الفريدو"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: باستا الفريدو, en: Alfredo Pasta},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 30
I/flutter ( 2500): ║                                                 "displayCategoryKey": "standard_carbs"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": ""
I/flutter ( 2500): ║                                                 "premiumKey": null
I/flutter ( 2500): ║                                                 "selectionType": ""
I/flutter ( 2500): ║                                                 "isPremium": false
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            },
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551ba3f6b8e45eac5b634"
I/flutter ( 2500): ║                                                 "optionId": "6a3551ba3f6b8e45eac5b634"
I/flutter ( 2500): ║                                                 "key": "red_sauce_pasta"
I/flutter ( 2500): ║                                                 "name": "باستا صوص احمر"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: باستا صوص احمر, en: Red Sauce Pasta},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 40
I/flutter ( 2500): ║                                                 "displayCategoryKey": "standard_carbs"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": ""
I/flutter ( 2500): ║                                                 "premiumKey": null
I/flutter ( 2500): ║                                                 "selectionType": ""
I/flutter ( 2500): ║                                                 "isPremium": false
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            },
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551ba3f6b8e45eac5b637"
I/flutter ( 2500): ║                                                 "optionId": "6a3551ba3f6b8e45eac5b637"
I/flutter ( 2500): ║                                                 "key": "roasted_potato"
I/flutter ( 2500): ║                                                 "name": "بطاطا مشوية"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: بطاطا مشوية, en: Roasted Potato},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 50
I/flutter ( 2500): ║                                                 "displayCategoryKey": "standard_carbs"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": ""
I/flutter ( 2500): ║                                                 "premiumKey": null
I/flutter ( 2500): ║                                                 "selectionType": ""
I/flutter ( 2500): ║                                                 "isPremium": false
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            },
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551bb3f6b8e45eac5b63a"
I/flutter ( 2500): ║                                                 "optionId": "6a3551bb3f6b8e45eac5b63a"
I/flutter ( 2500): ║                                                 "key": "sweet_potato"
I/flutter ( 2500): ║                                                 "name": "بطاطا حلوة"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: بطاطا حلوة, en: Sweet Potato},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 60
I/flutter ( 2500): ║                                                 "displayCategoryKey": "standard_carbs"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": ""
I/flutter ( 2500): ║                                                 "premiumKey": null
I/flutter ( 2500): ║                                                 "selectionType": ""
I/flutter ( 2500): ║                                                 "isPremium": false
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            },
I/flutter ( 2500): ║                                            {
I/flutter ( 2500): ║                                                 "id": "6a3551bb3f6b8e45eac5b63d"
I/flutter ( 2500): ║                                                 "optionId": "6a3551bb3f6b8e45eac5b63d"
I/flutter ( 2500): ║                                                 "key": "grilled_mixed_vegetables"
I/flutter ( 2500): ║                                                 "name": "خضار مشكلة مشوية"
I/flutter ( 2500): ║                                                 "nameI18n": {ar: خضار مشكلة مشوية, en: Grilled Mixed Vegetables},
I/flutter ( 2500): ║                                                 "description": ""
I/flutter ( 2500): ║                                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                                 "imageUrl": ""
I/flutter ( 2500): ║                                                 "sortOrder": 70
I/flutter ( 2500): ║                                                 "displayCategoryKey": "standard_carbs"
I/flutter ( 2500): ║                                                 "proteinFamilyKey": ""
I/flutter ( 2500): ║                                                 "premiumKey": null
I/flutter ( 2500): ║                                                 "selectionType": ""
I/flutter ( 2500): ║                                                 "isPremium": false
I/flutter ( 2500): ║                                                 "ui": {}
I/flutter ( 2500): ║                                            }
I/flutter ( 2500): ║                                         ]
I/flutter ( 2500): ║                                    }
I/flutter ( 2500): ║                                 ]
I/flutter ( 2500): ║                            }
I/flutter ( 2500): ║                         ]
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "section:sandwich",
I/flutter ( 2500): ║                         "key": "sandwich",
I/flutter ( 2500): ║                         "type": "product_list",
I/flutter ( 2500): ║                         "name": "ساندويتشات",
I/flutter ( 2500): ║                         "ui": {cardVariant: standard},
I/flutter ( 2500): ║                         "products": [
I/flutter ( 2500): ║                            {
I/flutter ( 2500): ║                                 "id": "6a35526a3f6b8e45eac5bb18",
I/flutter ( 2500): ║                                 "key": "turkey_cold_sandwich",
I/flutter ( 2500): ║                                 "type": "menu_product",
I/flutter ( 2500): ║                                 "isVirtual": false,
I/flutter ( 2500): ║                                 "selectionType": "sandwich",
I/flutter ( 2500): ║                                 "name": "تركي",
I/flutter ( 2500): ║                                 "nameI18n": {ar: تركي, en: Turkey},
I/flutter ( 2500): ║                                 "description": "",
I/flutter ( 2500): ║                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                 "imageUrl": "",
I/flutter ( 2500): ║                                 "itemType": "cold_sandwich",
I/flutter ( 2500): ║                                 "pricingModel": "fixed",
I/flutter ( 2500): ║                                 "priceHalala": 1300,
I/flutter ( 2500): ║                                 "currency": "SAR",
I/flutter ( 2500): ║                                 "calories": 220,
I/flutter ( 2500): ║                                 "proteinFamilyKey": "other",
I/flutter ( 2500): ║                                 "sortOrder": 200,
I/flutter ( 2500): ║                                 "ui": {cardVariant: sandwich_card, cardSize: small, badge: , ctaLabel: , imageRatio: square},
I/flutter ( 2500): ║                                 "optionGroups": []
I/flutter ( 2500): ║                            },
I/flutter ( 2500): ║                            {
I/flutter ( 2500): ║                                 "id": "6a35526b3f6b8e45eac5bb1d",
I/flutter ( 2500): ║                                 "key": "boiled_egg_cold_sandwich",
I/flutter ( 2500): ║                                 "type": "menu_product",
I/flutter ( 2500): ║                                 "isVirtual": false,
I/flutter ( 2500): ║                                 "selectionType": "sandwich",
I/flutter ( 2500): ║                                 "name": "بيض مسلوق",
I/flutter ( 2500): ║                                 "nameI18n": {ar: بيض مسلوق, en: Boiled Egg},
I/flutter ( 2500): ║                                 "description": "",
I/flutter ( 2500): ║                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                 "imageUrl": "",
I/flutter ( 2500): ║                                 "itemType": "cold_sandwich",
I/flutter ( 2500): ║                                 "pricingModel": "fixed",
I/flutter ( 2500): ║                                 "priceHalala": 900,
I/flutter ( 2500): ║                                 "currency": "SAR",
I/flutter ( 2500): ║                                 "calories": 160,
I/flutter ( 2500): ║                                 "proteinFamilyKey": "eggs",
I/flutter ( 2500): ║                                 "sortOrder": 210,
I/flutter ( 2500): ║                                 "ui": {cardVariant: sandwich_card, cardSize: small, badge: , ctaLabel: , imageRatio: square},
I/flutter ( 2500): ║                                 "optionGroups": []
I/flutter ( 2500): ║                            },
I/flutter ( 2500): ║                            {
I/flutter ( 2500): ║                                 "id": "6a35526c3f6b8e45eac5bb22",
I/flutter ( 2500): ║                                 "key": "tuna_cold_sandwich",
I/flutter ( 2500): ║                                 "type": "menu_product",
I/flutter ( 2500): ║                                 "isVirtual": false,
I/flutter ( 2500): ║                                 "selectionType": "sandwich",
I/flutter ( 2500): ║                                 "name": "تونا",
I/flutter ( 2500): ║                                 "nameI18n": {ar: تونا, en: Tuna},
I/flutter ( 2500): ║                                 "description": "",
I/flutter ( 2500): ║                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                 "imageUrl": "",
I/flutter ( 2500): ║                                 "itemType": "cold_sandwich",
I/flutter ( 2500): ║                                 "pricingModel": "fixed",
I/flutter ( 2500): ║                                 "priceHalala": 1300,
I/flutter ( 2500): ║                                 "currency": "SAR",
I/flutter ( 2500): ║                                 "calories": 200,
I/flutter ( 2500): ║                                 "proteinFamilyKey": "fish",
I/flutter ( 2500): ║                                 "sortOrder": 220,
I/flutter ( 2500): ║                                 "ui": {cardVariant: sandwich_card, cardSize: small, badge: , ctaLabel: , imageRatio: square},
I/flutter ( 2500): ║                                 "optionGroups": []
I/flutter ( 2500): ║                            },
I/flutter ( 2500): ║                            {
I/flutter ( 2500): ║                                 "id": "6a35526d3f6b8e45eac5bb27",
I/flutter ( 2500): ║                                 "key": "scrambled_egg_cold_sandwich"
I/flutter ( 2500): ║                                 "type": "menu_product",
I/flutter ( 2500): ║                                 "isVirtual": false,
I/flutter ( 2500): ║                                 "selectionType": "sandwich",
I/flutter ( 2500): ║                                 "name": "بيض مخفوق",
I/flutter ( 2500): ║                                 "nameI18n": {ar: بيض مخفوق, en: Scrambled Egg},
I/flutter ( 2500): ║                                 "description": "",
I/flutter ( 2500): ║                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                 "imageUrl": "",
I/flutter ( 2500): ║                                 "itemType": "cold_sandwich",
I/flutter ( 2500): ║                                 "pricingModel": "fixed",
I/flutter ( 2500): ║                                 "priceHalala": 900,
I/flutter ( 2500): ║                                 "currency": "SAR",
I/flutter ( 2500): ║                                 "calories": 150,
I/flutter ( 2500): ║                                 "proteinFamilyKey": "eggs",
I/flutter ( 2500): ║                                 "sortOrder": 230,
I/flutter ( 2500): ║                                 "ui": {cardVariant: sandwich_card, cardSize: small, badge: , ctaLabel: , imageRatio: square},
I/flutter ( 2500): ║                                 "optionGroups": []
I/flutter ( 2500): ║                            },
I/flutter ( 2500): ║                            {
I/flutter ( 2500): ║                                 "id": "6a35526d3f6b8e45eac5bb2c",
I/flutter ( 2500): ║                                 "key": "classic_halloumi_cold_sandwich"
I/flutter ( 2500): ║                                 "type": "menu_product",
I/flutter ( 2500): ║                                 "isVirtual": false,
I/flutter ( 2500): ║                                 "selectionType": "sandwich",
I/flutter ( 2500): ║                                 "name": "حلوم كلاسيك",
I/flutter ( 2500): ║                                 "nameI18n": {ar: حلوم كلاسيك, en: Classic Halloumi},
I/flutter ( 2500): ║                                 "description": "",
I/flutter ( 2500): ║                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                 "imageUrl": "",
I/flutter ( 2500): ║                                 "itemType": "cold_sandwich",
I/flutter ( 2500): ║                                 "pricingModel": "fixed",
I/flutter ( 2500): ║                                 "priceHalala": 1100,
I/flutter ( 2500): ║                                 "currency": "SAR",
I/flutter ( 2500): ║                                 "calories": 200,
I/flutter ( 2500): ║                                 "proteinFamilyKey": "other",
I/flutter ( 2500): ║                                 "sortOrder": 240,
I/flutter ( 2500): ║                                 "ui": {cardVariant: sandwich_card, cardSize: small, badge: , ctaLabel: , imageRatio: square},
I/flutter ( 2500): ║                                 "optionGroups": []
I/flutter ( 2500): ║                            },
I/flutter ( 2500): ║                            {
I/flutter ( 2500): ║                                 "id": "6a35526e3f6b8e45eac5bb31",
I/flutter ( 2500): ║                                 "key": "chicken_fajita_cold_sandwich"
I/flutter ( 2500): ║                                 "type": "menu_product",
I/flutter ( 2500): ║                                 "isVirtual": false,
I/flutter ( 2500): ║                                 "selectionType": "sandwich",
I/flutter ( 2500): ║                                 "name": "دجاج فاهيتا",
I/flutter ( 2500): ║                                 "nameI18n": {ar: دجاج فاهيتا, en: Chicken Fajita},
I/flutter ( 2500): ║                                 "description": "",
I/flutter ( 2500): ║                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                 "imageUrl": "",
I/flutter ( 2500): ║                                 "itemType": "cold_sandwich",
I/flutter ( 2500): ║                                 "pricingModel": "fixed",
I/flutter ( 2500): ║                                 "priceHalala": 1300,
I/flutter ( 2500): ║                                 "currency": "SAR",
I/flutter ( 2500): ║                                 "calories": 230,
I/flutter ( 2500): ║                                 "proteinFamilyKey": "chicken",
I/flutter ( 2500): ║                                 "sortOrder": 250,
I/flutter ( 2500): ║                                 "ui": {cardVariant: sandwich_card, cardSize: small, badge: , ctaLabel: , imageRatio: square},
I/flutter ( 2500): ║                                 "optionGroups": []
I/flutter ( 2500): ║                            },
I/flutter ( 2500): ║                            {
I/flutter ( 2500): ║                                 "id": "6a35526e3f6b8e45eac5bb36",
I/flutter ( 2500): ║                                 "key": "mexican_chicken_cold_sandwich"
I/flutter ( 2500): ║                                 "type": "menu_product",
I/flutter ( 2500): ║                                 "isVirtual": false,
I/flutter ( 2500): ║                                 "selectionType": "sandwich",
I/flutter ( 2500): ║                                 "name": "دجاج مكسيكي",
I/flutter ( 2500): ║                                 "nameI18n": {ar: دجاج مكسيكي, en: Mexican Chicken},
I/flutter ( 2500): ║                                 "description": "",
I/flutter ( 2500): ║                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                 "imageUrl": "",
I/flutter ( 2500): ║                                 "itemType": "cold_sandwich",
I/flutter ( 2500): ║                                 "pricingModel": "fixed",
I/flutter ( 2500): ║                                 "priceHalala": 1300,
I/flutter ( 2500): ║                                 "currency": "SAR",
I/flutter ( 2500): ║                                 "calories": 260,
I/flutter ( 2500): ║                                 "proteinFamilyKey": "chicken",
I/flutter ( 2500): ║                                 "sortOrder": 260,
I/flutter ( 2500): ║                                 "ui": {cardVariant: sandwich_card, cardSize: small, badge: , ctaLabel: , imageRatio: square},
I/flutter ( 2500): ║                                 "optionGroups": []
I/flutter ( 2500): ║                            },
I/flutter ( 2500): ║                            {
I/flutter ( 2500): ║                                 "id": "6a35526f3f6b8e45eac5bb3b",
I/flutter ( 2500): ║                                 "key": "grilled_chicken_cold_sandwich"
I/flutter ( 2500): ║                                 "type": "menu_product",
I/flutter ( 2500): ║                                 "isVirtual": false,
I/flutter ( 2500): ║                                 "selectionType": "sandwich",
I/flutter ( 2500): ║                                 "name": "دجاج مشوي",
I/flutter ( 2500): ║                                 "nameI18n": {ar: دجاج مشوي, en: Grilled Chicken},
I/flutter ( 2500): ║                                 "description": "",
I/flutter ( 2500): ║                                 "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                                 "imageUrl": "",
I/flutter ( 2500): ║                                 "itemType": "cold_sandwich",
I/flutter ( 2500): ║                                 "pricingModel": "fixed",
I/flutter ( 2500): ║                                 "priceHalala": 1300,
I/flutter ( 2500): ║                                 "currency": "SAR",
I/flutter ( 2500): ║                                 "calories": 220,
I/flutter ( 2500): ║                                 "proteinFamilyKey": "chicken",
I/flutter ( 2500): ║                                 "sortOrder": 270,
I/flutter ( 2500): ║                                 "ui": {cardVariant: sandwich_card, cardSize: small, badge: , ctaLabel: , imageRatio: square},
I/flutter ( 2500): ║                                 "optionGroups": []
I/flutter ( 2500): ║                            }
I/flutter ( 2500): ║                         ]
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "section:premium_large_salad",
I/flutter ( 2500): ║                         "key": "premium_large_salad",
I/flutter ( 2500): ║                         "type": "configurable_product",
I/flutter ( 2500): ║                         "name": "سلطة كبيرة مميزة",
I/flutter ( 2500): ║                         "ui": {cardVariant: large_salad},
I/flutter ( 2500): ║                         "products": []
I/flutter ( 2500): ║                    }
I/flutter ( 2500): ║                 ],
I/flutter ( 2500): ║                 "rules": {
I/flutter ( 2500): ║                     "version": "meal_planner_rules.v3",
I/flutter ( 2500): ║                     "beef": {proteinFamilyKey: beef, maxSlotsPerDay: 1},
I/flutter ( 2500): ║                     "standardCarbs": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
I/flutter ( 2500): ║                     "premiumCarbs": {maxTypes: 2, maxTotalGrams: 300, unit: grams},
I/flutter ( 2500): ║                     "proteinGroups": [
I/flutter ( 2500): ║                        {
I/flutter ( 2500): ║                             "key": "chicken",
I/flutter ( 2500): ║                             "name": {ar: دجاج, en: Chicken},
I/flutter ( 2500): ║                             "sortOrder": 10
I/flutter ( 2500): ║                        },
I/flutter ( 2500): ║                        {
I/flutter ( 2500): ║                             "key": "beef",
I/flutter ( 2500): ║                             "name": {ar: لحم, en: Beef},
I/flutter ( 2500): ║                             "sortOrder": 20
I/flutter ( 2500): ║                        },
I/flutter ( 2500): ║                        {
I/flutter ( 2500): ║                             "key": "fish",
I/flutter ( 2500): ║                             "name": {ar: سمك, en: Fish},
I/flutter ( 2500): ║                             "sortOrder": 30
I/flutter ( 2500): ║                        },
I/flutter ( 2500): ║                        {
I/flutter ( 2500): ║                             "key": "eggs",
I/flutter ( 2500): ║                             "name": {ar: بيض, en: Eggs},
I/flutter ( 2500): ║                             "sortOrder": 40
I/flutter ( 2500): ║                        },
I/flutter ( 2500): ║                        {
I/flutter ( 2500): ║                             "key": "premium",
I/flutter ( 2500): ║                             "name": {ar: بريميوم, en: Premium},
I/flutter ( 2500): ║                             "sortOrder": 50
I/flutter ( 2500): ║                        },
I/flutter ( 2500): ║                        {
I/flutter ( 2500): ║                             "key": "other",
I/flutter ( 2500): ║                             "name": {ar: أخرى, en: Other},
I/flutter ( 2500): ║                             "sortOrder": 60
I/flutter ( 2500): ║                        }
I/flutter ( 2500): ║                     ],
I/flutter ( 2500): ║                     "premiumLargeSalad": {
I/flutter ( 2500): ║                         "premiumKey": "premium_large_salad",
I/flutter ( 2500): ║                         "presetKey": "large_salad",
I/flutter ( 2500): ║                         "extraFeeHalala": 2900,
I/flutter ( 2500): ║                         "groups": [
I/flutter ( 2500): ║                          {key: leafy_greens, minSelect: 0, maxSelect: 2},
I/flutter ( 2500): ║                          {key: vegetables, minSelect: 0, maxSelect: 19},
I/flutter ( 2500): ║                          {key: protein, minSelect: 1, maxSelect: 1},
I/flutter ( 2500): ║                          {key: cheese_nuts, minSelect: 0, maxSelect: 2},
I/flutter ( 2500): ║                          {key: fruits, minSelect: 0, maxSelect: 4},
I/flutter ( 2500): ║                          {key: sauce, minSelect: 1, maxSelect: 1}
I/flutter ( 2500): ║                         ],
I/flutter ( 2500): ║                         "allowedProteinKeys": [
I/flutter ( 2500): ║                                 boiled_eggs,
I/flutter ( 2500): ║                                 tuna,
I/flutter ( 2500): ║                                 chicken_fajita,
I/flutter ( 2500): ║                                 spicy_chicken,
I/flutter ( 2500): ║                                 italian_spiced_chicken,
I/flutter ( 2500): ║                                 chicken_tikka,
I/flutter ( 2500): ║                                 asian_chicken,
I/flutter ( 2500): ║                                 chicken_strips,
I/flutter ( 2500): ║                                 grilled_chicken,
I/flutter ( 2500): ║                                 mexican_chicken,
I/flutter ( 2500): ║                                 fish_fillet
I/flutter ( 2500): ║                         ],
I/flutter ( 2500): ║                         "excludedGroupKeys": [extra_protein_50g]
I/flutter ( 2500): ║                    }
I/flutter ( 2500): ║                }
I/flutter ( 2500): ║            }
I/flutter ( 2500): ║        }
I/flutter ( 2500): ║    }
I/flutter ( 2500): ║
I/flutter ( 2500): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 2500):
I/flutter ( 2500): ╔╣ Request ║ GET
I/flutter ( 2500): ║  https://basicdiet145.onrender.com/api/subscriptions/addon-choices
I/flutter ( 2500): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 2500):
I/flutter ( 2500): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 548 ms
I/flutter ( 2500): ║  https://basicdiet145.onrender.com/api/subscriptions/addon-choices
I/flutter ( 2500): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 2500): ╔ Headers
I/flutter ( 2500): ╟ x-dns-prefetch-control: [off]
I/flutter ( 2500): ╟ x-render-origin-server: [Render]
I/flutter ( 2500): ╟ date: [Thu, 25 Jun 2026 15:07:37 GMT]
I/flutter ( 2500): ╟ transfer-encoding: [chunked]
I/flutter ( 2500): ╟ origin-agent-cluster: [?1]
I/flutter ( 2500): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 2500): ╟ content-encoding: [gzip]
I/flutter ( 2500): ╟ server: [cloudflare]
I/flutter ( 2500): ╟ x-request-id: [5a40a94c-6c48-4a17-8440-c69701f5ea55]
I/flutter ( 2500): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 2500): ╟ cf-ray: [a114e2065c8a9822-MRS]
I/flutter ( 2500): ╟ etag: [W/"405d-SVMnyEpcEEZ5bqWqJa7iuiyj1CM"]
I/flutter ( 2500): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 2500): ╟ content-security-policy:
I/flutter ( 2500): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 2500): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 2500): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 2500): ╟ connection: [keep-alive]
I/flutter ( 2500): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 2500): ╟ referrer-policy: [no-referrer]
I/flutter ( 2500): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 2500): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 2500): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 2500): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 2500): ╟ rndr-id: [dd044c89-6119-4c65]
I/flutter ( 2500): ╟ x-xss-protection: [0]
I/flutter ( 2500): ╟ access-control-allow-credentials: [true]
I/flutter ( 2500): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 2500): ╟ x-download-options: [noopen]
I/flutter ( 2500): ╟ x-content-type-options: [nosniff]
I/flutter ( 2500): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 2500): ╔ Body
I/flutter ( 2500): ║
I/flutter ( 2500): ║    {
I/flutter ( 2500): ║         "status": true,
I/flutter ( 2500): ║         "data": {
I/flutter ( 2500): ║             "juice": {
I/flutter ( 2500): ║                 "category": "juice",
I/flutter ( 2500): ║                 "sourceCategories": [juices, drinks]
I/flutter ( 2500): ║                 "choices": [
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a3552633f6b8e45eac5bae6",
I/flutter ( 2500): ║                         "key": "orange_juice",
I/flutter ( 2500): ║                         "name": "عصير برتقال",
I/flutter ( 2500): ║                         "nameAr": "عصير برتقال",
I/flutter ( 2500): ║                         "nameI18n": {ar: عصير برتقال, en: Orange Juice},
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "priceHalala": 1000,
I/flutter ( 2500): ║                         "priceSar": 10,
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "calories": null,
I/flutter ( 2500): ║                         "prepTimeMinutes": null,
I/flutter ( 2500): ║                         "categoryKey": "juices",
I/flutter ( 2500): ║                         "itemType": "juice",
I/flutter ( 2500): ║                         "type": "menu_product",
I/flutter ( 2500): ║                         "available": true,
I/flutter ( 2500): ║                         "active": true,
I/flutter ( 2500): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a3552643f6b8e45eac5baeb",
I/flutter ( 2500): ║                         "key": "apple_juice",
I/flutter ( 2500): ║                         "name": "عصير تفاح",
I/flutter ( 2500): ║                         "nameAr": "عصير تفاح",
I/flutter ( 2500): ║                         "nameI18n": {ar: عصير تفاح, en: Apple Juice},
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "priceHalala": 1000,
I/flutter ( 2500): ║                         "priceSar": 10,
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "calories": null,
I/flutter ( 2500): ║                         "prepTimeMinutes": null,
I/flutter ( 2500): ║                         "categoryKey": "juices",
I/flutter ( 2500): ║                         "itemType": "juice",
I/flutter ( 2500): ║                         "type": "menu_product",
I/flutter ( 2500): ║                         "available": true,
I/flutter ( 2500): ║                         "active": true,
I/flutter ( 2500): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a3552653f6b8e45eac5baf0",
I/flutter ( 2500): ║                         "key": "mango_juice",
I/flutter ( 2500): ║                         "name": "عصير مانجو",
I/flutter ( 2500): ║                         "nameAr": "عصير مانجو",
I/flutter ( 2500): ║                         "nameI18n": {ar: عصير مانجو, en: Mango Juice},
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "priceHalala": 1000,
I/flutter ( 2500): ║                         "priceSar": 10,
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "calories": null,
I/flutter ( 2500): ║                         "prepTimeMinutes": null,
I/flutter ( 2500): ║                         "categoryKey": "juices",
I/flutter ( 2500): ║                         "itemType": "juice",
I/flutter ( 2500): ║                         "type": "menu_product",
I/flutter ( 2500): ║                         "available": true,
I/flutter ( 2500): ║                         "active": true,
I/flutter ( 2500): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a3552753f6b8e45eac5bb68",
I/flutter ( 2500): ║                         "key": "berry_blast",
I/flutter ( 2500): ║                         "name": "بيري بلاست",
I/flutter ( 2500): ║                         "nameAr": "بيري بلاست",
I/flutter ( 2500): ║                         "nameI18n": {ar: بيري بلاست, en: Berry Blast},
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "priceHalala": 1100,
I/flutter ( 2500): ║                         "priceSar": 11,
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "calories": null,
I/flutter ( 2500): ║                         "prepTimeMinutes": null,
I/flutter ( 2500): ║                         "categoryKey": "juices",
I/flutter ( 2500): ║                         "itemType": "juice",
I/flutter ( 2500): ║                         "type": "menu_product",
I/flutter ( 2500): ║                         "available": true,
I/flutter ( 2500): ║                         "active": true,
I/flutter ( 2500): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a3552763f6b8e45eac5bb6d",
I/flutter ( 2500): ║                         "key": "berry_prot",
I/flutter ( 2500): ║                         "name": "بيري بروت",
I/flutter ( 2500): ║                         "nameAr": "بيري بروت",
I/flutter ( 2500): ║                         "nameI18n": {ar: بيري بروت, en: Berry Prot},
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "priceHalala": 1300,
I/flutter ( 2500): ║                         "priceSar": 13,
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "calories": null,
I/flutter ( 2500): ║                         "prepTimeMinutes": null,
I/flutter ( 2500): ║                         "categoryKey": "juices",
I/flutter ( 2500): ║                         "itemType": "juice",
I/flutter ( 2500): ║                         "type": "menu_product",
I/flutter ( 2500): ║                         "available": true,
I/flutter ( 2500): ║                         "active": true,
I/flutter ( 2500): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a3552773f6b8e45eac5bb72",
I/flutter ( 2500): ║                         "key": "classic_green",
I/flutter ( 2500): ║                         "name": "كلاسيك جرين",
I/flutter ( 2500): ║                         "nameAr": "كلاسيك جرين",
I/flutter ( 2500): ║                         "nameI18n": {ar: كلاسيك جرين, en: Classic Green},
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "priceHalala": 1100,
I/flutter ( 2500): ║                         "priceSar": 11,
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "calories": null,
I/flutter ( 2500): ║                         "prepTimeMinutes": null,
I/flutter ( 2500): ║                         "categoryKey": "juices",
I/flutter ( 2500): ║                         "itemType": "juice",
I/flutter ( 2500): ║                         "type": "menu_product",
I/flutter ( 2500): ║                         "available": true,
I/flutter ( 2500): ║                         "active": true,
I/flutter ( 2500): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a3552773f6b8e45eac5bb77",
I/flutter ( 2500): ║                         "key": "beet_punch",
I/flutter ( 2500): ║                         "name": "بيت بنش",
I/flutter ( 2500): ║                         "nameAr": "بيت بنش",
I/flutter ( 2500): ║                         "nameI18n": {ar: بيت بنش, en: Beet Punch},
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "priceHalala": 1100,
I/flutter ( 2500): ║                         "priceSar": 11,
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "calories": null,
I/flutter ( 2500): ║                         "prepTimeMinutes": null,
I/flutter ( 2500): ║                         "categoryKey": "juices",
I/flutter ( 2500): ║                         "itemType": "juice",
I/flutter ( 2500): ║                         "type": "menu_product",
I/flutter ( 2500): ║                         "available": true,
I/flutter ( 2500): ║                         "active": true,
I/flutter ( 2500): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a3552783f6b8e45eac5bb7c",
I/flutter ( 2500): ║                         "key": "orange_carrot",
I/flutter ( 2500): ║                         "name": "برتقال وجزر",
I/flutter ( 2500): ║                         "nameAr": "برتقال وجزر",
I/flutter ( 2500): ║                         "nameI18n": {ar: برتقال وجزر, en: Orange Carrot},
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "priceHalala": 1100,
I/flutter ( 2500): ║                         "priceSar": 11,
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "calories": null,
I/flutter ( 2500): ║                         "prepTimeMinutes": null,
I/flutter ( 2500): ║                         "categoryKey": "juices",
I/flutter ( 2500): ║                         "itemType": "juice",
I/flutter ( 2500): ║                         "type": "menu_product",
I/flutter ( 2500): ║                         "available": true,
I/flutter ( 2500): ║                         "active": true,
I/flutter ( 2500): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a3552793f6b8e45eac5bb81",
I/flutter ( 2500): ║                         "key": "watermelon_mint",
I/flutter ( 2500): ║                         "name": "بطيخ بالنعناع",
I/flutter ( 2500): ║                         "nameAr": "بطيخ بالنعناع",
I/flutter ( 2500): ║                         "nameI18n": {ar: بطيخ بالنعناع, en: Watermelon Mint},
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "priceHalala": 1100,
I/flutter ( 2500): ║                         "priceSar": 11,
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "calories": null,
I/flutter ( 2500): ║                         "prepTimeMinutes": null,
I/flutter ( 2500): ║                         "categoryKey": "juices",
I/flutter ( 2500): ║                         "itemType": "juice",
I/flutter ( 2500): ║                         "type": "menu_product",
I/flutter ( 2500): ║                         "available": true,
I/flutter ( 2500): ║                         "active": true,
I/flutter ( 2500): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a35527b3f6b8e45eac5bb95",
I/flutter ( 2500): ║                         "key": "protein_drink",
I/flutter ( 2500): ║                         "name": "مشروب بروتين",
I/flutter ( 2500): ║                         "nameAr": "مشروب بروتين",
I/flutter ( 2500): ║                         "nameI18n": {ar: مشروب بروتين, en: Protein Drink},
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "priceHalala": 1900,
I/flutter ( 2500): ║                         "priceSar": 19,
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "calories": null,
I/flutter ( 2500): ║                         "prepTimeMinutes": null,
I/flutter ( 2500): ║                         "categoryKey": "drinks",
I/flutter ( 2500): ║                         "itemType": "drink",
I/flutter ( 2500): ║                         "type": "menu_product",
I/flutter ( 2500): ║                         "available": true,
I/flutter ( 2500): ║                         "active": true,
I/flutter ( 2500): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a35527c3f6b8e45eac5bb9a",
I/flutter ( 2500): ║                         "key": "diet_iced_tea",
I/flutter ( 2500): ║                         "name": "ايس تى دايت",
I/flutter ( 2500): ║                         "nameAr": "ايس تى دايت",
I/flutter ( 2500): ║                         "nameI18n": {ar: ايس تى دايت, en: Diet Iced Tea},
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "priceHalala": 400,
I/flutter ( 2500): ║                         "priceSar": 4,
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "calories": null,
I/flutter ( 2500): ║                         "prepTimeMinutes": null,
I/flutter ( 2500): ║                         "categoryKey": "drinks",
I/flutter ( 2500): ║                         "itemType": "drink",
I/flutter ( 2500): ║                         "type": "menu_product",
I/flutter ( 2500): ║                         "available": true,
I/flutter ( 2500): ║                         "active": true,
I/flutter ( 2500): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a35527d3f6b8e45eac5bb9f",
I/flutter ( 2500): ║                         "key": "diet_soda",
I/flutter ( 2500): ║                         "name": "صودا دايت",
I/flutter ( 2500): ║                         "nameAr": "صودا دايت",
I/flutter ( 2500): ║                         "nameI18n": {ar: صودا دايت, en: Diet Soda},
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "priceHalala": 300,
I/flutter ( 2500): ║                         "priceSar": 3,
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "calories": null,
I/flutter ( 2500): ║                         "prepTimeMinutes": null,
I/flutter ( 2500): ║                         "categoryKey": "drinks",
I/flutter ( 2500): ║                         "itemType": "drink",
I/flutter ( 2500): ║                         "type": "menu_product",
I/flutter ( 2500): ║                         "available": true,
I/flutter ( 2500): ║                         "active": true,
I/flutter ( 2500): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a35527d3f6b8e45eac5bba4",
I/flutter ( 2500): ║                         "key": "water",
I/flutter ( 2500): ║                         "name": "مياه عادية",
I/flutter ( 2500): ║                         "nameAr": "مياه عادية",
I/flutter ( 2500): ║                         "nameI18n": {ar: مياه عادية, en: Water},
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "priceHalala": 200,
I/flutter ( 2500): ║                         "priceSar": 2,
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "calories": null,
I/flutter ( 2500): ║                         "prepTimeMinutes": null,
I/flutter ( 2500): ║                         "categoryKey": "drinks",
I/flutter ( 2500): ║                         "itemType": "drink",
I/flutter ( 2500): ║                         "type": "menu_product",
I/flutter ( 2500): ║                         "available": true,
I/flutter ( 2500): ║                         "active": true,
I/flutter ( 2500): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 2500): ║                    }
I/flutter ( 2500): ║                 ]
I/flutter ( 2500): ║            }
I/flutter ( 2500): ║             "snack": {
I/flutter ( 2500): ║                 "category": "snack",
I/flutter ( 2500): ║                 "sourceCategories": [desserts]
I/flutter ( 2500): ║                 "choices": [
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a3552683f6b8e45eac5bb04",
I/flutter ( 2500): ║                         "key": "protein_snack",
I/flutter ( 2500): ║                         "name": "سناك بروتين",
I/flutter ( 2500): ║                         "nameAr": "سناك بروتين",
I/flutter ( 2500): ║                         "nameI18n": {ar: سناك بروتين, en: Protein Snack},
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "priceHalala": 1500,
I/flutter ( 2500): ║                         "priceSar": 15,
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "calories": null,
I/flutter ( 2500): ║                         "prepTimeMinutes": null,
I/flutter ( 2500): ║                         "categoryKey": "desserts",
I/flutter ( 2500): ║                         "itemType": "dessert",
I/flutter ( 2500): ║                         "type": "menu_product",
I/flutter ( 2500): ║                         "available": true,
I/flutter ( 2500): ║                         "active": true,
I/flutter ( 2500): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a3552683f6b8e45eac5bb09",
I/flutter ( 2500): ║                         "key": "healthy_dessert",
I/flutter ( 2500): ║                         "name": "حلوى صحية",
I/flutter ( 2500): ║                         "nameAr": "حلوى صحية",
I/flutter ( 2500): ║                         "nameI18n": {ar: حلوى صحية, en: Healthy Dessert},
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "priceHalala": 1500,
I/flutter ( 2500): ║                         "priceSar": 15,
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "calories": null,
I/flutter ( 2500): ║                         "prepTimeMinutes": null,
I/flutter ( 2500): ║                         "categoryKey": "desserts",
I/flutter ( 2500): ║                         "itemType": "dessert",
I/flutter ( 2500): ║                         "type": "menu_product",
I/flutter ( 2500): ║                         "available": true,
I/flutter ( 2500): ║                         "active": true,
I/flutter ( 2500): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a3552693f6b8e45eac5bb0e",
I/flutter ( 2500): ║                         "key": "snack_box",
I/flutter ( 2500): ║                         "name": "صندوق سناك",
I/flutter ( 2500): ║                         "nameAr": "صندوق سناك",
I/flutter ( 2500): ║                         "nameI18n": {ar: صندوق سناك, en: Snack Box},
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "priceHalala": 1500,
I/flutter ( 2500): ║                         "priceSar": 15,
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "calories": null,
I/flutter ( 2500): ║                         "prepTimeMinutes": null,
I/flutter ( 2500): ║                         "categoryKey": "desserts",
I/flutter ( 2500): ║                         "itemType": "dessert",
I/flutter ( 2500): ║                         "type": "menu_product",
I/flutter ( 2500): ║                         "available": true,
I/flutter ( 2500): ║                         "active": true,
I/flutter ( 2500): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a3552703f6b8e45eac5bb40",
I/flutter ( 2500): ║                         "key": "orange_cake",
I/flutter ( 2500): ║                         "name": "كيكة البرتقال",
I/flutter ( 2500): ║                         "nameAr": "كيكة البرتقال",
I/flutter ( 2500): ║                         "nameI18n": {ar: كيكة البرتقال, en: Orange Cake},
I/flutter ( 2500): ║                         "description": "كيكة برتقال صحية محضرة بمكونات خفيفة، بطعم برتقال طبيعي منعش وقوا
I/flutter ( 2500): ║                          م ناعم، بدون سكر."
I/flutter ( 2500): ║                         "descriptionI18n": {
I/flutter ( 2500): ║                             "ar": "كيكة برتقال صحية محضرة بمكونات خفيفة، بطعم برتقال طبيعي منعش
I/flutter ( 2500): ║                              وقوام ناعم، بدون سكر."
I/flutter ( 2500): ║                             "en": "Healthy orange cake made with light ingredients, natural refr
I/flutter ( 2500): ║                              eshing orange flavor, soft texture, and no sugar."
I/flutter ( 2500): ║                        }
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "priceHalala": 900,
I/flutter ( 2500): ║                         "priceSar": 9,
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "calories": null,
I/flutter ( 2500): ║                         "prepTimeMinutes": null,
I/flutter ( 2500): ║                         "categoryKey": "desserts",
I/flutter ( 2500): ║                         "itemType": "dessert",
I/flutter ( 2500): ║                         "type": "menu_product",
I/flutter ( 2500): ║                         "available": true,
I/flutter ( 2500): ║                         "active": true,
I/flutter ( 2500): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a3552713f6b8e45eac5bb45",
I/flutter ( 2500): ║                         "key": "apple_cinnamon_muffin_2pcs",
I/flutter ( 2500): ║                         "name": "مافن التفاح بالقرفة قطعتين",
I/flutter ( 2500): ║                         "nameAr": "مافن التفاح بالقرفة قطعتين",
I/flutter ( 2500): ║                         "nameI18n": {ar: مافن التفاح بالقرفة قطعتين, en: Apple Cinnamon Muffin - 2 Pieces},
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "priceHalala": 1200,
I/flutter ( 2500): ║                         "priceSar": 12,
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "calories": null,
I/flutter ( 2500): ║                         "prepTimeMinutes": null,
I/flutter ( 2500): ║                         "categoryKey": "desserts",
I/flutter ( 2500): ║                         "itemType": "dessert",
I/flutter ( 2500): ║                         "type": "menu_product",
I/flutter ( 2500): ║                         "available": true,
I/flutter ( 2500): ║                         "active": true,
I/flutter ( 2500): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a3552713f6b8e45eac5bb4a",
I/flutter ( 2500): ║                         "key": "berry_cheesecake",
I/flutter ( 2500): ║                         "name": "تشيز كيك بالتوت",
I/flutter ( 2500): ║                         "nameAr": "تشيز كيك بالتوت",
I/flutter ( 2500): ║                         "nameI18n": {ar: تشيز كيك بالتوت, en: Berry Cheesecake},
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "priceHalala": 1900,
I/flutter ( 2500): ║                         "priceSar": 19,
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "calories": null,
I/flutter ( 2500): ║                         "prepTimeMinutes": null,
I/flutter ( 2500): ║                         "categoryKey": "desserts",
I/flutter ( 2500): ║                         "itemType": "dessert",
I/flutter ( 2500): ║                         "type": "menu_product",
I/flutter ( 2500): ║                         "available": true,
I/flutter ( 2500): ║                         "active": true,
I/flutter ( 2500): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a3552723f6b8e45eac5bb4f",
I/flutter ( 2500): ║                         "key": "strawberry_cheesecake",
I/flutter ( 2500): ║                         "name": "تشيز كيك بالفراولة",
I/flutter ( 2500): ║                         "nameAr": "تشيز كيك بالفراولة",
I/flutter ( 2500): ║                         "nameI18n": {ar: تشيز كيك بالفراولة, en: Strawberry Cheesecake},
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "priceHalala": 1900,
I/flutter ( 2500): ║                         "priceSar": 19,
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "calories": null,
I/flutter ( 2500): ║                         "prepTimeMinutes": null,
I/flutter ( 2500): ║                         "categoryKey": "desserts",
I/flutter ( 2500): ║                         "itemType": "dessert",
I/flutter ( 2500): ║                         "type": "menu_product",
I/flutter ( 2500): ║                         "available": true,
I/flutter ( 2500): ║                         "active": true,
I/flutter ( 2500): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a3552733f6b8e45eac5bb54",
I/flutter ( 2500): ║                         "key": "dark_brownies",
I/flutter ( 2500): ║                         "name": "براونيز داكن",
I/flutter ( 2500): ║                         "nameAr": "براونيز داكن",
I/flutter ( 2500): ║                         "nameI18n": {ar: براونيز داكن, en: Dark Brownies},
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "priceHalala": 1300,
I/flutter ( 2500): ║                         "priceSar": 13,
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "calories": null,
I/flutter ( 2500): ║                         "prepTimeMinutes": null,
I/flutter ( 2500): ║                         "categoryKey": "desserts",
I/flutter ( 2500): ║                         "itemType": "dessert",
I/flutter ( 2500): ║                         "type": "menu_product",
I/flutter ( 2500): ║                         "available": true,
I/flutter ( 2500): ║                         "active": true,
I/flutter ( 2500): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a3552733f6b8e45eac5bb59",
I/flutter ( 2500): ║                         "key": "protein_bar",
I/flutter ( 2500): ║                         "name": "بروتين بار",
I/flutter ( 2500): ║                         "nameAr": "بروتين بار",
I/flutter ( 2500): ║                         "nameI18n": {ar: بروتين بار, en: Protein Bar},
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "priceHalala": 1500,
I/flutter ( 2500): ║                         "priceSar": 15,
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "calories": null,
I/flutter ( 2500): ║                         "prepTimeMinutes": null,
I/flutter ( 2500): ║                         "categoryKey": "desserts",
I/flutter ( 2500): ║                         "itemType": "dessert",
I/flutter ( 2500): ║                         "type": "menu_product",
I/flutter ( 2500): ║                         "available": true,
I/flutter ( 2500): ║                         "active": true,
I/flutter ( 2500): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a3552743f6b8e45eac5bb5e",
I/flutter ( 2500): ║                         "key": "basic_classic",
I/flutter ( 2500): ║                         "name": "بيسك كلاسيك",
I/flutter ( 2500): ║                         "nameAr": "بيسك كلاسيك",
I/flutter ( 2500): ║                         "nameI18n": {ar: بيسك كلاسيك, en: Basic Classic},
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "priceHalala": 1400,
I/flutter ( 2500): ║                         "priceSar": 14,
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "calories": null,
I/flutter ( 2500): ║                         "prepTimeMinutes": null,
I/flutter ( 2500): ║                         "categoryKey": "desserts",
I/flutter ( 2500): ║                         "itemType": "dessert",
I/flutter ( 2500): ║                         "type": "menu_product",
I/flutter ( 2500): ║                         "available": true,
I/flutter ( 2500): ║                         "active": true,
I/flutter ( 2500): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a3552753f6b8e45eac5bb63",
I/flutter ( 2500): ║                         "key": "protein_chocolate_cake",
I/flutter ( 2500): ║                         "name": "كيك شوكولاتة بروتين",
I/flutter ( 2500): ║                         "nameAr": "كيك شوكولاتة بروتين",
I/flutter ( 2500): ║                         "nameI18n": {ar: كيك شوكولاتة بروتين, en: Protein Chocolate Cake},
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "priceHalala": 1900,
I/flutter ( 2500): ║                         "priceSar": 19,
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "calories": null,
I/flutter ( 2500): ║                         "prepTimeMinutes": null,
I/flutter ( 2500): ║                         "categoryKey": "desserts",
I/flutter ( 2500): ║                         "itemType": "dessert",
I/flutter ( 2500): ║                         "type": "menu_product",
I/flutter ( 2500): ║                         "available": true,
I/flutter ( 2500): ║                         "active": true,
I/flutter ( 2500): ║                         "ui": {cardVariant: addon_card, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 2500): ║                    }
I/flutter ( 2500): ║                 ]
I/flutter ( 2500): ║            }
I/flutter ( 2500): ║             "small_salad": {
I/flutter ( 2500): ║                 "category": "small_salad",
I/flutter ( 2500): ║                 "sourceCategories": [light_options]
I/flutter ( 2500): ║                 "choices": [
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a3552463f6b8e45eac5ba0e",
I/flutter ( 2500): ║                         "key": "green_salad",
I/flutter ( 2500): ║                         "name": "سلطة خضراء - 100 جرام",
I/flutter ( 2500): ║                         "nameAr": "سلطة خضراء - 100 جرام",
I/flutter ( 2500): ║                         "nameI18n": {ar: سلطة خضراء - 100 جرام, en: Green Salad - 100g},
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "priceHalala": 1500,
I/flutter ( 2500): ║                         "priceSar": 15,
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "calories": null,
I/flutter ( 2500): ║                         "prepTimeMinutes": null,
I/flutter ( 2500): ║                         "categoryKey": "light_options",
I/flutter ( 2500): ║                         "itemType": "green_salad",
I/flutter ( 2500): ║                         "type": "menu_product",
I/flutter ( 2500): ║                         "available": true,
I/flutter ( 2500): ║                         "active": true,
I/flutter ( 2500): ║                         "ui": {cardVariant: compact_builder, cardSize: medium, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a3552543f6b8e45eac5ba79",
I/flutter ( 2500): ║                         "key": "fruit_salad",
I/flutter ( 2500): ║                         "name": "سلطة فواكه – 150 جرام",
I/flutter ( 2500): ║                         "nameAr": "سلطة فواكه – 150 جرام",
I/flutter ( 2500): ║                         "nameI18n": {ar: سلطة فواكه – 150 جرام, en: Fruit Salad – 150g},
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "priceHalala": 1700,
I/flutter ( 2500): ║                         "priceSar": 17,
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "calories": null,
I/flutter ( 2500): ║                         "prepTimeMinutes": null,
I/flutter ( 2500): ║                         "categoryKey": "light_options",
I/flutter ( 2500): ║                         "itemType": "fruit_salad",
I/flutter ( 2500): ║                         "type": "menu_product",
I/flutter ( 2500): ║                         "available": true,
I/flutter ( 2500): ║                         "active": true,
I/flutter ( 2500): ║                         "ui": {cardVariant: compact_builder, cardSize: medium, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a3552663f6b8e45eac5baf5",
I/flutter ( 2500): ║                         "key": "greek_salad",
I/flutter ( 2500): ║                         "name": "سلطة يونانية",
I/flutter ( 2500): ║                         "nameAr": "سلطة يونانية",
I/flutter ( 2500): ║                         "nameI18n": {ar: سلطة يونانية, en: Greek Salad},
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "priceHalala": 1200,
I/flutter ( 2500): ║                         "priceSar": 12,
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "calories": null,
I/flutter ( 2500): ║                         "prepTimeMinutes": null,
I/flutter ( 2500): ║                         "categoryKey": "light_options",
I/flutter ( 2500): ║                         "itemType": "green_salad",
I/flutter ( 2500): ║                         "type": "menu_product",
I/flutter ( 2500): ║                         "available": true,
I/flutter ( 2500): ║                         "active": true,
I/flutter ( 2500): ║                         "ui": {cardVariant: addon, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a3552663f6b8e45eac5bafa",
I/flutter ( 2500): ║                         "key": "fruit_salad_addon",
I/flutter ( 2500): ║                         "name": "سلطة فواكه",
I/flutter ( 2500): ║                         "nameAr": "سلطة فواكه",
I/flutter ( 2500): ║                         "nameI18n": {ar: سلطة فواكه, en: Fruit Salad},
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "priceHalala": 1200,
I/flutter ( 2500): ║                         "priceSar": 12,
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "calories": null,
I/flutter ( 2500): ║                         "prepTimeMinutes": null,
I/flutter ( 2500): ║                         "categoryKey": "light_options",
I/flutter ( 2500): ║                         "itemType": "fruit_salad",
I/flutter ( 2500): ║                         "type": "menu_product",
I/flutter ( 2500): ║                         "available": true,
I/flutter ( 2500): ║                         "active": true,
I/flutter ( 2500): ║                         "ui": {cardVariant: addon, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 2500): ║                    },
I/flutter ( 2500): ║                    {
I/flutter ( 2500): ║                         "id": "6a3552673f6b8e45eac5baff",
I/flutter ( 2500): ║                         "key": "vegetable_salad",
I/flutter ( 2500): ║                         "name": "سلطة خضار",
I/flutter ( 2500): ║                         "nameAr": "سلطة خضار",
I/flutter ( 2500): ║                         "nameI18n": {ar: سلطة خضار, en: Vegetable Salad},
I/flutter ( 2500): ║                         "description": "",
I/flutter ( 2500): ║                         "descriptionI18n": {ar: , en: },
I/flutter ( 2500): ║                         "imageUrl": "",
I/flutter ( 2500): ║                         "priceHalala": 1200,
I/flutter ( 2500): ║                         "priceSar": 12,
I/flutter ( 2500): ║                         "currency": "SAR",
I/flutter ( 2500): ║                         "calories": null,
I/flutter ( 2500): ║                         "prepTimeMinutes": null,
I/flutter ( 2500): ║                         "categoryKey": "light_options",
I/flutter ( 2500): ║                         "itemType": "green_salad",
I/flutter ( 2500): ║                         "type": "menu_product",
I/flutter ( 2500): ║                         "available": true,
I/flutter ( 2500): ║                         "active": true,
I/flutter ( 2500): ║                         "ui": {cardVariant: addon, cardSize: small, badge: , ctaLabel: , imageRatio: square}
I/flutter ( 2500): ║                    }
I/flutter ( 2500): ║                 ]
I/flutter ( 2500): ║            }
I/flutter ( 2500): ║        }
I/flutter ( 2500): ║    }
I/flutter ( 2500): ║
I/flutter ( 2500): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 2500): onChange -- MealPlannerBloc, Change { currentState: MealPlannerLoading(), nextState: MealPlannerLoaded([Instance of 'TimelineDayModel', 