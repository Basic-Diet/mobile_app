import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuilderHeroPill extends StatelessWidget {
  final String label;
  final String value;

  const BuilderHeroPill({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: AppPadding.p10.w,
        vertical: AppPadding.p8.h,
      ),
      decoration: BoxDecoration(
        color: ColorManager.backgroundSurface.withValues(alpha: 0.86),
        borderRadius: BorderRadius.circular(999.r),
        border: Border.all(color: const Color(0x1A0E9F6E)),
      ),
      child: Text(
        '$value • $label',
        style: getBoldTextStyle(
          fontSize: FontSizeManager.s11.sp,
          color: const Color(0xFF12382C),
        ),
      ),
    );
  }
}
