import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuSearchField extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  const MenuSearchField({
    super.key,
    required this.controller,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s44.h,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.94),
        borderRadius: BorderRadius.circular(AppSize.s16.r),
        border: Border.all(color: Colors.white.withValues(alpha: 0.78)),
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          hintText: Strings.searchMenuPlaceholder.tr(),
          hintStyle: getBoldTextStyle(
            fontSize: FontSizeManager.s13.sp,
            color: const Color(0xFFA1A1A6),
          ),
          prefixIcon: const Icon(
            Icons.search_rounded,
            color: Color(0xFFA1A1A6),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s16.r),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsetsDirectional.symmetric(
            horizontal: AppPadding.p12.w,
            vertical: AppPadding.p10.h,
          ),
        ),
      ),
    );
  }
}
