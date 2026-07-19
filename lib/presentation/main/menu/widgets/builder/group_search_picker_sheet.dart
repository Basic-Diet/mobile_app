import 'package:basic_diet/domain/model/order_menu_model.dart';
import 'package:basic_diet/presentation/main/menu/utils/menu_utils.dart';
import 'package:basic_diet/presentation/main/menu/widgets/builder/builder_search_option_tile.dart';
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

class GroupSearchPickerSheet extends StatefulWidget {
  const GroupSearchPickerSheet({
    super.key,
    required this.group,
    required this.currency,
    required this.options,
    required this.groupRuleText,
    required this.getSelectedIds,
    required this.getExtraWeight,
    required this.onToggleOption,
    required this.onDecreaseExtraWeight,
    required this.onIncreaseExtraWeight,
  });

  final OrderMenuOptionGroupModel group;
  final String currency;
  final List<OrderMenuOptionModel> options;
  final String groupRuleText;
  final Set<String> Function() getSelectedIds;
  final int Function(OrderMenuOptionModel option) getExtraWeight;
  final void Function(String optionId) onToggleOption;
  final void Function(OrderMenuOptionModel option) onDecreaseExtraWeight;
  final void Function(OrderMenuOptionModel option) onIncreaseExtraWeight;

  @override
  State<GroupSearchPickerSheet> createState() => _GroupSearchPickerSheetState();
}

class _GroupSearchPickerSheetState extends State<GroupSearchPickerSheet> {
  final TextEditingController _controller = TextEditingController();
  String _query = '';

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final visibleOptions =
        widget.options
            .where(
              (option) =>
                  _query.isEmpty ||
                  option.name.toLowerCase().contains(
                    _query.trim().toLowerCase(),
                  ),
            )
            .toList();

    return SafeArea(
      top: false,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.viewInsetsOf(context).bottom,
        ),
        child: Container(
          height: MediaQuery.sizeOf(context).height * 0.76,
          decoration: BoxDecoration(
            color: ColorManager.backgroundSurface,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(AppSize.s28.r),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                child: Container(
                  margin: EdgeInsetsDirectional.only(top: AppPadding.p12.h),
                  width: AppSize.s48.w,
                  height: AppSize.s5.h,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD8E7DF),
                    borderRadius: BorderRadius.circular(999.r),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                  AppPadding.p18.w,
                  AppPadding.p16.h,
                  AppPadding.p18.w,
                  AppPadding.p12.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      widget.group.name,
                      textAlign: TextAlign.right,
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s18.sp,
                        color: const Color(0xFF112B22),
                      ),
                    ),
                    Gap(AppSize.s4.h),
                    Text(
                      widget.groupRuleText,
                      textAlign: TextAlign.right,
                      style: getRegularTextStyle(
                        fontSize: FontSizeManager.s12.sp,
                        color: ColorManager.textSecondary,
                      ),
                    ),
                    Gap(AppSize.s14.h),
                    TextField(
                      controller: _controller,
                      textAlign: TextAlign.right,
                      autocorrect: false,
                      decoration: InputDecoration(
                        hintText: Strings.builderSearchIn.tr(
                          namedArgs: {'group': widget.group.name},
                        ),
                        hintStyle: getRegularTextStyle(
                          fontSize: FontSizeManager.s12.sp,
                          color: ColorManager.textMuted,
                        ),
                        prefixIcon: const Icon(Icons.search_rounded),
                        filled: true,
                        fillColor: const Color(0xFFF9FCFA),
                        contentPadding: EdgeInsetsDirectional.symmetric(
                          horizontal: AppPadding.p13.w,
                          vertical: AppPadding.p12.h,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(AppSize.s15.r),
                          borderSide: const BorderSide(
                            color: Color(0xFFE5E7EB),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(AppSize.s15.r),
                          borderSide: const BorderSide(
                            color: Color(0xFFE5E7EB),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(AppSize.s15.r),
                          borderSide: const BorderSide(
                            color: Color(0xFF10B981),
                          ),
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _query = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child:
                    visibleOptions.isEmpty
                        ? Center(
                          child: Text(
                            Strings.noProductsAvailable.tr(),
                            style: getRegularTextStyle(
                              fontSize: FontSizeManager.s13.sp,
                              color: ColorManager.textSecondary,
                            ),
                          ),
                        )
                        : ListView.separated(
                          padding: EdgeInsetsDirectional.fromSTEB(
                            AppPadding.p18.w,
                            0,
                            AppPadding.p18.w,
                            AppPadding.p18.h,
                          ),
                          itemCount: visibleOptions.length,
                          separatorBuilder: (_, __) => Gap(AppSize.s10.h),
                          itemBuilder: (context, index) {
                            final option = visibleOptions[index];
                            final selectedIds = widget.getSelectedIds();
                            final isSelected = selectedIds.contains(
                              option.optionId,
                            );
                            final maxReached =
                                hasReachedMaxSelections(
                                  selectedIds.length,
                                  widget.group.maxSelections,
                                ) &&
                                !isSelected;

                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                BuilderSearchOptionTile(
                                  option: option,
                                  currency: widget.currency,
                                  isSelected: isSelected,
                                  isDisabled: maxReached,
                                  onTap: () {
                                    widget.onToggleOption(option.optionId);
                                    if (!mounted) {
                                      return;
                                    }
                                    setState(() {});
                                  },
                                ),
                                if (isSelected &&
                                    option.extraWeightUnitGrams > 0)
                                  Padding(
                                    padding: EdgeInsetsDirectional.only(
                                      top: AppPadding.p8.h,
                                    ),
                                    child: InlineExtraWeightSelector(
                                      value: widget.getExtraWeight(option),
                                      step: option.extraWeightUnitGrams,
                                      onDecrease: () {
                                        widget.onDecreaseExtraWeight(option);
                                        if (!mounted) {
                                          return;
                                        }
                                        setState(() {});
                                      },
                                      onIncrease: () {
                                        widget.onIncreaseExtraWeight(option);
                                        if (!mounted) {
                                          return;
                                        }
                                        setState(() {});
                                      },
                                    ),
                                  ),
                              ],
                            );
                          },
                        ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
