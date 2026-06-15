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
  'slotIndex': instance.slotIndex,
  'title': instance.title,
  'meal': instance.meal,
  'product': instance.product,
  'productId': instance.productId,
  'isAvailableForPickup': instance.isAvailableForPickup,
  'available': instance.available,
  'canSelect': instance.canSelect,
  'pickupRequestId': instance.pickupRequestId,
  'reservedByPickupRequestId': instance.reservedByPickupRequestId,
  'status': instance.status,
  'unavailableReason': instance.unavailableReason,
  'paymentRequired': instance.paymentRequired,
  'payment': instance.payment,
  'paymentStatus': instance.paymentStatus,
  'amountDue': instance.amountDue,
  'display': instance.display,
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

PickupAvailabilitySummaryResponse _$PickupAvailabilitySummaryResponseFromJson(
  Map<String, dynamic> json,
) => PickupAvailabilitySummaryResponse(
  canAppendMeals: json['canAppendMeals'] as bool?,
  appendLimit: (json['appendLimit'] as num?)?.toInt(),
);

Map<String, dynamic> _$PickupAvailabilitySummaryResponseToJson(
  PickupAvailabilitySummaryResponse instance,
) => <String, dynamic>{
  'canAppendMeals': instance.canAppendMeals,
  'appendLimit': instance.appendLimit,
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
  'plannedSlots': instance.plannedSlots,
  'slots': instance.slots,
  'unavailableSlots': instance.unavailableSlots,
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
  status: json['status'] as String?,
  statusLabel: json['statusLabel'] as String?,
  currentStep: (json['currentStep'] as num?)?.toInt(),
  creditsReserved: json['creditsReserved'] as bool?,
  pickupCode: json['pickupCode'] as String?,
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
  'status': instance.status,
  'statusLabel': instance.statusLabel,
  'currentStep': instance.currentStep,
  'creditsReserved': instance.creditsReserved,
  'pickupCode': instance.pickupCode,
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
