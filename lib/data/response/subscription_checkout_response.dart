import 'package:json_annotation/json_annotation.dart';

part 'subscription_checkout_response.g.dart';

@JsonSerializable(explicitToJson: true)
class SubscriptionCheckoutResponse {
  @JsonKey(name: 'status')
  dynamic status;
  @JsonKey(name: 'message')
  String? message;
  @JsonKey(name: 'data')
  SubscriptionCheckoutDataResponse? data;

  SubscriptionCheckoutResponse({this.status, this.message, this.data});

  factory SubscriptionCheckoutResponse.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionCheckoutResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SubscriptionCheckoutResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubscriptionCheckoutDataResponse {
  @JsonKey(name: 'subscriptionId')
  String? subscriptionId;
  @JsonKey(name: 'draftId')
  String? draftId;
  @JsonKey(name: 'paymentId')
  String? paymentId;
  @JsonKey(name: 'payment_url')
  String? paymentUrl;
  @JsonKey(name: 'totals')
  SubscriptionCheckoutTotalsResponse? totals;
  @JsonKey(name: 'reused')
  bool? reused;
  @JsonKey(name: 'fulfillmentOptions')
  SubscriptionCheckoutFulfillmentOptionsResponse? fulfillmentOptions;

  SubscriptionCheckoutDataResponse({
    this.subscriptionId,
    this.draftId,
    this.paymentId,
    this.paymentUrl,
    this.totals,
    this.reused,
    this.fulfillmentOptions,
  });

  factory SubscriptionCheckoutDataResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$SubscriptionCheckoutDataResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SubscriptionCheckoutDataResponseToJson(this);
}

@JsonSerializable()
class SubscriptionCheckoutFulfillmentOptionsResponse {
  @JsonKey(name: 'sameDayDeliveryAllowed')
  bool? sameDayDeliveryAllowed;
  @JsonKey(name: 'sameDayPickupAllowed')
  bool? sameDayPickupAllowed;
  @JsonKey(name: 'firstDayPickupOverrideAvailable')
  bool? firstDayPickupOverrideAvailable;
  @JsonKey(name: 'deliveryStartDateIfNoPickup')
  String? deliveryStartDateIfNoPickup;
  @JsonKey(name: 'requestedStartDate')
  String? requestedStartDate;
  @JsonKey(name: 'resolvedStartDate')
  String? resolvedStartDate;
  @JsonKey(name: 'startDateShifted')
  bool? startDateShifted;
  @JsonKey(name: 'reason')
  String? reason;

  SubscriptionCheckoutFulfillmentOptionsResponse({
    this.sameDayDeliveryAllowed,
    this.sameDayPickupAllowed,
    this.firstDayPickupOverrideAvailable,
    this.deliveryStartDateIfNoPickup,
    this.requestedStartDate,
    this.resolvedStartDate,
    this.startDateShifted,
    this.reason,
  });

  factory SubscriptionCheckoutFulfillmentOptionsResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$SubscriptionCheckoutFulfillmentOptionsResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SubscriptionCheckoutFulfillmentOptionsResponseToJson(this);
}

@JsonSerializable()
class SubscriptionCheckoutTotalsResponse {
  @JsonKey(name: 'basePlanPriceHalala')
  int? basePlanPriceHalala;
  @JsonKey(name: 'premiumTotalHalala')
  int? premiumTotalHalala;
  @JsonKey(name: 'addonsTotalHalala')
  int? addonsTotalHalala;
  @JsonKey(name: 'deliveryFeeHalala')
  int? deliveryFeeHalala;
  @JsonKey(name: 'vatHalala')
  int? vatHalala;
  @JsonKey(name: 'totalHalala')
  int? totalHalala;
  @JsonKey(name: 'currency')
  String? currency;

  SubscriptionCheckoutTotalsResponse({
    this.basePlanPriceHalala,
    this.premiumTotalHalala,
    this.addonsTotalHalala,
    this.deliveryFeeHalala,
    this.vatHalala,
    this.totalHalala,
    this.currency,
  });

  factory SubscriptionCheckoutTotalsResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$SubscriptionCheckoutTotalsResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SubscriptionCheckoutTotalsResponseToJson(this);
}
