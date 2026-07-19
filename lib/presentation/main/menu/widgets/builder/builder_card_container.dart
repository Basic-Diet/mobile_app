import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuilderCardContainer extends StatelessWidget {
  final Widget child;

  const BuilderCardContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsetsDirectional.all(AppPadding.p16.r),
      decoration: BoxDecoration(
        color: ColorManager.backgroundSurface,
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
      child: child,
    );
  }
}
