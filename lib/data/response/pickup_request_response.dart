import 'package:json_annotation/json_annotation.dart';

part 'pickup_request_response.g.dart';

@JsonSerializable()
class PickupWalletResponse {
  @JsonKey(name: 'totalEntitlement')
  final int? totalEntitlement;
  @JsonKey(name: 'consumedMeals')
  final int? consumedMeals;
  @JsonKey(name: 'reservedMeals')
  final int? reservedMeals;
  @JsonKey(name: 'availableMeals')
  final int? availableMeals;

  const PickupWalletResponse({
    this.totalEntitlement,
    this.consumedMeals,
    this.reservedMeals,
    this.availableMeals,
  });

  factory PickupWalletResponse.fromJson(Map<String, dynamic> json) =>
      _$PickupWalletResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PickupWalletResponseToJson(this);
}

@JsonSerializable()
class PickupSlotDisplayResponse {
  @JsonKey(name: 'titleAr')
  final String? titleAr;
  @JsonKey(name: 'titleEn')
  final String? titleEn;
  @JsonKey(name: 'subtitleAr')
  final String? subtitleAr;
  @JsonKey(name: 'subtitleEn')
  final String? subtitleEn;
  @JsonKey(name: 'badgesAr')
  final List<String>? badgesAr;
  @JsonKey(name: 'badgesEn')
  final List<String>? badgesEn;
  @JsonKey(name: 'statusTextAr')
  final String? statusTextAr;
  @JsonKey(name: 'statusTextEn')
  final String? statusTextEn;
  @JsonKey(name: 'unavailableTextAr')
  final String? unavailableTextAr;
  @JsonKey(name: 'unavailableTextEn')
  final String? unavailableTextEn;
  @JsonKey(name: 'selectionTextAr')
  final String? selectionTextAr;
  @JsonKey(name: 'selectionTextEn')
  final String? selectionTextEn;

  const PickupSlotDisplayResponse({
    this.titleAr,
    this.titleEn,
    this.subtitleAr,
    this.subtitleEn,
    this.badgesAr,
    this.badgesEn,
    this.statusTextAr,
    this.statusTextEn,
    this.unavailableTextAr,
    this.unavailableTextEn,
    this.selectionTextAr,
    this.selectionTextEn,
  });

  factory PickupSlotDisplayResponse.fromJson(Map<String, dynamic> json) =>
      _$PickupSlotDisplayResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PickupSlotDisplayResponseToJson(this);
}

@JsonSerializable()
class PickupSlotTitleResponse {
  @JsonKey(name: 'ar')
  final String? ar;
  @JsonKey(name: 'en')
  final String? en;

  const PickupSlotTitleResponse({this.ar, this.en});

  factory PickupSlotTitleResponse.fromJson(Map<String, dynamic> json) =>
      _$PickupSlotTitleResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PickupSlotTitleResponseToJson(this);
}

@JsonSerializable()
class PickupAvailabilitySlotResponse {
  @JsonKey(name: 'slotId')
  final String? slotId;
  @JsonKey(name: 'slotIndex')
  final int? slotIndex;
  @JsonKey(name: 'title')
  final PickupSlotTitleResponse? title;
  @JsonKey(name: 'meal')
  final PickupAvailabilityMealResponse? meal;
  @JsonKey(name: 'product')
  final PickupAvailabilityProductResponse? product;
  @JsonKey(name: 'productId')
  final String? productId;
  @JsonKey(name: 'isAvailableForPickup')
  final bool? isAvailableForPickup;
  @JsonKey(name: 'available')
  final bool? available;
  @JsonKey(name: 'canSelect')
  final bool? canSelect;
  @JsonKey(name: 'pickupRequestId')
  final String? pickupRequestId;
  @JsonKey(name: 'reservedByPickupRequestId')
  final String? reservedByPickupRequestId;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'unavailableReason')
  final String? unavailableReason;
  @JsonKey(name: 'paymentRequired')
  final bool? paymentRequired;
  @JsonKey(name: 'payment')
  final PickupAvailabilityPaymentResponse? payment;
  @JsonKey(name: 'addons')
  final List<PickupAvailabilityAddonResponse>? addons;
  @JsonKey(name: 'paymentStatus')
  final String? paymentStatus;
  @JsonKey(name: 'amountDue')
  final num? amountDue;
  @JsonKey(name: 'display')
  final PickupSlotDisplayResponse? display;

  const PickupAvailabilitySlotResponse({
    this.slotId,
    this.slotIndex,
    this.title,
    this.meal,
    this.product,
    this.productId,
    this.isAvailableForPickup,
    this.available,
    this.canSelect,
    this.pickupRequestId,
    this.reservedByPickupRequestId,
    this.status,
    this.unavailableReason,
    this.paymentRequired,
    this.payment,
    this.addons,
    this.paymentStatus,
    this.amountDue,
    this.display,
  });

  factory PickupAvailabilitySlotResponse.fromJson(Map<String, dynamic> json) =>
      _$PickupAvailabilitySlotResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PickupAvailabilitySlotResponseToJson(this);
}

@JsonSerializable()
class PickupAvailabilityAddonResponse {
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final PickupSlotTitleResponse? name;
  @JsonKey(name: 'quantity')
  final int? quantity;
  @JsonKey(name: 'price')
  final num? price;
  @JsonKey(name: 'paymentStatus')
  final String? paymentStatus;
  @JsonKey(name: 'paymentRequired')
  final bool? paymentRequired;
  @JsonKey(name: 'addonScope')
  final String? addonScope;

  const PickupAvailabilityAddonResponse({
    this.id,
    this.name,
    this.quantity,
    this.price,
    this.paymentStatus,
    this.paymentRequired,
    this.addonScope,
  });

  factory PickupAvailabilityAddonResponse.fromJson(Map<String, dynamic> json) =>
      _$PickupAvailabilityAddonResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PickupAvailabilityAddonResponseToJson(this);
}

@JsonSerializable()
class PickupAvailabilityMealResponse {
  @JsonKey(name: 'title')
  final PickupSlotTitleResponse? title;
  @JsonKey(name: 'subtitle')
  final PickupSlotTitleResponse? subtitle;

  const PickupAvailabilityMealResponse({this.title, this.subtitle});

  factory PickupAvailabilityMealResponse.fromJson(Map<String, dynamic> json) =>
      _$PickupAvailabilityMealResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PickupAvailabilityMealResponseToJson(this);
}

@JsonSerializable()
class PickupAvailabilityProductResponse {
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final PickupSlotTitleResponse? name;

  const PickupAvailabilityProductResponse({this.id, this.name});

  factory PickupAvailabilityProductResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$PickupAvailabilityProductResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PickupAvailabilityProductResponseToJson(this);
}

@JsonSerializable()
class PickupAvailabilityPaymentResponse {
  @JsonKey(name: 'required')
  final bool? required;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'amountDue')
  final num? amountDue;

  const PickupAvailabilityPaymentResponse({
    this.required,
    this.status,
    this.amountDue,
  });

  factory PickupAvailabilityPaymentResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$PickupAvailabilityPaymentResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PickupAvailabilityPaymentResponseToJson(this);
}

@JsonSerializable()
class PickupAvailabilityStateResponse {
  @JsonKey(name: 'state')
  final String? state;
  @JsonKey(name: 'available')
  final bool? available;
  @JsonKey(name: 'canSelect')
  final bool? canSelect;
  @JsonKey(name: 'unavailableReason')
  final String? unavailableReason;
  @JsonKey(name: 'reservedByPickupRequestId')
  final String? reservedByPickupRequestId;

  const PickupAvailabilityStateResponse({
    this.state,
    this.available,
    this.canSelect,
    this.unavailableReason,
    this.reservedByPickupRequestId,
  });

  factory PickupAvailabilityStateResponse.fromJson(Map<String, dynamic> json) =>
      _$PickupAvailabilityStateResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PickupAvailabilityStateResponseToJson(this);
}

@JsonSerializable()
class PickupAvailabilityItemResponse {
  @JsonKey(name: 'itemId')
  final String? itemId;
  @JsonKey(name: 'itemType')
  final String? itemType;
  @JsonKey(name: 'categoryKey')
  final String? categoryKey;
  @JsonKey(name: 'title')
  final PickupSlotTitleResponse? title;
  @JsonKey(name: 'subtitle')
  final PickupSlotTitleResponse? subtitle;
  @JsonKey(name: 'display')
  final PickupSlotDisplayResponse? display;
  @JsonKey(name: 'availability')
  final PickupAvailabilityStateResponse? availability;
  @JsonKey(name: 'payment')
  final PickupAvailabilityPaymentResponse? payment;

  const PickupAvailabilityItemResponse({
    this.itemId,
    this.itemType,
    this.categoryKey,
    this.title,
    this.subtitle,
    this.display,
    this.availability,
    this.payment,
  });

  factory PickupAvailabilityItemResponse.fromJson(Map<String, dynamic> json) =>
      _$PickupAvailabilityItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PickupAvailabilityItemResponseToJson(this);
}

@JsonSerializable()
class PickupAvailabilitySummaryResponse {
  @JsonKey(name: 'canAppendMeals')
  final bool? canAppendMeals;
  @JsonKey(name: 'appendLimit')
  final int? appendLimit;
  @JsonKey(name: 'titleAr')
  final String? titleAr;
  @JsonKey(name: 'titleEn')
  final String? titleEn;
  @JsonKey(name: 'emptyTextAr')
  final String? emptyTextAr;
  @JsonKey(name: 'emptyTextEn')
  final String? emptyTextEn;
  @JsonKey(name: 'canCreatePickupRequest')
  final bool? canCreatePickupRequest;

  const PickupAvailabilitySummaryResponse({
    this.canAppendMeals,
    this.appendLimit,
    this.titleAr,
    this.titleEn,
    this.emptyTextAr,
    this.emptyTextEn,
    this.canCreatePickupRequest,
  });

  factory PickupAvailabilitySummaryResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$PickupAvailabilitySummaryResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PickupAvailabilitySummaryResponseToJson(this);
}

@JsonSerializable()
class PickupAvailabilityDataResponse {
  @JsonKey(name: 'subscriptionId')
  final String? subscriptionId;
  @JsonKey(name: 'date')
  final String? date;
  @JsonKey(name: 'subscriptionDayId')
  final String? subscriptionDayId;
  @JsonKey(name: 'wallet')
  final PickupWalletResponse? wallet;
  @JsonKey(name: 'plannedSlots')
  final List<PickupAvailabilitySlotResponse>? plannedSlots;
  @JsonKey(name: 'slots')
  final List<PickupAvailabilitySlotResponse>? slots;
  @JsonKey(name: 'unavailableSlots')
  final List<PickupAvailabilitySlotResponse>? unavailableSlots;
  @JsonKey(name: 'pickupItems')
  final List<PickupAvailabilityItemResponse>? pickupItems;
  @JsonKey(name: 'canAppendMeals')
  final bool? canAppendMeals;
  @JsonKey(name: 'appendLimit')
  final int? appendLimit;
  @JsonKey(name: 'summary')
  final PickupAvailabilitySummaryResponse? summary;

  const PickupAvailabilityDataResponse({
    this.subscriptionId,
    this.date,
    this.subscriptionDayId,
    this.wallet,
    this.plannedSlots,
    this.slots,
    this.unavailableSlots,
    this.pickupItems,
    this.canAppendMeals,
    this.appendLimit,
    this.summary,
  });

  factory PickupAvailabilityDataResponse.fromJson(Map<String, dynamic> json) =>
      _$PickupAvailabilityDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PickupAvailabilityDataResponseToJson(this);
}

@JsonSerializable()
class PickupAvailabilityResponse {
  @JsonKey(name: 'status')
  final bool? status;
  @JsonKey(name: 'data')
  final PickupAvailabilityDataResponse? data;

  const PickupAvailabilityResponse({this.status, this.data});

  factory PickupAvailabilityResponse.fromJson(Map<String, dynamic> json) =>
      _$PickupAvailabilityResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PickupAvailabilityResponseToJson(this);
}

@JsonSerializable()
class PickupRequestMealResponse {
  @JsonKey(name: 'slotId')
  final String? slotId;
  @JsonKey(name: 'display')
  final PickupSlotDisplayResponse? display;
  @JsonKey(name: 'title')
  final PickupSlotTitleResponse? title;

  const PickupRequestMealResponse({this.slotId, this.display, this.title});

  factory PickupRequestMealResponse.fromJson(Map<String, dynamic> json) =>
      _$PickupRequestMealResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PickupRequestMealResponseToJson(this);
}

@JsonSerializable()
class PickupRequestDataResponse {
  @JsonKey(name: 'requestId')
  final String? requestId;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'subscriptionId')
  final String? subscriptionId;
  @JsonKey(name: 'subscriptionDayId')
  final String? subscriptionDayId;
  @JsonKey(name: 'date')
  final String? date;
  @JsonKey(name: 'mealCount')
  final int? mealCount;
  @JsonKey(name: 'selectedMealSlotIds')
  final List<String>? selectedMealSlotIds;
  @JsonKey(name: 'selectedPickupItemIds')
  final List<String>? selectedPickupItemIds;
  @JsonKey(name: 'addonCount')
  final int? addonCount;
  @JsonKey(name: 'itemCount')
  final int? itemCount;
  @JsonKey(name: 'status')
  final String? status;
  @JsonKey(name: 'statusLabel')
  final String? statusLabel;
  @JsonKey(name: 'currentStep')
  final int? currentStep;
  @JsonKey(name: 'creditsReserved')
  final bool? creditsReserved;
  @JsonKey(name: 'pickupCode')
  final String? pickupCode;
  @JsonKey(name: 'meals')
  final List<PickupRequestMealResponse>? meals;

  const PickupRequestDataResponse({
    this.requestId,
    this.id,
    this.subscriptionId,
    this.subscriptionDayId,
    this.date,
    this.mealCount,
    this.selectedMealSlotIds,
    this.selectedPickupItemIds,
    this.addonCount,
    this.itemCount,
    this.status,
    this.statusLabel,
    this.currentStep,
    this.creditsReserved,
    this.pickupCode,
    this.meals,
  });

  factory PickupRequestDataResponse.fromJson(Map<String, dynamic> json) =>
      _$PickupRequestDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PickupRequestDataResponseToJson(this);
}

@JsonSerializable()
class PickupRequestResponse {
  @JsonKey(name: 'status')
  final bool? status;
  @JsonKey(name: 'data')
  final PickupRequestDataResponse? data;

  const PickupRequestResponse({this.status, this.data});

  factory PickupRequestResponse.fromJson(Map<String, dynamic> json) =>
      _$PickupRequestResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PickupRequestResponseToJson(this);
}

@JsonSerializable()
class PickupRequestsResponse {
  @JsonKey(name: 'status')
  final bool? status;
  @JsonKey(name: 'data', readValue: _readRequests)
  final List<PickupRequestDataResponse>? data;

  const PickupRequestsResponse({this.status, this.data});

  factory PickupRequestsResponse.fromJson(Map<String, dynamic> json) =>
      _$PickupRequestsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PickupRequestsResponseToJson(this);

  static Object? _readRequests(Map json, String key) {
    final data = json[key];
    if (data is List) return data;
    if (data is Map) {
      return data['requests'] ?? data['pickupRequests'] ?? data['items'];
    }
    return data;
  }
}
