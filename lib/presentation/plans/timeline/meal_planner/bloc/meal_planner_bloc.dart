import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/data/request/day_selection_request.dart';
import 'package:basic_diet/domain/model/current_subscription_overview_model.dart';
import 'package:basic_diet/domain/model/meal_planner_menu_model.dart';
import 'package:basic_diet/domain/model/subscription_day_model.dart';
import 'package:basic_diet/domain/model/timeline_model.dart';
import 'package:basic_diet/domain/usecase/confirm_day_selection_usecase.dart';
import 'package:basic_diet/domain/usecase/create_one_time_addon_payment_usecase.dart';
import 'package:basic_diet/domain/usecase/create_premium_payment_usecase.dart';
import 'package:basic_diet/domain/usecase/get_meal_planner_menu_usecase.dart';
import 'package:basic_diet/domain/usecase/get_subscription_day_usecase.dart';
import 'package:basic_diet/domain/usecase/save_day_selection_usecase.dart';
import 'package:basic_diet/domain/usecase/validate_day_selection_usecase.dart';
import 'package:basic_diet/domain/usecase/verify_one_time_addon_payment_usecase.dart';
import 'package:basic_diet/domain/usecase/verify_premium_payment_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'meal_planner_event.dart';
import 'meal_planner_state.dart';

class MealPlannerBloc extends Bloc<MealPlannerEvent, MealPlannerState> {
  final GetMealPlannerMenuUseCase _getMealPlannerMenuUseCase;
  final GetSubscriptionDayUseCase _getSubscriptionDayUseCase;
  final ValidateDaySelectionUseCase _validateDaySelectionUseCase;
  final SaveDaySelectionUseCase _saveDaySelectionUseCase;
  final CreatePremiumPaymentUseCase _createPremiumPaymentUseCase;
  final VerifyPremiumPaymentUseCase _verifyPremiumPaymentUseCase;
  final CreateOneTimeAddonPaymentUseCase _createOneTimeAddonPaymentUseCase;
  final VerifyOneTimeAddonPaymentUseCase _verifyOneTimeAddonPaymentUseCase;
  final ConfirmDaySelectionUseCase _confirmDaySelectionUseCase;
  final List<TimelineDayModel> initialTimelineDays;
  final List<AddonSubscriptionModel> addonEntitlements;
  final List<PremiumSummaryModel> premiumSummaries;
  final int initialDayIndex;
  final int premiumMealsRemaining;
  final String subscriptionId;

  MealPlannerBloc(
    this._getMealPlannerMenuUseCase,
    this._getSubscriptionDayUseCase,
    this._validateDaySelectionUseCase,
    this._saveDaySelectionUseCase,
    this._createPremiumPaymentUseCase,
    this._verifyPremiumPaymentUseCase,
    this._createOneTimeAddonPaymentUseCase,
    this._verifyOneTimeAddonPaymentUseCase,
    this._confirmDaySelectionUseCase, {
    required this.initialTimelineDays,
    required this.addonEntitlements,
    required this.premiumSummaries,
    required this.initialDayIndex,
    required this.premiumMealsRemaining,
    required this.subscriptionId,
  }) : super(MealPlannerInitial()) {
    on<GetMealPlannerDataEvent>(_onGetData);
    on<ChangeDateEvent>(_onChangeDate);
    on<RetrySelectedDayLoadEvent>(_onRetrySelectedDayLoad);
    on<SetMealSlotProteinEvent>(_onSetProtein);
    on<SetMealSlotCarbEvent>(_onSetCarb);
    on<SetPremiumLargeSaladEvent>(_onSetPremiumLargeSalad);
    on<ToggleAddOnSelectionEvent>(_onToggleAddonSelection);
    on<SelectAddonForCategoryEvent>(_onSelectAddonForCategory);
    on<DismissPendingAddonPromptEvent>(_onDismissPendingAddonPrompt);
    on<SaveMealPlannerChangesEvent>(_onSave);
    on<HideBannerEvent>(_onHideBanner);
    on<InitiatePremiumPaymentEvent>(_onInitiatePremiumPayment);
    on<VerifyPremiumPaymentEvent>(_onVerifyPremiumPayment);
    on<InitiateAddonPaymentEvent>(_onInitiateAddonPayment);
    on<VerifyAddonPaymentEvent>(_onVerifyAddonPayment);
  }

  Future<void> _onGetData(
    GetMealPlannerDataEvent event,
    Emitter<MealPlannerState> emit,
  ) async {
    emit(MealPlannerLoading());

    final menuResult = await _getMealPlannerMenuUseCase.execute(null);
    final menuFailure = menuResult.fold((failure) => failure, (_) => null);
    if (menuFailure != null) {
      emit(MealPlannerError(_formatFailure(menuFailure)));
      return;
    }

    final menu = menuResult.getOrElse(() => throw Exception());
    final slotsByDay = <int, List<MealPlannerSlotSelection>>{};
    final savedSlotsByDay = <int, List<MealPlannerSlotSelection>>{};
    final selectedAddOnIdsByDay = <int, List<String>>{};
    final savedAddOnIdsByDay = <int, List<String>>{};

    for (int dayIndex = 0; dayIndex < initialTimelineDays.length; dayIndex++) {
      final slots = _buildSlotsFromTimelineDay(initialTimelineDays[dayIndex]);
      slotsByDay[dayIndex] = slots;
      savedSlotsByDay[dayIndex] = List<MealPlannerSlotSelection>.from(slots);
      selectedAddOnIdsByDay[dayIndex] = const [];
      savedAddOnIdsByDay[dayIndex] = const [];
    }

    final initialState = MealPlannerLoaded(
      timelineDays: initialTimelineDays,
      menu: menu,
      addOnsCatalog: menu.addons,
      addonEntitlements: addonEntitlements,
      premiumSummaries: premiumSummaries,
      selectedDayIndex: initialDayIndex,
      selectedSlotsPerDay: slotsByDay,
      savedSlotsPerDay: savedSlotsByDay,
      selectedAddOnIdsByDay: selectedAddOnIdsByDay,
      savedAddOnIdsByDay: savedAddOnIdsByDay,
      dayDetailsByIndex: const {},
      premiumMealsRemaining: premiumMealsRemaining,
    );

    emit(initialState.copyWith(isRefreshingDay: true));
    await _loadDayDetails(emit, initialState, initialDayIndex, force: true);
  }

  Future<void> _onChangeDate(
    ChangeDateEvent event,
    Emitter<MealPlannerState> emit,
  ) async {
    if (state is! MealPlannerLoaded) return;
    final current = state as MealPlannerLoaded;
    final next = current.copyWith(
      selectedDayIndex: event.index,
      isRefreshingDay: true,
      clearPaymentError: true,
      clearPendingAddonPrompt: true,
    );
    emit(next);
    await _loadDayDetails(emit, next, event.index, force: true);
  }

  Future<void> _onRetrySelectedDayLoad(
    RetrySelectedDayLoadEvent event,
    Emitter<MealPlannerState> emit,
  ) async {
    if (state is! MealPlannerLoaded) return;
    final current = state as MealPlannerLoaded;
    emit(current.copyWith(isRefreshingDay: true, clearPaymentError: true));
    await _loadDayDetails(emit, current, current.selectedDayIndex, force: true);
  }

  void _onSetProtein(
    SetMealSlotProteinEvent event,
    Emitter<MealPlannerState> emit,
  ) {
    if (state is! MealPlannerLoaded) return;
    final current = state as MealPlannerLoaded;
    if (!current.isSelectedDayEditable) {
      emit(current.copyWith(paymentError: _dayNotEditableReason(current)));
      return;
    }

    final slots = _currentSlots(current);
    if (event.slotIndex < 0 || event.slotIndex >= slots.length) return;

    final previous = slots[event.slotIndex];
    final selectedProtein =
        event.proteinId == null ? null : _findProteinById(current.menu, event.proteinId!);
    final selectedSandwich =
        event.proteinId == null ? null : _findSandwichById(current.menu, event.proteinId!);

    MealPlannerSlotSelection updated;
    if (event.proteinId == null) {
      updated = previous.copyWith(
        selectionType: 'standard_meal',
        clearProteinId: true,
        clearCarbs: true,
        clearSandwichId: true,
        clearSalad: true,
      );
    } else if (selectedSandwich != null) {
      updated = previous.copyWith(
        selectionType: 'sandwich',
        sandwichId: selectedSandwich.id,
        clearProteinId: true,
        clearCarbs: true,
        clearSalad: true,
      );
    } else {
      updated = previous.copyWith(
        selectionType: selectedProtein?.isPremium == true
            ? 'premium_meal'
            : 'standard_meal',
        proteinId: event.proteinId,
        clearSandwichId: true,
        clearSalad: true,
      );
    }

    slots[event.slotIndex] = updated;
    emit(
      current.copyWith(
        selectedSlotsPerDay: _updatedSelectedSlots(current, slots),
        showSavedBanner: event.proteinId != null,
        lastAddedMealName:
            selectedProtein?.name ?? selectedSandwich?.name ?? current.lastAddedMealName,
        premiumMealsPendingPayment: _calculatePendingPaymentCount(
          current,
          selectedSlotsPerDay: _updatedSelectedSlots(current, slots),
        ),
        clearPaymentError: true,
      ),
    );
  }

  void _onSetCarb(SetMealSlotCarbEvent event, Emitter<MealPlannerState> emit) {
    if (state is! MealPlannerLoaded) return;
    final current = state as MealPlannerLoaded;
    if (!current.isSelectedDayEditable) {
      emit(current.copyWith(paymentError: _dayNotEditableReason(current)));
      return;
    }

    final slots = _currentSlots(current);
    if (event.slotIndex < 0 || event.slotIndex >= slots.length) return;
    final previous = slots[event.slotIndex];

    final carbs = List<MealPlannerSlotCarbSelection>.from(previous.carbs);
    final carbIndex = event.carbIndex.clamp(0, 1).toInt();
    if (event.carbId == null) {
      if (carbIndex < carbs.length) {
        carbs.removeAt(carbIndex);
      }
    } else {
      carbs.removeWhere((carb) => carb.carbId == event.carbId);
      while (carbs.length <= carbIndex) {
        carbs.add(const MealPlannerSlotCarbSelection(carbId: '', grams: 150));
      }
      carbs[carbIndex] = MealPlannerSlotCarbSelection(
        carbId: event.carbId!,
        grams: event.grams,
      );
    }

    slots[event.slotIndex] = previous.copyWith(
      carbs: carbs.where((carb) => carb.carbId.isNotEmpty).take(2).toList(),
      selectionType: _resolvePlateSelectionType(current.menu, previous.proteinId),
      clearSandwichId: true,
      clearSalad: true,
    );

    final updatedSlotsByDay = _updatedSelectedSlots(current, slots);
    emit(
      current.copyWith(
        selectedSlotsPerDay: updatedSlotsByDay,
        premiumMealsPendingPayment: _calculatePendingPaymentCount(
          current,
          selectedSlotsPerDay: updatedSlotsByDay,
        ),
        clearPaymentError: true,
      ),
    );
  }

  void _onSetPremiumLargeSalad(
    SetPremiumLargeSaladEvent event,
    Emitter<MealPlannerState> emit,
  ) {
    if (state is! MealPlannerLoaded) return;
    final current = state as MealPlannerLoaded;
    if (!current.isSelectedDayEditable) {
      emit(current.copyWith(paymentError: _dayNotEditableReason(current)));
      return;
    }

    final slots = _currentSlots(current);
    if (event.slotIndex < 0 || event.slotIndex >= slots.length) return;

    slots[event.slotIndex] = slots[event.slotIndex].copyWith(
      selectionType: 'premium_large_salad',
      proteinId: event.proteinId,
      carbs: const [],
      salad: PremiumLargeSaladSelection(
        presetKey: event.presetKey,
        groups: MealPlannerSaladGroupsSelection(
          leafyGreens: event.leafyGreens,
          vegetables: event.vegetables,
          protein: [event.proteinId],
          cheeseNuts: event.cheeseNuts,
          fruits: event.fruits,
          sauce: event.sauce,
        ),
      ),
      clearSandwichId: true,
    );

    final updatedSlotsByDay = _updatedSelectedSlots(current, slots);
    emit(
      current.copyWith(
        selectedSlotsPerDay: updatedSlotsByDay,
        showSavedBanner: true,
        premiumMealsPendingPayment: _calculatePendingPaymentCount(
          current,
          selectedSlotsPerDay: updatedSlotsByDay,
        ),
        clearPaymentError: true,
      ),
    );
  }

  void _onToggleAddonSelection(
    ToggleAddOnSelectionEvent event,
    Emitter<MealPlannerState> emit,
  ) {
    if (state is! MealPlannerLoaded) return;
    final current = state as MealPlannerLoaded;
    if (!current.isSelectedDayEditable) {
      emit(current.copyWith(paymentError: _dayNotEditableReason(current)));
      return;
    }

    final currentIds = List<String>.from(current.selectedAddOnIds);
    if (currentIds.contains(event.addOn.id)) {
      currentIds.remove(event.addOn.id);
    } else {
      currentIds.add(event.addOn.id);
    }

    emit(
      current.copyWith(
        selectedAddOnIdsByDay: Map<int, List<String>>.from(
          current.selectedAddOnIdsByDay,
        )..[current.selectedDayIndex] = currentIds,
        clearPendingAddonPrompt: true,
        clearPaymentError: true,
      ),
    );
  }

  void _onSelectAddonForCategory(
    SelectAddonForCategoryEvent event,
    Emitter<MealPlannerState> emit,
  ) {
    if (state is! MealPlannerLoaded) return;
    final current = state as MealPlannerLoaded;
    if (!current.isSelectedDayEditable) {
      emit(current.copyWith(paymentError: _dayNotEditableReason(current)));
      return;
    }

    final categoryAddonIds = current.addOnsCatalog
        .where((a) => a.category == event.category)
        .map((a) => a.id)
        .toSet();
    final currentIds = List<String>.from(current.selectedAddOnIds)
      ..removeWhere((id) => categoryAddonIds.contains(id))
      ..addAll(event.addonIds.where((id) => categoryAddonIds.contains(id)));

    emit(
      current.copyWith(
        selectedAddOnIdsByDay: Map<int, List<String>>.from(
          current.selectedAddOnIdsByDay,
        )..[current.selectedDayIndex] = currentIds,
        clearPendingAddonPrompt: true,
        clearPaymentError: true,
      ),
    );
  }

  void _onDismissPendingAddonPrompt(
    DismissPendingAddonPromptEvent event,
    Emitter<MealPlannerState> emit,
  ) {
    if (state is! MealPlannerLoaded) return;
    emit((state as MealPlannerLoaded).copyWith(clearPendingAddonPrompt: true));
  }

  Future<void> _onSave(
    SaveMealPlannerChangesEvent event,
    Emitter<MealPlannerState> emit,
  ) async {
    if (state is! MealPlannerLoaded) return;
    await _saveAndMaybeContinue(emit, state as MealPlannerLoaded);
  }

  void _onHideBanner(HideBannerEvent event, Emitter<MealPlannerState> emit) {
    if (state is! MealPlannerLoaded) return;
    emit((state as MealPlannerLoaded).copyWith(showSavedBanner: false));
  }

  Future<void> _onInitiatePremiumPayment(
    InitiatePremiumPaymentEvent event,
    Emitter<MealPlannerState> emit,
  ) async {
    if (state is! MealPlannerLoaded) return;
    await _saveAndMaybeContinue(
      emit,
      state as MealPlannerLoaded,
      paymentKind: 'premium',
    );
  }

  Future<void> _onVerifyPremiumPayment(
    VerifyPremiumPaymentEvent event,
    Emitter<MealPlannerState> emit,
  ) async {
    await _verifyPayment(emit, event.paymentId, kind: 'premium');
  }

  Future<void> _onInitiateAddonPayment(
    InitiateAddonPaymentEvent event,
    Emitter<MealPlannerState> emit,
  ) async {
    if (state is! MealPlannerLoaded) return;
    await _saveAndMaybeContinue(
      emit,
      state as MealPlannerLoaded,
      paymentKind: 'addons',
    );
  }

  Future<void> _onVerifyAddonPayment(
    VerifyAddonPaymentEvent event,
    Emitter<MealPlannerState> emit,
  ) async {
    await _verifyPayment(emit, event.paymentId, kind: 'addons');
  }

  Future<void> _loadDayDetails(
    Emitter<MealPlannerState> emit,
    MealPlannerLoaded baseState,
    int dayIndex, {
    bool force = false,
  }) async {
    if (!force && baseState.dayDetailsByIndex.containsKey(dayIndex)) {
      emit(baseState.copyWith(isRefreshingDay: false));
      return;
    }

    final day = baseState.timelineDays[dayIndex];
    final result = await _getSubscriptionDayUseCase.execute(
      GetSubscriptionDayUseCaseInput(subscriptionId, day.date),
    );

    result.fold(
      (failure) {
        if (!emit.isDone) {
          emit(
            baseState.copyWith(
              isRefreshingDay: false,
              paymentError: _formatFailure(failure),
            ),
          );
        }
      },
      (dayDetail) {
        if (emit.isDone) return;
        final next = _applyUpdatedDay(baseState, dayDetail, dayIndex: dayIndex).copyWith(
          selectedDayIndex: dayIndex,
          isRefreshingDay: false,
          clearPaymentError: true,
        );
        emit(next);
      },
    );
  }

  Future<void> _saveAndMaybeContinue(
    Emitter<MealPlannerState> emit,
    MealPlannerLoaded current, {
    String? paymentKind,
  }) async {
    if (!current.isSelectedDayEditable) {
      emit(current.copyWith(paymentError: _dayNotEditableReason(current)));
      return;
    }

    final request = _buildRequest(current);
    final currentDay = current.selectedTimelineDay;

    emit(
      current.copyWith(
        isSaving: true,
        saveSuccess: false,
        clearPaymentError: true,
        clearPendingAddonPrompt: true,
      ),
    );

    final validation = await _validateDaySelectionUseCase.execute(
      ValidateDaySelectionUseCaseInput(subscriptionId, currentDay.date, request),
    );
    final validationFailure = validation.fold((failure) => failure, (_) => null);
    if (validationFailure != null) {
      emit(
        current.copyWith(
          isSaving: false,
          paymentError: _formatFailure(validationFailure),
        ),
      );
      return;
    }

    final validationResult = validation.getOrElse(() => throw Exception());
    if (!validationResult.valid) {
      final firstError = validationResult.slotErrors?.isNotEmpty == true
          ? validationResult.slotErrors!.first.message
          : 'Validation failed';
      emit(current.copyWith(isSaving: false, paymentError: firstError));
      return;
    }

    final result = await _saveDaySelectionUseCase.execute(
      SaveDaySelectionUseCaseInput(subscriptionId, currentDay.date, request),
    );

    await result.fold(
      (failure) async {
        if (!emit.isDone) {
          emit(
            current.copyWith(
              isSaving: false,
              paymentError: _formatFailure(failure),
            ),
          );
        }
      },
      (updatedDay) async {
        if (emit.isDone) return;

        final updatedState = _applyUpdatedDay(current, updatedDay);
        final requirement = updatedDay.paymentRequirement;
        final requiresPayment = requirement?.requiresPayment ?? false;
        final blockingReason = requirement?.blockingReason;

        if (!requiresPayment) {
          await _confirmAndFinalize(emit, updatedState, currentDay.date);
          return;
        }

        if (blockingReason == 'premium_pending_payment' &&
            paymentKind == 'premium' &&
            requirement?.canCreatePayment == true) {
          await _createPremiumPayment(emit, updatedState);
          return;
        }

        if (blockingReason == 'addons_pending_payment' &&
            paymentKind == 'addons' &&
            requirement?.canCreatePayment == true) {
          await _createAddonPayment(emit, updatedState);
          return;
        }

        emit(updatedState.copyWith(isSaving: false, saveSuccess: false));
      },
    );
  }

  Future<void> _confirmAndFinalize(
    Emitter<MealPlannerState> emit,
    MealPlannerLoaded current,
    String date,
  ) async {
    final confirmResult = await _confirmDaySelectionUseCase.execute(
      ConfirmDaySelectionUseCaseInput(subscriptionId, date),
    );

    await confirmResult.fold(
      (failure) async {
        if (!emit.isDone) {
          emit(
            current.copyWith(
              isSaving: false,
              paymentError: _formatFailure(failure),
            ),
          );
        }
      },
      (confirmedDay) async {
        if (emit.isDone) return;
        var finalDay = confirmedDay;
        final refreshed = await _getSubscriptionDayUseCase.execute(
          GetSubscriptionDayUseCaseInput(subscriptionId, date),
        );
        refreshed.fold((failure) => null, (day) {
          finalDay = day;
          return null;
        });
        if (emit.isDone) return;
        emit(
          _applyUpdatedDay(current, finalDay).copyWith(
            isSaving: false,
            saveSuccess: true,
            premiumMealsPendingPayment: 0,
            clearPaymentError: true,
          ),
        );
      },
    );
  }

  Future<void> _createPremiumPayment(
    Emitter<MealPlannerState> emit,
    MealPlannerLoaded stateAfterSave,
  ) async {
    final day = stateAfterSave.selectedTimelineDay;
    final paymentResult = await _createPremiumPaymentUseCase.execute(
      CreatePremiumPaymentUseCaseInput(subscriptionId, day.date),
    );

    paymentResult.fold(
      (failure) {
        if (!emit.isDone) {
          emit(
            stateAfterSave.copyWith(
              isSaving: false,
              paymentError: _formatFailure(failure),
            ),
          );
        }
      },
      (paymentModel) {
        if (!emit.isDone) {
          emit(
            stateAfterSave.copyWith(
              isSaving: false,
              paymentUrl: paymentModel.paymentUrl,
              paymentId: paymentModel.paymentId,
              activePaymentKind: 'premium',
            ),
          );
        }
      },
    );
  }

  Future<void> _createAddonPayment(
    Emitter<MealPlannerState> emit,
    MealPlannerLoaded stateAfterSave,
  ) async {
    final day = stateAfterSave.selectedTimelineDay;
    final paymentResult = await _createOneTimeAddonPaymentUseCase.execute(
      CreateOneTimeAddonPaymentUseCaseInput(subscriptionId, day.date),
    );

    paymentResult.fold(
      (failure) {
        if (!emit.isDone) {
          emit(
            stateAfterSave.copyWith(
              isSaving: false,
              paymentError: _formatFailure(failure),
            ),
          );
        }
      },
      (paymentModel) {
        if (!emit.isDone) {
          emit(
            stateAfterSave.copyWith(
              isSaving: false,
              paymentUrl: paymentModel.paymentUrl,
              paymentId: paymentModel.paymentId,
              activePaymentKind: 'addons',
            ),
          );
        }
      },
    );
  }

  Future<void> _verifyPayment(
    Emitter<MealPlannerState> emit,
    String paymentId, {
    required String kind,
  }) async {
    if (state is! MealPlannerLoaded) return;
    final current = state as MealPlannerLoaded;
    final day = current.selectedTimelineDay;

    emit(
      current.copyWith(
        isSaving: true,
        saveSuccess: false,
        clearPaymentError: true,
      ),
    );

    final result = kind == 'premium'
        ? await _verifyPremiumPaymentUseCase.execute(
            VerifyPremiumPaymentUseCaseInput(subscriptionId, day.date, paymentId),
          )
        : await _verifyOneTimeAddonPaymentUseCase.execute(
            VerifyOneTimeAddonPaymentUseCaseInput(subscriptionId, day.date, paymentId),
          );

    final verificationFailure = result.fold((failure) => failure, (_) => null);
    if (verificationFailure != null) {
      emit(
        current.copyWith(
          isSaving: false,
          paymentError: _formatFailure(verificationFailure),
          clearPaymentUrl: true,
          clearPaymentId: true,
        ),
      );
      return;
    }

    final verificationModel = result.getOrElse(() => throw Exception());
    if (verificationModel.paymentStatus != 'paid') {
      emit(
        current.copyWith(
          isSaving: false,
          paymentError: verificationModel.message,
          clearPaymentUrl: true,
          clearPaymentId: true,
        ),
      );
      return;
    }

    final refreshed = await _getSubscriptionDayUseCase.execute(
      GetSubscriptionDayUseCaseInput(subscriptionId, day.date),
    );

    await refreshed.fold(
      (failure) async {
        emit(
          current.copyWith(
            isSaving: false,
            paymentError: _formatFailure(failure),
            clearPaymentUrl: true,
            clearPaymentId: true,
          ),
        );
      },
      (updatedDay) async {
        var updatedState = _applyUpdatedDay(current, updatedDay).copyWith(
          isSaving: false,
          clearPaymentUrl: true,
          clearPaymentId: true,
          activePaymentKind: kind,
        );
        final requirement = updatedDay.paymentRequirement;
        if (requirement?.requiresPayment ?? false) {
          if (requirement?.blockingReason == 'addons_pending_payment' &&
              kind != 'addons' &&
              requirement?.canCreatePayment == true) {
            await _createAddonPayment(emit, updatedState);
            return;
          }
          if (requirement?.blockingReason == 'premium_pending_payment' &&
              kind != 'premium' &&
              requirement?.canCreatePayment == true) {
            await _createPremiumPayment(emit, updatedState);
            return;
          }
          emit(updatedState);
          return;
        }

        await _confirmAndFinalize(emit, updatedState, day.date);
      },
    );
  }

  MealPlannerLoaded _applyUpdatedDay(
    MealPlannerLoaded state,
    SubscriptionDayModel updatedDay, {
    int? dayIndex,
  }) {
    final selectedIndex = dayIndex ?? state.selectedDayIndex;
    final newSlots = _buildSlotsFromSubscriptionDay(
      updatedDay,
      state.timelineDays[selectedIndex].requiredMeals,
    );
    final addonIds = updatedDay.addonSelections
        .map((selection) => selection.addonId)
        .where((id) => id.isNotEmpty)
        .toList();

    final updatedTimelineDays = List<TimelineDayModel>.from(state.timelineDays);
    updatedTimelineDays[selectedIndex] = _mergeTimelineDayWithDetail(
      updatedTimelineDays[selectedIndex],
      updatedDay,
    );

    return state.copyWith(
      timelineDays: updatedTimelineDays,
      selectedSlotsPerDay: Map<int, List<MealPlannerSlotSelection>>.from(
        state.selectedSlotsPerDay,
      )..[selectedIndex] = newSlots,
      savedSlotsPerDay: Map<int, List<MealPlannerSlotSelection>>.from(
        state.savedSlotsPerDay,
      )..[selectedIndex] = List<MealPlannerSlotSelection>.from(newSlots),
      selectedAddOnIdsByDay: Map<int, List<String>>.from(
        state.selectedAddOnIdsByDay,
      )..[selectedIndex] = addonIds,
      savedAddOnIdsByDay: Map<int, List<String>>.from(state.savedAddOnIdsByDay)
        ..[selectedIndex] = List<String>.from(addonIds),
      dayDetailsByIndex: Map<int, SubscriptionDayModel>.from(
        state.dayDetailsByIndex,
      )..[selectedIndex] = updatedDay,
      premiumMealsPendingPayment:
          updatedDay.paymentRequirement?.premiumPendingPaymentCount ?? 0,
      clearPaymentError: true,
      clearPendingAddonPrompt: true,
    );
  }

  TimelineDayModel _mergeTimelineDayWithDetail(
    TimelineDayModel base,
    SubscriptionDayModel detail,
  ) {
    return TimelineDayModel(
      date: base.date,
      day: base.day,
      month: base.month,
      dayNumber: base.dayNumber,
      status: detail.status,
      commercialState: detail.commercialState ?? base.commercialState,
      canBePrepared: base.canBePrepared,
      fulfillmentReady: base.fulfillmentReady,
      planningReady: detail.plannerMeta?.isDraftValid ?? base.planningReady,
      fulfillmentMode: base.fulfillmentMode,
      consumptionState: base.consumptionState,
      selectedMeals: detail.plannerMeta?.completeSlotCount ?? base.selectedMeals,
      requiredMeals: detail.plannerMeta?.requiredSlotCount ?? base.requiredMeals,
      selections: base.selections,
      premiumSelections: base.premiumSelections,
      selectedMealIds: base.selectedMealIds,
      paymentRequirement: detail.paymentRequirement,
      mealSlots: detail.mealSlots
          .map(
            (slot) => TimelineMealSlot(
              slotIndex: slot.slotIndex,
              slotKey: slot.slotKey,
              selectionType: slot.selectionType,
              proteinId: slot.proteinId,
              carbs: slot.carbs,
              sandwichId: slot.sandwichId,
              salad: slot.salad,
              premiumKey: slot.premiumKey,
              premiumSource: slot.premiumSource,
              premiumExtraFeeHalala: slot.premiumExtraFeeHalala,
            ),
          )
          .toList(),
    );
  }

  List<MealPlannerSlotSelection> _buildSlotsFromTimelineDay(TimelineDayModel day) {
    if (day.mealSlots.isNotEmpty) {
      return List.generate(day.requiredMeals, (index) {
        final slot = index < day.mealSlots.length ? day.mealSlots[index] : null;
        return MealPlannerSlotSelection(
          slotIndex: index + 1,
          slotKey: slot?.slotKey ?? 'slot_${index + 1}',
          selectionType: slot?.selectionType ?? 'standard_meal',
          proteinId: slot?.proteinId,
          carbs: slot?.carbs
                  .map((carb) => MealPlannerSlotCarbSelection(carbId: carb.carbId, grams: carb.grams))
                  .toList() ??
              const [],
          sandwichId: slot?.sandwichId,
          salad: slot?.salad == null
              ? null
              : PremiumLargeSaladSelection(
                  presetKey: slot!.salad!.presetKey ?? 'large_salad',
                  groups: MealPlannerSaladGroupsSelection(
                    leafyGreens: slot.salad!.groups.leafyGreens,
                    vegetables: slot.salad!.groups.vegetables,
                    protein: slot.salad!.groups.protein,
                    cheeseNuts: slot.salad!.groups.cheeseNuts,
                    fruits: slot.salad!.groups.fruits,
                    sauce: slot.salad!.groups.sauce,
                  ),
                ),
        );
      });
    }

    final selections = [...day.selections, ...day.premiumSelections];
    return List.generate(day.requiredMeals, (index) {
      final proteinId = index < selections.length ? selections[index] : null;
      return MealPlannerSlotSelection(
        slotIndex: index + 1,
        slotKey: 'slot_${index + 1}',
        selectionType: _defaultSelectionType(proteinId),
        proteinId: proteinId,
      );
    });
  }

  List<MealPlannerSlotSelection> _buildSlotsFromSubscriptionDay(
    SubscriptionDayModel day,
    int requiredMeals,
  ) {
    return List.generate(requiredMeals, (index) {
      final slot = index < day.mealSlots.length ? day.mealSlots[index] : null;
      return MealPlannerSlotSelection(
        slotIndex: index + 1,
        slotKey: slot?.slotKey ?? 'slot_${index + 1}',
        selectionType: slot?.selectionType ?? 'standard_meal',
        proteinId: slot?.proteinId,
        carbs: slot?.carbs
                .map((carb) => MealPlannerSlotCarbSelection(carbId: carb.carbId, grams: carb.grams))
                .toList() ??
            const [],
        sandwichId: slot?.sandwichId,
        salad: slot?.salad == null
            ? null
            : PremiumLargeSaladSelection(
                presetKey: slot!.salad!.presetKey ?? 'large_salad',
                groups: MealPlannerSaladGroupsSelection(
                  leafyGreens: slot.salad!.groups.leafyGreens,
                  vegetables: slot.salad!.groups.vegetables,
                  protein: slot.salad!.groups.protein,
                  cheeseNuts: slot.salad!.groups.cheeseNuts,
                  fruits: slot.salad!.groups.fruits,
                  sauce: slot.salad!.groups.sauce,
                ),
              ),
      );
    });
  }

  bool _isCompleteSlot(MealPlannerSlotSelection slot) {
    if (slot.selectionType == 'sandwich') {
      return slot.sandwichId != null && slot.sandwichId!.isNotEmpty;
    }
    if (slot.selectionType == 'premium_large_salad') {
      return slot.salad != null &&
          slot.salad!.groups.protein.length == 1 &&
          slot.salad!.groups.sauce.length == 1 &&
          slot.carbs.isEmpty;
    }
    return slot.proteinId != null &&
        slot.carbs.isNotEmpty &&
        slot.carbs.length <= 2;
  }

  BuilderProteinModel? _findProteinById(MealPlannerMenuModel menu, String id) {
    for (final protein in menu.builderCatalog.allProteins) {
      if (protein.id == id) return protein;
    }
    return null;
  }

  BuilderSandwichModel? _findSandwichById(MealPlannerMenuModel menu, String id) {
    for (final sandwich in menu.builderCatalog.sandwiches) {
      if (sandwich.id == id) return sandwich;
    }
    return null;
  }

  String _resolvePlateSelectionType(MealPlannerMenuModel menu, String? proteinId) {
    final protein = proteinId == null ? null : _findProteinById(menu, proteinId);
    return protein?.isPremium == true ? 'premium_meal' : 'standard_meal';
  }

  String _defaultSelectionType(String? proteinId) {
    if (proteinId == null) {
      return 'standard_meal';
    }
    return 'standard_meal';
  }

  int _calculatePendingPaymentCount(
    MealPlannerLoaded state, {
    Map<int, List<MealPlannerSlotSelection>>? selectedSlotsPerDay,
  }) {
    return state
        .evaluatePremiumUsage(selectedSlotsPerDay: selectedSlotsPerDay)
        .pendingCount;
  }

  DaySelectionRequest _buildRequest(MealPlannerLoaded current) {
    final slots = _currentSlots(current).where(_isCompleteSlot).toList();
    return DaySelectionRequest(
      slots.map((slot) {
        if (slot.selectionType == 'sandwich') {
          return MealSlotRequest(
            slotIndex: slot.slotIndex,
            slotKey: slot.slotKey,
            selectionType: 'sandwich',
            sandwichId: slot.sandwichId,
          );
        }
        if (slot.selectionType == 'premium_large_salad' && slot.salad != null) {
          return MealSlotRequest(
            slotIndex: slot.slotIndex,
            slotKey: slot.slotKey,
            selectionType: 'premium_large_salad',
            proteinId: slot.proteinId,
            salad: SaladRequest(
              presetKey: slot.salad!.presetKey,
              groups: SaladGroupsRequest(
                leafyGreens: slot.salad!.groups.leafyGreens,
                vegetables: slot.salad!.groups.vegetables,
                protein: slot.salad!.groups.protein,
                cheeseNuts: slot.salad!.groups.cheeseNuts,
                fruits: slot.salad!.groups.fruits,
                sauce: slot.salad!.groups.sauce,
              ),
            ),
          );
        }

        return MealSlotRequest(
          slotIndex: slot.slotIndex,
          slotKey: slot.slotKey,
          selectionType: slot.selectionType,
          proteinId: slot.proteinId,
          carbs: slot.carbs
              .map(
                (carb) => MealSlotCarbRequest(carbId: carb.carbId, grams: carb.grams),
              )
              .toList(),
        );
      }).toList(),
      addonsOneTime: current.selectedAddOnIds,
    );
  }

  List<MealPlannerSlotSelection> _currentSlots(MealPlannerLoaded current) {
    return List<MealPlannerSlotSelection>.from(
      current.selectedSlotsPerDay[current.selectedDayIndex] ?? const [],
    );
  }

  Map<int, List<MealPlannerSlotSelection>> _updatedSelectedSlots(
    MealPlannerLoaded current,
    List<MealPlannerSlotSelection> slots,
  ) {
    return Map<int, List<MealPlannerSlotSelection>>.from(current.selectedSlotsPerDay)
      ..[current.selectedDayIndex] = slots;
  }

  String _dayNotEditableReason(MealPlannerLoaded current) {
    final blocker = current.selectedDayDetail?.paymentRequirement?.blockingReason;
    return blocker?.isNotEmpty == true ? blocker! : 'LOCKED';
  }

  String _formatFailure(Failure failure) {
    final code = failure.code?.toString();
    if (code != null && code.isNotEmpty) {
      return failure.message.isNotEmpty ? '$code: ${failure.message}' : code;
    }
    return failure.message;
  }
}
