import 'package:basic_diet/app/extensions.dart';
import 'package:basic_diet/data/response/pickup_request_response.dart';
import 'package:basic_diet/domain/model/pickup_request_model.dart';

extension PickupWalletResponseMapper on PickupWalletResponse? {
  PickupWalletModel toDomain() {
    return PickupWalletModel(
      totalEntitlement: this?.totalEntitlement ?? 0,
      consumedMeals: this?.consumedMeals ?? 0,
      reservedMeals: this?.reservedMeals ?? 0,
      availableMeals: this?.availableMeals ?? 0,
    );
  }
}

extension PickupAvailabilitySlotResponseMapper
    on PickupAvailabilitySlotResponse? {
  PickupAvailabilitySlotModel toDomain() {
    final display = this?.display;
    final title = this?.title;
    return PickupAvailabilitySlotModel(
      slotId: this?.slotId.orEmpty() ?? '',
      slotIndex: this?.slotIndex ?? 0,
      titleAr:
          display?.titleAr.orEmpty() ??
          title?.ar.orEmpty() ??
          title?.en.orEmpty() ??
          '',
      titleEn:
          display?.titleEn.orEmpty() ??
          title?.en.orEmpty() ??
          title?.ar.orEmpty() ??
          '',
      subtitleAr: display?.subtitleAr.orEmpty() ?? '',
      subtitleEn: display?.subtitleEn.orEmpty() ?? '',
      badgesAr: display?.badgesAr ?? const [],
      badgesEn: display?.badgesEn ?? const [],
      productId: this?.productId.orEmpty() ?? '',
      isAvailableForPickup: this?.isAvailableForPickup ?? false,
      pickupRequestId: this?.pickupRequestId.orEmpty() ?? '',
      status: this?.status.orEmpty() ?? '',
      unavailableReason: this?.unavailableReason.orEmpty() ?? '',
      paymentRequired: this?.paymentRequired ?? false,
      paymentStatus: this?.paymentStatus.orEmpty() ?? '',
      amountDue: (this?.amountDue ?? 0).toDouble(),
    );
  }
}

extension PickupAvailabilityResponseMapper on PickupAvailabilityResponse? {
  PickupAvailabilityModel toDomain() {
    final data = this?.data;
    return PickupAvailabilityModel(
      subscriptionId: data?.subscriptionId.orEmpty() ?? '',
      date: data?.date.orEmpty() ?? '',
      subscriptionDayId: data?.subscriptionDayId.orEmpty() ?? '',
      wallet: data?.wallet.toDomain() ?? const PickupWalletModel(),
      plannedSlots:
          data?.plannedSlots?.map((slot) => slot.toDomain()).toList() ??
          const [],
      unavailableSlots:
          data?.unavailableSlots?.map((slot) => slot.toDomain()).toList() ??
          const [],
      canAppendMeals: data?.canAppendMeals ?? false,
      appendLimit: data?.appendLimit ?? 0,
    );
  }
}

extension PickupRequestMealResponseMapper on PickupRequestMealResponse? {
  PickupRequestMealModel toDomain() {
    return PickupRequestMealModel(
      slotId: this?.slotId.orEmpty() ?? '',
      titleAr:
          this?.display?.titleAr.orEmpty() ??
          this?.title?.ar.orEmpty() ??
          this?.title?.en.orEmpty() ??
          '',
      titleEn:
          this?.display?.titleEn.orEmpty() ??
          this?.title?.en.orEmpty() ??
          this?.title?.ar.orEmpty() ??
          '',
    );
  }
}

extension PickupRequestDataResponseMapper on PickupRequestDataResponse? {
  PickupRequestModel toDomain() {
    return PickupRequestModel(
      requestId: this?.requestId.orEmpty() ?? this?.id.orEmpty() ?? '',
      subscriptionId: this?.subscriptionId.orEmpty() ?? '',
      subscriptionDayId: this?.subscriptionDayId.orEmpty() ?? '',
      date: this?.date.orEmpty() ?? '',
      mealCount: this?.mealCount ?? this?.selectedMealSlotIds?.length ?? 0,
      selectedMealSlotIds: this?.selectedMealSlotIds ?? const [],
      status: this?.status.orEmpty() ?? '',
      statusLabel: this?.statusLabel.orEmpty() ?? '',
      currentStep: this?.currentStep ?? 0,
      creditsReserved: this?.creditsReserved ?? false,
      pickupCode: this?.pickupCode.orEmpty() ?? '',
      meals: this?.meals?.map((meal) => meal.toDomain()).toList() ?? const [],
    );
  }
}

extension PickupRequestResponseMapper on PickupRequestResponse? {
  PickupRequestModel toDomain() {
    return this?.data.toDomain() ?? const PickupRequestModel();
  }
}

extension PickupRequestsResponseMapper on PickupRequestsResponse? {
  List<PickupRequestModel> toDomain() {
    return this?.data?.map((request) => request.toDomain()).toList() ??
        const [];
  }
}
