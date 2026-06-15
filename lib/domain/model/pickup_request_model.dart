import 'package:equatable/equatable.dart';

class PickupWalletModel extends Equatable {
  final int totalEntitlement;
  final int consumedMeals;
  final int reservedMeals;
  final int availableMeals;

  const PickupWalletModel({
    this.totalEntitlement = 0,
    this.consumedMeals = 0,
    this.reservedMeals = 0,
    this.availableMeals = 0,
  });

  @override
  List<Object?> get props => [
    totalEntitlement,
    consumedMeals,
    reservedMeals,
    availableMeals,
  ];
}

class PickupAvailabilitySlotModel extends Equatable {
  final String slotId;
  final int slotIndex;
  final String titleAr;
  final String titleEn;
  final String subtitleAr;
  final String subtitleEn;
  final List<String> badgesAr;
  final List<String> badgesEn;
  final String productId;
  final bool isAvailableForPickup;
  final String pickupRequestId;
  final String status;
  final String unavailableReason;
  final bool paymentRequired;
  final String paymentStatus;
  final double amountDue;
  final List<PickupAvailabilityAddonModel> addons;

  const PickupAvailabilitySlotModel({
    this.slotId = '',
    this.slotIndex = 0,
    this.titleAr = '',
    this.titleEn = '',
    this.subtitleAr = '',
    this.subtitleEn = '',
    this.badgesAr = const [],
    this.badgesEn = const [],
    this.productId = '',
    this.isAvailableForPickup = false,
    this.pickupRequestId = '',
    this.status = '',
    this.unavailableReason = '',
    this.paymentRequired = false,
    this.paymentStatus = '',
    this.amountDue = 0,
    this.addons = const [],
  });

  bool get isSelectable => isAvailableForPickup && !paymentRequired;

  @override
  List<Object?> get props => [
    slotId,
    slotIndex,
    titleAr,
    titleEn,
    subtitleAr,
    subtitleEn,
    badgesAr,
    badgesEn,
    productId,
    isAvailableForPickup,
    pickupRequestId,
    status,
    unavailableReason,
    paymentRequired,
    paymentStatus,
    amountDue,
    addons,
  ];
}

class PickupAvailabilityAddonModel extends Equatable {
  final String id;
  final String nameAr;
  final String nameEn;
  final int quantity;
  final double price;
  final String paymentStatus;
  final bool paymentRequired;
  final String addonScope;

  const PickupAvailabilityAddonModel({
    this.id = '',
    this.nameAr = '',
    this.nameEn = '',
    this.quantity = 0,
    this.price = 0,
    this.paymentStatus = '',
    this.paymentRequired = false,
    this.addonScope = '',
  });

  bool get isSelectable => id.isNotEmpty && !paymentRequired;

  @override
  List<Object?> get props => [
    id,
    nameAr,
    nameEn,
    quantity,
    price,
    paymentStatus,
    paymentRequired,
    addonScope,
  ];
}

class PickupAvailabilityModel extends Equatable {
  final String subscriptionId;
  final String date;
  final String subscriptionDayId;
  final PickupWalletModel wallet;
  final List<PickupAvailabilitySlotModel> plannedSlots;
  final List<PickupAvailabilitySlotModel> unavailableSlots;
  final bool canAppendMeals;
  final int appendLimit;

  const PickupAvailabilityModel({
    this.subscriptionId = '',
    this.date = '',
    this.subscriptionDayId = '',
    this.wallet = const PickupWalletModel(),
    this.plannedSlots = const [],
    this.unavailableSlots = const [],
    this.canAppendMeals = false,
    this.appendLimit = 0,
  });

  List<PickupAvailabilitySlotModel> get selectableSlots =>
      plannedSlots.where((slot) => slot.isSelectable).toList();

  @override
  List<Object?> get props => [
    subscriptionId,
    date,
    subscriptionDayId,
    wallet,
    plannedSlots,
    unavailableSlots,
    canAppendMeals,
    appendLimit,
  ];
}

class PickupRequestMealModel extends Equatable {
  final String slotId;
  final String titleAr;
  final String titleEn;

  const PickupRequestMealModel({
    this.slotId = '',
    this.titleAr = '',
    this.titleEn = '',
  });

  @override
  List<Object?> get props => [slotId, titleAr, titleEn];
}

class PickupRequestModel extends Equatable {
  final String requestId;
  final String subscriptionId;
  final String subscriptionDayId;
  final String date;
  final int mealCount;
  final List<String> selectedMealSlotIds;
  final String status;
  final String statusLabel;
  final int currentStep;
  final bool creditsReserved;
  final String pickupCode;
  final List<PickupRequestMealModel> meals;

  const PickupRequestModel({
    this.requestId = '',
    this.subscriptionId = '',
    this.subscriptionDayId = '',
    this.date = '',
    this.mealCount = 0,
    this.selectedMealSlotIds = const [],
    this.status = '',
    this.statusLabel = '',
    this.currentStep = 0,
    this.creditsReserved = false,
    this.pickupCode = '',
    this.meals = const [],
  });

  bool get isReady => status == 'ready_for_pickup';

  bool get isFulfilled => status == 'fulfilled';

  @override
  List<Object?> get props => [
    requestId,
    subscriptionId,
    subscriptionDayId,
    date,
    mealCount,
    selectedMealSlotIds,
    status,
    statusLabel,
    currentStep,
    creditsReserved,
    pickupCode,
    meals,
  ];
}
