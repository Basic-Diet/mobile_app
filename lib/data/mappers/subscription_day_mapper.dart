import 'package:basic_diet/data/response/subscription_day_response.dart';
import 'package:basic_diet/data/response/validation_response.dart';
import 'package:basic_diet/data/mappers/current_subscription_overview_mapper.dart';
import 'package:basic_diet/domain/model/meal_planner_menu_model.dart';
import 'package:basic_diet/domain/model/subscription_day_model.dart';

extension SubscriptionDayResponseMapper on SubscriptionDayResponse {
  SubscriptionDayModel toDomain() {
    return SubscriptionDayModel(
      date: data?.date ?? '',
      status: data?.status ?? 'open',
      plannerState: data?.plannerState ?? data?.planning?.state,
      commercialState: data?.commercialState,
      plannerRevisionHash: data?.plannerRevisionHash ?? '',
      mealSlots: data?.mealSlots.map((s) => s.toDomain()).toList() ?? [],
      addonSelections:
          data?.addonSelections
              .map((selection) => selection.toDomain())
              .toList() ??
          [],
      plannerMeta:
          data?.plannerMeta?.toDomain() ??
          data?.planning?.toPlannerMetaDomain(),
      paymentRequirement: data?.paymentRequirement?.toDomain(),
      premiumExtraPayment: data?.premiumExtraPayment?.toDomain(),
      rules: data?.rules?.toDomain(),
      pickupLocation: data?.pickupLocation?.toDomain(),
      deliveryAddress: data?.deliveryAddress?.toDomain(),
      deliveryWindow: data?.deliveryWindow?.toDomain(),
      fulfillmentSummary: data?.fulfillmentSummary?.toDomain(),
      lockedReason: data?.lockedReason ?? '',
      lockedMessage: data?.lockedMessage ?? '',
      mealBalance: data?.mealBalance?.toDomain(),
      addonBalance:
          data?.addonBalance.map((balance) => balance.toDomain()).toList() ??
          const [],
      addonSubscriptionAllowances:
          data?.addonSubscriptionAllowances
              .map((allowance) => allowance.toDomain())
              .toList() ??
          const [],
      addonCategoryAllowances:
          data?.addonCategoryAllowances
              .map((allowance) => allowance.toDomain())
              .toList() ??
          const [],
    );
  }
}

extension PlanningResponseMapper on PlanningResponse {
  PlannerMetaModel toPlannerMetaDomain() {
    return PlannerMetaModel(
      requiredSlotCount: requiredMealCount,
      emptySlotCount: requiredMealCount - selectedTotalMealCount,
      partialSlotCount: 0,
      completeSlotCount: selectedTotalMealCount,
      premiumSlotCount: 0,
      premiumPendingPaymentCount: 0,
      premiumTotalHalala: 0,
      isDraftValid: isExactCountSatisfied,
      isConfirmable: isExactCountSatisfied,
    );
  }
}

extension AddonSelectionResponseMapper on AddonSelectionResponse {
  AddonSelectionModel toDomain() {
    final coveredQty = this.coveredQty ?? 0;
    final paidQty = this.paidQty ?? 0;
    final payableTotalHalala = this.payableTotalHalala ?? 0;
    final pricingMode = this.pricingMode ?? '';
    final isIncluded = coveredQty > 0 || pricingMode == 'allowance_covered';
    final isPayable =
        paidQty > 0 ||
        payableTotalHalala > 0 ||
        pricingMode == 'paid_no_entitlement' ||
        pricingMode == 'paid_overage' ||
        pricingMode == 'allowance_partial';
    final rawStatus =
        isIncluded
            ? 'included'
            : isPayable || source == 'pending_payment'
            ? 'pending_payment'
            : status ?? source ?? '';
    return AddonSelectionModel(
      addonId: addonId ?? '',
      category: category ?? '',
      status:
          rawStatus == 'subscription' || rawStatus == 'selected'
              ? 'included'
              : rawStatus,
      source: source ?? '',
      name: name ?? '',
      priceHalala: priceHalala ?? 0,
      coveredQty: coveredQty,
      paidQty: paidQty,
      payableTotalHalala: payableTotalHalala,
      pricingMode: pricingMode,
      currency: currency ?? 'SAR',
    );
  }
}

extension MealSlotCarbResponseMapper on MealSlotCarbResponse {
  MealSlotCarbModel toDomain() {
    return MealSlotCarbModel(carbId: carbId, grams: grams);
  }
}

extension SaladGroupsResponseMapper on SaladGroupsResponse {
  SaladGroupsModel toDomain() {
    return SaladGroupsModel(
      leafyGreens: leafyGreens,
      vegetables: vegetables,
      protein: protein,
      cheeseNuts: cheeseNuts,
      fruits: fruits,
      sauce: sauce,
    );
  }
}

extension SaladResponseMapper on SaladResponse {
  SaladSelectionModel toDomain() {
    return SaladSelectionModel(
      presetKey: presetKey,
      groups: groups?.toDomain() ?? const SaladGroupsModel(),
    );
  }
}

extension MealSlotResponseMapper on MealSlotResponse {
  MealSlotModel toDomain() {
    return MealSlotModel(
      slotIndex: slotIndex,
      slotKey: slotKey,
      status: status,
      selectionType: selectionType,
      proteinId: proteinId,
      carbs: carbs.map((carb) => carb.toDomain()).toList(),
      sandwichId: sandwichId,
      salad: salad?.toDomain(),
      isPremium: isPremium,
      premiumSource: premiumSource,
      premiumKey: premiumKey,
      premiumExtraFeeHalala: premiumExtraFeeHalala,
      proteinFamilyKey: proteinFamilyKey,
    );
  }
}

extension PlannerMetaResponseMapper on PlannerMetaResponse {
  PlannerMetaModel toDomain() {
    return PlannerMetaModel(
      requiredSlotCount: requiredSlotCount,
      emptySlotCount: emptySlotCount,
      partialSlotCount: partialSlotCount,
      completeSlotCount: completeSlotCount,
      premiumSlotCount: premiumSlotCount,
      premiumPendingPaymentCount: premiumPendingPaymentCount,
      premiumTotalHalala: premiumTotalHalala,
      isDraftValid: isDraftValid,
      isConfirmable: isConfirmable,
    );
  }
}

extension PaymentRequirementResponseMapper on PaymentRequirementResponse {
  PaymentRequirementModel toDomain() {
    return PaymentRequirementModel(
      status: status,
      requiresPayment: requiresPayment,
      premiumSelectedCount: premiumSelectedCount,
      premiumPendingPaymentCount: premiumPendingPaymentCount,
      addonSelectedCount: addonSelectedCount,
      addonPendingPaymentCount: addonPendingPaymentCount,
      amountHalala: amountHalala,
      pendingAmountHalala: pendingAmountHalala,
      currency: currency,
      pricingStatus: pricingStatus,
      pricingStatusLabel: pricingStatusLabel ?? '',
      blockingReason: blockingReason,
      blockingReasonLabel: blockingReasonLabel ?? '',
      canCreatePayment: canCreatePayment,
    );
  }
}

extension PremiumExtraPaymentResponseMapper on PremiumExtraPaymentResponse {
  PremiumExtraPaymentModel toDomain() {
    return PremiumExtraPaymentModel(
      paymentStatus: paymentStatus ?? '',
      amountHalala: amountHalala ?? 0,
      currency: currency ?? 'SAR',
    );
  }
}

extension DayRulesResponseMapper on DayRulesResponse {
  BuilderRulesModel toDomain() {
    return BuilderRulesModel(
      version: version ?? '',
      beef: BeefRuleModel(
        proteinFamilyKey: beef?.proteinFamilyKey ?? '',
        maxSlotsPerDay: beef?.maxSlotsPerDay ?? 0,
      ),
      maxCarbItemsPerMeal: maxCarbItemsPerMeal ?? 2,
      maxCarbTotalGrams: maxCarbTotalGrams ?? 300,
    );
  }
}

extension ValidationResponseMapper on ValidationResponse {
  ValidationResultModel toDomain() {
    return ValidationResultModel(
      valid: data?.valid ?? false,
      mealSlots: data?.mealSlots?.map((s) => s.toDomain()).toList(),
      plannerMeta: data?.plannerMeta?.toDomain(),
      paymentRequirement: data?.paymentRequirement?.toDomain(),
      slotErrors: data?.slotErrors?.map((e) => e.toDomain()).toList(),
      addonSelections:
          data?.addonSelections
              ?.map((selection) => selection.toDomain())
              .toList() ??
          const [],
      plannerRevisionHash: data?.plannerRevisionHash ?? '',
      premiumExtraPayment: data?.premiumExtraPayment?.toDomain(),
      commercialState: data?.commercialState ?? '',
      isFulfillable: data?.isFulfillable ?? false,
      canBePrepared: data?.canBePrepared ?? false,
      rules: data?.rules?.toDomain(),
    );
  }
}

extension SlotErrorResponseMapper on SlotErrorResponse {
  SlotErrorModel toDomain() {
    return SlotErrorModel(
      slotIndex: slotIndex,
      field: field,
      code: code,
      message: message,
    );
  }
}
