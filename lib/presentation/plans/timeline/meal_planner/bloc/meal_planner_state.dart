import 'package:basic_diet/domain/model/addon_choices_model.dart';
import 'package:basic_diet/domain/model/current_subscription_overview_model.dart';
import 'package:basic_diet/domain/model/meal_planner_menu_model.dart';
import 'package:basic_diet/domain/model/subscription_day_model.dart';
import 'package:basic_diet/domain/model/timeline_model.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

sealed class MealPlannerState extends Equatable {
  const MealPlannerState();

  @override
  List<Object?> get props => [];
}

final class MealPlannerInitial extends MealPlannerState {}

final class MealPlannerLoading extends MealPlannerState {}

final class MealPlannerError extends MealPlannerState {
  final String message;
  const MealPlannerError(this.message);

  @override
  List<Object?> get props => [message];
}

final class MealPlannerSlotCarbSelection extends Equatable {
  final String carbId;
  final int grams;

  const MealPlannerSlotCarbSelection({
    required this.carbId,
    required this.grams,
  });

  @override
  List<Object?> get props => [carbId, grams];
}

final class MealPlannerSaladGroupsSelection extends Equatable {
  final List<String> leafyGreens;
  final List<String> vegetables;
  final List<String> protein;
  final List<String> cheeseNuts;
  final List<String> fruits;
  final List<String> sauce;

  const MealPlannerSaladGroupsSelection({
    this.leafyGreens = const [],
    this.vegetables = const [],
    this.protein = const [],
    this.cheeseNuts = const [],
    this.fruits = const [],
    this.sauce = const [],
  });

  @override
  List<Object?> get props => [
    leafyGreens,
    vegetables,
    protein,
    cheeseNuts,
    fruits,
    sauce,
  ];
}

final class PremiumLargeSaladSelection extends Equatable {
  final String presetKey;
  final MealPlannerSaladGroupsSelection groups;

  const PremiumLargeSaladSelection({
    required this.presetKey,
    required this.groups,
  });

  @override
  List<Object?> get props => [presetKey, groups];
}

final class MealPlannerSlotSelection extends Equatable {
  final int slotIndex;
  final String slotKey;
  final String selectionType;
  final String? proteinId;
  final List<MealPlannerSlotCarbSelection> carbs;
  final String? sandwichId;
  final PremiumLargeSaladSelection? salad;

  const MealPlannerSlotSelection({
    required this.slotIndex,
    required this.slotKey,
    this.selectionType = 'standard_meal',
    required this.proteinId,
    this.carbs = const [],
    this.sandwichId,
    this.salad,
  });

  String? get primaryCarbId => carbs.isEmpty ? null : carbs.first.carbId;

  MealPlannerSlotSelection copyWith({
    int? slotIndex,
    String? slotKey,
    String? selectionType,
    String? proteinId,
    List<MealPlannerSlotCarbSelection>? carbs,
    String? sandwichId,
    PremiumLargeSaladSelection? salad,
    bool clearProteinId = false,
    bool clearCarbs = false,
    bool clearSandwichId = false,
    bool clearSalad = false,
  }) {
    return MealPlannerSlotSelection(
      slotIndex: slotIndex ?? this.slotIndex,
      slotKey: slotKey ?? this.slotKey,
      selectionType: selectionType ?? this.selectionType,
      proteinId: clearProteinId ? null : proteinId ?? this.proteinId,
      carbs: clearCarbs ? const [] : carbs ?? this.carbs,
      sandwichId: clearSandwichId ? null : sandwichId ?? this.sandwichId,
      salad: clearSalad ? null : salad ?? this.salad,
    );
  }

  @override
  List<Object?> get props => [
    slotIndex,
    slotKey,
    selectionType,
    proteinId,
    carbs,
    sandwichId,
    salad,
  ];
}

final class PendingAddonPrompt extends Equatable {
  final String addonId;
  final String title;
  final String category;
  final int priceHalala;
  final String currency;

  const PendingAddonPrompt({
    required this.addonId,
    required this.title,
    required this.category,
    required this.priceHalala,
    required this.currency,
  });

  @override
  List<Object?> get props => [addonId, title, category, priceHalala, currency];
}

final class PremiumUsageEvaluation {
  final int coveredCount;
  final int pendingCount;
  final int pendingAmountHalala;

  const PremiumUsageEvaluation({
    required this.coveredCount,
    required this.pendingCount,
    required this.pendingAmountHalala,
  });
}

final class MealPlannerLoaded extends MealPlannerState {
  final List<TimelineDayModel> timelineDays;
  final MealPlannerMenuModel menu;
  final AddonChoicesModel addonChoices;
  final List<AddonSubscriptionModel> addonEntitlements;
  final List<PremiumSummaryModel> premiumSummaries;
  final int selectedDayIndex;
  final Map<int, List<MealPlannerSlotSelection>> selectedSlotsPerDay;
  final Map<int, List<MealPlannerSlotSelection>> savedSlotsPerDay;
  final Map<int, List<String>> selectedAddOnIdsByDay;
  final Map<int, List<String>> savedAddOnIdsByDay;
  final Map<int, SubscriptionDayModel> dayDetailsByIndex;
  final bool isSaving;
  final bool isRefreshingDay;
  final bool showSavedBanner;
  final String lastAddedMealName;
  final int premiumMealsRemaining;
  final bool saveSuccess;
  final int premiumMealsPendingPayment;
  final String? paymentUrl;
  final String? paymentId;
  final String? paymentError;
  final String? activePaymentKind;
  final PendingAddonPrompt? pendingAddonPrompt;
  final MealBalanceModel? mealBalance;

  const MealPlannerLoaded({
    required this.timelineDays,
    required this.menu,
    required this.addonChoices,
    required this.addonEntitlements,
    required this.premiumSummaries,
    required this.selectedDayIndex,
    required this.selectedSlotsPerDay,
    required this.savedSlotsPerDay,
    required this.selectedAddOnIdsByDay,
    required this.savedAddOnIdsByDay,
    required this.dayDetailsByIndex,
    required this.premiumMealsRemaining,
    this.mealBalance,
    this.isSaving = false,
    this.isRefreshingDay = false,
    this.saveSuccess = false,
    this.showSavedBanner = false,
    this.lastAddedMealName = '',
    this.premiumMealsPendingPayment = 0,
    this.paymentUrl,
    this.paymentId,
    this.paymentError,
    this.activePaymentKind,
    this.pendingAddonPrompt,
  });

  TimelineDayModel get selectedTimelineDay => timelineDays[selectedDayIndex];

  SubscriptionDayModel? get selectedDayDetail =>
      dayDetailsByIndex[selectedDayIndex];

  List<String> get selectedAddOnIds =>
      selectedAddOnIdsByDay[selectedDayIndex] ?? const [];

  List<String> get savedAddOnIds =>
      savedAddOnIdsByDay[selectedDayIndex] ?? const [];

  List<AddonSelectionModel> get addonSelections =>
      selectedDayDetail?.addonSelections ?? const [];

  Map<String, AddonChoiceCategoryModel> get groupedAddons =>
      addonChoices.categoriesByKey;

  Map<String, AddonChoiceModel> get _catalogById {
    final map = <String, AddonChoiceModel>{};
    for (final category in addonChoices.categories) {
      for (final addon in category.choices) {
        map[addon.id] = addon;
      }
    }
    return map;
  }

  List<AddonChoiceModel> get selectedAddOnModels {
    return selectedAddOnIds
        .map((id) => _catalogById[id])
        .whereType<AddonChoiceModel>()
        .toList();
  }

  List<AddonChoiceModel> selectedAddonsForCategory(String category) {
    final categoryAddonIds =
        groupedAddons[category]?.choices.map((addon) => addon.id).toSet() ??
        const <String>{};
    return selectedAddOnIds
        .where(categoryAddonIds.contains)
        .map((id) => _catalogById[id])
        .whereType<AddonChoiceModel>()
        .toList();
  }

  String? selectedAddOnIdForCategory(String category) {
    final addons = selectedAddonsForCategory(category);
    return addons.isEmpty ? null : addons.first.id;
  }

  List<String> selectedAddOnIdsForCategory(String category) {
    final categoryAddonIds =
        groupedAddons[category]?.choices.map((addon) => addon.id).toSet() ??
        const <String>{};
    return selectedAddOnIds.where(categoryAddonIds.contains).toList();
  }

  String addonSelectionStatusFor(
    String addonId, {
    List<String>? selectedAddonIdsOverride,
  }) {
    final shouldUseBackendSelection =
        selectedAddonIdsOverride == null && !hasSelectedDayUnsavedChanges;
    final backendSelection = addonSelections
        .where((selection) => selection.addonId == addonId)
        .cast<AddonSelectionModel?>()
        .firstWhere((selection) => selection != null, orElse: () => null);
    if (backendSelection != null && shouldUseBackendSelection) {
      return backendSelection.isPendingPayment
          ? 'pending_payment'
          : backendSelection.status;
    }
    return _computeLocalAddonStatus(
      addonId,
      selectedAddonIds: selectedAddonIdsOverride ?? selectedAddOnIds,
    );
  }

  String _computeLocalAddonStatus(
    String addonId, {
    required List<String> selectedAddonIds,
  }) {
    final targetAddon = _catalogById[addonId];

    if (targetAddon == null) {
      return 'pending_payment';
    }

    final allowances = <String, int>{};
    for (final entitlement in addonEntitlements) {
      if ((entitlement.status == 'active' || entitlement.status.isEmpty) &&
          entitlement.includedCount > 0) {
        final category = entitlement.category;
        allowances[category] =
            (allowances[category] ?? 0) + entitlement.includedCount;
      }
    }

    for (final id in selectedAddonIds) {
      final addon = _catalogById[id];
      if (addon == null) continue;
      final category = _categoryForAddon(addon);
      final remaining = allowances[category] ?? 0;
      if (addon.id == targetAddon.id) {
        return remaining > 0 ? 'subscription' : 'pending_payment';
      }
      if (remaining > 0) {
        allowances[category] = remaining - 1;
      }
    }

    final remaining = allowances[_categoryForAddon(targetAddon)] ?? 0;
    return remaining > 0 ? 'subscription' : 'pending_payment';
  }

  String _categoryForAddon(AddonChoiceModel addon) {
    for (final category in addonChoices.categories) {
      if (category.choices.any((choice) => choice.id == addon.id)) {
        return category.category;
      }
    }
    return addon.categoryKey;
  }

  int get localAddonPendingAmountHalala {
    if (isSelectedDayAppendMode) return 0;
    var total = 0;
    for (final addon in selectedAddOnModels) {
      if (addonSelectionStatusFor(addon.id) == 'pending_payment') {
        total += addon.priceHalala;
      }
    }
    return total;
  }

  int get localAddonPendingCount {
    if (isSelectedDayAppendMode) return 0;
    var total = 0;
    for (final addon in selectedAddOnModels) {
      if (addonSelectionStatusFor(addon.id) == 'pending_payment') {
        total++;
      }
    }
    return total;
  }

  int get addonPendingPaymentCount =>
      !hasSelectedDayUnsavedChanges
          ? selectedDayDetail?.paymentRequirement?.addonPendingPaymentCount ??
              localAddonPendingCount
          : localAddonPendingCount;

  int get addonPendingPaymentAmountHalala =>
      !hasSelectedDayUnsavedChanges &&
              selectedDayDetail?.paymentRequirement?.pendingAmountHalala !=
                  null &&
              (selectedDayDetail?.paymentRequirement?.blockingReason
                          ?.toUpperCase() ==
                      'ADDON_PAYMENT_REQUIRED' ||
                  (selectedDayDetail
                              ?.paymentRequirement
                              ?.addonPendingPaymentCount ??
                          0) >
                      0)
          ? selectedDayDetail!.paymentRequirement!.pendingAmountHalala
          : localAddonPendingAmountHalala;

  int get premiumPendingPaymentAmountHalala {
    final requirement = selectedDayDetail?.paymentRequirement;
    if (!hasSelectedDayUnsavedChanges &&
        requirement != null &&
        ((requirement.blockingReason?.toUpperCase() ==
                'PREMIUM_PAYMENT_REQUIRED') ||
            requirement.premiumPendingPaymentCount > 0)) {
      return requirement.pendingAmountHalala > 0
          ? requirement.pendingAmountHalala
          : requirement.amountHalala;
    }
    return evaluatePremiumUsage().pendingAmountHalala;
  }

  int get totalPendingPaymentAmountHalala {
    final requirement = selectedDayDetail?.paymentRequirement;
    if (!hasSelectedDayUnsavedChanges &&
        requirement != null &&
        requirement.requiresPayment) {
      return requirement.pendingAmountHalala > 0
          ? requirement.pendingAmountHalala
          : requirement.amountHalala;
    }
    return premiumPendingPaymentAmountHalala + addonPendingPaymentAmountHalala;
  }

  bool get hasSelectedDayUnsavedChanges {
    final currentSlots = selectedDaySlots;
    final savedSlots = savedSlotsPerDay[selectedDayIndex] ?? const [];
    if (currentSlots.length != savedSlots.length) return true;
    for (var i = 0; i < currentSlots.length; i++) {
      if (currentSlots[i] != savedSlots[i]) return true;
    }

    final savedAddons = savedAddOnIdsByDay[selectedDayIndex] ?? const [];
    return !listEquals(selectedAddOnIds, savedAddons);
  }

  int get selectedMealsCount {
    final slots = selectedDaySlots;
    return slots.where(_isCompletedMealSelection).length;
  }

  bool get hasSelectedMeals => selectedMealsCount > 0;

  Iterable<MealPlannerSlotSelection> get appendedSlots =>
      selectedDaySlots.skip(savedMealSlotCount);

  int get appendedMealsCount =>
      appendedSlots.where(_isCompletedMealSelection).length;

  bool get hasAppendableMealSelection => appendedMealsCount > 0;

  bool get hasIncompleteAppendedSlots =>
      appendedSlots.any((slot) => !_isCompletedMealSelection(slot));

  int get billableSelectedMealsCount =>
      isSelectedDayAppendMode ? appendedMealsCount : selectedMealsCount;

  bool get hasBillableSelectedMeals {
    if (billableSelectedMealsCount > 0) return true;
    return isSelectedDayAppendMode &&
        (selectedDayDetail?.paymentRequirement?.requiresPayment ?? false);
  }

  String get paymentCurrency {
    final dayCurrency = selectedDayDetail?.paymentRequirement?.currency;
    if (dayCurrency != null && dayCurrency.isNotEmpty) {
      return dayCurrency;
    }
    if (menu.currency.isNotEmpty) return menu.currency;
    return Strings.sar.tr();
  }

  int get maxMeals => selectedDaySlots.length;

  List<MealPlannerSlotSelection> get selectedDaySlots =>
      selectedSlotsPerDay[selectedDayIndex] ?? const [];

  int get displayMaxConsumableMealsNow {
    if (mealBalance?.maxConsumableMealsNow != null) {
      return mealBalance!.maxConsumableMealsNow!;
    }
    // Fallback to initial required meals if mealBalance is missing
    return initialRequiredMeals;
  }

  bool get canAddMoreMeals {
    if (!canModifySelectedDay) return false;
    if (mealBalance != null) {
      if (mealBalance?.canConsumeNow == false) return false;
      if (mealBalance?.remainingMeals != null &&
          mealBalance!.remainingMeals! <= 0) {
        return false;
      }
      if (mealBalance?.dailyMealLimitEnforced == true &&
          !isSelectedDayAppendMode) {
        return false;
      }
      if (mealBalance?.maxConsumableMealsNow == null &&
          isSelectedDayAppendMode) {
        return true;
      }
    }

    return maxMeals < displayMaxConsumableMealsNow;
  }

  String? get canAddMoreMealsReason {
    if (!canModifySelectedDay) return "DAY_NOT_EDITABLE";
    if (mealBalance != null) {
      if (mealBalance?.canConsumeNow == false) return "CANNOT_CONSUME_NOW";
      if (mealBalance?.dailyMealLimitEnforced == true &&
          !isSelectedDayAppendMode) {
        return "DAILY_LIMIT_ENFORCED";
      }
      if (mealBalance?.remainingMeals != null &&
          mealBalance!.remainingMeals! <= 0) {
        return "NO_REMAINING_MEALS";
      }
    }
    if (mealBalance?.maxConsumableMealsNow == null && isSelectedDayAppendMode) {
      return null;
    }
    if (maxMeals >= displayMaxConsumableMealsNow) return "MAX_MEALS_REACHED";
    return null;
  }

  bool get dailyMealLimitEnforced =>
      mealBalance?.dailyMealLimitEnforced ?? true;

  int get initialRequiredMeals => selectedTimelineDay.requiredMeals;

  bool get isSelectedDayEditable {
    if (selectedTimelineDay.isHistoricalOnly) {
      return false;
    }

    final detail = selectedDayDetail;
    final commercialState =
        detail?.commercialState ?? selectedTimelineDay.commercialState;
    final blockingReason =
        detail?.paymentRequirement?.blockingReason?.toUpperCase();
    if (blockingReason == 'DAY_LOCKED_BEFORE_DELIVERY' ||
        blockingReason == 'DELIVERY_TIME_UNAVAILABLE' ||
        blockingReason == 'LOCKED' ||
        blockingReason == 'DAY_ALREADY_CONFIRMED') {
      return false;
    }
    if (commercialState.toLowerCase() == 'confirmed') {
      return false;
    }
    return true;
  }

  bool get canModifySelectedDay =>
      isSelectedDayEditable || isSelectedDayAppendMode;

  bool get isSelectedDayAppendMode {
    if (selectedTimelineDay.isHistoricalOnly) return false;
    if (!_isSelectedPickupDay) return false;

    final detail = selectedDayDetail;
    final commercialState =
        detail?.commercialState ?? selectedTimelineDay.commercialState;
    final blockingReason =
        detail?.paymentRequirement?.blockingReason?.toUpperCase();

    return commercialState.toLowerCase() == 'confirmed' ||
        blockingReason == 'DAY_ALREADY_CONFIRMED';
  }

  bool get _isSelectedPickupDay {
    final mode = selectedTimelineDay.fulfillmentMode.toLowerCase();
    final deliveryMode = selectedTimelineDay.deliveryMode.toLowerCase();
    return mode == 'pickup' ||
        deliveryMode == 'pickup' ||
        selectedTimelineDay.pickupLocation != null ||
        selectedDayDetail?.pickupLocation != null;
  }

  int get savedMealSlotCount => savedSlotsPerDay[selectedDayIndex]?.length ?? 0;

  bool canEditMealSlot(int slotIndex) {
    if (isSelectedDayEditable) return true;
    return isSelectedDayAppendMode && slotIndex >= savedMealSlotCount;
  }

  bool get canChangeAddons => isSelectedDayEditable;

  bool get hasPendingAddonPayment =>
      (selectedDayDetail?.paymentRequirement?.addonPendingPaymentCount ?? 0) >
          0 ||
      addonSelections.any((selection) => selection.isPendingPayment);

  bool get hasPendingPremiumPayment =>
      (selectedDayDetail?.paymentRequirement?.premiumPendingPaymentCount ??
          premiumMealsPendingPayment) >
      0;

  bool get hasAnyPendingPayment =>
      selectedDayDetail?.paymentRequirement?.requiresPayment ??
      (hasPendingPremiumPayment || hasPendingAddonPayment);

  bool get isDirty {
    for (final entry in selectedSlotsPerDay.entries) {
      final current = entry.value;
      final saved = savedSlotsPerDay[entry.key];
      if (saved == null || current.length != saved.length) return true;
      for (var i = 0; i < current.length; i++) {
        if (current[i] != saved[i]) return true;
      }
    }

    for (final entry in selectedAddOnIdsByDay.entries) {
      final current = entry.value;
      final saved = savedAddOnIdsByDay[entry.key] ?? const [];
      if (!listEquals(current, saved)) return true;
    }

    return false;
  }

  @override
  List<Object?> get props => [
    timelineDays,
    menu,
    addonChoices,
    addonEntitlements,
    premiumSummaries,
    selectedDayIndex,
    selectedSlotsPerDay,
    savedSlotsPerDay,
    selectedAddOnIdsByDay,
    savedAddOnIdsByDay,
    dayDetailsByIndex,
    isSaving,
    isRefreshingDay,
    showSavedBanner,
    lastAddedMealName,
    premiumMealsRemaining,
    saveSuccess,
    premiumMealsPendingPayment,
    paymentUrl,
    paymentId,
    paymentError,
    activePaymentKind,
    pendingAddonPrompt,
    mealBalance,
  ];

  MealPlannerLoaded copyWith({
    List<TimelineDayModel>? timelineDays,
    MealPlannerMenuModel? menu,
    AddonChoicesModel? addonChoices,
    List<AddonSubscriptionModel>? addonEntitlements,
    List<PremiumSummaryModel>? premiumSummaries,
    int? selectedDayIndex,
    Map<int, List<MealPlannerSlotSelection>>? selectedSlotsPerDay,
    Map<int, List<MealPlannerSlotSelection>>? savedSlotsPerDay,
    Map<int, List<String>>? selectedAddOnIdsByDay,
    Map<int, List<String>>? savedAddOnIdsByDay,
    Map<int, SubscriptionDayModel>? dayDetailsByIndex,
    bool? isSaving,
    bool? isRefreshingDay,
    bool? showSavedBanner,
    String? lastAddedMealName,
    int? premiumMealsRemaining,
    bool? saveSuccess,
    int? premiumMealsPendingPayment,
    String? paymentUrl,
    String? paymentId,
    String? paymentError,
    String? activePaymentKind,
    PendingAddonPrompt? pendingAddonPrompt,
    MealBalanceModel? mealBalance,
    bool clearPaymentUrl = false,
    bool clearPaymentId = false,
    bool clearPaymentError = false,
    bool clearPendingAddonPrompt = false,
  }) {
    return MealPlannerLoaded(
      timelineDays: timelineDays ?? this.timelineDays,
      menu: menu ?? this.menu,
      addonChoices: addonChoices ?? this.addonChoices,
      addonEntitlements: addonEntitlements ?? this.addonEntitlements,
      premiumSummaries: premiumSummaries ?? this.premiumSummaries,
      selectedDayIndex: selectedDayIndex ?? this.selectedDayIndex,
      selectedSlotsPerDay: selectedSlotsPerDay ?? this.selectedSlotsPerDay,
      savedSlotsPerDay: savedSlotsPerDay ?? this.savedSlotsPerDay,
      selectedAddOnIdsByDay:
          selectedAddOnIdsByDay ?? this.selectedAddOnIdsByDay,
      savedAddOnIdsByDay: savedAddOnIdsByDay ?? this.savedAddOnIdsByDay,
      dayDetailsByIndex: dayDetailsByIndex ?? this.dayDetailsByIndex,
      isSaving: isSaving ?? this.isSaving,
      isRefreshingDay: isRefreshingDay ?? this.isRefreshingDay,
      showSavedBanner: showSavedBanner ?? this.showSavedBanner,
      lastAddedMealName: lastAddedMealName ?? this.lastAddedMealName,
      premiumMealsRemaining:
          premiumMealsRemaining ?? this.premiumMealsRemaining,
      saveSuccess: saveSuccess ?? this.saveSuccess,
      premiumMealsPendingPayment:
          premiumMealsPendingPayment ?? this.premiumMealsPendingPayment,
      paymentUrl: clearPaymentUrl ? null : paymentUrl ?? this.paymentUrl,
      paymentId: clearPaymentId ? null : paymentId ?? this.paymentId,
      paymentError:
          clearPaymentError ? null : paymentError ?? this.paymentError,
      activePaymentKind: activePaymentKind ?? this.activePaymentKind,
      pendingAddonPrompt:
          clearPendingAddonPrompt
              ? null
              : pendingAddonPrompt ?? this.pendingAddonPrompt,
      mealBalance: mealBalance ?? this.mealBalance,
    );
  }

  PremiumUsageEvaluation evaluatePremiumUsage({
    Map<int, List<MealPlannerSlotSelection>>? selectedSlotsPerDay,
  }) {
    if (premiumSummaries.isEmpty) {
      return _evaluatePremiumUsageByGenericCredits(selectedSlotsPerDay);
    }

    final allowances =
        premiumSummaries
            .where((summary) => summary.remainingQtyTotal > 0)
            .map(
              (summary) => _PremiumAllowanceEntry(
                premiumMealId: summary.premiumMealId,
                premiumKey: summary.premiumKey,
                normalizedName: _normalizePremiumMealName(summary.name),
                remainingCount: summary.remainingQtyTotal,
              ),
            )
            .toList();

    var coveredCount = 0;
    var pendingCount = 0;
    var pendingAmountHalala = 0;
    final slots =
        (selectedSlotsPerDay ?? this.selectedSlotsPerDay)[selectedDayIndex] ??
        const [];
    final billableSlots =
        isSelectedDayAppendMode ? slots.skip(savedMealSlotCount) : slots;

    for (final slot in billableSlots) {
      // --- Premium large salad slot ---
      if (slot.selectionType == 'premium_large_salad') {
        final salad = menu.builderCatalog.premiumLargeSalad;
        if (salad == null) continue;

        final keyMatchIndex = allowances.indexWhere(
          (entry) =>
              entry.remainingCount > 0 &&
              entry.premiumKey.isNotEmpty &&
              entry.premiumKey == salad.premiumKey,
        );
        final idMatchIndex =
            keyMatchIndex == -1
                ? allowances.indexWhere(
                  (entry) =>
                      entry.remainingCount > 0 &&
                      entry.premiumMealId == salad.id,
                )
                : -1;

        final matchIndex = keyMatchIndex != -1 ? keyMatchIndex : idMatchIndex;

        if (matchIndex != -1) {
          allowances[matchIndex].remainingCount -= 1;
          coveredCount += 1;
        } else {
          pendingCount += 1;
          pendingAmountHalala += salad.extraFeeHalala;
        }
        continue;
      }

      // --- Regular / premium protein slot ---
      final proteinId = slot.proteinId;
      if (proteinId == null) continue;

      final protein = menu.builderCatalog.allProteins
          .where((item) => item.id == proteinId)
          .cast<BuilderProteinModel?>()
          .firstWhere((item) => item != null, orElse: () => null);

      if (protein == null || !protein.isPremium) continue;

      final normalizedProteinName = _normalizePremiumMealName(protein.name);

      // Match priority: premiumKey → premiumMealId → normalized name
      final keyMatchIndex =
          protein.premiumKey.isNotEmpty
              ? allowances.indexWhere(
                (entry) =>
                    entry.remainingCount > 0 &&
                    entry.premiumKey.isNotEmpty &&
                    entry.premiumKey == protein.premiumKey,
              )
              : -1;
      final idMatchIndex =
          keyMatchIndex == -1
              ? allowances.indexWhere(
                (entry) =>
                    entry.remainingCount > 0 &&
                    entry.premiumMealId == protein.id,
              )
              : -1;
      final nameMatchIndex =
          keyMatchIndex == -1 && idMatchIndex == -1
              ? allowances.indexWhere(
                (entry) =>
                    entry.remainingCount > 0 &&
                    entry.normalizedName == normalizedProteinName,
              )
              : -1;

      final matchIndex =
          keyMatchIndex != -1
              ? keyMatchIndex
              : idMatchIndex != -1
              ? idMatchIndex
              : nameMatchIndex;

      if (matchIndex != -1) {
        allowances[matchIndex].remainingCount -= 1;
        coveredCount += 1;
        continue;
      }

      pendingCount += 1;
      pendingAmountHalala += protein.extraFeeHalala;
    }

    return PremiumUsageEvaluation(
      coveredCount: coveredCount,
      pendingCount: pendingCount,
      pendingAmountHalala: pendingAmountHalala,
    );
  }

  PremiumUsageEvaluation _evaluatePremiumUsageByGenericCredits(
    Map<int, List<MealPlannerSlotSelection>>? selectedSlotsPerDay,
  ) {
    var coveredCount = 0;
    var pendingCount = 0;
    var pendingAmountHalala = 0;
    var usedCredits = 0;
    final slots =
        (selectedSlotsPerDay ?? this.selectedSlotsPerDay)[selectedDayIndex] ??
        const [];
    final billableSlots =
        isSelectedDayAppendMode ? slots.skip(savedMealSlotCount) : slots;

    for (final slot in billableSlots) {
      // --- Premium large salad slot ---
      if (slot.selectionType == 'premium_large_salad') {
        final salad = menu.builderCatalog.premiumLargeSalad;
        if (salad == null) continue;
        usedCredits += 1;
        if (usedCredits > premiumMealsRemaining) {
          pendingCount += 1;
          pendingAmountHalala += salad.extraFeeHalala;
        } else {
          coveredCount += 1;
        }
        continue;
      }

      // --- Regular / premium protein slot ---
      final proteinId = slot.proteinId;
      if (proteinId == null) continue;

      final protein = menu.builderCatalog.allProteins
          .where((item) => item.id == proteinId)
          .cast<BuilderProteinModel?>()
          .firstWhere((item) => item != null, orElse: () => null);

      if (protein == null || !protein.isPremium) continue;

      final cost =
          protein.premiumCreditCost == 0 ? 1 : protein.premiumCreditCost;
      usedCredits += cost;

      if (usedCredits > premiumMealsRemaining) {
        pendingCount += 1;
        pendingAmountHalala += protein.extraFeeHalala;
      } else {
        coveredCount += 1;
      }
    }

    return PremiumUsageEvaluation(
      coveredCount: coveredCount,
      pendingCount: pendingCount,
      pendingAmountHalala: pendingAmountHalala,
    );
  }
}

final class _PremiumAllowanceEntry {
  final String premiumMealId;
  final String premiumKey;
  final String normalizedName;
  int remainingCount;

  _PremiumAllowanceEntry({
    required this.premiumMealId,
    required this.premiumKey,
    required this.normalizedName,
    required this.remainingCount,
  });
}

String _normalizePremiumMealName(String value) {
  return value.trim().toLowerCase();
}

bool _isCompletedMealSelection(MealPlannerSlotSelection slot) {
  if (slot.selectionType == 'sandwich') {
    return slot.sandwichId != null && slot.sandwichId!.isNotEmpty;
  }
  if (slot.selectionType == 'premium_large_salad') {
    return slot.salad != null &&
        slot.salad!.groups.protein.length == 1 &&
        slot.salad!.groups.sauce.length == 1 &&
        slot.carbs.isEmpty;
  }
  return slot.proteinId != null && slot.carbs.isNotEmpty;
}
