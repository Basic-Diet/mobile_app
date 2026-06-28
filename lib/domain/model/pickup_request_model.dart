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

class PickupAvailabilityItemModel extends Equatable {
  final String itemId;
  final String itemType;
  final String label;
  final String selectionMode;
  final String categoryKey;
  final String titleAr;
  final String titleEn;
  final String subtitleAr;
  final String subtitleEn;
  final String statusTextAr;
  final String statusTextEn;
  final String selectionTextAr;
  final String selectionTextEn;
  final String availabilityState;
  final bool available;
  final bool canSelect;
  final bool paymentRequired;

  const PickupAvailabilityItemModel({
    this.itemId = '',
    this.itemType = '',
    this.label = '',
    this.selectionMode = '',
    this.categoryKey = '',
    this.titleAr = '',
    this.titleEn = '',
    this.subtitleAr = '',
    this.subtitleEn = '',
    this.statusTextAr = '',
    this.statusTextEn = '',
    this.selectionTextAr = '',
    this.selectionTextEn = '',
    this.availabilityState = '',
    this.available = false,
    this.canSelect = false,
    this.paymentRequired = false,
  });

  bool get isSelectable =>
      itemId.isNotEmpty && available && canSelect && !paymentRequired;

  @override
  List<Object?> get props => [
    itemId,
    itemType,
    label,
    selectionMode,
    categoryKey,
    titleAr,
    titleEn,
    subtitleAr,
    subtitleEn,
    statusTextAr,
    statusTextEn,
    selectionTextAr,
    selectionTextEn,
    availabilityState,
    available,
    canSelect,
    paymentRequired,
  ];
}

class PickupAvailabilityModel extends Equatable {
  final String subscriptionId;
  final String date;
  final String subscriptionDayId;
  final PickupWalletModel wallet;
  final int remainingMeals;
  final String paymentReason;
  final List<PickupAvailabilitySlotModel> plannedSlots;
  final List<PickupAvailabilitySlotModel> unavailableSlots;
  final List<PickupAvailabilityItemModel> pickupItems;
  final String titleAr;
  final String titleEn;
  final String emptyTextAr;
  final String emptyTextEn;
  final bool canCreatePickupRequest;
  final bool canAppendMeals;
  final int appendLimit;
  final List<PickupAvailabilityAddonModel> dayAddons;
  final List<String> availableSlotIds;
  final List<String> unavailableSlotIds;

  const PickupAvailabilityModel({
    this.subscriptionId = '',
    this.date = '',
    this.subscriptionDayId = '',
    this.wallet = const PickupWalletModel(),
    this.remainingMeals = 0,
    this.paymentReason = '',
    this.plannedSlots = const [],
    this.unavailableSlots = const [],
    this.pickupItems = const [],
    this.titleAr = '',
    this.titleEn = '',
    this.emptyTextAr = '',
    this.emptyTextEn = '',
    this.canCreatePickupRequest = false,
    this.canAppendMeals = false,
    this.appendLimit = 0,
    this.dayAddons = const [],
    this.availableSlotIds = const [],
    this.unavailableSlotIds = const [],
  });

  List<PickupAvailabilitySlotModel> get selectableSlots =>
      plannedSlots.where((slot) => slot.isSelectable).toList();

  List<PickupAvailabilityItemModel> get selectableItems =>
      pickupItems.where((item) => item.isSelectable).toList();

  @override
  List<Object?> get props => [
    subscriptionId,
    date,
    subscriptionDayId,
    wallet,
    remainingMeals,
    paymentReason,
    plannedSlots,
    unavailableSlots,
    pickupItems,
    titleAr,
    titleEn,
    emptyTextAr,
    emptyTextEn,
    canCreatePickupRequest,
    canAppendMeals,
    appendLimit,
    dayAddons,
    availableSlotIds,
    unavailableSlotIds,
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

class SelectedPickupItemModel extends Equatable {
  final String itemId;
  final String itemType;
  final String label;

  const SelectedPickupItemModel({
    this.itemId = '',
    this.itemType = '',
    this.label = '',
  });

  @override
  List<Object?> get props => [itemId, itemType, label];
}

class PickupRequestModel extends Equatable {
  final String requestId;
  final String subscriptionId;
  final String subscriptionDayId;
  final String date;
  final int mealCount;
  final List<String> selectedMealSlotIds;
  final List<String> selectedPickupItemIds;
  final List<SelectedPickupItemModel> selectedPickupItems;
  final int addonCount;
  final int itemCount;
  final String status;
  final String statusLabel;
  final String message;
  final int currentStep;
  final String selectionMode;
  final bool creditsReserved;
  final String pickupCode;
  final String pickupCodeIssuedAt;
  final String fulfilledAt;
  final String createdAt;
  final bool idempotent;
  final String nextAction;
  final bool ready;
  final bool completed;
  final List<PickupRequestMealModel> meals;

  const PickupRequestModel({
    this.requestId = '',
    this.subscriptionId = '',
    this.subscriptionDayId = '',
    this.date = '',
    this.mealCount = 0,
    this.selectedMealSlotIds = const [],
    this.selectedPickupItemIds = const [],
    this.selectedPickupItems = const [],
    this.addonCount = 0,
    this.itemCount = 0,
    this.status = '',
    this.statusLabel = '',
    this.message = '',
    this.currentStep = 0,
    this.selectionMode = '',
    this.creditsReserved = false,
    this.pickupCode = '',
    this.pickupCodeIssuedAt = '',
    this.fulfilledAt = '',
    this.createdAt = '',
    this.idempotent = false,
    this.nextAction = '',
    this.ready = false,
    this.completed = false,
    this.meals = const [],
  });

  bool get isReady => ready || status == 'ready_for_pickup';

  bool get isCompleted {
    final normalizedStatus = status.trim().toLowerCase();
    return completed ||
        normalizedStatus == 'completed' ||
        normalizedStatus == 'fulfilled';
  }

  bool get isFulfilled => isCompleted;

  bool get isTerminal {
    final normalizedStatus = status.trim().toLowerCase();
    return isCompleted ||
        normalizedStatus == 'no_show' ||
        normalizedStatus == 'canceled' ||
        normalizedStatus == 'canceled_at_branch';
  }

  @override
  List<Object?> get props => [
    requestId,
    subscriptionId,
    subscriptionDayId,
    date,
    mealCount,
    selectedMealSlotIds,
    selectedPickupItemIds,
    selectedPickupItems,
    addonCount,
    itemCount,
    status,
    statusLabel,
    message,
    currentStep,
    selectionMode,
    creditsReserved,
    pickupCode,
    pickupCodeIssuedAt,
    fulfilledAt,
    createdAt,
    idempotent,
    nextAction,
    ready,
    completed,
    meals,
  ];
}
