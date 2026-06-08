import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuilderProgressBar extends StatelessWidget {
  final double value;
  final String label;

  const BuilderProgressBar({
    super.key,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s38.h,
      decoration: BoxDecoration(
        color: ColorManager.backgroundSurface.withValues(alpha: 0.78),
        borderRadius: BorderRadius.circular(AppSize.s14.r),
        border: Border.all(color: const Color(0x1A0E9F6E)),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          FractionallySizedBox(
            widthFactor: value.clamp(0, 1),
            alignment: AlignmentDirectional.centerEnd,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0x290E9F6E), Color(0x120E9F6E)],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsetsDirectional.only(end: AppPadding.p12.w),
              child: Text(
                label,
                style: getBoldTextStyle(
                  fontSize: FontSizeManager.s12.sp,
                  color: const Color(0xFF12382C),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
