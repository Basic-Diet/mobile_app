import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class CustomBackButton extends StatelessWidget {
  final String? fallbackRoute;

  const CustomBackButton({super.key, this.fallbackRoute});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (context.canPop()) {
          context.pop();
          return;
        }

        final route = fallbackRoute;
        if (route != null) {
          context.go(route);
        }
      },
      borderRadius: BorderRadius.circular(AppSize.s8.r),
      child: Padding(
        padding: EdgeInsetsDirectional.symmetric(
          vertical: AppPadding.p8.h,
          horizontal: AppPadding.p8.w,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons
                  .arrow_back, // or arrow_back_ios_new if iOS style is preferred
              color: ColorManager.textPrimary,
              size: AppSize.s24.sp,
            ),
            Gap(AppSize.s4.w),
            Text(
              Strings.back.tr(),
              style: getRegularTextStyle(
                color: ColorManager.textPrimary,
                fontSize: FontSizeManager.s16.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
