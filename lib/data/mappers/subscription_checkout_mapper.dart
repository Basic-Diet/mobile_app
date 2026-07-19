import 'package:basic_diet/app/constants.dart';
import 'package:basic_diet/data/request/subscription_checkout_request.dart';
import 'package:basic_diet/data/response/subscription_checkout_response.dart';
import 'package:basic_diet/domain/model/subscription_checkout_model.dart';
import 'package:basic_diet/domain/model/subscription_quote_model.dart';

extension SubscriptionCheckoutRequestMapper
    on SubscriptionCheckoutRequestModel {
  SubscriptionCheckoutRequest toRequest() {
    return SubscriptionCheckoutRequest(
      idempotencyKey: idempotencyKey,
      planId: planId,
      grams: grams,
      mealsPerDay: mealsPerDay,
      startDate: startDate,
      promoCode: promoCode,
      premiumItems: premiumItems.map((item) => item.toRequest()).toList(),
      addons: addons,
      delivery: delivery.toRequest(),
      successUrl: successUrl,
      backUrl: backUrl,
    );
  }
}

extension SubscriptionCheckoutPremiumItemRequestMapper
    on SubscriptionCheckoutPremiumItemRequestModel {
  SubscriptionCheckoutPremiumItemRequest toRequest() {
    return SubscriptionCheckoutPremiumItemRequest(
      premiumKey: premiumKey,
      qty: qty,
    );
  }
}

extension SubscriptionCheckoutDeliveryRequestMapper
    on SubscriptionCheckoutDeliveryRequestModel {
  SubscriptionCheckoutDeliveryRequest toRequest() {
    final selectedSlotId = slotId;
    final selectedSlotWindow = slotWindow;
    final selectedSlotLabel = slotLabel;

    return SubscriptionCheckoutDeliveryRequest(
      type: type,
      zoneId: zoneId,
      pickupLocationId: pickupLocationId,
      slotId: selectedSlotId,
      slot:
          selectedSlotId != null &&
                  selectedSlotWindow != null &&
                  selectedSlotLabel != null
              ? SubscriptionCheckoutSlotRequest(
                slotId: selectedSlotId,
                window: selectedSlotWindow,
                label: selectedSlotLabel,
              )
              : null,
      address: address?.toCheckoutRequest(),
      firstDayFulfillmentOverride:
          firstDayFulfillmentOverride?.toCheckoutRequest(),
    );
  }
}

extension SubscriptionFirstDayCheckoutRequestMapper
    on SubscriptionFirstDayFulfillmentOverrideModel {
  SubscriptionCheckoutFirstDayFulfillmentOverrideRequest toCheckoutRequest() {
    return SubscriptionCheckoutFirstDayFulfillmentOverrideRequest(
      type: type,
      pickupLocationId: pickupLocationId,
    );
  }
}

extension SubscriptionAddressCheckoutRequestMapper on SubscriptionAddressModel {
  SubscriptionCheckoutAddressRequest toCheckoutRequest() {
    return SubscriptionCheckoutAddressRequest(
      street: street,
      building: building,
      apartment: apartment,
      notes: notes,
      district: district,
      city: city,
    );
  }
}

extension SubscriptionQuoteToCheckoutRequestMapper
    on SubscriptionQuoteRequestModel {
  SubscriptionCheckoutRequestModel toCheckoutRequest({
    required String idempotencyKey,
    required String successUrl,
    required String backUrl,
  }) {
    return SubscriptionCheckoutRequestModel(
      idempotencyKey: idempotencyKey,
      planId: planId,
      grams: grams,
      mealsPerDay: mealsPerDay,
      startDate: startDate,
      promoCode: promoCode,
      premiumItems:
          premiumItems
              .map(
                (item) => SubscriptionCheckoutPremiumItemRequestModel(
                  premiumKey: item.premiumKey,
                  qty: item.qty,
                ),
              )
              .toList(),
      addons: addons,
      delivery: SubscriptionCheckoutDeliveryRequestModel(
        type: delivery.type,
        zoneId: delivery.zoneId,
        pickupLocationId: delivery.pickupLocationId,
        slotId: delivery.slotId,
        slotWindow: delivery.slotWindow,
        slotLabel: delivery.slotLabel,
        address: delivery.address,
        firstDayFulfillmentOverride: delivery.firstDayFulfillmentOverride,
      ),
      successUrl: successUrl,
      backUrl: backUrl,
    );
  }
}

extension SubscriptionCheckoutResponseMapper on SubscriptionCheckoutResponse? {
  SubscriptionCheckoutModel toDomain() {
    return SubscriptionCheckoutModel(
      subscriptionId: this?.data?.subscriptionId,
      draftId: this?.data?.draftId ?? Constants.empty,
      paymentId: this?.data?.paymentId ?? Constants.empty,
      paymentUrl: this?.data?.paymentUrl ?? Constants.empty,
      totals:
          this?.data?.totals.toDomain() ??
          const SubscriptionCheckoutTotalsModel(
            basePlanPriceHalala: Constants.zero,
            premiumTotalHalala: Constants.zero,
            addonsTotalHalala: Constants.zero,
            deliveryFeeHalala: Constants.zero,
            vatHalala: Constants.zero,
            totalHalala: Constants.zero,
            currency: Constants.empty,
          ),
      reused: this?.data?.reused ?? Constants.falseValue,
      fulfillmentOptions:
          this?.data?.fulfillmentOptions.toDomain() ??
          const SubscriptionCheckoutFulfillmentOptionsModel(
            sameDayDeliveryAllowed: Constants.falseValue,
            sameDayPickupAllowed: Constants.falseValue,
            firstDayPickupOverrideAvailable: Constants.falseValue,
            deliveryStartDateIfNoPickup: Constants.empty,
            requestedStartDate: Constants.empty,
            resolvedStartDate: Constants.empty,
            startDateShifted: Constants.falseValue,
            reason: Constants.empty,
          ),
    );
  }
}

extension SubscriptionCheckoutFulfillmentOptionsResponseMapper
    on SubscriptionCheckoutFulfillmentOptionsResponse? {
  SubscriptionCheckoutFulfillmentOptionsModel toDomain() {
    return SubscriptionCheckoutFulfillmentOptionsModel(
      sameDayDeliveryAllowed:
          this?.sameDayDeliveryAllowed ?? Constants.falseValue,
      sameDayPickupAllowed: this?.sameDayPickupAllowed ?? Constants.falseValue,
      firstDayPickupOverrideAvailable:
          this?.firstDayPickupOverrideAvailable ?? Constants.falseValue,
      deliveryStartDateIfNoPickup:
          this?.deliveryStartDateIfNoPickup ?? Constants.empty,
      requestedStartDate: this?.requestedStartDate ?? Constants.empty,
      resolvedStartDate: this?.resolvedStartDate ?? Constants.empty,
      startDateShifted: this?.startDateShifted ?? Constants.falseValue,
      reason: this?.reason ?? Constants.empty,
    );
  }
}

extension SubscriptionCheckoutTotalsResponseMapper
    on SubscriptionCheckoutTotalsResponse? {
  SubscriptionCheckoutTotalsModel toDomain() {
    return SubscriptionCheckoutTotalsModel(
      basePlanPriceHalala: this?.basePlanPriceHalala ?? Constants.zero,
      premiumTotalHalala: this?.premiumTotalHalala ?? Constants.zero,
      addonsTotalHalala: this?.addonsTotalHalala ?? Constants.zero,
      deliveryFeeHalala: this?.deliveryFeeHalala ?? Constants.zero,
      vatHalala: this?.vatHalala ?? Constants.zero,
      totalHalala: this?.totalHalala ?? Constants.zero,
      currency: this?.currency ?? Constants.empty,
    );
  }
}
