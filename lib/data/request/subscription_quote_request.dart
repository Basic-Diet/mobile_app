import 'package:json_annotation/json_annotation.dart';

part 'subscription_quote_request.g.dart';

@JsonSerializable(explicitToJson: true)
class SubscriptionQuoteRequest {
  @JsonKey(name: 'planId')
  final String planId;
  @JsonKey(name: 'grams')
  final int grams;
  @JsonKey(name: 'mealsPerDay')
  final int mealsPerDay;
  @JsonKey(name: 'startDate')
  final String startDate;
  @JsonKey(name: 'promoCode', includeIfNull: false)
  final String? promoCode;
  @JsonKey(name: 'premiumItems')
  final List<SubscriptionQuotePremiumItemRequest> premiumItems;
  @JsonKey(name: 'addons')
  final List<String> addons;
  @JsonKey(name: 'delivery')
  final SubscriptionQuoteDeliveryRequest delivery;

  const SubscriptionQuoteRequest({
    required this.planId,
    required this.grams,
    required this.mealsPerDay,
    required this.startDate,
    this.promoCode,
    required this.premiumItems,
    required this.addons,
    required this.delivery,
  });

  factory SubscriptionQuoteRequest.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionQuoteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SubscriptionQuoteRequestToJson(this);
}

@JsonSerializable()
class SubscriptionQuotePremiumItemRequest {
  @JsonKey(name: 'premiumKey')
  final String premiumKey;
  @JsonKey(name: 'qty')
  final int qty;

  const SubscriptionQuotePremiumItemRequest({
    required this.premiumKey,
    required this.qty,
  });

  factory SubscriptionQuotePremiumItemRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$SubscriptionQuotePremiumItemRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SubscriptionQuotePremiumItemRequestToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubscriptionQuoteDeliveryRequest {
  @JsonKey(name: 'type')
  final String type;
  @JsonKey(name: 'zoneId')
  final String? zoneId;
  @JsonKey(name: 'pickupLocationId')
  final String? pickupLocationId;
  @JsonKey(name: 'slotId')
  final String? slotId;
  @JsonKey(name: 'slot')
  final SubscriptionQuoteSlotRequest? slot;
  @JsonKey(name: 'address')
  final SubscriptionQuoteAddressRequest? address;
  @JsonKey(name: 'firstDayFulfillmentOverride')
  final SubscriptionQuoteFirstDayFulfillmentOverrideRequest?
  firstDayFulfillmentOverride;

  const SubscriptionQuoteDeliveryRequest({
    required this.type,
    this.zoneId,
    this.pickupLocationId,
    this.slotId,
    this.slot,
    this.address,
    this.firstDayFulfillmentOverride,
  });

  factory SubscriptionQuoteDeliveryRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$SubscriptionQuoteDeliveryRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SubscriptionQuoteDeliveryRequestToJson(this);
}

@JsonSerializable()
class SubscriptionQuoteFirstDayFulfillmentOverrideRequest {
  @JsonKey(name: 'type')
  final String type;
  @JsonKey(name: 'pickupLocationId')
  final String pickupLocationId;

  const SubscriptionQuoteFirstDayFulfillmentOverrideRequest({
    required this.type,
    required this.pickupLocationId,
  });

  factory SubscriptionQuoteFirstDayFulfillmentOverrideRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$SubscriptionQuoteFirstDayFulfillmentOverrideRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SubscriptionQuoteFirstDayFulfillmentOverrideRequestToJson(this);
}

@JsonSerializable()
class SubscriptionQuoteSlotRequest {
  @JsonKey(name: 'slotId')
  final String slotId;
  @JsonKey(name: 'window')
  final String window;
  @JsonKey(name: 'label')
  final String label;

  const SubscriptionQuoteSlotRequest({
    required this.slotId,
    required this.window,
    required this.label,
  });

  factory SubscriptionQuoteSlotRequest.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionQuoteSlotRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SubscriptionQuoteSlotRequestToJson(this);
}

@JsonSerializable()
class SubscriptionQuoteAddressRequest {
  @JsonKey(name: 'street')
  final String street;
  @JsonKey(name: 'building')
  final String building;
  @JsonKey(name: 'apartment')
  final String apartment;
  @JsonKey(name: 'notes')
  final String notes;
  @JsonKey(name: 'district')
  final String district;
  @JsonKey(name: 'city')
  final String city;

  const SubscriptionQuoteAddressRequest({
    required this.street,
    required this.building,
    required this.apartment,
    required this.notes,
    required this.district,
    required this.city,
  });

  factory SubscriptionQuoteAddressRequest.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionQuoteAddressRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SubscriptionQuoteAddressRequestToJson(this);
}
