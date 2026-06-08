import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PickupNoticeCard extends StatelessWidget {
  const PickupNoticeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: AppPadding.p12.w,
        vertical: AppPadding.p10.h,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.s16.r),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFFE4F6EE), Color(0xFFFDFEFD)],
        ),
        border: Border.all(color: Colors.white.withValues(alpha: 0.78)),
      ),
      child: Text(
        Strings.pickupOnlyNotice.tr(),
        textAlign: TextAlign.right,
        style: getBoldTextStyle(
          fontSize: FontSizeManager.s13.sp,
          color: const Color(0xFF12382C),
        ),
      ),
    );
  }
}
