import 'package:basic_diet/domain/model/order_menu_model.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

String weightLabel(int grams) => '$grams g';

class WeightSelector extends StatelessWidget {
  final int value;
  final int min;
  final int max;
  final int step;
  final List<OrderMenuWeightPricingChoiceModel> choices;
  final String Function(int halala)? priceFormatter;
  final ValueChanged<int> onChanged;

  const WeightSelector({
    super.key,
    required this.value,
    required this.min,
    required this.max,
    required this.step,
    this.choices = const [],
    this.priceFormatter,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final hasChoices = choices.isNotEmpty;
    final divisions = step > 0 ? ((max - min) / step).round() : 0;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          Strings.weightGrams.tr(),
          style: getBoldTextStyle(
            fontSize: FontSizeManager.s16.sp,
            color: const Color(0xFF112B22),
          ),
        ),
        Gap(AppSize.s8.h),
        Text(
          weightLabel(value),
          style: getBoldTextStyle(
            fontSize: FontSizeManager.s12.sp,
            color: ColorManager.textSecondary,
          ),
        ),
        Gap(AppSize.s6.h),
        if (hasChoices)
          Wrap(
            alignment: WrapAlignment.end,
            spacing: AppSize.s8.w,
            runSpacing: AppSize.s8.h,
            children:
                choices.map((choice) {
                  final isSelected = choice.weightGrams == value;
                  final price = priceFormatter?.call(choice.priceHalala);
                  return ChoiceChip(
                    selected: isSelected,
                    showCheckmark: false,
                    label: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(weightLabel(choice.weightGrams)),
                        if (price != null) ...[Gap(AppSize.s2.h), Text(price)],
                      ],
                    ),
                    labelStyle: getBoldTextStyle(
                      fontSize: FontSizeManager.s11.sp,
                      color:
                          isSelected
                              ? ColorManager.backgroundSurface
                              : ColorManager.textPrimary,
                    ),
                    selectedColor: ColorManager.brandPrimary,
                    backgroundColor: ColorManager.backgroundSurface,
                    side: BorderSide(
                      color:
                          isSelected
                              ? ColorManager.brandPrimary
                              : ColorManager.borderDefault,
                    ),
                    onSelected: (_) => onChanged(choice.weightGrams),
                  );
                }).toList(),
          )
        else ...[
          Slider(
            value: value.toDouble(),
            min: min.toDouble(),
            max: max.toDouble(),
            divisions: divisions > 0 ? divisions : null,
            activeColor: ColorManager.brandPrimary,
            inactiveColor: const Color(0xFFD8E7DF),
            label: weightLabel(value),
            onChanged: (newValue) => onChanged(newValue.round()),
          ),
          Row(
            children: [
              Text(
                weightLabel(min),
                style: getRegularTextStyle(
                  fontSize: FontSizeManager.s11.sp,
                  color: ColorManager.textSecondary,
                ),
              ),
              const Spacer(),
              Text(
                weightLabel(max),
                style: getRegularTextStyle(
                  fontSize: FontSizeManager.s11.sp,
                  color: ColorManager.textSecondary,
                ),
              ),
            ],
          ),
        ],
      ],
    );
  }
}
