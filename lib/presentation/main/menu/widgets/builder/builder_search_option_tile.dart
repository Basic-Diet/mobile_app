import 'package:basic_diet/domain/model/order_menu_model.dart';
import 'package:basic_diet/presentation/main/menu/utils/menu_utils.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class BuilderSearchOptionTile extends StatelessWidget {
  final OrderMenuOptionModel option;
  final String currency;
  final bool isSelected;
  final bool isDisabled;
  final VoidCallback onTap;

  const BuilderSearchOptionTile({
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
        color: ColorManager.backgroundSurface,
        borderRadius: BorderRadius.circular(AppSize.s18.r),
        child: InkWell(
          onTap: isDisabled ? null : onTap,
          borderRadius: BorderRadius.circular(AppSize.s18.r),
          child: Container(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: AppPadding.p14.w,
              vertical: AppPadding.p14.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.s18.r),
              border: Border.all(
                color:
                    isSelected
                        ? ColorManager.brandPrimary
                        : const Color(0xFFE5E7EB),
              ),
              color:
                  isSelected
                      ? ColorManager.brandPrimaryTint.withValues(alpha: 0.45)
                      : ColorManager.backgroundSurface,
            ),
            child: Row(
              children: [
                Container(
                  width: AppSize.s28.w,
                  height: AppSize.s28.h,
                  decoration: BoxDecoration(
                    color:
                        isSelected
                            ? ColorManager.brandPrimary
                            : const Color(0xFFF4F7F5),
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: Icon(
                    isSelected ? Icons.check_rounded : Icons.add_rounded,
                    size: AppSize.s16.r,
                    color:
                        isSelected
                            ? ColorManager.backgroundSurface
                            : const Color(0xFF112B22),
                  ),
                ),
                Gap(AppSize.s10.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        option.name,
                        textAlign: TextAlign.right,
                        style: getBoldTextStyle(
                          fontSize: FontSizeManager.s14.sp,
                          color: const Color(0xFF112B22),
                        ),
                      ),
                      if (option.extraPriceHalala > 0) ...[
                        Gap(AppSize.s4.h),
                        Text(
                          '+ ${formatHalala(option.extraPriceHalala, currency)}',
                          textAlign: TextAlign.right,
                          style: getBoldTextStyle(
                            fontSize: FontSizeManager.s11.sp,
                            color: ColorManager.brandAccent,
                          ),
                        ),
                      ],
                    ],
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
