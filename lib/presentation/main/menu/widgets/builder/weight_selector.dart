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
  final ValueChanged<int> onChanged;

  const WeightSelector({
    super.key,
    required this.value,
    required this.min,
    required this.max,
    required this.step,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final divisions = ((max - min) / step).round();
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
    );
  }
}
