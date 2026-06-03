import 'package:basic_diet/presentation/plans/timeline/meal_planner/bloc/meal_planner_bloc.dart';
import 'package:basic_diet/presentation/plans/timeline/meal_planner/bloc/meal_planner_event.dart';
import 'package:basic_diet/presentation/plans/timeline/meal_planner/bloc/meal_planner_state.dart';
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

class MealPlannerBottomAction extends StatelessWidget {
  final MealPlannerLoaded state;

  const MealPlannerBottomAction({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    final pendingAmountHalala = state.totalPendingPaymentAmountHalala;
    final hasPendingPayment = pendingAmountHalala > 0;
    final hasMealSelection = state.hasSelectedMeals;
    final canProceedWithPayment = hasPendingPayment && hasMealSelection;
    final canSave =
        state.isDirty &&
        _hasCompletedSelectedDay() &&
        state.isSelectedDayEditable;

    final String label;
    final String? subtitle;
    final Color bgColor;
    final bool active;

    if (!state.isSelectedDayEditable) {
      label = Strings.dayLocked.tr();
      subtitle = null;
      bgColor = ColorManager.stateDisabledSurface;
      active = false;
    } else if (hasPendingPayment) {
      final amount = pendingAmountHalala / 100.0;
      final hasBackendPaymentRequirement =
          state.selectedDayDetail?.paymentRequirement?.requiresPayment == true;
      if (canProceedWithPayment) {
        label =
            hasBackendPaymentRequirement
                ? Strings.payNow.tr()
                : Strings.estimatedPayNow.tr();
        subtitle = _moneyLabel(amount);
        bgColor = ColorManager.brandAccent;
        active = true;
      } else {
        label = Strings.selectAtLeastOneMealToContinue.tr();
        subtitle = _moneyLabel(amount);
        bgColor = ColorManager.stateDisabledSurface;
        active = false;
      }
    } else if (canSave) {
      label = Strings.saveChanges.tr();
      subtitle = null;
      bgColor = ColorManager.brandPrimary;
      active = true;
    } else {
      label = Strings.noChangesToSave.tr();
      subtitle = null;
      bgColor = ColorManager.stateDisabledSurface;
      active = false;
    }

    return Container(
      padding: EdgeInsets.all(AppPadding.p16.w),
      decoration: BoxDecoration(
        color: ColorManager.backgroundSurface,
        boxShadow: [
          BoxShadow(
            color: ColorManager.textPrimary.withValues(alpha: 0.05),
            blurRadius: 12,
            offset: const Offset(0, -6),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: _ActionButton(
          content: _ActionButtonContent(
            label: label,
            subtitle: subtitle,
            foregroundColor:
                active ? ColorManager.textInverse : ColorManager.stateDisabled,
            subtitleColor:
                active ? ColorManager.textInverse : ColorManager.stateDisabled,
          ),
          backgroundColor: bgColor,
          isLoading: state.isSaving,
          onPressed:
              active
                  ? () => context.read<MealPlannerBloc>().add(
                    const SaveMealPlannerChangesEvent(),
                  )
                  : null,
        ),
      ),
    );
  }

  bool _hasCompletedSelectedDay() {
    return state.selectedMealsCount >= state.selectedTimelineDay.requiredMeals;
  }

  String _moneyLabel(double amount) {
    return "${amount.toStringAsFixed(2)} ${Strings.sar.tr()}";
  }
}

class _ActionButton extends StatelessWidget {
  final Widget content;
  final Color backgroundColor;
  final bool isLoading;
  final VoidCallback? onPressed;

  const _ActionButton({
    required this.content,
    required this.backgroundColor,
    this.isLoading = false,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 64.h,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s16.r),
          ),
        ),
        child:
            isLoading
                ? const CircularProgressIndicator(
                  color: ColorManager.textInverse,
                )
                : content,
      ),
    );
  }
}

class _ActionButtonContent extends StatelessWidget {
  final String label;
  final String? subtitle;
  final Color foregroundColor;
  final Color subtitleColor;

  const _ActionButtonContent({
    required this.label,
    this.subtitle,
    required this.foregroundColor,
    required this.subtitleColor,
  });

  @override
  Widget build(BuildContext context) {
    if (subtitle == null || subtitle!.isEmpty) {
      return Center(
        child: Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: getBoldTextStyle(
            color: foregroundColor,
            fontSize: FontSizeManager.s15.sp,
          ),
        ),
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: getBoldTextStyle(
            color: foregroundColor,
            fontSize: FontSizeManager.s15.sp,
          ),
        ),
        Gap(2.h),
        Text(
          subtitle!,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: getRegularTextStyle(
            color: subtitleColor,
            fontSize: FontSizeManager.s11.sp,
          ),
        ),
      ],
    );
  }
}
