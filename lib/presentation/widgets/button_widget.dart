import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWidget extends StatelessWidget {
  final double radius, width, height;
  final String text;
  final void Function()? onTap;
  final Color color;
  final Color textColor;
  final Color? disabledColor;
  final Color? disabledTextColor;
  final bool isLoading;

  const ButtonWidget({
    super.key,
    required this.radius,
    this.width = double.infinity,
    this.height = AppSize.s50,
    this.color = ColorManager.brandPrimary,
    required this.text,
    this.onTap,
    this.textColor = ColorManager.textInverse,
    this.disabledColor,
    this.disabledTextColor,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    final isEnabled = onTap != null && !isLoading;
    final backgroundColor = isEnabled
        ? color
        : (disabledColor ?? ColorManager.stateDisabledSurface);
    final foregroundColor = isEnabled
        ? textColor
        : (disabledTextColor ?? ColorManager.stateDisabled);

    return Material(
      color: ColorManager.transparent,
      child: InkWell(
        onTap: isEnabled ? onTap : null,
        borderRadius: BorderRadius.circular(radius.r),
        splashColor: ColorManager.brandPrimaryTint,
        highlightColor: ColorManager.brandPrimaryTint,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          height: height.h,
          width: width.w,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(radius.r),
          ),
          child: Center(
            child: isLoading
                ? SizedBox(
                    height: AppSize.s20.h,
                    width: AppSize.s20.h,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        foregroundColor,
                      ),
                    ),
                  )
                : Text(
                    text,
                    style: getBoldTextStyle(
                      color: foregroundColor,
                      fontSize: AppSize.s18.sp,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
