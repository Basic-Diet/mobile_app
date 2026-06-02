import 'dart:ui' as ui;

import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final bool enablePasswordToggle;
  final String? errorText;
  final TextInputAction textInputAction;
  final ValueChanged<String>? onChanged;
  final Widget? prefixWidget;

  const AppTextField._({
    required this.hintText,
    required this.controller,
    required this.keyboardType,
    required this.obscureText,
    required this.enablePasswordToggle,
    required this.textInputAction,
    this.errorText,
    this.onChanged,
    this.prefixWidget,
  });

  // 🔹 Default constructor
  factory AppTextField.normal({
    required String hintText,
    required TextEditingController controller,
    ValueChanged<String>? onChanged,
    String? errorText,
  }) {
    return AppTextField._(
      hintText: hintText,
      controller: controller,
      keyboardType: TextInputType.text,
      obscureText: false,
      enablePasswordToggle: false,
      textInputAction: TextInputAction.done,
      errorText: errorText,
      onChanged: onChanged,
    );
  }

  // 🔹 Email constructor
  factory AppTextField.email({
    required TextEditingController controller,
    ValueChanged<String>? onChanged,
    String? errorText,
  }) {
    return AppTextField._(
      hintText: Strings.emailHint.tr(),
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      obscureText: false,
      enablePasswordToggle: false,
      textInputAction: TextInputAction.next,
      errorText: errorText,
      onChanged: onChanged,
    );
  }

  factory AppTextField.phone({
    required TextEditingController controller,
    ValueChanged<String>? onChanged,
    String? errorText,
    Widget? prefixWidget,
    String? hintText,
  }) {
    return AppTextField._(
      hintText: hintText ?? Strings.phoneHint.tr(),
      controller: controller,
      keyboardType: TextInputType.phone,
      obscureText: false,
      enablePasswordToggle: false,
      textInputAction: TextInputAction.done,
      errorText: errorText,
      onChanged: onChanged,
      prefixWidget: prefixWidget,
    );
  }

  factory AppTextField.password({
    required TextEditingController controller,
    ValueChanged<String>? onChanged,
    String? errorText,
  }) {
    return AppTextField._(
      hintText: Strings.passwordHint.tr(),
      controller: controller,
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      enablePasswordToggle: true,
      textInputAction: TextInputAction.done,
      errorText: errorText,
      onChanged: onChanged,
    );
  }

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  final FocusNode _focusNode = FocusNode();
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.prefixWidget != null) {
      // For phone fields with country code, use a Row with country code always on left
      final borderColor = widget.errorText != null
          ? ColorManager.stateError
          : (_focusNode.hasFocus ? ColorManager.brandPrimary : ColorManager.borderDefault);
      
      return Container(
        decoration: BoxDecoration(
          color: ColorManager.backgroundSurface,
          border: Border.all(
            color: borderColor,
            width: AppSize.s1.w,
          ),
          borderRadius: BorderRadius.circular(AppSize.s14.r),
        ),
        child: Directionality(
          textDirection: ui.TextDirection.ltr,
          child: Row(
            children: [
              // Country code always on left
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppPadding.p12.w, vertical: AppPadding.p18.h),
                child: widget.prefixWidget!,
              ),
              // Vertical divider
              Container(
                width: 1.w,
                height: AppSize.s24.h,
                color: ColorManager.borderDefault,
              ),
              // Phone number input (respects app's direction)
              Expanded(
                child: TextFormField(
                  focusNode: _focusNode,
                  onChanged: widget.onChanged,
                  controller: widget.controller,
                  keyboardType: widget.keyboardType,
                  obscureText: _obscureText,
                  textInputAction: widget.textInputAction,
                  decoration: InputDecoration(
                    errorText: widget.errorText,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: AppPadding.p18.h,
                      horizontal: AppPadding.p12.w,
                    ),
                    hintText: widget.hintText,
                    filled: false,
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    hintStyle: getRegularTextStyle(
                      color: ColorManager.textSecondary,
                      fontSize: AppSize.s16.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      // For normal fields, use the original layout
      return TextFormField(
        focusNode: _focusNode,
        onChanged: widget.onChanged,
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        obscureText: _obscureText,
        autocorrect: !widget.enablePasswordToggle,
        enableSuggestions: !widget.enablePasswordToggle,
        textInputAction: widget.textInputAction,
        decoration: InputDecoration(
          errorText: widget.errorText,
          contentPadding: EdgeInsetsDirectional.symmetric(
            vertical: AppPadding.p18.h,
            horizontal: AppPadding.p12.w,
          ),
          hintText: widget.hintText,
          filled: true,
          fillColor: ColorManager.backgroundSurface,
          hintStyle: getRegularTextStyle(
            color: ColorManager.textSecondary,
            fontSize: AppSize.s16.sp,
          ),
          suffixIcon:
              widget.enablePasswordToggle
                  ? IconButton(
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    icon: Icon(
                      _obscureText
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: ColorManager.textSecondary,
                    ),
                  )
                  : null,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s14.r),
            borderSide: BorderSide(
              color: ColorManager.borderDefault,
              width: AppSize.s1.w,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s14.r),
            borderSide: BorderSide(
              color: ColorManager.brandPrimary,
              width: AppSize.s1.w,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s14.r),
            borderSide: BorderSide(color: ColorManager.stateError),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s14.r),
            borderSide: BorderSide(
              color: ColorManager.stateError,
              width: AppSize.s1.w,
            ),
          ),
        ),
      );
    }
  }
}
