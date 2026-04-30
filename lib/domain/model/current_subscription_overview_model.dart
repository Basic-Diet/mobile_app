class MetaModel {
  String testScenario;
  MetaModel(this.testScenario);
}

class ContractModel {
  bool isCanonical;
  bool isGrandfathered;
  String version;

  ContractModel(this.isCanonical, this.isGrandfathered, this.version);
}

class PickupPreparationModel {
  String flowStatus;
  String reason;
  String buttonLabel;
  String message;
  bool canRequestPrepare;
  bool canBePrepared;
  bool planningReady;
  bool showMealPlannerCta;
  String mealPlannerCtaLabelAr;
  String mealPlannerCtaLabelEn;
  String messageAr;
  String messageEn;
  String businessDate;
  bool pickupRequested;
  bool pickupPrepared;

  PickupPreparationModel(
    this.flowStatus,
    this.reason,
    this.buttonLabel,
    this.message,
    this.canRequestPrepare,
    this.canBePrepared,
    this.planningReady,
    this.showMealPlannerCta,
    this.mealPlannerCtaLabelAr,
    this.mealPlannerCtaLabelEn,
    this.messageAr,
    this.messageEn,
    this.businessDate,
    this.pickupRequested,
    this.pickupPrepared,
  );
}

class DeliverySlotModel {
  String slotId;
  String type;
  String window;
  String label;

  DeliverySlotModel(this.slotId, this.type, this.window, [this.label = '']);
}

class AddressSummaryModel {
  final String label;
  final String line1;
  final String line2;
  final String city;
  final String district;
  final String zoneName;
  final String formatted;
  final String street;
  final String building;
  final String apartment;
  final String notes;

  const AddressSummaryModel({
    this.label = '',
    this.line1 = '',
    this.line2 = '',
    this.city = '',
    this.district = '',
    this.zoneName = '',
    this.formatted = '',
    this.street = '',
    this.building = '',
    this.apartment = '',
    this.notes = '',
  });

  String get summary {
    if (formatted.trim().isNotEmpty) return formatted;
    final parts = <String>[
      label,
      line1,
      line2,
      district,
      city,
      zoneName,
      street,
      building,
      apartment,
    ].where((value) => value.trim().isNotEmpty).toList();

    return parts.join(' - ');
  }
}

class PickupLocationSummaryModel {
  final String id;
  final String name;
  final String address;
  final String phone;
  final String city;
  final String district;
  final String workingHours;
  final double? latitude;
  final double? longitude;
  final String mapUrl;

  const PickupLocationSummaryModel({
    this.id = '',
    this.name = '',
    this.address = '',
    this.phone = '',
    this.city = '',
    this.district = '',
    this.workingHours = '',
    this.latitude,
    this.longitude,
    this.mapUrl = '',
  });

  String get summary {
    final parts = <String>[name, address, district, city]
        .where((value) => value.trim().isNotEmpty)
        .toList();
    return parts.join(' - ');
  }
}

class DeliveryWindowSummaryModel {
  final String from;
  final String to;
  final String label;

  const DeliveryWindowSummaryModel({
    this.from = '',
    this.to = '',
    this.label = '',
  });
}

class FulfillmentSummaryModel {
  final String mode;
  final String title;
  final String status;
  final String statusLabel;
  final String message;
  final String nextAction;
  final bool isEditable;
  final bool isFulfillable;
  final bool planningReady;
  final bool fulfillmentReady;
  final String lockedReason;
  final String lockedMessage;

  const FulfillmentSummaryModel({
    this.mode = '',
    this.title = '',
    this.status = '',
    this.statusLabel = '',
    this.message = '',
    this.nextAction = '',
    this.isEditable = false,
    this.isFulfillable = false,
    this.planningReady = false,
    this.fulfillmentReady = false,
    this.lockedReason = '',
    this.lockedMessage = '',
  });
}

class AddonSubscriptionModel {
  String addonId;
  String category;
  int includedCount;
  String status;

  AddonSubscriptionModel(
    this.addonId,
    this.category,
    this.includedCount,
    this.status,
  );
}

class PremiumSummaryModel {
  String premiumMealId;
  String premiumKey;
  String name;
  int purchasedQtyTotal;
  int remainingQtyTotal;
  int consumedQtyTotal;

  PremiumSummaryModel(
    this.premiumMealId,
    this.premiumKey,
    this.name,
    this.purchasedQtyTotal,
    this.remainingQtyTotal,
    this.consumedQtyTotal,
  );
}

class AddonSummaryModel {
  String addonId;
  String name;
  int purchasedQtyTotal;
  int remainingQtyTotal;
  int consumedQtyTotal;

  AddonSummaryModel(
    this.addonId,
    this.name,
    this.purchasedQtyTotal,
    this.remainingQtyTotal,
    this.consumedQtyTotal,
  );
}

class CurrentSubscriptionOverviewDataModel {
  String id;
  String businessDate;
  String status;
  String startDate;
  String endDate;
  int totalMeals;
  int remainingMeals;
  int premiumRemaining;
  List<AddonSubscriptionModel> addonSubscriptions;
  int selectedMealsPerDay;
  String deliveryMode;
  List<PremiumSummaryModel> premiumSummary;
  List<AddonSummaryModel> addonsSummary;
  String statusLabel;
  String deliveryModeLabel;
  String deliveryWindow;
  String pickupLocationId;
  String validityEndDate;
  int skipDaysUsed;
  int skipDaysLimit;
  int remainingSkipDays;
  MetaModel? meta;
  ContractModel? contract;
  PickupPreparationModel? pickupPreparation;
  DeliverySlotModel? deliverySlot;
  AddressSummaryModel? deliveryAddress;
  PickupLocationSummaryModel? pickupLocation;
  DeliveryWindowSummaryModel? deliveryWindowSummary;
  FulfillmentSummaryModel? fulfillmentSummary;

  CurrentSubscriptionOverviewDataModel(
    this.id,
    this.businessDate,
    this.status,
    this.startDate,
    this.endDate,
    this.totalMeals,
    this.remainingMeals,
    this.premiumRemaining,
    this.addonSubscriptions,
    this.selectedMealsPerDay,
    this.deliveryMode,
    this.premiumSummary,
    this.addonsSummary,
    this.statusLabel,
    this.deliveryModeLabel,
    this.deliveryWindow,
    this.pickupLocationId,
    this.validityEndDate,
    this.skipDaysUsed,
    this.skipDaysLimit,
    this.remainingSkipDays,
    this.meta,
    this.contract,
    this.pickupPreparation,
    this.deliverySlot,
    this.deliveryAddress,
    this.pickupLocation, [
    this.deliveryWindowSummary,
    this.fulfillmentSummary,
    ]
  );
}

class CurrentSubscriptionOverviewModel {
  CurrentSubscriptionOverviewDataModel? data;

  CurrentSubscriptionOverviewModel(this.data);
}
