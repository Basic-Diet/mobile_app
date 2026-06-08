import 'package:basic_diet/domain/model/order_menu_model.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class DropdownOptionPicker extends StatelessWidget {
  final OrderMenuOptionGroupModel group;
  final List<OrderMenuOptionModel> selectedOptions;
  final String ruleText;
  final VoidCallback onTap;

  const DropdownOptionPicker({
    super.key,
    required this.group,
    required this.selectedOptions,
    required this.ruleText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final label =
        selectedOptions.isEmpty
            ? ruleText
            : selectedOptions.map((option) => option.name).join(', ');
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppSize.s15.r),
      child: Container(
        width: double.infinity,
        padding: EdgeInsetsDirectional.symmetric(
          horizontal: AppPadding.p13.w,
          vertical: AppPadding.p12.h,
        ),
        decoration: BoxDecoration(
          color: const Color(0xFFF9FCFA),
          borderRadius: BorderRadius.circular(AppSize.s15.r),
          border: Border.all(color: const Color(0xFFE5E7EB)),
        ),
        child: Row(
          children: [
            const Icon(Icons.keyboard_arrow_down_rounded),
            Gap(AppSize.s10.w),
            Expanded(
              child: Text(
                label,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.right,
                style: getRegularTextStyle(
                  fontSize: FontSizeManager.s12.sp,
                  color: ColorManager.textSecondary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
