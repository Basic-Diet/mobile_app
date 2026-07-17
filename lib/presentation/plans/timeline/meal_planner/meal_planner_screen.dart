import 'package:flutter/foundation.dart';
import 'package:basic_diet/app/constants.dart';
import 'package:basic_diet/app/dependency_injection.dart';
import 'package:basic_diet/domain/model/current_subscription_overview_model.dart';
import 'package:basic_diet/domain/model/meal_planner_menu_model.dart';
import 'package:basic_diet/domain/model/timeline_model.dart';
import 'package:basic_diet/presentation/main/home/payment-success/payment_webview_screen.dart';
import 'package:basic_diet/presentation/plans/timeline/meal_planner/bloc/meal_planner_bloc.dart';
import 'package:basic_diet/presentation/plans/timeline/meal_planner/bloc/meal_planner_event.dart';
import 'package:basic_diet/presentation/plans/timeline/meal_planner/bloc/meal_planner_state.dart';
import 'package:basic_diet/presentation/plans/timeline/meal_planner/widgets/meal_planner_bottom_action.dart';
import 'package:basic_diet/presentation/plans/timeline/meal_planner/widgets/meal_planner_date_selector.dart';
import 'package:basic_diet/presentation/plans/timeline/meal_planner/widgets/meal_planner_header.dart';
import 'package:basic_diet/presentation/plans/timeline/meal_planner/widgets/meal_planner_notification_banner.dart';
import 'package:basic_diet/presentation/plans/timeline/meal_planner/widgets/meal_planner_progress_indicator.dart';
import 'package:basic_diet/presentation/plans/timeline/meal_planner/widgets/daily_addon_selection_card.dart';
import 'package:basic_diet/presentation/plans/timeline/meal_planner/widgets/meal_slot_card.dart';
import 'package:basic_diet/presentation/plans/timeline/meal_planner/widgets/protein_picker_sheet.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class MealPlannerScreenResult {
  final bool shouldRefreshTimeline;
  final String? successMessage;

  const MealPlannerScreenResult({
    required this.shouldRefreshTimeline,
    this.successMessage,
  });

  const MealPlannerScreenResult.saved()
    : shouldRefreshTimeline = true,
      successMessage = null;

  const MealPlannerScreenResult.paymentVerified(String message)
    : shouldRefreshTimeline = true,
      successMessage = message;
}

class MealPlannerScreen extends StatelessWidget {
  final List<TimelineDayModel> timelineDays;
  final List<AddonSubscriptionModel> addonEntitlements;
  final List<PremiumSummaryModel> premiumSummaries;
  final int initialDayIndex;
  final int premiumMealsRemaining;
  final String subscriptionId;
  final MealBalanceModel? mealBalance;
  final bool readOnly;
  final bool hideAddMealForPlannedTimelineDay;

  const MealPlannerScreen({
    super.key,
    required this.timelineDays,
    required this.addonEntitlements,
    required this.premiumSummaries,
    required this.initialDayIndex,
    required this.premiumMealsRemaining,
    required this.subscriptionId,
    this.mealBalance,
    this.readOnly = false,
    this.hideAddMealForPlannedTimelineDay = false,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        initMealPlannerModule();
        return instance<MealPlannerBloc>(
          param1: {
            'timelineDays': timelineDays,
            'addonEntitlements': addonEntitlements,
            'premiumSummaries': premiumSummaries,
            'initialDayIndex': initialDayIndex,
            'premiumMealsRemaining': premiumMealsRemaining,
            'mealBalance': mealBalance,
            'subscriptionId': subscriptionId,
          },
        )..add(const GetMealPlannerDataEvent());
      },
      child:
          readOnly
              ? MealPlannerView(
                readOnly: true,
                hideAddMealForPlannedTimelineDay:
                    hideAddMealForPlannedTimelineDay,
              )
              : BlocListener<MealPlannerBloc, MealPlannerState>(
                listenWhen: (previous, current) {
                  if (previous is! MealPlannerLoaded ||
                      current is! MealPlannerLoaded) {
                    return false;
                  }

                  return (!previous.saveSuccess && current.saveSuccess) ||
                      (current.paymentUrl != null &&
                          (previous.paymentUrl != current.paymentUrl ||
                              previous.paymentId != current.paymentId)) ||
                      (current.paymentError != null &&
                          previous.paymentError != current.paymentError);
                },
                listener: (context, state) async {
                  if (state is! MealPlannerLoaded) return;

                  if (state.paymentError != null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          _resolveErrorMessage(state.paymentError!),
                        ),
                        backgroundColor: ColorManager.stateError,
                      ),
                    );
                    return;
                  }

                  if (state.saveSuccess && state.paymentUrl == null) {
                    final successMessage =
                        state.activePaymentKind == null
                            ? null
                            : Strings.paymentVerifiedMessage.tr();
                    Navigator.pop(
                      context,
                      successMessage == null
                          ? const MealPlannerScreenResult.saved()
                          : MealPlannerScreenResult.paymentVerified(
                            successMessage,
                          ),
                    );
                    return;
                  }

                  if (state.paymentUrl != null && state.paymentId != null) {
                    await _openPaymentWebView(
                      context,
                      state.paymentUrl!,
                      state.paymentId!,
                    );
                  }
                },
                child: MealPlannerView(
                  hideAddMealForPlannedTimelineDay:
                      hideAddMealForPlannedTimelineDay,
                ),
              ),
    );
  }

  String _resolveErrorMessage(String message) {
    return message;
  }

  Future<void> _openPaymentWebView(
    BuildContext context,
    String paymentUrl,
    String paymentId,
  ) async {
    final uri = Uri.tryParse(paymentUrl);
    if (uri == null || !uri.hasScheme) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(Strings.paymentNotCompleted.tr()),
          backgroundColor: ColorManager.stateError,
        ),
      );
      return;
    }

    final result = await Navigator.push<PaymentWebViewResult>(
      context,
      MaterialPageRoute(
        builder:
            (_) => PaymentWebViewScreen(
              paymentUrl: paymentUrl,
              draftId: paymentId,
              successUrl: _unifiedDayPaymentSuccessUrl,
              backUrl: _unifiedDayPaymentCancelUrl,
              onSuccess: () => Navigator.of(context).pop(),
            ),
      ),
    );

    if (!context.mounted) return;

    if (result == PaymentWebViewResult.cancelled) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(Strings.paymentCancelled.tr())));
      context.read<MealPlannerBloc>().add(const PaymentCancelledEvent());
      return;
    }

    context.read<MealPlannerBloc>().add(
      VerifyUnifiedDayPaymentEvent(paymentId),
    );
  }
}

const String _unifiedDayPaymentSuccessUrl =
    Constants.unifiedDayPaymentSuccessUrl;
const String _unifiedDayPaymentCancelUrl = Constants.unifiedDayPaymentCancelUrl;

class MealPlannerView extends StatelessWidget {
  final bool readOnly;
  final bool hideAddMealForPlannedTimelineDay;

  const MealPlannerView({
    super.key,
    this.readOnly = false,
    this.hideAddMealForPlannedTimelineDay = false,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MealPlannerBloc, MealPlannerState>(
      builder: (context, state) {
        if (state is MealPlannerLoading) {
          return Scaffold(
            backgroundColor: ColorManager.backgroundSurface,
            body: Center(
              child: CircularProgressIndicator(
                color: ColorManager.brandPrimary,
              ),
            ),
          );
        }

        if (state is MealPlannerError) {
          return Scaffold(
            backgroundColor: ColorManager.backgroundSurface,
            body: Center(
              child: Padding(
                padding: EdgeInsets.all(AppPadding.p24.w),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      state.message,
                      textAlign: TextAlign.center,
                      style: getRegularTextStyle(
                        color: ColorManager.textSecondary,
                        fontSize: FontSizeManager.s14.sp,
                      ),
                    ),
                    Gap(AppSize.s16.h),
                    ElevatedButton(
                      onPressed:
                          () => context.read<MealPlannerBloc>().add(
                            const GetMealPlannerDataEvent(),
                          ),
                      child: Text(Strings.tryAgain.tr()),
                    ),
                  ],
                ),
              ),
            ),
          );
        }

        if (state is! MealPlannerLoaded) {
          return const SizedBox.shrink();
        }

        final isViewOnly = readOnly || !state.canModifySelectedDay;

        return Scaffold(
          backgroundColor: ColorManager.backgroundSurface,
          bottomNavigationBar:
              !isViewOnly ? MealPlannerBottomAction(state: state) : null,
          body: SafeArea(
            child: _MealPlannerBody(
              state: state,
              readOnly: readOnly,
              hideAddMealForPlannedTimelineDay:
                  hideAddMealForPlannedTimelineDay,
            ),
          ),
        );
      },
    );
  }
}

class _MealPlannerBody extends StatelessWidget {
  final MealPlannerLoaded state;
  final bool readOnly;
  final bool hideAddMealForPlannedTimelineDay;

  const _MealPlannerBody({
    required this.state,
    required this.readOnly,
    required this.hideAddMealForPlannedTimelineDay,
  });

  @override
  Widget build(BuildContext context) {
    final areAddonsReadOnly = readOnly || !state.canChangeAddons;
    final hideAddMealAction =
        hideAddMealForPlannedTimelineDay &&
        state.selectedTimelineDay.showPlanned;

    return Stack(
      children: [
        CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MealPlannerHeader(),
                  Gap(AppSize.s16.h),
                  MealPlannerDateSelector(state: state),
                  if (state.isRefreshingDay)
                    const LinearProgressIndicator(
                      color: ColorManager.brandPrimary,
                      backgroundColor: ColorManager.backgroundSubtle,
                    ),
                  Gap(AppSize.s16.h),
                ],
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: AppPadding.p16.w),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MealPlannerProgressIndicator(
                      selectedMeals: _selectedMealsCount(state),
                      totalMeals: state.maxMeals,
                      availableMeals: state.displayMaxConsumableMealsNow,
                      dailyMealsDefault: state.initialRequiredMeals,
                      premiumLeft: _premiumLeftForDay(state),
                      premiumPending: state.premiumMealsPendingPayment,
                      paymentAmount: _premiumPaymentAmount(state),
                    ),
                    if (!state.dailyMealLimitEnforced &&
                        state.mealBalance != null) ...[
                      Gap(AppSize.s8.h),
                      _buildBalanceHint(state),
                    ],
                    Gap(AppSize.s16.h),
                    DailyAddonSelectionCard(
                      state: state,
                      isReadOnly: areAddonsReadOnly,
                    ),
                    Gap(AppSize.s16.h),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(
                left: AppPadding.p16.w,
                right: AppPadding.p16.w,
                bottom: AppPadding.p12.h,
              ),
              sliver: SliverList.separated(
                itemCount: state.maxMeals,
                separatorBuilder: (_, __) => Gap(AppSize.s12.h),
                itemBuilder:
                    (context, index) => _buildMealSlot(
                      context,
                      state,
                      index,
                      readOnly || !state.canEditMealSlot(index),
                    ),
              ),
            ),
            if (state.canAddMoreMeals && !hideAddMealAction)
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: AppPadding.p16.w),
                sliver: SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: AppSize.s24.h),
                    child: OutlinedButton.icon(
                      onPressed: () {
                        context.read<MealPlannerBloc>().add(
                          const AddMealSlotEvent(),
                        );
                      },
                      icon: const Icon(Icons.add),
                      label: Text(Strings.meal.tr()),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: ColorManager.brandPrimary,
                        side: const BorderSide(
                          color: ColorManager.brandPrimary,
                        ),
                        padding: EdgeInsets.symmetric(vertical: 12.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(AppSize.s12.r),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            // Debug info and reason why adding is disabled
            if (!state.canAddMoreMeals &&
                !readOnly &&
                state.canModifySelectedDay)
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: AppPadding.p16.w),
                sliver: SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: AppSize.s24.h),
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            state.maxMeals >= state.displayMaxConsumableMealsNow
                                ? (state.mealBalance != null
                                    ? Strings.maxMealsReached.tr()
                                    : Strings.dailyLimitEnforced.tr())
                                : Strings.cannotConsumeNow.tr(),
                            style: getRegularTextStyle(
                              color: ColorManager.textSecondary,
                              fontSize: FontSizeManager.s12.sp,
                            ),
                          ),
                          if (kDebugMode) ...[
                            Gap(4.h),
                            Text(
                              "DEBUG: ${state.canAddMoreMealsReason} (Balance: ${state.mealBalance?.remainingMeals}, Max: ${state.displayMaxConsumableMealsNow}, Slots: ${state.maxMeals})",
                              style: getRegularTextStyle(
                                color: ColorManager.brandAccent,
                                fontSize: FontSizeManager.s10.sp,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
        MealPlannerNotificationBanner(state: state),
      ],
    );
  }

  Widget _buildMealSlot(
    BuildContext context,
    MealPlannerLoaded state,
    int index,
    bool isReadOnly,
  ) {
    final slot = _slotForIndex(state, index);
    final protein =
        slot?.proteinId == null
            ? null
            : _findProteinById(state.menu, slot!.proteinId!);
    final directMeal =
        slot?.sandwichId == null
            ? null
            : _findDirectFullMealById(state.menu, slot!.sandwichId!);
    final isDirectMealSelection =
        directMeal != null && directMeal.selectionType == slot?.selectionType;
    final isPremiumLargeSaladSelection =
        slot?.selectionType == 'premium_large_salad';
    final proteinLabel =
        isPremiumLargeSaladSelection
            ? _premiumLargeSaladName(state.menu)
            : isDirectMealSelection
            ? (directMeal.name)
            : (protein?.name ?? '');
    final selectedProteinId =
        isDirectMealSelection ? slot?.sandwichId : slot?.proteinId;
    final maxCarbItems =
        state.menu.builderCatalog.rules.maxCarbItemsPerMeal <= 0
            ? 2
            : state.menu.builderCatalog.rules.maxCarbItemsPerMeal > 2
            ? 2
            : state.menu.builderCatalog.rules.maxCarbItemsPerMeal;
    final maxCarbTotalGrams =
        state.menu.builderCatalog.rules.maxCarbTotalGrams > 0
            ? state.menu.builderCatalog.rules.maxCarbTotalGrams
            : 300;

    return MealSlotCard(
      slotNumber: index + 1,
      proteinLabel: proteinLabel,
      hasProteinSelection: proteinLabel.isNotEmpty,
      carbSelections: slot?.carbs ?? const [],
      hasCarbSelection: (slot?.carbs ?? const []).isNotEmpty,
      isProteinPremium: protein?.isPremium ?? false,
      showCarbField: !isDirectMealSelection && !isPremiumLargeSaladSelection,
      maxCarbItems: maxCarbItems,
      maxCarbTotalGrams: maxCarbTotalGrams,
      isRemovable: !isReadOnly && index >= state.initialRequiredMeals,
      onRemove:
          isReadOnly || index < state.initialRequiredMeals
              ? null
              : () => context.read<MealPlannerBloc>().add(
                RemoveMealSlotEvent(index),
              ),
      onClear:
          isReadOnly ||
                  (!isDirectMealSelection &&
                      protein == null &&
                      directMeal == null)
              ? null
              : () => context.read<MealPlannerBloc>().add(
                SetMealSlotProteinEvent(slotIndex: index, proteinId: null),
              ),
      onSelectProtein:
          isReadOnly
              ? null
              : () => _openProteinPickerSheet(
                context: context,
                state: state,
                slotIndex: index,
                selectedProteinId: selectedProteinId,
              ),
      carbOptions: _sortedCarbs(state.menu),
      onCarbSelected:
          isReadOnly ||
                  (!isDirectMealSelection && protein == null) ||
                  isDirectMealSelection
              ? null
              : (carbIndex, carbId) => context.read<MealPlannerBloc>().add(
                SetMealSlotCarbEvent(
                  slotIndex: index,
                  carbId: carbId,
                  carbIndex: carbIndex,
                ),
              ),
      onCarbGramsChanged:
          isReadOnly ||
                  (!isDirectMealSelection && protein == null) ||
                  isDirectMealSelection
              ? null
              : (carbIndex, grams) => context.read<MealPlannerBloc>().add(
                SetMealSlotCarbEvent(
                  slotIndex: index,
                  carbId:
                      slot != null && carbIndex < slot.carbs.length
                          ? slot.carbs[carbIndex].carbId
                          : null,
                  grams: grams,
                  carbIndex: carbIndex,
                ),
              ),
      onRemoveCarb:
          isReadOnly ||
                  (!isDirectMealSelection && protein == null) ||
                  isDirectMealSelection
              ? null
              : (carbIndex) => context.read<MealPlannerBloc>().add(
                SetMealSlotCarbEvent(
                  slotIndex: index,
                  carbId: null,
                  carbIndex: carbIndex,
                ),
              ),
    );
  }

  int _selectedMealsCount(MealPlannerLoaded state) {
    return state.selectedMealsCount;
  }

  Widget _buildBalanceHint(MealPlannerLoaded state) {
    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: ColorManager.backgroundSubtle,
        borderRadius: BorderRadius.circular(AppSize.s12.r),
        border: Border.all(color: ColorManager.borderDefault),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.info_outline,
                color: ColorManager.brandPrimary,
                size: 16.w,
              ),
              Gap(8.w),
              Expanded(
                child: Text(
                  Strings.dailyMealsDefaultNote.tr(),
                  style: getRegularTextStyle(
                    color: ColorManager.textPrimary,
                    fontSize: FontSizeManager.s12.sp,
                  ),
                ),
              ),
            ],
          ),
          Gap(4.h),
          Text(
            "${Strings.mealBalanceRemaining.tr()} ${state.mealBalance?.remainingMeals ?? 0} ${Strings.meals.tr()}",
            style: getBoldTextStyle(
              color: ColorManager.brandPrimary,
              fontSize: FontSizeManager.s12.sp,
            ),
          ),
        ],
      ),
    );
  }

  int _premiumLeftForDay(MealPlannerLoaded state) {
    final paymentRequirement = state.selectedDayDetail?.paymentRequirement;
    final usage = state.evaluatePremiumUsage();
    final used = paymentRequirement?.premiumSelectedCount ?? usage.coveredCount;
    final left = state.premiumMealsRemaining - used;
    return left < 0 ? 0 : left;
  }

  double _premiumPaymentAmount(MealPlannerLoaded state) {
    return state.totalPendingPaymentAmountHalala / 100.0;
  }

  MealPlannerSlotSelection? _slotForIndex(
    MealPlannerLoaded state,
    int slotIndex,
  ) {
    final slots = state.selectedSlotsPerDay[state.selectedDayIndex] ?? [];
    if (slotIndex < 0 || slotIndex >= slots.length) return null;
    return slots[slotIndex];
  }

  List<BuilderCarbModel> _sortedCarbs(MealPlannerMenuModel menu) {
    final carbs = List<BuilderCarbModel>.from(menu.builderCatalog.carbs);
    carbs.sort((a, b) => a.sortOrder.compareTo(b.sortOrder));
    return carbs;
  }

  BuilderProteinModel? _findProteinById(MealPlannerMenuModel menu, String id) {
    for (final protein in menu.builderCatalog.allProteins) {
      if (protein.id == id) return protein;
    }
    return null;
  }

  BuilderSandwichModel? _findDirectFullMealById(
    MealPlannerMenuModel menu,
    String id,
  ) {
    for (final item in menu.builderCatalog.directFullMealItems) {
      if (item.id == id) return item;
    }
    return null;
  }

  String _premiumLargeSaladName(MealPlannerMenuModel menu) {
    return menu.builderCatalog.premiumLargeSalad?.name ?? '';
  }

  Future<void> _openProteinPickerSheet({
    required BuildContext context,
    required MealPlannerLoaded state,
    required int slotIndex,
    required String? selectedProteinId,
  }) {
    final bloc = context.read<MealPlannerBloc>();

    var usedCredits = 0;
    final slots = state.selectedSlotsPerDay[state.selectedDayIndex] ?? const [];
    for (var index = 0; index < slots.length; index++) {
      if (index == slotIndex) continue;
      final proteinId = slots[index].proteinId;
      if (proteinId == null) continue;
      final protein = _findProteinById(state.menu, proteinId);
      if (protein == null || !protein.isPremium) continue;
      usedCredits +=
          protein.premiumCreditCost == 0 ? 1 : protein.premiumCreditCost;
    }
    final availableCredits = state.premiumMealsRemaining - usedCredits;

    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: ColorManager.transparent,
      builder:
          (sheetContext) => BlocProvider.value(
            value: bloc,
            child: ProteinPickerSheet(
              state: state,
              slotIndex: slotIndex,
              selectedProteinId: selectedProteinId,
              availablePremiumCredits:
                  availableCredits < 0 ? 0 : availableCredits,
            ),
          ),
    );
  }
}
