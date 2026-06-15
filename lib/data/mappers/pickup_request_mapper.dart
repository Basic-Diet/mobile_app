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
    final meal = this?.meal;
    final product = this?.product;
    final payment = this?.payment;
    final isAvailable =
        this?.isAvailableForPickup ??
        this?.canSelect ??
        this?.available ??
        false;
    final paymentRequired = this?.paymentRequired ?? payment?.required ?? false;
    return PickupAvailabilitySlotModel(
      slotId: this?.slotId.orEmpty() ?? '',
      slotIndex: this?.slotIndex ?? 0,
      titleAr:
          display?.titleAr.orEmpty() ??
          meal?.title?.ar.orEmpty() ??
          product?.name?.ar.orEmpty() ??
          title?.ar.orEmpty() ??
          title?.en.orEmpty() ??
          '',
      titleEn:
          display?.titleEn.orEmpty() ??
          meal?.title?.en.orEmpty() ??
          product?.name?.en.orEmpty() ??
          title?.en.orEmpty() ??
          title?.ar.orEmpty() ??
          '',
      subtitleAr:
          display?.subtitleAr.orEmpty() ??
          display?.statusTextAr.orEmpty() ??
          meal?.subtitle?.ar.orEmpty() ??
          '',
      subtitleEn:
          display?.subtitleEn.orEmpty() ??
          display?.statusTextEn.orEmpty() ??
          meal?.subtitle?.en.orEmpty() ??
          '',
      badgesAr: display?.badgesAr ?? const [],
      badgesEn: display?.badgesEn ?? const [],
      productId: this?.productId.orEmpty() ?? product?.id.orEmpty() ?? '',
      isAvailableForPickup: isAvailable,
      pickupRequestId:
          this?.pickupRequestId.orEmpty() ??
          this?.reservedByPickupRequestId.orEmpty() ??
          '',
      status: this?.status.orEmpty() ?? '',
      unavailableReason: this?.unavailableReason.orEmpty() ?? '',
      paymentRequired: paymentRequired,
      paymentStatus:
          this?.paymentStatus.orEmpty() ?? payment?.status.orEmpty() ?? '',
      amountDue: (this?.amountDue ?? payment?.amountDue ?? 0).toDouble(),
      addons: this?.addons?.map((addon) => addon.toDomain()).toList() ?? [],
    );
  }
}

extension PickupAvailabilityAddonResponseMapper
    on PickupAvailabilityAddonResponse? {
  PickupAvailabilityAddonModel toDomain() {
    return PickupAvailabilityAddonModel(
      id: this?.id.orEmpty() ?? '',
      nameAr: this?.name?.ar.orEmpty() ?? this?.name?.en.orEmpty() ?? '',
      nameEn: this?.name?.en.orEmpty() ?? this?.name?.ar.orEmpty() ?? '',
      quantity: this?.quantity ?? 0,
      price: (this?.price ?? 0).toDouble(),
      paymentStatus: this?.paymentStatus.orEmpty() ?? '',
      paymentRequired: this?.paymentRequired ?? false,
      addonScope: this?.addonScope.orEmpty() ?? '',
    );
  }
}

extension PickupAvailabilityResponseMapper on PickupAvailabilityResponse? {
  PickupAvailabilityModel toDomain() {
    final data = this?.data;
    final allSlots = data?.plannedSlots ?? data?.slots ?? const [];
    final plannedSlots =
        data?.plannedSlots ??
        allSlots.where((slot) {
          return slot.isAvailableForPickup ??
              slot.canSelect ??
              slot.available ??
              false;
        }).toList();
    final unavailableSlots =
        data?.unavailableSlots ??
        allSlots.where((slot) {
          final available =
              slot.isAvailableForPickup ??
              slot.canSelect ??
              slot.available ??
              false;
          return !available;
        }).toList();
    return PickupAvailabilityModel(
      subscriptionId: data?.subscriptionId.orEmpty() ?? '',
      date: data?.date.orEmpty() ?? '',
      subscriptionDayId: data?.subscriptionDayId.orEmpty() ?? '',
      wallet: data?.wallet.toDomain() ?? const PickupWalletModel(),
      plannedSlots: plannedSlots.map((slot) => slot.toDomain()).toList(),
      unavailableSlots:
          unavailableSlots.map((slot) => slot.toDomain()).toList(),
      canAppendMeals:
          data?.canAppendMeals ?? data?.summary?.canAppendMeals ?? false,
      appendLimit: data?.appendLimit ?? data?.summary?.appendLimit ?? 0,
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
