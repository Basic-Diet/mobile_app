import 'package:basic_diet/domain/model/meal_planner_menu_model.dart';
import 'package:basic_diet/presentation/plans/timeline/meal_planner/widgets/carb_picker_sheet.dart';
import 'package:basic_diet/presentation/plans/timeline/meal_planner/widgets/planner_field.dart';
import 'package:basic_diet/presentation/plans/timeline/meal_planner/bloc/meal_planner_bloc.dart';
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

class MealSlotCard extends StatelessWidget {
  final int slotNumber;
  final String proteinLabel;
  final bool hasProteinSelection;
  final List<String> carbLabels;
  final List<String> selectedCarbIds;
  final bool hasCarbSelection;
  final bool isProteinPremium;
  final VoidCallback? onSelectProtein;
  final List<BuilderCarbModel> carbOptions;
  final void Function(int carbIndex, String carbId)? onCarbSelected;
  final VoidCallback? onClear;
  final bool showCarbField;

  const MealSlotCard({
    super.key,
    required this.slotNumber,
    required this.proteinLabel,
    required this.hasProteinSelection,
    required this.carbLabels,
    required this.selectedCarbIds,
    required this.hasCarbSelection,
    required this.isProteinPremium,
    required this.onSelectProtein,
    required this.carbOptions,
    required this.onCarbSelected,
    required this.onClear,
    this.showCarbField = true,
  });

  @override
  Widget build(BuildContext context) {
    final isComplete =
        hasProteinSelection && (!showCarbField || hasCarbSelection);
    final borderColor = isComplete
        ? isProteinPremium
              ? ColorManager.brandAccentBorder
              : ColorManager.brandPrimary.withValues(alpha: 0.35)
        : ColorManager.borderDefault;

    final bgColor = isComplete
        ? isProteinPremium
              ? ColorManager.brandAccentSoft.withValues(alpha: 0.6)
              : ColorManager.brandPrimaryTint
        : ColorManager.backgroundSurface;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.all(AppPadding.p16.w),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(AppSize.s16.r),
            border: Border.all(color: borderColor),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _SlotHeader(
                slotNumber: slotNumber,
                isComplete: isComplete,
                isProteinPremium: isProteinPremium,
                onClear: onClear,
                hasProteinSelection: hasProteinSelection,
              ),
              Gap(AppSize.s16.h),
              PlannerField(
                title: Strings.selectProtein.tr(),
                value: hasProteinSelection ? proteinLabel : Strings.selectMeal.tr(),
                isSelected: hasProteinSelection,
                isPremium: isProteinPremium && hasProteinSelection,
                onTap: onSelectProtein ?? () {},
                isDisabled: onSelectProtein == null,
              ),
              if (showCarbField) ...[
                Gap(AppSize.s12.h),
                for (var carbIndex = 0; carbIndex < 2; carbIndex++) ...[
                  if (carbIndex > 0) Gap(AppSize.s8.h),
                  PlannerField(
                    title: '${Strings.selectCarb.tr()} ${carbIndex + 1}',
                    value: _carbLabel(carbIndex),
                    isSelected: _selectedCarbId(carbIndex) != null,
                    isPremium: false,
                    onTap: onCarbSelected == null
                        ? () {}
                        : () => _openCarbPickerSheet(context, carbIndex),
                    isDisabled: onCarbSelected == null,
                  ),
                ],
              ],
            ],
          ),
        ),
        if (isProteinPremium && hasProteinSelection)
          Positioned(top: -10.h, right: -6.w, child: _PremiumBadge()),
      ],
    );
  }

  String _carbLabel(int carbIndex) {
    if (carbIndex < carbLabels.length && carbLabels[carbIndex].isNotEmpty) {
      return carbLabels[carbIndex];
    }
    return Strings.selectMeal.tr();
  }

  String? _selectedCarbId(int carbIndex) {
    if (carbIndex < selectedCarbIds.length && selectedCarbIds[carbIndex].isNotEmpty) {
      return selectedCarbIds[carbIndex];
    }
    return null;
  }

  Future<void> _openCarbPickerSheet(BuildContext context, int carbIndex) {
    final bloc = context.read<MealPlannerBloc>();
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: ColorManager.transparent,
	      builder: (sheetContext) => BlocProvider.value(
	        value: bloc,
        child: CarbPickerSheet(
          options: carbOptions,
          selectedId: _selectedCarbId(carbIndex),
          slotIndex: slotNumber - 1,
          carbIndex: carbIndex,
        ),
	      ),
    );
  }
}

class _SlotHeader extends StatelessWidget {
  final int slotNumber;
  final bool isComplete;
  final bool isProteinPremium;
  final VoidCallback? onClear;
  final bool hasProteinSelection;

  const _SlotHeader({
    required this.slotNumber,
    required this.isComplete,
    required this.isProteinPremium,
    required this.onClear,
    required this.hasProteinSelection,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40.w,
          width: 40.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isComplete
                ? isProteinPremium
                      ? ColorManager.brandAccent
                      : ColorManager.brandPrimary
                : ColorManager.backgroundSubtle,
            borderRadius: BorderRadius.circular(AppSize.s14.r),
          ),
          child: Text(
            '$slotNumber',
            style: getBoldTextStyle(
              color: isComplete
                  ? ColorManager.textInverse
                  : ColorManager.stateDisabled,
              fontSize: FontSizeManager.s18.sp,
            ),
          ),
        ),
        Gap(AppSize.s12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${Strings.meal.tr()} $slotNumber',
                style: getBoldTextStyle(
                  color: ColorManager.textPrimary,
                  fontSize: FontSizeManager.s16.sp,
                ),
              ),
              Gap(2.h),
              Text(
                isComplete ? Strings.complete.tr() : Strings.buildYourMeal.tr(),
                style: getRegularTextStyle(
                  color: ColorManager.textSecondary,
                  fontSize: FontSizeManager.s12.sp,
                ),
              ),
            ],
          ),
        ),
        if (onClear != null && hasProteinSelection)
          IconButton(
            onPressed: onClear,
            icon: Icon(
              Icons.close,
              size: 18.w,
              color: ColorManager.iconSecondary,
            ),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
          ),
      ],
    );
  }
}

class _PremiumBadge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: ColorManager.brandAccent,
        borderRadius: BorderRadius.circular(99.r),
        boxShadow: [
          BoxShadow(
            color: ColorManager.textPrimary.withValues(alpha: 0.12),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(Icons.star, color: ColorManager.textInverse, size: 14.w),
          Gap(4.w),
          Text(
            Strings.premiumMealsText.tr(),
            style: getBoldTextStyle(
              color: ColorManager.textInverse,
              fontSize: FontSizeManager.s12.sp,
            ),
          ),
        ],
      ),
    );
  }
}
