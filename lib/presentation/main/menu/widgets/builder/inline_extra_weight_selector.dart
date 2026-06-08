import 'package:basic_diet/presentation/main/menu/widgets/builder/weight_selector.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InlineExtraWeightSelector extends StatelessWidget {
  final int value;
  final int step;
  final VoidCallback onDecrease;
  final VoidCallback onIncrease;

  const InlineExtraWeightSelector({
    super.key,
    required this.value,
    required this.step,
    required this.onDecrease,
    required this.onIncrease,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: AppPadding.p10.w,
        vertical: AppPadding.p8.h,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF6F9F7),
        borderRadius: BorderRadius.circular(AppSize.s16.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: value > step ? onDecrease : null,
            visualDensity: VisualDensity.compact,
            icon: const Icon(Icons.remove_circle_outline),
          ),
          Text(
            weightLabel(value),
            style: getBoldTextStyle(
              fontSize: FontSizeManager.s12.sp,
              color: ColorManager.textPrimary,
            ),
          ),
          IconButton(
            onPressed: onIncrease,
            visualDensity: VisualDensity.compact,
            icon: const Icon(Icons.add_circle_outline),
          ),
        ],
      ),
    );
  }
}
