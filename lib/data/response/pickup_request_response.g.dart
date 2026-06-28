// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pickup_request_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PickupWalletResponse _$PickupWalletResponseFromJson(
  Map<String, dynamic> json,
) => PickupWalletResponse(
  totalEntitlement: (json['totalEntitlement'] as num?)?.toInt(),
  consumedMeals: (json['consumedMeals'] as num?)?.toInt(),
  reservedMeals: (json['reservedMeals'] as num?)?.toInt(),
  availableMeals: (json['availableMeals'] as num?)?.toInt(),
);

Map<String, dynamic> _$PickupWalletResponseToJson(
  PickupWalletResponse instance,
) => <String, dynamic>{
  'totalEntitlement': instance.totalEntitlement,
  'consumedMeals': instance.consumedMeals,
  'reservedMeals': instance.reservedMeals,
  'availableMeals': instance.availableMeals,
};

PickupSlotDisplayResponse _$PickupSlotDisplayResponseFromJson(
  Map<String, dynamic> json,
) => PickupSlotDisplayResponse(
  titleAr: json['titleAr'] as String?,
  titleEn: json['titleEn'] as String?,
  subtitleAr: json['subtitleAr'] as String?,
  subtitleEn: json['subtitleEn'] as String?,
  badgesAr:
      (json['badgesAr'] as List<dynamic>?)?.map((e) => e as String).toList(),
  badgesEn:
      (json['badgesEn'] as List<dynamic>?)?.map((e) => e as String).toList(),
  statusTextAr: json['statusTextAr'] as String?,
  statusTextEn: json['statusTextEn'] as String?,
  unavailableTextAr: json['unavailableTextAr'] as String?,
  unavailableTextEn: json['unavailableTextEn'] as String?,
  selectionTextAr: json['selectionTextAr'] as String?,
  selectionTextEn: json['selectionTextEn'] as String?,
);

Map<String, dynamic> _$PickupSlotDisplayResponseToJson(
  PickupSlotDisplayResponse instance,
) => <String, dynamic>{
  'titleAr': instance.titleAr,
  'titleEn': instance.titleEn,
  'subtitleAr': instance.subtitleAr,
  'subtitleEn': instance.subtitleEn,
  'badgesAr': instance.badgesAr,
  'badgesEn': instance.badgesEn,
  'statusTextAr': instance.statusTextAr,
  'statusTextEn': instance.statusTextEn,
  'unavailableTextAr': instance.unavailableTextAr,
  'unavailableTextEn': instance.unavailableTextEn,
  'selectionTextAr': instance.selectionTextAr,
  'selectionTextEn': instance.selectionTextEn,
};

PickupSlotTitleResponse _$PickupSlotTitleResponseFromJson(
  Map<String, dynamic> json,
) => PickupSlotTitleResponse(
  ar: json['ar'] as String?,
  en: json['en'] as String?,
);

Map<String, dynamic> _$PickupSlotTitleResponseToJson(
  PickupSlotTitleResponse instance,
) => <String, dynamic>{'ar': instance.ar, 'en': instance.en};

PickupAvailabilitySlotResponse _$PickupAvailabilitySlotResponseFromJson(
  Map<String, dynamic> json,
) => PickupAvailabilitySlotResponse(
  slotId: json['slotId'] as String?,
  slotKey: json['slotKey'] as String?,
  slotIndex: (json['slotIndex'] as num?)?.toInt(),
  title:
      json['title'] == null
          ? null
          : PickupSlotTitleResponse.fromJson(
            json['title'] as Map<String, dynamic>,
          ),
  meal:
      json['meal'] == null
          ? null
          : PickupAvailabilityMealResponse.fromJson(
            json['meal'] as Map<String, dynamic>,
          ),
  product:
      json['product'] == null
          ? null
          : PickupAvailabilityProductResponse.fromJson(
            json['product'] as Map<String, dynamic>,
          ),
  productId: json['productId'] as String?,
  productName: json['productName'] as String?,
  proteinKey: json['proteinKey'] as String?,
  isAvailableForPickup: json['isAvailableForPickup'] as bool?,
  available: json['available'] as bool?,
  canSelect: json['canSelect'] as bool?,
  pickupRequestId: json['pickupRequestId'] as String?,
  reservedByPickupRequestId: json['reservedByPickupRequestId'] as String?,
  status: json['status'] as String?,
  unavailableReason: json['unavailableReason'] as String?,
  paymentRequired: json['paymentRequired'] as bool?,
  payment:
      json['payment'] == null
          ? null
          : PickupAvailabilityPaymentResponse.fromJson(
            json['payment'] as Map<String, dynamic>,
          ),
  addons:
      (json['addons'] as List<dynamic>?)
          ?.map(
            (e) => PickupAvailabilityAddonResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
  paymentStatus: json['paymentStatus'] as String?,
  amountDue: json['amountDue'] as num?,
  display:
      json['display'] == null
          ? null
          : PickupSlotDisplayResponse.fromJson(
            json['display'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$PickupAvailabilitySlotResponseToJson(
  PickupAvailabilitySlotResponse instance,
) => <String, dynamic>{
  'slotId': instance.slotId,
  'slotKey': instance.slotKey,
  'slotIndex': instance.slotIndex,
  'title': instance.title,
  'meal': instance.meal,
  'product': instance.product,
  'productId': instance.productId,
  'productName': instance.productName,
  'proteinKey': instance.proteinKey,
  'isAvailableForPickup': instance.isAvailableForPickup,
  'available': instance.available,
  'canSelect': instance.canSelect,
  'pickupRequestId': instance.pickupRequestId,
  'reservedByPickupRequestId': instance.reservedByPickupRequestId,
  'status': instance.status,
  'unavailableReason': instance.unavailableReason,
  'paymentRequired': instance.paymentRequired,
  'payment': instance.payment,
  'addons': instance.addons,
  'paymentStatus': instance.paymentStatus,
  'amountDue': instance.amountDue,
  'display': instance.display,
};

PickupAvailabilityAddonResponse _$PickupAvailabilityAddonResponseFromJson(
  Map<String, dynamic> json,
) => PickupAvailabilityAddonResponse(
  id: json['id'] as String?,
  name:
      json['name'] == null
          ? null
          : PickupSlotTitleResponse.fromJson(
            json['name'] as Map<String, dynamic>,
          ),
  quantity: (json['quantity'] as num?)?.toInt(),
  price: json['price'] as num?,
  paymentStatus: json['paymentStatus'] as String?,
  paymentRequired: json['paymentRequired'] as bool?,
  addonScope: json['addonScope'] as String?,
);

Map<String, dynamic> _$PickupAvailabilityAddonResponseToJson(
  PickupAvailabilityAddonResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'quantity': instance.quantity,
  'price': instance.price,
  'paymentStatus': instance.paymentStatus,
  'paymentRequired': instance.paymentRequired,
  'addonScope': instance.addonScope,
};

PickupAvailabilityMealResponse _$PickupAvailabilityMealResponseFromJson(
  Map<String, dynamic> json,
) => PickupAvailabilityMealResponse(
  title:
      json['title'] == null
          ? null
          : PickupSlotTitleResponse.fromJson(
            json['title'] as Map<String, dynamic>,
          ),
  subtitle:
      json['subtitle'] == null
          ? null
          : PickupSlotTitleResponse.fromJson(
            json['subtitle'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$PickupAvailabilityMealResponseToJson(
  PickupAvailabilityMealResponse instance,
) => <String, dynamic>{'title': instance.title, 'subtitle': instance.subtitle};

PickupAvailabilityProductResponse _$PickupAvailabilityProductResponseFromJson(
  Map<String, dynamic> json,
) => PickupAvailabilityProductResponse(
  id: json['id'] as String?,
  name:
      json['name'] == null
          ? null
          : PickupSlotTitleResponse.fromJson(
            json['name'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$PickupAvailabilityProductResponseToJson(
  PickupAvailabilityProductResponse instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};

PickupAvailabilityPaymentResponse _$PickupAvailabilityPaymentResponseFromJson(
  Map<String, dynamic> json,
) => PickupAvailabilityPaymentResponse(
  required: json['required'] as bool?,
  status: json['status'] as String?,
  amountDue: json['amountDue'] as num?,
);

Map<String, dynamic> _$PickupAvailabilityPaymentResponseToJson(
  PickupAvailabilityPaymentResponse instance,
) => <String, dynamic>{
  'required': instance.required,
  'status': instance.status,
  'amountDue': instance.amountDue,
};

PickupAvailabilityStateResponse _$PickupAvailabilityStateResponseFromJson(
  Map<String, dynamic> json,
) => PickupAvailabilityStateResponse(
  state: json['state'] as String?,
  available: json['available'] as bool?,
  canSelect: json['canSelect'] as bool?,
  unavailableReason: json['unavailableReason'] as String?,
  reservedByPickupRequestId: json['reservedByPickupRequestId'] as String?,
);

Map<String, dynamic> _$PickupAvailabilityStateResponseToJson(
  PickupAvailabilityStateResponse instance,
) => <String, dynamic>{
  'state': instance.state,
  'available': instance.available,
  'canSelect': instance.canSelect,
  'unavailableReason': instance.unavailableReason,
  'reservedByPickupRequestId': instance.reservedByPickupRequestId,
};

PickupAvailabilityItemResponse _$PickupAvailabilityItemResponseFromJson(
  Map<String, dynamic> json,
) => PickupAvailabilityItemResponse(
  itemId: json['itemId'] as String?,
  itemType: json['itemType'] as String?,
  label: json['label'] as String?,
  selectionMode: json['selectionMode'] as String?,
  categoryKey: json['categoryKey'] as String?,
  title:
      json['title'] == null
          ? null
          : PickupSlotTitleResponse.fromJson(
            json['title'] as Map<String, dynamic>,
          ),
  subtitle:
      json['subtitle'] == null
          ? null
          : PickupSlotTitleResponse.fromJson(
            json['subtitle'] as Map<String, dynamic>,
          ),
  display:
      json['display'] == null
          ? null
          : PickupSlotDisplayResponse.fromJson(
            json['display'] as Map<String, dynamic>,
          ),
  availability:
      json['availability'] == null
          ? null
          : PickupAvailabilityStateResponse.fromJson(
            json['availability'] as Map<String, dynamic>,
          ),
  payment:
      json['payment'] == null
          ? null
          : PickupAvailabilityPaymentResponse.fromJson(
            json['payment'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$PickupAvailabilityItemResponseToJson(
  PickupAvailabilityItemResponse instance,
) => <String, dynamic>{
  'itemId': instance.itemId,
  'itemType': instance.itemType,
  'label': instance.label,
  'selectionMode': instance.selectionMode,
  'categoryKey': instance.categoryKey,
  'title': instance.title,
  'subtitle': instance.subtitle,
  'display': instance.display,
  'availability': instance.availability,
  'payment': instance.payment,
};

PickupAvailabilitySummaryResponse _$PickupAvailabilitySummaryResponseFromJson(
  Map<String, dynamic> json,
) => PickupAvailabilitySummaryResponse(
  availableCount: (json['availableCount'] as num?)?.toInt(),
  unavailableCount: (json['unavailableCount'] as num?)?.toInt(),
  availableSelectableCount: (json['availableSelectableCount'] as num?)?.toInt(),
  paymentBlockedCount: (json['paymentBlockedCount'] as num?)?.toInt(),
  reservedCount: (json['reservedCount'] as num?)?.toInt(),
  fulfilledCount: (json['fulfilledCount'] as num?)?.toInt(),
  noShowCount: (json['noShowCount'] as num?)?.toInt(),
  hiddenUnavailableCount: (json['hiddenUnavailableCount'] as num?)?.toInt(),
  availableMealSlotCount: (json['availableMealSlotCount'] as num?)?.toInt(),
  availableAddonCount: (json['availableAddonCount'] as num?)?.toInt(),
  availableSaladCount: (json['availableSaladCount'] as num?)?.toInt(),
  availableProteinExtraCount:
      (json['availableProteinExtraCount'] as num?)?.toInt(),
  availableSandwichCount: (json['availableSandwichCount'] as num?)?.toInt(),
  canAppendMeals: json['canAppendMeals'] as bool?,
  appendLimit: (json['appendLimit'] as num?)?.toInt(),
  titleAr: json['titleAr'] as String?,
  titleEn: json['titleEn'] as String?,
  emptyTextAr: json['emptyTextAr'] as String?,
  emptyTextEn: json['emptyTextEn'] as String?,
  canCreatePickupRequest: json['canCreatePickupRequest'] as bool?,
);

Map<String, dynamic> _$PickupAvailabilitySummaryResponseToJson(
  PickupAvailabilitySummaryResponse instance,
) => <String, dynamic>{
  'availableCount': instance.availableCount,
  'unavailableCount': instance.unavailableCount,
  'availableSelectableCount': instance.availableSelectableCount,
  'paymentBlockedCount': instance.paymentBlockedCount,
  'reservedCount': instance.reservedCount,
  'fulfilledCount': instance.fulfilledCount,
  'noShowCount': instance.noShowCount,
  'hiddenUnavailableCount': instance.hiddenUnavailableCount,
  'availableMealSlotCount': instance.availableMealSlotCount,
  'availableAddonCount': instance.availableAddonCount,
  'availableSaladCount': instance.availableSaladCount,
  'availableProteinExtraCount': instance.availableProteinExtraCount,
  'availableSandwichCount': instance.availableSandwichCount,
  'canAppendMeals': instance.canAppendMeals,
  'appendLimit': instance.appendLimit,
  'titleAr': instance.titleAr,
  'titleEn': instance.titleEn,
  'emptyTextAr': instance.emptyTextAr,
  'emptyTextEn': instance.emptyTextEn,
  'canCreatePickupRequest': instance.canCreatePickupRequest,
};

PickupAvailabilityDataResponse _$PickupAvailabilityDataResponseFromJson(
  Map<String, dynamic> json,
) => PickupAvailabilityDataResponse(
  subscriptionId: json['subscriptionId'] as String?,
  date: json['date'] as String?,
  subscriptionDayId: json['subscriptionDayId'] as String?,
  wallet:
      json['wallet'] == null
          ? null
          : PickupWalletResponse.fromJson(
            json['wallet'] as Map<String, dynamic>,
          ),
  remainingMeals: (json['remainingMeals'] as num?)?.toInt(),
  paymentReason: json['paymentReason'] as String?,
  plannedSlots:
      (json['plannedSlots'] as List<dynamic>?)
          ?.map(
            (e) => PickupAvailabilitySlotResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
  slots:
      (json['slots'] as List<dynamic>?)
          ?.map(
            (e) => PickupAvailabilitySlotResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
  unavailableSlots:
      (json['unavailableSlots'] as List<dynamic>?)
          ?.map(
            (e) => PickupAvailabilitySlotResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
  pickupItems:
      (json['pickupItems'] as List<dynamic>?)
          ?.map(
            (e) => PickupAvailabilityItemResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
  dayAddons:
      (json['dayAddons'] as List<dynamic>?)
          ?.map(
            (e) => PickupAvailabilityAddonResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
  addonSummary: json['addonSummary'] as Map<String, dynamic>?,
  sections:
      (json['sections'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
  availableSlotIds:
      (json['availableSlotIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  unavailableSlotIds:
      (json['unavailableSlotIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  canAppendMeals: json['canAppendMeals'] as bool?,
  appendLimit: (json['appendLimit'] as num?)?.toInt(),
  summary:
      json['summary'] == null
          ? null
          : PickupAvailabilitySummaryResponse.fromJson(
            json['summary'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$PickupAvailabilityDataResponseToJson(
  PickupAvailabilityDataResponse instance,
) => <String, dynamic>{
  'subscriptionId': instance.subscriptionId,
  'date': instance.date,
  'subscriptionDayId': instance.subscriptionDayId,
  'wallet': instance.wallet,
  'remainingMeals': instance.remainingMeals,
  'paymentReason': instance.paymentReason,
  'plannedSlots': instance.plannedSlots,
  'slots': instance.slots,
  'unavailableSlots': instance.unavailableSlots,
  'pickupItems': instance.pickupItems,
  'dayAddons': instance.dayAddons,
  'addonSummary': instance.addonSummary,
  'sections': instance.sections,
  'availableSlotIds': instance.availableSlotIds,
  'unavailableSlotIds': instance.unavailableSlotIds,
  'canAppendMeals': instance.canAppendMeals,
  'appendLimit': instance.appendLimit,
  'summary': instance.summary,
};

PickupAvailabilityResponse _$PickupAvailabilityResponseFromJson(
  Map<String, dynamic> json,
) => PickupAvailabilityResponse(
  status: json['status'] as bool?,
  data:
      json['data'] == null
          ? null
          : PickupAvailabilityDataResponse.fromJson(
            json['data'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$PickupAvailabilityResponseToJson(
  PickupAvailabilityResponse instance,
) => <String, dynamic>{'status': instance.status, 'data': instance.data};

PickupRequestMealResponse _$PickupRequestMealResponseFromJson(
  Map<String, dynamic> json,
) => PickupRequestMealResponse(
  slotId: json['slotId'] as String?,
  display:
      json['display'] == null
          ? null
          : PickupSlotDisplayResponse.fromJson(
            json['display'] as Map<String, dynamic>,
          ),
  title:
      json['title'] == null
          ? null
          : PickupSlotTitleResponse.fromJson(
            json['title'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$PickupRequestMealResponseToJson(
  PickupRequestMealResponse instance,
) => <String, dynamic>{
  'slotId': instance.slotId,
  'display': instance.display,
  'title': instance.title,
};

SelectedPickupItemResponse _$SelectedPickupItemResponseFromJson(
  Map<String, dynamic> json,
) => SelectedPickupItemResponse(
  itemId: json['itemId'] as String?,
  itemType: json['itemType'] as String?,
  label: json['label'] as String?,
);

Map<String, dynamic> _$SelectedPickupItemResponseToJson(
  SelectedPickupItemResponse instance,
) => <String, dynamic>{
  'itemId': instance.itemId,
  'itemType': instance.itemType,
  'label': instance.label,
};

PickupRequestDataResponse _$PickupRequestDataResponseFromJson(
  Map<String, dynamic> json,
) => PickupRequestDataResponse(
  requestId: json['requestId'] as String?,
  id: json['id'] as String?,
  subscriptionId: json['subscriptionId'] as String?,
  subscriptionDayId: json['subscriptionDayId'] as String?,
  date: json['date'] as String?,
  mealCount: (json['mealCount'] as num?)?.toInt(),
  selectedMealSlotIds:
      (json['selectedMealSlotIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  selectedPickupItemIds:
      (json['selectedPickupItemIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  selectedPickupItems:
      (json['selectedPickupItems'] as List<dynamic>?)
          ?.map(
            (e) =>
                SelectedPickupItemResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  addonCount: (json['addonCount'] as num?)?.toInt(),
  itemCount: (json['itemCount'] as num?)?.toInt(),
  status: json['status'] as String?,
  statusLabel: json['statusLabel'] as String?,
  message: json['message'] as String?,
  currentStep: (json['currentStep'] as num?)?.toInt(),
  selectionMode: json['selectionMode'] as String?,
  isReady: json['isReady'] as bool?,
  isCompleted: json['isCompleted'] as bool?,
  creditsReserved: json['creditsReserved'] as bool?,
  pickupCode: json['pickupCode'] as String?,
  pickupCodeIssuedAt: json['pickupCodeIssuedAt'] as String?,
  fulfilledAt: json['fulfilledAt'] as String?,
  createdAt: json['createdAt'] as String?,
  idempotent: json['idempotent'] as bool?,
  nextAction: json['nextAction'] as String?,
  meals:
      (json['meals'] as List<dynamic>?)
          ?.map(
            (e) =>
                PickupRequestMealResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
);

Map<String, dynamic> _$PickupRequestDataResponseToJson(
  PickupRequestDataResponse instance,
) => <String, dynamic>{
  'requestId': instance.requestId,
  'id': instance.id,
  'subscriptionId': instance.subscriptionId,
  'subscriptionDayId': instance.subscriptionDayId,
  'date': instance.date,
  'mealCount': instance.mealCount,
  'selectedMealSlotIds': instance.selectedMealSlotIds,
  'selectedPickupItemIds': instance.selectedPickupItemIds,
  'selectedPickupItems': instance.selectedPickupItems,
  'addonCount': instance.addonCount,
  'itemCount': instance.itemCount,
  'status': instance.status,
  'statusLabel': instance.statusLabel,
  'message': instance.message,
  'currentStep': instance.currentStep,
  'selectionMode': instance.selectionMode,
  'isReady': instance.isReady,
  'isCompleted': instance.isCompleted,
  'creditsReserved': instance.creditsReserved,
  'pickupCode': instance.pickupCode,
  'pickupCodeIssuedAt': instance.pickupCodeIssuedAt,
  'fulfilledAt': instance.fulfilledAt,
  'createdAt': instance.createdAt,
  'idempotent': instance.idempotent,
  'nextAction': instance.nextAction,
  'meals': instance.meals,
};

PickupRequestResponse _$PickupRequestResponseFromJson(
  Map<String, dynamic> json,
) => PickupRequestResponse(
  status: json['status'] as bool?,
  data:
      json['data'] == null
          ? null
          : PickupRequestDataResponse.fromJson(
            json['data'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$PickupRequestResponseToJson(
  PickupRequestResponse instance,
) => <String, dynamic>{'status': instance.status, 'data': instance.data};

PickupRequestsResponse _$PickupRequestsResponseFromJson(
  Map<String, dynamic> json,
) => PickupRequestsResponse(
  status: json['status'] as bool?,
  data:
      (PickupRequestsResponse._readRequests(json, 'data') as List<dynamic>?)
          ?.map(
            (e) =>
                PickupRequestDataResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
);

Map<String, dynamic> _$PickupRequestsResponseToJson(
  PickupRequestsResponse instance,
) => <String, dynamic>{'status': instance.status, 'data': instance.data};
