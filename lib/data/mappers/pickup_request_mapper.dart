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
      slotId: this?.slotId.orEmpty() ?? this?.slotKey.orEmpty() ?? '',
      slotIndex: this?.slotIndex ?? 0,
      titleAr:
          display?.titleAr.orEmpty() ??
          meal?.title?.ar.orEmpty() ??
          product?.name?.ar.orEmpty() ??
          title?.ar.orEmpty() ??
          title?.en.orEmpty() ??
          this?.productName.orEmpty() ??
          '',
      titleEn:
          display?.titleEn.orEmpty() ??
          meal?.title?.en.orEmpty() ??
          product?.name?.en.orEmpty() ??
          title?.en.orEmpty() ??
          title?.ar.orEmpty() ??
          this?.productName.orEmpty() ??
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
      productId:
          this?.productId.orEmpty() ??
          product?.id.orEmpty() ??
          this?.proteinKey.orEmpty() ??
          '',
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

extension PickupAvailabilityItemResponseMapper
    on PickupAvailabilityItemResponse? {
  PickupAvailabilityItemModel toDomain() {
    final display = this?.display;
    final title = this?.title;
    final subtitle = this?.subtitle;
    final availability = this?.availability;
    final payment = this?.payment;
    final available = availability?.available ?? false;
    final canSelect = availability?.canSelect ?? false;
    return PickupAvailabilityItemModel(
      itemId: this?.itemId.orEmpty() ?? '',
      itemType: this?.itemType.orEmpty() ?? '',
      label: this?.label.orEmpty() ?? '',
      selectionMode: this?.selectionMode.orEmpty() ?? '',
      categoryKey: this?.categoryKey.orEmpty() ?? '',
      titleAr:
          display?.titleAr.orEmpty() ??
          title?.ar.orEmpty() ??
          title?.en.orEmpty() ??
          this?.label.orEmpty() ??
          '',
      titleEn:
          display?.titleEn.orEmpty() ??
          title?.en.orEmpty() ??
          title?.ar.orEmpty() ??
          this?.label.orEmpty() ??
          '',
      subtitleAr:
          display?.subtitleAr.orEmpty() ??
          subtitle?.ar.orEmpty() ??
          subtitle?.en.orEmpty() ??
          '',
      subtitleEn:
          display?.subtitleEn.orEmpty() ??
          subtitle?.en.orEmpty() ??
          subtitle?.ar.orEmpty() ??
          '',
      statusTextAr:
          display?.statusTextAr.orEmpty() ??
          display?.unavailableTextAr.orEmpty() ??
          '',
      statusTextEn:
          display?.statusTextEn.orEmpty() ??
          display?.unavailableTextEn.orEmpty() ??
          '',
      selectionTextAr: display?.selectionTextAr.orEmpty() ?? '',
      selectionTextEn: display?.selectionTextEn.orEmpty() ?? '',
      availabilityState: availability?.state.orEmpty() ?? '',
      available: available,
      canSelect: canSelect,
      paymentRequired: payment?.required ?? false,
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
      remainingMeals: data?.remainingMeals ?? data?.wallet?.availableMeals ?? 0,
      paymentReason: data?.paymentReason.orEmpty() ?? '',
      plannedSlots: plannedSlots.map((slot) => slot.toDomain()).toList(),
      unavailableSlots:
          unavailableSlots.map((slot) => slot.toDomain()).toList(),
      pickupItems:
          data?.pickupItems?.map((item) => item.toDomain()).toList() ??
          const [],
      titleAr: data?.summary?.titleAr.orEmpty() ?? '',
      titleEn: data?.summary?.titleEn.orEmpty() ?? '',
      emptyTextAr: data?.summary?.emptyTextAr.orEmpty() ?? '',
      emptyTextEn: data?.summary?.emptyTextEn.orEmpty() ?? '',
      canCreatePickupRequest:
          data?.summary?.canCreatePickupRequest ??
          data?.canAppendMeals ??
          data?.summary?.canAppendMeals ??
          false,
      canAppendMeals:
          data?.canAppendMeals ?? data?.summary?.canAppendMeals ?? false,
      appendLimit: data?.appendLimit ?? data?.summary?.appendLimit ?? 0,
      dayAddons:
          data?.dayAddons?.map((addon) => addon.toDomain()).toList() ??
          const [],
      availableSlotIds: data?.availableSlotIds ?? const [],
      unavailableSlotIds: data?.unavailableSlotIds ?? const [],
    );
  }
}

extension SelectedPickupItemResponseMapper on SelectedPickupItemResponse? {
  SelectedPickupItemModel toDomain() {
    return SelectedPickupItemModel(
      itemId: this?.itemId.orEmpty() ?? '',
      itemType: this?.itemType.orEmpty() ?? '',
      label: this?.label.orEmpty() ?? '',
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
      selectedPickupItemIds: this?.selectedPickupItemIds ?? const [],
      selectedPickupItems:
          this?.selectedPickupItems?.map((item) => item.toDomain()).toList() ??
          const [],
      addonCount: this?.addonCount ?? 0,
      itemCount:
          this?.itemCount ??
          this?.selectedPickupItemIds?.length ??
          this?.selectedMealSlotIds?.length ??
          0,
      status: this?.status.orEmpty() ?? '',
      statusLabel: this?.statusLabel.orEmpty() ?? '',
      message: this?.message.orEmpty() ?? '',
      currentStep: this?.currentStep ?? 0,
      selectionMode: this?.selectionMode.orEmpty() ?? '',
      creditsReserved: this?.creditsReserved ?? false,
      pickupCode: this?.pickupCode.orEmpty() ?? '',
      pickupCodeIssuedAt: this?.pickupCodeIssuedAt.orEmpty() ?? '',
      fulfilledAt: this?.fulfilledAt.orEmpty() ?? '',
      createdAt: this?.createdAt.orEmpty() ?? '',
      idempotent: this?.idempotent ?? false,
      nextAction: this?.nextAction.orEmpty() ?? '',
      ready: this?.isReady ?? false,
      completed: this?.isCompleted ?? false,
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
