import 'package:basic_diet/app/dependency_injection.dart';
import 'package:basic_diet/domain/model/current_subscription_overview_model.dart';
import 'package:basic_diet/domain/model/subscription_pickup_request_model.dart';
import 'package:basic_diet/domain/model/timeline_model.dart';
import 'package:basic_diet/presentation/plans/bloc/plans_bloc.dart';
import 'package:basic_diet/presentation/plans/bloc/plans_event.dart';
import 'package:basic_diet/presentation/plans/pickup_status/pickup_status_cubit.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';

class MultiRequestPickupSection extends StatelessWidget {
  final CurrentSubscriptionOverviewDataModel data;
  final TimelineDayModel? fulfillmentDay;

  const MultiRequestPickupSection({
    super.key,
    required this.data,
    this.fulfillmentDay,
  });

  @override
  Widget build(BuildContext context) {
    final pickupRequest = data.pickupPreparation?.latestPickupRequest;
    final hasLatest =
        pickupRequest != null && pickupRequest.requestId.isNotEmpty;

    return Column(
      children: [
        Gap(AppSize.s16.h),
        _MultiRequestPickupCard(
          data: data,
          fulfillmentDay: fulfillmentDay,
          pickupRequest: pickupRequest,
          showLiveStatus: hasLatest && pickupRequest.shouldPoll,
        ),
      ],
    );
  }
}

int calculateMultiRequestMealCount(TimelineDayModel? day) {
  if (day == null) return 0;

  if (day.planning != null && day.planning!.selectedTotalMealCount > 0) {
    return day.planning!.selectedTotalMealCount;
  }

  if (day.plannerMeta != null && day.plannerMeta!.completeSlotCount > 0) {
    return day.plannerMeta!.completeSlotCount;
  }

  final completeSlotCount =
      day.mealSlots
          .where((slot) => slot.status.toLowerCase() == 'complete')
          .length;
  if (completeSlotCount > 0) return completeSlotCount;

  if (day.mealSlots.isNotEmpty) return day.mealSlots.length;

  return day.selectedMeals;
}

class _MultiRequestPickupCard extends StatelessWidget {
  final CurrentSubscriptionOverviewDataModel data;
  final TimelineDayModel? fulfillmentDay;
  final SubscriptionPickupRequestModel? pickupRequest;
  final bool showLiveStatus;

  const _MultiRequestPickupCard({
    required this.data,
    this.fulfillmentDay,
    required this.pickupRequest,
    required this.showLiveStatus,
  });

  @override
  Widget build(BuildContext context) {
    if (!showLiveStatus || pickupRequest == null) {
      return _MultiRequestPickupContent(
        data: data,
        fulfillmentDay: fulfillmentDay,
        pickupRequest: pickupRequest,
      );
    }

    return BlocProvider(
      create: (_) {
        initPickupStatusModule();
        return instance<PickupStatusCubit>()..startRequestPolling(
          subscriptionId: data.id,
          requestId: pickupRequest!.requestId,
        );
      },
      child: BlocBuilder<PickupStatusCubit, PickupStatusState>(
        builder: (context, state) {
          final liveRequest =
              state is PickupRequestStatusLoaded ? state.data : pickupRequest;
          final error =
              state is PickupRequestStatusError ? state.message : null;
          return _MultiRequestPickupContent(
            data: data,
            fulfillmentDay: fulfillmentDay,
            pickupRequest: liveRequest,
            error: error,
          );
        },
      ),
    );
  }
}

class _MultiRequestPickupContent extends StatelessWidget {
  final CurrentSubscriptionOverviewDataModel data;
  final TimelineDayModel? fulfillmentDay;
  final SubscriptionPickupRequestModel? pickupRequest;
  final String? error;

  const _MultiRequestPickupContent({
    required this.data,
    this.fulfillmentDay,
    this.pickupRequest,
    this.error,
  });

  @override
  Widget build(BuildContext context) {
    final prep = data.pickupPreparation;
    final mealCount = calculateMultiRequestMealCount(fulfillmentDay);
    final availableBalance = prep?.availableMealBalance ?? 0;
    final hasRequest =
        pickupRequest != null && pickupRequest!.requestId.isNotEmpty;
    final isActiveRequest = hasRequest && pickupRequest!.isMultiRequestActive;
    final isRestaurantClosed = isRestaurantClosedForPickupCreation(data);
    final workingHours = pickupWorkingHoursSummary(data);

    final bool isPlanningIncomplete = mealCount <= 0;
    final bool isInsufficientBalance = mealCount > availableBalance;

    final String? buttonError = error;

    final bool isEnabled =
        !hasRequest &&
        prep?.canCreatePickupRequest == true &&
        !isRestaurantClosed &&
        prep?.flowStatus == 'available' &&
        !isPlanningIncomplete &&
        !isInsufficientBalance;
    final bool canOpenPlanner =
        !hasRequest && !isRestaurantClosed && isPlanningIncomplete;
    final bool canCreateAfterTerminal =
        hasRequest &&
        !isActiveRequest &&
        prep?.canCreatePickupRequest == true &&
        !isRestaurantClosed &&
        mealCount > 0 &&
        !isInsufficientBalance;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppPadding.p18.w),
      decoration: BoxDecoration(
        color: ColorManager.backgroundSurface,
        borderRadius: BorderRadius.circular(AppSize.s18.r),
        border: Border.all(color: ColorManager.borderDefault),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Strings.pickupRequestTitle.tr(),
            style: getBoldTextStyle(
              color: ColorManager.textPrimary,
              fontSize: FontSizeManager.s18.sp,
            ),
          ),
          Gap(AppSize.s6.h),
          if (hasRequest)
            _PickupRequestStatusCard(
              data: data,
              request: pickupRequest!,
              fulfillmentDay: fulfillmentDay,
              canCreateNewRequest: canCreateAfterTerminal,
              isRestaurantClosed: isRestaurantClosed,
              workingHours: workingHours,
            )
          else ...[
            Text(
              isRestaurantClosed
                  ? Strings.restaurantClosedMessage.tr()
                  : _emptyStateMessage(
                    isPlanningIncomplete: isPlanningIncomplete,
                    isInsufficientBalance: isInsufficientBalance,
                    fallback: prep?.message ?? '',
                  ),
              style: getRegularTextStyle(
                color: ColorManager.textSecondary,
                fontSize: FontSizeManager.s14.sp,
              ),
            ),
            if (isRestaurantClosed) ...[
              Gap(AppSize.s6.h),
              Text(
                Strings.orderDuringWorkingHours.tr(),
                style: getRegularTextStyle(
                  color: ColorManager.textSecondary,
                  fontSize: FontSizeManager.s14.sp,
                ),
              ),
              if (workingHours.isNotEmpty) ...[
                Gap(AppSize.s6.h),
                Text(
                  Strings.workingHoursValue.tr(args: [workingHours]),
                  style: getBoldTextStyle(
                    color: ColorManager.textPrimary,
                    fontSize: FontSizeManager.s13.sp,
                  ),
                ),
              ],
            ],
          ],
          if (buttonError?.isNotEmpty == true) ...[
            Gap(AppSize.s12.h),
            Text(
              buttonError!,
              style: getRegularTextStyle(
                color: ColorManager.stateError,
                fontSize: FontSizeManager.s13.sp,
              ),
            ),
          ],
          if (!hasRequest) ...[
            Gap(AppSize.s16.h),
            SizedBox(
              width: double.infinity,
              height: AppSize.s52.h,
              child: ElevatedButton(
                onPressed:
                    isEnabled || canOpenPlanner
                        ? () => _handlePreparePickup(context, mealCount)
                        : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorManager.brandPrimary,
                  disabledBackgroundColor: ColorManager.stateDisabled,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSize.s100.r),
                  ),
                  elevation: 0,
                ),
                child: Text(
                  canOpenPlanner
                      ? Strings.pickupChooseMealsAction.tr()
                      : prep?.buttonLabel.isNotEmpty == true
                      ? prep!.buttonLabel
                      : Strings.pickupPrepareAction.tr(),
                  style: getBoldTextStyle(
                    color: ColorManager.textInverse,
                    fontSize: FontSizeManager.s16.sp,
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  String _emptyStateMessage({
    required bool isPlanningIncomplete,
    required bool isInsufficientBalance,
    required String fallback,
  }) {
    if (isPlanningIncomplete) return Strings.pickupRequestNoMealsMessage.tr();
    if (isInsufficientBalance) {
      return Strings.pickupErrorInsufficientCredits.tr();
    }
    return Strings.pickupRequestReadyToPrepareMessage.tr();
  }

  void _handlePreparePickup(BuildContext context, int mealCount) {
    if (mealCount <= 0) {
      context.read<PlansBloc>().add(
        FetchTimelineAndOpenPlannerEvent(
          data.id,
          preferredDate:
              data.pickupPreparation?.businessDate.isNotEmpty == true
                  ? data.pickupPreparation!.businessDate
                  : data.businessDate,
          openCurrentDay: true,
        ),
      );
      return;
    }

    context.read<PlansBloc>().add(
      CreatePickupRequestEvent(
        subscriptionId: data.id,
        date:
            data.pickupPreparation?.businessDate.isNotEmpty == true
                ? data.pickupPreparation!.businessDate
                : data.businessDate,
        mealCount: mealCount,
      ),
    );
  }
}

class _PickupRequestStatusCard extends StatelessWidget {
  final CurrentSubscriptionOverviewDataModel data;
  final SubscriptionPickupRequestModel request;
  final TimelineDayModel? fulfillmentDay;
  final bool canCreateNewRequest;
  final bool isRestaurantClosed;
  final String workingHours;

  const _PickupRequestStatusCard({
    required this.data,
    required this.request,
    this.fulfillmentDay,
    required this.canCreateNewRequest,
    required this.isRestaurantClosed,
    required this.workingHours,
  });

  @override
  Widget build(BuildContext context) {
    final uiData = pickupRequestUiData(request.status);
    final branch = data.pickupLocation?.summary ?? '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap(AppSize.s16.h),
        _StatusChip(label: uiData.title.tr()),
        Gap(AppSize.s12.h),
        Text(
          uiData.title.tr(),
          style: getBoldTextStyle(
            color: ColorManager.textPrimary,
            fontSize: FontSizeManager.s17.sp,
          ),
        ),
        Gap(AppSize.s6.h),
        Text(
          uiData.message.tr(),
          style: getRegularTextStyle(
            color: ColorManager.textSecondary,
            fontSize: FontSizeManager.s14.sp,
          ),
        ),
        Gap(AppSize.s14.h),
        _InfoRow(
          label: Strings.pickupRequestMeals.tr(),
          value: '${request.mealCount ?? 0}',
        ),
        if (branch.isNotEmpty) ...[
          Gap(AppSize.s8.h),
          _InfoRow(label: Strings.branch.tr(), value: branch),
        ],
        if ((request.createdAt ?? '').isNotEmpty) ...[
          Gap(AppSize.s8.h),
          _InfoRow(
            label: Strings.pickupRequestCreatedAt.tr(),
            value: formatPickupRequestDate(request.createdAt!),
          ),
        ],
        if (request.canShowPickupCode) ...[
          Gap(AppSize.s16.h),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: AppPadding.p16.w,
              vertical: AppPadding.p14.h,
            ),
            decoration: BoxDecoration(
              color: ColorManager.backgroundApp,
              borderRadius: BorderRadius.circular(AppSize.s12.r),
              border: Border.all(color: ColorManager.borderDefault),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  Strings.pickupCode.tr(),
                  style: getRegularTextStyle(
                    color: ColorManager.textSecondary,
                    fontSize: FontSizeManager.s12.sp,
                  ),
                ),
                Gap(AppSize.s4.h),
                Text(
                  request.pickupCode!,
                  textAlign: TextAlign.center,
                  style: getBoldTextStyle(
                    color: ColorManager.brandPrimary,
                    fontSize: FontSizeManager.s36.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
        if (request.canShowPickupCode) ...[
          Gap(AppSize.s16.h),
          SizedBox(
            width: double.infinity,
            height: AppSize.s48.h,
            child: OutlinedButton(
              onPressed: () => _copyPickupCode(context),
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: ColorManager.brandPrimary),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s100.r),
                ),
              ),
              child: Text(
                Strings.pickupRequestCopyCode.tr(),
                style: getBoldTextStyle(
                  color: ColorManager.brandPrimary,
                  fontSize: FontSizeManager.s14.sp,
                ),
              ),
            ),
          ),
        ],
        if (canCreateNewRequest) ...[
          Gap(AppSize.s12.h),
          SizedBox(
            width: double.infinity,
            height: AppSize.s48.h,
            child: ElevatedButton(
              onPressed:
                  () => _handlePreparePickup(
                    context,
                    calculateMultiRequestMealCount(fulfillmentDay),
                  ),
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorManager.brandPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s100.r),
                ),
                elevation: 0,
              ),
              child: Text(
                Strings.pickupPrepareAction.tr(),
                style: getBoldTextStyle(
                  color: ColorManager.textInverse,
                  fontSize: FontSizeManager.s16.sp,
                ),
              ),
            ),
          ),
        ] else if (!request.isMultiRequestActive && isRestaurantClosed) ...[
          Gap(AppSize.s12.h),
          Text(
            Strings.restaurantClosedMessage.tr(),
            style: getRegularTextStyle(
              color: ColorManager.textSecondary,
              fontSize: FontSizeManager.s13.sp,
            ),
          ),
          Gap(AppSize.s6.h),
          Text(
            Strings.orderDuringWorkingHours.tr(),
            style: getRegularTextStyle(
              color: ColorManager.textSecondary,
              fontSize: FontSizeManager.s13.sp,
            ),
          ),
          if (workingHours.isNotEmpty) ...[
            Gap(AppSize.s6.h),
            Text(
              Strings.workingHoursValue.tr(args: [workingHours]),
              style: getBoldTextStyle(
                color: ColorManager.textPrimary,
                fontSize: FontSizeManager.s13.sp,
              ),
            ),
          ],
        ],
      ],
    );
  }

  void _copyPickupCode(BuildContext context) {
    final code = request.pickupCode;
    if (code == null || code.isEmpty) return;
    Clipboard.setData(ClipboardData(text: code));
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(Strings.pickupRequestCopied.tr())));
  }

  void _handlePreparePickup(BuildContext context, int mealCount) {
    context.read<PlansBloc>().add(
      CreatePickupRequestEvent(
        subscriptionId: data.id,
        date:
            data.pickupPreparation?.businessDate.isNotEmpty == true
                ? data.pickupPreparation!.businessDate
                : data.businessDate,
        mealCount: mealCount,
      ),
    );
  }
}

class _StatusChip extends StatelessWidget {
  final String label;

  const _StatusChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppPadding.p12.w,
        vertical: AppPadding.p6.h,
      ),
      decoration: BoxDecoration(
        color: ColorManager.backgroundApp,
        borderRadius: BorderRadius.circular(AppSize.s100.r),
        border: Border.all(color: ColorManager.borderDefault),
      ),
      child: Text(
        label,
        style: getBoldTextStyle(
          color: ColorManager.brandPrimary,
          fontSize: FontSizeManager.s12.sp,
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const _InfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$label: ',
          style: getRegularTextStyle(
            color: ColorManager.textSecondary,
            fontSize: FontSizeManager.s13.sp,
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: getBoldTextStyle(
              color: ColorManager.textPrimary,
              fontSize: FontSizeManager.s13.sp,
            ),
          ),
        ),
      ],
    );
  }
}

class PickupRequestUiData {
  final String title;
  final String message;

  const PickupRequestUiData({required this.title, required this.message});
}

PickupRequestUiData pickupRequestUiData(String status) {
  return switch (status) {
    'locked' => const PickupRequestUiData(
      title: Strings.pickupRequestWaitingKitchen,
      message: Strings.pickupRequestLockedMessage,
    ),
    'in_preparation' => const PickupRequestUiData(
      title: Strings.pickupRequestKitchenPreparing,
      message: Strings.pickupRequestPreparingMessage,
    ),
    'ready_for_pickup' => const PickupRequestUiData(
      title: Strings.pickupRequestReady,
      message: Strings.pickupRequestReadyMessage,
    ),
    'fulfilled' => const PickupRequestUiData(
      title: Strings.pickupRequestFulfilled,
      message: Strings.pickupRequestFulfilledMessage,
    ),
    'no_show' => const PickupRequestUiData(
      title: Strings.pickupRequestNoShow,
      message: Strings.pickupRequestNoShowMessage,
    ),
    'canceled' => const PickupRequestUiData(
      title: Strings.pickupRequestCanceled,
      message: Strings.pickupRequestCanceledMessage,
    ),
    _ => const PickupRequestUiData(
      title: Strings.fulfillmentUnknownStatus,
      message: Strings.pickupRequestSubtitle,
    ),
  };
}

bool isRestaurantClosedForPickupCreation(
  CurrentSubscriptionOverviewDataModel data,
) {
  final prep = data.pickupPreparation;
  final hours = prep?.restaurantHours;
  if (hours != null && !hours.isOpenNow) return true;

  return _isRestaurantClosedReason(prep?.reason) ||
      _isRestaurantClosedReason(data.fulfillmentSummary?.lockedReason);
}

String pickupWorkingHoursSummary(CurrentSubscriptionOverviewDataModel data) {
  final hours = data.pickupPreparation?.restaurantHours;
  final summary = hours?.summary ?? '';
  if (summary.isNotEmpty) return formatRestaurantWorkingHours(summary);

  return formatRestaurantWorkingHours(data.pickupLocation?.workingHours ?? '');
}

String formatRestaurantWorkingHours(String value) {
  final trimmed = value.trim();
  if (trimmed.isEmpty) return '';

  final parts = trimmed.split(RegExp(r'\s*[-–]\s*'));
  if (parts.length != 2) return trimmed;

  return '${_formatRestaurantTime(parts.first)} - '
      '${_formatRestaurantTime(parts.last)}';
}

bool _isRestaurantClosedReason(String? value) {
  return value?.toUpperCase() == 'RESTAURANT_CLOSED';
}

String _formatRestaurantTime(String value) {
  final trimmed = value.trim();
  if (trimmed.contains('ص') || trimmed.contains('م')) return trimmed;

  final match = RegExp(r'^(\d{1,2}):(\d{2})').firstMatch(trimmed);
  if (match == null) return trimmed;

  final hour24 = int.tryParse(match.group(1) ?? '');
  if (hour24 == null) return trimmed;

  final minute = match.group(2) ?? '00';
  final hour12 = hour24 % 12 == 0 ? 12 : hour24 % 12;
  final period = hour24 < 12 ? 'ص' : 'م';
  return '${hour12.toString().padLeft(2, '0')}:$minute $period';
}

String formatPickupRequestDate(String value, {DateTime? now}) {
  final parsed = DateTime.tryParse(value);
  if (parsed == null) return value;

  final localDate = parsed.toLocal();
  final localNow = now ?? DateTime.now();
  final isToday =
      localDate.year == localNow.year &&
      localDate.month == localNow.month &&
      localDate.day == localNow.day;
  final time = _formatArabicTime(localDate);

  if (isToday) return 'اليوم $time';

  return '${localDate.day} ${_arabicMonth(localDate.month)} '
      '${localDate.year}، $time';
}

String _formatArabicTime(DateTime value) {
  final hour = value.hour % 12 == 0 ? 12 : value.hour % 12;
  final minute = value.minute.toString().padLeft(2, '0');
  final period = value.hour < 12 ? 'ص' : 'م';
  return '${hour.toString().padLeft(2, '0')}:$minute $period';
}

String _arabicMonth(int month) {
  const months = [
    'يناير',
    'فبراير',
    'مارس',
    'أبريل',
    'مايو',
    'يونيو',
    'يوليو',
    'أغسطس',
    'سبتمبر',
    'أكتوبر',
    'نوفمبر',
    'ديسمبر',
  ];

  if (month < 1 || month > months.length) return '';
  return months[month - 1];
}
