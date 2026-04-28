import 'package:basic_diet/domain/model/add_ons_model.dart';
import 'package:basic_diet/domain/model/current_subscription_overview_model.dart';
import 'package:basic_diet/domain/model/meal_planner_menu_model.dart';
import 'package:basic_diet/domain/model/subscription_day_model.dart';
import 'package:basic_diet/domain/model/timeline_model.dart';
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

final class MealPlannerSlotSelection extends Equatable {
  final int slotIndex;
  final String slotKey;
  final String selectionType;
  final String? proteinId;
  final String? carbId;
  final String? sandwichId;
  final CustomSaladSelection? customSalad;

  const MealPlannerSlotSelection({
    required this.slotIndex,
    required this.slotKey,
    this.selectionType = 'standard_combo',
    required this.proteinId,
    required this.carbId,
    this.sandwichId,
    this.customSalad,
  });

  MealPlannerSlotSelection copyWith({
    int? slotIndex,
    String? slotKey,
    String? selectionType,
    String? proteinId,
    String? carbId,
    String? sandwichId,
    CustomSaladSelection? customSalad,
    bool clearProteinId = false,
    bool clearCarbId = false,
    bool clearSandwichId = false,
    bool clearCustomSalad = false,
  }) {
    return MealPlannerSlotSelection(
      slotIndex: slotIndex ?? this.slotIndex,
      slotKey: slotKey ?? this.slotKey,
      selectionType: selectionType ?? this.selectionType,
      proteinId: clearProteinId ? null : proteinId ?? this.proteinId,
      carbId: clearCarbId ? null : carbId ?? this.carbId,
      sandwichId: clearSandwichId ? null : sandwichId ?? this.sandwichId,
      customSalad: clearCustomSalad ? null : customSalad ?? this.customSalad,
    );
  }

  @override
  List<Object?> get props => [
    slotIndex,
    slotKey,
    selectionType,
    proteinId,
    carbId,
    sandwichId,
    customSalad,
  ];
}

final class CustomSaladSelection extends Equatable {
  final String presetKey;
  final List<String> vegetables;
  final List<String> addons;
  final List<String> fruits;
  final List<String> nuts;
  final List<String> sauce;

  const CustomSaladSelection({
    required this.presetKey,
    this.vegetables = const [],
    this.addons = const [],
    this.fruits = const [],
    this.nuts = const [],
    this.sauce = const [],
  });

  @override
  List<Object?> get props => [presetKey, vegetables, addons, fruits, nuts, sauce];
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
  static const List<String> addonCategoryOrder = [
    'juice',
    'snack',
    'small_salad',
  ];

  final List<TimelineDayModel> timelineDays;
  final MealPlannerMenuModel menu;
  final List<AddOnModel> addOnsCatalog;
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

  const MealPlannerLoaded({
    required this.timelineDays,
    required this.menu,
    required this.addOnsCatalog,
    required this.addonEntitlements,
    required this.premiumSummaries,
    required this.selectedDayIndex,
    required this.selectedSlotsPerDay,
    required this.savedSlotsPerDay,
    required this.selectedAddOnIdsByDay,
    required this.savedAddOnIdsByDay,
    required this.dayDetailsByIndex,
    required this.premiumMealsRemaining,
    this.isSaving = false,
    this.isRefreshingDay = false,
    this.saveSuccess = false,
    this.showSavedBanner = false,
    this.lastAddedMealName = "",
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

  List<AddOnModel> get plannerAddOnsCatalog =>
      addOnsCatalog.where((addon) => addon.isItem && addon.isFlatOnce).toList();

  Map<String, List<AddOnModel>> get groupedAddons {
    final grouped = <String, List<AddOnModel>>{
      for (final category in addonCategoryOrder) category: <AddOnModel>[],
    };

    for (final addon in plannerAddOnsCatalog) {
      grouped.putIfAbsent(addon.category, () => <AddOnModel>[]).add(addon);
    }

    return grouped;
  }

  List<AddOnModel> get selectedAddOnModels {
    final catalogMap = {
      for (final addon in plannerAddOnsCatalog) addon.id: addon,
    };
    return selectedAddOnIds
        .where((id) => catalogMap.containsKey(id))
        .map((id) => catalogMap[id]!)
        .toList();
  }

  bool isAddonCoveredBySubscription(String category) {
    for (final entitlement in addonEntitlements) {
      if (entitlement.category == category &&
          entitlement.status == 'active' &&
          entitlement.includedCount > 0) {
        return true;
      }
    }
    return false;
  }

  List<AddOnModel> selectedAddonsForCategory(String category) {
    return selectedAddOnModels
        .where((addon) => addon.category == category)
        .toList();
  }

  String addonSelectionStatusFor(
    String addonId, {
    List<String>? selectedAddonIdsOverride,
  }) {
    final effectiveSelectedAddonIds =
        selectedAddonIdsOverride ?? selectedAddOnIds;
    final localStatus = _computeLocalAddonStatus(
      addonId,
      selectedAddonIds: effectiveSelectedAddonIds,
    );

    final backendSelection = addonSelections
        .where((selection) => selection.addonId == addonId)
        .cast<AddonSelectionModel?>()
        .firstWhere((selection) => selection != null, orElse: () => null);

    final hasLocalDraftOverride =
        selectedAddonIdsOverride != null &&
        !listEquals(selectedAddonIdsOverride, selectedAddOnIds);
    if (hasLocalDraftOverride) {
      return localStatus;
    }

    if (backendSelection != null && backendSelection.status.isNotEmpty) {
      // If backend says pending but local entitlement covers it,
      // prefer local so the UI reflects the subscription correctly.
      if (backendSelection.status == 'pending_payment' &&
          localStatus == 'subscription') {
        return 'subscription';
      }
      return backendSelection.status;
    }

    return localStatus;
  }

  String _computeLocalAddonStatus(
    String addonId, {
    required List<String> selectedAddonIds,
  }) {
    debugPrint(
      '[_computeLocalAddonStatus] addonId=$addonId | '
      'addonEntitlements=${addonEntitlements.map((e) => '{cat:${e.category},inc:${e.includedCount},st:${e.status}}').toList()} | '
      'selectedAddonIds=$selectedAddonIds',
    );

    final targetAddon = plannerAddOnsCatalog
        .where((addon) => addon.id == addonId)
        .cast<AddOnModel?>()
        .firstWhere((addon) => addon != null, orElse: () => null);

    if (targetAddon == null) {
      debugPrint('[_computeLocalAddonStatus] targetAddon=null → pending_payment');
      return 'pending_payment';
    }

    // Build per-category entitlement allowances (includedCount maps from maxPerDay)
    final allowances = <String, int>{};
    for (final entitlement in addonEntitlements) {
      if ((entitlement.status == 'active' || entitlement.status.isEmpty) &&
          entitlement.includedCount > 0) {
        allowances[entitlement.category] =
            (allowances[entitlement.category] ?? 0) + entitlement.includedCount;
      }
    }

    debugPrint('[_computeLocalAddonStatus] allowances=$allowances');

    // Walk through selected addons in order and consume allowances
    final catalogById = {
      for (final addon in plannerAddOnsCatalog) addon.id: addon,
    };

    for (final id in selectedAddonIds) {
      final addon = catalogById[id];
      if (addon == null) continue;
      final remaining = allowances[addon.category] ?? 0;
      if (addon.id == targetAddon.id) {
        final result = remaining > 0 ? 'subscription' : 'pending_payment';
        debugPrint('[_computeLocalAddonStatus] found target, remaining=$remaining → $result');
        return result;
      }
      if (remaining > 0) {
        allowances[addon.category] = remaining - 1;
      }
    }

    // Target addon is not currently selected — check hypothetical coverage
    final remaining = allowances[targetAddon.category] ?? 0;
    final result = remaining > 0 ? 'subscription' : 'pending_payment';
    debugPrint('[_computeLocalAddonStatus] not in selection, remaining=$remaining → $result');
    return result;
  }

  int get localAddonPendingAmountHalala {
    var total = 0;
    for (final addon in selectedAddOnModels) {
      final status = addonSelectionStatusFor(addon.id);
      if (status == 'pending_payment') {
        total += addon.priceHalala;
      }
    }
    return total;
  }

  int get localAddonPendingCount {
    var total = 0;
    for (final addon in selectedAddOnModels) {
      if (addonSelectionStatusFor(addon.id) == 'pending_payment') {
        total++;
      }
    }
    return total;
  }

  int get addonPendingPaymentCount {
    return localAddonPendingCount;
  }

  int get addonPendingPaymentAmountHalala {
    return localAddonPendingAmountHalala;
  }

  int get premiumPendingPaymentAmountHalala {
    return evaluatePremiumUsage().pendingAmountHalala;
  }

  int get totalPendingPaymentAmountHalala =>
      premiumPendingPaymentAmountHalala + addonPendingPaymentAmountHalala;

  String get paymentCurrency {
    final dayCurrency = selectedDayDetail?.paymentRequirement?.currency;
    if (dayCurrency != null && dayCurrency.isNotEmpty) {
      return dayCurrency;
    }
    if (menu.currency.isNotEmpty) return menu.currency;
    return 'SAR';
  }

  int get maxMeals => selectedTimelineDay.requiredMeals;

  bool get isSelectedDayEditable {
    final normalized = selectedTimelineDay.status.toLowerCase();
    return normalized == 'open' || normalized == 'extension';
  }

  bool get hasPendingAddonPayment {
    return addonPendingPaymentCount > 0;
  }

  bool get hasPendingPremiumPayment => premiumMealsPendingPayment > 0;

  bool get hasAnyPendingPayment =>
      hasPendingPremiumPayment || hasPendingAddonPayment;

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
      if (current.length != saved.length) return true;
      for (var i = 0; i < current.length; i++) {
        if (current[i] != saved[i]) return true;
      }
    }

    return false;
  }

  @override
  List<Object?> get props => [
    timelineDays,
    menu,
    addOnsCatalog,
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
  ];

  MealPlannerLoaded copyWith({
    List<TimelineDayModel>? timelineDays,
    MealPlannerMenuModel? menu,
    List<AddOnModel>? addOnsCatalog,
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
    bool clearPaymentUrl = false,
    bool clearPaymentId = false,
    bool clearPaymentError = false,
    bool clearPendingAddonPrompt = false,
  }) {
    return MealPlannerLoaded(
      timelineDays: timelineDays ?? this.timelineDays,
      menu: menu ?? this.menu,
      addOnsCatalog: addOnsCatalog ?? this.addOnsCatalog,
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
    );
  }

  PremiumUsageEvaluation evaluatePremiumUsage({
    Map<int, List<MealPlannerSlotSelection>>? selectedSlotsPerDay,
  }) {
    if (premiumSummaries.isEmpty) {
      debugPrint(
        '[evaluatePremiumUsage] FALLBACK to generic credits — premiumSummaries is empty',
      );
      return _evaluatePremiumUsageByGenericCredits(selectedSlotsPerDay);
    }

    final allowances =
        premiumSummaries
            .where((summary) => summary.remainingQtyTotal > 0)
            .map(
              (summary) => _PremiumAllowanceEntry(
                premiumMealId: summary.premiumMealId,
                normalizedName: _normalizePremiumMealName(summary.name),
                remainingCount: summary.remainingQtyTotal,
              ),
            )
            .toList();

    debugPrint(
      '[evaluatePremiumUsage] allowances: ${allowances.map((a) => '{id:${a.premiumMealId},name:${a.normalizedName},remaining:${a.remainingCount}}').toList()}',
    );

    var coveredCount = 0;
    var pendingCount = 0;
    var pendingAmountHalala = 0;
    final slots = (selectedSlotsPerDay ?? this.selectedSlotsPerDay)[selectedDayIndex] ??
        const [];

    for (final slot in slots) {
      final proteinId = slot.proteinId;
      if (proteinId == null) continue;

      final protein = menu.builderCatalog.proteins
          .where((item) => item.id == proteinId)
          .cast<BuilderProteinModel?>()
          .firstWhere((item) => item != null, orElse: () => null);

      if (protein == null || !protein.isPremium) continue;

      final normalizedProteinName = _normalizePremiumMealName(protein.name);
      final exactMatchIndex = allowances.indexWhere(
        (entry) => entry.remainingCount > 0 && entry.premiumMealId == protein.id,
      );
      final fallbackMatchIndex =
          exactMatchIndex == -1
              ? allowances.indexWhere(
                (entry) =>
                    entry.remainingCount > 0 &&
                    entry.normalizedName == normalizedProteinName,
              )
              : -1;
      final matchIndex =
          exactMatchIndex != -1 ? exactMatchIndex : fallbackMatchIndex;

      debugPrint(
        '[evaluatePremiumUsage] slot:${slot.slotIndex}, proteinId:${protein.id}, name:${protein.name}, exactMatch:$exactMatchIndex, fallbackMatch:$fallbackMatchIndex',
      );

      if (matchIndex != -1) {
        allowances[matchIndex].remainingCount -= 1;
        coveredCount += 1;
        continue;
      }

      pendingCount += 1;
      pendingAmountHalala += protein.extraFeeHalala;
    }

    debugPrint(
      '[evaluatePremiumUsage] result — covered:$coveredCount, pending:$pendingCount, pendingAmountHalala:$pendingAmountHalala',
    );

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
    final slots = (selectedSlotsPerDay ?? this.selectedSlotsPerDay)[selectedDayIndex] ??
        const [];

    for (final slot in slots) {
      final proteinId = slot.proteinId;
      if (proteinId == null) continue;

      final protein = menu.builderCatalog.proteins
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
  final String normalizedName;
  int remainingCount;

  _PremiumAllowanceEntry({
    required this.premiumMealId,
    required this.normalizedName,
    required this.remainingCount,
  });
}

String _normalizePremiumMealName(String value) {
  return value.trim().toLowerCase();
}
