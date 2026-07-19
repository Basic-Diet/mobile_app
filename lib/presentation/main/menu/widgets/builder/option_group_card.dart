import 'package:basic_diet/domain/model/order_menu_model.dart';
import 'package:basic_diet/presentation/main/menu/utils/menu_utils.dart';
import 'package:basic_diet/presentation/main/menu/widgets/builder/builder_option_chip.dart';
import 'package:basic_diet/presentation/main/menu/widgets/builder/builder_search_option_tile.dart';
import 'package:basic_diet/presentation/main/menu/widgets/builder/dropdown_option_picker.dart';
import 'package:basic_diet/presentation/main/menu/widgets/builder/inline_extra_weight_selector.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class OptionGroupCard extends StatelessWidget {
  final OrderMenuOptionGroupModel group;
  final String currency;
  final bool isExpanded;
  final Set<String> selectedIds;
  final Map<String, int> extraWeightByOptionId;
  final List<OrderMenuOptionModel> visibleOptions;
  final String ruleText;
  final bool isComplete;
  final ValueChanged<bool> onExpandedChanged;
  final VoidCallback onOpenSearch;
  final ValueChanged<String> onToggle;
  final void Function(OrderMenuOptionModel option, int delta)
  onExtraWeightChanged;

  const OptionGroupCard({
    super.key,
    required this.group,
    required this.currency,
    required this.isExpanded,
    required this.selectedIds,
    required this.extraWeightByOptionId,
    required this.visibleOptions,
    required this.ruleText,
    required this.isComplete,
    required this.onExpandedChanged,
    required this.onOpenSearch,
    required this.onToggle,
    required this.onExtraWeightChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.backgroundSurface.withValues(alpha: 0.96),
        borderRadius: BorderRadius.circular(AppSize.s20.r),
        border: Border.all(color: const Color(0xFFF2F4F7)),
        boxShadow: [
          BoxShadow(
            color: const Color(0x1211382C),
            blurRadius: AppSize.s14.r,
            offset: Offset(0, AppSize.s5.h),
          ),
        ],
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          key: PageStorageKey(group.groupId),
          initiallyExpanded: isExpanded,
          onExpansionChanged: onExpandedChanged,
          tilePadding: EdgeInsetsDirectional.fromSTEB(
            AppPadding.p16.w,
            AppPadding.p14.h,
            AppPadding.p16.w,
            AppPadding.p14.h,
          ),
          childrenPadding: EdgeInsetsDirectional.fromSTEB(
            AppPadding.p16.w,
            0,
            AppPadding.p16.w,
            AppPadding.p16.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s20.r),
          ),
          collapsedShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s20.r),
          ),
          trailing: Icon(
            isExpanded
                ? Icons.keyboard_arrow_up_rounded
                : Icons.keyboard_arrow_down_rounded,
            color: const Color(0xFF112B22),
          ),
          title: Row(
            children: [
              Container(
                width: AppSize.s30.w,
                height: AppSize.s30.h,
                decoration: BoxDecoration(
                  color:
                      isComplete
                          ? ColorManager.brandPrimary
                          : const Color(0xFFF4F7F5),
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Icon(
                  isComplete ? Icons.check_rounded : Icons.add_rounded,
                  size: AppSize.s16.r,
                  color:
                      isComplete
                          ? ColorManager.backgroundSurface
                          : ColorManager.textSecondary,
                ),
              ),
              Gap(AppSize.s10.w),
              Container(
                padding: EdgeInsetsDirectional.symmetric(
                  horizontal: AppPadding.p10.w,
                  vertical: AppPadding.p6.h,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFEBF5F0),
                  borderRadius: BorderRadius.circular(999.r),
                ),
                child: Text(
                  selectionCountLabel(selectedIds.length, group.maxSelections),
                  style: getBoldTextStyle(
                    fontSize: FontSizeManager.s12.sp,
                    color: const Color(0xFF12382C),
                  ),
                ),
              ),
              const Spacer(),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      group.name,
                      textAlign: TextAlign.right,
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s16.sp,
                        color: const Color(0xFF112B22),
                      ),
                    ),
                    Gap(AppSize.s4.h),
                    Text(
                      ruleText,
                      textAlign: TextAlign.right,
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s11_5.sp,
                        color: ColorManager.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          children: [
            if (group.options.length > 8) ...[
              InkWell(
                onTap: onOpenSearch,
                borderRadius: BorderRadius.circular(AppSize.s15.r),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsetsDirectional.symmetric(
                    horizontal: AppPadding.p13.w,
                    vertical: AppPadding.p12.h,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF9FCFA),
                    borderRadius: BorderRadius.circular(AppSize.s15.r),
                    border: Border.all(color: const Color(0xFFE5E7EB)),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search_rounded,
                        color: Color(0xFF9CA3AF),
                      ),
                      Gap(AppSize.s10.w),
                      Expanded(
                        child: Text(
                          Strings.builderSearchIn.tr(
                            namedArgs: {'group': group.name},
                          ),
                          textAlign: TextAlign.right,
                          style: getRegularTextStyle(
                            fontSize: FontSizeManager.s12.sp,
                            color: ColorManager.textMuted,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(AppSize.s10.h),
            ],
            OptionGroupOptionsView(
              group: group,
              currency: currency,
              selectedIds: selectedIds,
              extraWeightByOptionId: extraWeightByOptionId,
              visibleOptions: visibleOptions,
              ruleText: ruleText,
              onOpenSearch: onOpenSearch,
              onToggle: onToggle,
              onExtraWeightChanged: onExtraWeightChanged,
            ),
          ],
        ),
      ),
    );
  }
}

class OptionGroupOptionsView extends StatelessWidget {
  final OrderMenuOptionGroupModel group;
  final String currency;
  final Set<String> selectedIds;
  final Map<String, int> extraWeightByOptionId;
  final List<OrderMenuOptionModel> visibleOptions;
  final String ruleText;
  final VoidCallback onOpenSearch;
  final ValueChanged<String> onToggle;
  final void Function(OrderMenuOptionModel option, int delta)
  onExtraWeightChanged;

  const OptionGroupOptionsView({
    super.key,
    required this.group,
    required this.currency,
    required this.selectedIds,
    required this.extraWeightByOptionId,
    required this.visibleOptions,
    required this.ruleText,
    required this.onOpenSearch,
    required this.onToggle,
    required this.onExtraWeightChanged,
  });

  @override
  Widget build(BuildContext context) {
    if (group.displayStyle == 'dropdown') {
      return DropdownOptionPicker(
        group: group,
        selectedOptions: _selectedOptions,
        ruleText: ruleText,
        onTap: onOpenSearch,
      );
    }

    final sections = optionSections(group, visibleOptions);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children:
          sections.map((section) {
            return Padding(
              padding: EdgeInsetsDirectional.only(bottom: AppPadding.p10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  if (section.title.isNotEmpty) ...[
                    Text(
                      section.title,
                      textAlign: TextAlign.right,
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s12.sp,
                        color: ColorManager.textSecondary,
                      ),
                    ),
                    Gap(AppSize.s8.h),
                  ],
                  _buildOptionsForStyle(section.options),
                ],
              ),
            );
          }).toList(),
    );
  }

  List<OrderMenuOptionModel> get _selectedOptions {
    return visibleOptions
        .where((option) => selectedIds.contains(option.optionId))
        .toList();
  }

  Widget _buildOptionsForStyle(List<OrderMenuOptionModel> options) {
    switch (group.displayStyle) {
      case 'radio_cards':
        return Column(
          children:
              options
                  .map(
                    (option) => Padding(
                      padding: EdgeInsetsDirectional.only(
                        bottom: AppPadding.p8.h,
                      ),
                      child: _optionTile(option),
                    ),
                  )
                  .toList(),
        );
      case 'checkbox_grid':
        return Wrap(
          spacing: AppSize.s8.w,
          runSpacing: AppSize.s8.h,
          alignment: WrapAlignment.end,
          children:
              options
                  .map(
                    (option) => SizedBox(
                      width: AppSize.s150.w,
                      child: _optionTile(option),
                    ),
                  )
                  .toList(),
        );
      case 'stepper':
      case 'chips':
      default:
        return Wrap(
          spacing: AppSize.s8.w,
          runSpacing: AppSize.s8.h,
          alignment: WrapAlignment.end,
          children: options.map(_optionChipWithWeight).toList(),
        );
    }
  }

  Widget _optionTile(OrderMenuOptionModel option) {
    final isSelected = selectedIds.contains(option.optionId);
    final maxReached =
        hasReachedMaxSelections(selectedIds.length, group.maxSelections) &&
        !isSelected;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        BuilderSearchOptionTile(
          option: option,
          currency: currency,
          isSelected: isSelected,
          isDisabled: maxReached,
          onTap: () => onToggle(option.optionId),
        ),
        if (isSelected && option.extraWeightUnitGrams > 0)
          _extraWeightSelector(option),
      ],
    );
  }

  Widget _optionChipWithWeight(OrderMenuOptionModel option) {
    final isSelected = selectedIds.contains(option.optionId);
    final maxReached =
        hasReachedMaxSelections(selectedIds.length, group.maxSelections) &&
        !isSelected;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        BuilderOptionChip(
          option: option,
          currency: currency,
          isSelected: isSelected,
          isDisabled: maxReached,
          onTap: () => onToggle(option.optionId),
        ),
        if (isSelected && option.extraWeightUnitGrams > 0)
          _extraWeightSelector(option),
      ],
    );
  }

  Widget _extraWeightSelector(OrderMenuOptionModel option) {
    return Padding(
      padding: EdgeInsetsDirectional.only(top: AppPadding.p8.h),
      child: InlineExtraWeightSelector(
        value:
            extraWeightByOptionId[option.optionId] ??
            option.extraWeightUnitGrams,
        step: option.extraWeightUnitGrams,
        onDecrease:
            () => onExtraWeightChanged(option, -option.extraWeightUnitGrams),
        onIncrease:
            () => onExtraWeightChanged(option, option.extraWeightUnitGrams),
      ),
    );
  }
}
