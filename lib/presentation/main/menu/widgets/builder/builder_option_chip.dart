import 'package:basic_diet/domain/model/order_menu_model.dart';
import 'package:basic_diet/presentation/main/menu/utils/menu_utils.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class BuilderOptionChip extends StatelessWidget {
  final OrderMenuOptionModel option;
  final String currency;
  final bool isSelected;
  final bool isDisabled;
  final VoidCallback onTap;

  const BuilderOptionChip({
    super.key,
    required this.option,
    required this.currency,
    required this.isSelected,
    required this.isDisabled,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: isDisabled ? 0.42 : 1,
      child: Material(
        color:
            isSelected
                ? const Color(0xFF0B241C)
                : ColorManager.backgroundSurface,
        borderRadius: BorderRadius.circular(AppSize.s15.r),
        child: InkWell(
          onTap: isDisabled ? null : onTap,
          borderRadius: BorderRadius.circular(AppSize.s15.r),
          child: Container(
            constraints: BoxConstraints(minHeight: AppSize.s42.h),
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: AppPadding.p12.w,
              vertical: AppPadding.p10.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.s15.r),
              border: Border.all(
                color:
                    isSelected
                        ? const Color(0xFF0B241C)
                        : const Color(0xFFE5E7EB),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (isSelected) ...[
                  Icon(
                    Icons.check_rounded,
                    size: AppSize.s14.r,
                    color: ColorManager.backgroundSurface,
                  ),
                  Gap(AppSize.s6.w),
                ],
                if (option.extraPriceHalala > 0) ...[
                  Text(
                    '+ ${formatHalala(option.extraPriceHalala, currency)}',
                    style: getBoldTextStyle(
                      fontSize: FontSizeManager.s11.sp,
                      color:
                          isSelected
                              ? ColorManager.backgroundSurface
                              : ColorManager.brandAccent,
                    ),
                  ),
                  Gap(AppSize.s4.w),
                ],
                Flexible(
                  child: Text(
                    option.name,
                    style: getBoldTextStyle(
                      fontSize: FontSizeManager.s12.sp,
                      color:
                          isSelected
                              ? ColorManager.backgroundSurface
                              : const Color(0xFF112B22),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
