import 'package:basic_diet/domain/model/subscription_quote_model.dart';
import 'package:equatable/equatable.dart';

class SubscriptionCheckoutRequestModel extends Equatable {
  final String idempotencyKey;
  final String planId;
  final int grams;
  final int mealsPerDay;
  final String startDate;
  final String? promoCode;
  final List<SubscriptionCheckoutPremiumItemRequestModel> premiumItems;
  final List<String> addons;
  final SubscriptionCheckoutDeliveryRequestModel delivery;
  final String successUrl;
  final String backUrl;

  const SubscriptionCheckoutRequestModel({
    required this.idempotencyKey,
    required this.planId,
    required this.grams,
    required this.mealsPerDay,
    required this.startDate,
    this.promoCode,
    required this.premiumItems,
    required this.addons,
    required this.delivery,
    required this.successUrl,
    required this.backUrl,
  });

  @override
  List<Object?> get props => [
    idempotencyKey,
    planId,
    grams,
    mealsPerDay,
    startDate,
    promoCode,
    premiumItems,
    addons,
    delivery,
    successUrl,
    backUrl,
  ];
}

class SubscriptionCheckoutPremiumItemRequestModel extends Equatable {
  final String premiumKey;
  final int qty;

  const SubscriptionCheckoutPremiumItemRequestModel({
    required this.premiumKey,
    required this.qty,
  });

  @override
  List<Object?> get props => [premiumKey, qty];
}

class SubscriptionCheckoutDeliveryRequestModel extends Equatable {
  final String type;
  final String? zoneId;
  final String? pickupLocationId;
  final String? slotId;
  final String? slotWindow;
  final String? slotLabel;
  final SubscriptionAddressModel? address;
  final SubscriptionFirstDayFulfillmentOverrideModel?
  firstDayFulfillmentOverride;

  const SubscriptionCheckoutDeliveryRequestModel({
    required this.type,
    this.zoneId,
    this.pickupLocationId,
    this.slotId,
    this.slotWindow,
    this.slotLabel,
    this.address,
    this.firstDayFulfillmentOverride,
  });

  @override
  List<Object?> get props => [
    type,
    zoneId,
    pickupLocationId,
    slotId,
    slotWindow,
    slotLabel,
    address,
    firstDayFulfillmentOverride,
  ];
}

class SubscriptionCheckoutModel extends Equatable {
  final String? subscriptionId;
  final String draftId;
  final String paymentId;
  final String paymentUrl;
  final SubscriptionCheckoutTotalsModel totals;
  final bool reused;
  final SubscriptionCheckoutFulfillmentOptionsModel fulfillmentOptions;

  const SubscriptionCheckoutModel({
    required this.subscriptionId,
    required this.draftId,
    required this.paymentId,
    required this.paymentUrl,
    required this.totals,
    required this.reused,
    required this.fulfillmentOptions,
  });

  @override
  List<Object?> get props => [
    subscriptionId,
    draftId,
    paymentId,
    paymentUrl,
    totals,
    reused,
    fulfillmentOptions,
  ];
}

class SubscriptionCheckoutFulfillmentOptionsModel extends Equatable {
  final bool sameDayDeliveryAllowed;
  final bool sameDayPickupAllowed;
  final bool firstDayPickupOverrideAvailable;
  final String deliveryStartDateIfNoPickup;
  final String requestedStartDate;
  final String resolvedStartDate;
  final bool startDateShifted;
  final String reason;

  const SubscriptionCheckoutFulfillmentOptionsModel({
    required this.sameDayDeliveryAllowed,
    required this.sameDayPickupAllowed,
    required this.firstDayPickupOverrideAvailable,
    required this.deliveryStartDateIfNoPickup,
    required this.requestedStartDate,
    required this.resolvedStartDate,
    required this.startDateShifted,
    required this.reason,
  });

  @override
  List<Object?> get props => [
    sameDayDeliveryAllowed,
    sameDayPickupAllowed,
    firstDayPickupOverrideAvailable,
    deliveryStartDateIfNoPickup,
    requestedStartDate,
    resolvedStartDate,
    startDateShifted,
    reason,
  ];
}

class SubscriptionCheckoutTotalsModel extends Equatable {
  final int basePlanPriceHalala;
  final int premiumTotalHalala;
  final int addonsTotalHalala;
  final int deliveryFeeHalala;
  final int vatHalala;
  final int totalHalala;
  final String currency;

  const SubscriptionCheckoutTotalsModel({
    required this.basePlanPriceHalala,
    required this.premiumTotalHalala,
    required this.addonsTotalHalala,
    required this.deliveryFeeHalala,
    required this.vatHalala,
    required this.totalHalala,
    required this.currency,
  });

  @override
  List<Object?> get props => [
    basePlanPriceHalala,
    premiumTotalHalala,
    addonsTotalHalala,
    deliveryFeeHalala,
    vatHalala,
    totalHalala,
    currency,
  ];
}
