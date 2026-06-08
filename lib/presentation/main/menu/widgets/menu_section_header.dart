import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class MenuSectionHeader extends StatelessWidget {
  final String title;
  final String? subtitle;

  const MenuSectionHeader({
    super.key,
    required this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          textAlign: TextAlign.start,
          style: getBoldTextStyle(
            fontSize: FontSizeManager.s20.sp,
            color: ColorManager.textPrimary,
          ),
        ),
        if (subtitle != null) ...[
          Gap(AppSize.s4.h),
          Text(
            subtitle!,
            textAlign: TextAlign.start,
            style: getBoldTextStyle(
              fontSize: FontSizeManager.s13.sp,
              color: ColorManager.textSecondary,
            ),
          ),
        ],
      ],
    );
  }
}
