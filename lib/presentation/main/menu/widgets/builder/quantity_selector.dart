import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class QuantitySelector extends StatelessWidget {
  final int quantity;
  final VoidCallback? onDecrease;
  final VoidCallback onIncrease;

  const QuantitySelector({
    super.key,
    required this.quantity,
    required this.onDecrease,
    required this.onIncrease,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        QuantityButton(icon: Icons.add_rounded, onTap: onIncrease),
        Gap(AppSize.s12.w),
        Container(
          width: AppSize.s48.w,
          alignment: Alignment.center,
          child: Text(
            '$quantity',
            style: getBoldTextStyle(
              fontSize: FontSizeManager.s18.sp,
              color: const Color(0xFF112B22),
            ),
          ),
        ),
        Gap(AppSize.s12.w),
        QuantityButton(icon: Icons.remove_rounded, onTap: onDecrease),
        const Spacer(),
        Text(
          Strings.builderQuantity.tr(),
          style: getBoldTextStyle(
            fontSize: FontSizeManager.s16.sp,
            color: const Color(0xFF112B22),
          ),
        ),
      ],
    );
  }
}

class QuantityButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;

  const QuantityButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: onTap == null ? 0.4 : 1,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppSize.s14.r),
        child: Container(
          width: AppSize.s40.w,
          height: AppSize.s40.h,
          decoration: BoxDecoration(
            color: const Color(0xFFF4F7F5),
            borderRadius: BorderRadius.circular(AppSize.s14.r),
          ),
          child: Icon(
            icon,
            color: const Color(0xFF112B22),
            size: AppSize.s18.r,
          ),
        ),
      ),
    );
  }
}
