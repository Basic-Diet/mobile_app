import 'package:easy_localization/easy_localization.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class SupportScreen extends StatefulWidget {
  static const String supportRoute = '/support';

  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _messageController = TextEditingController();
  bool _isSubmitted = false;

  @override
  void dispose() {
    _titleController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  void _onSubmit() {
    if (_formKey.currentState!.validate()) {
      setState(() => _isSubmitted = true);
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Text(
              Strings.supportSent.tr(),
              style: getRegularTextStyle(
                color: ColorManager.textInverse,
                fontSize: FontSizeManager.s12.sp,
              ),
            ),
            backgroundColor: ColorManager.stateSuccess,
          ),
        );
      Future.delayed(const Duration(seconds: 2), () {
        if (mounted) Navigator.of(context).pop();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backgroundApp,
      appBar: AppBar(
        backgroundColor: ColorManager.backgroundSurface,
        surfaceTintColor: ColorManager.backgroundSurface,
        title: Text(
          Strings.supportTitle.tr(),
          style: getRegularTextStyle(
            color: ColorManager.textPrimary,
            fontSize: FontSizeManager.s16.sp,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: ColorManager.textPrimary,
            size: AppSize.s20.r,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body:
          _isSubmitted
              ? const _SuccessView()
              : SingleChildScrollView(
                padding: EdgeInsetsDirectional.fromSTEB(
                  AppPadding.p20.w,
                  AppPadding.p24.h,
                  AppPadding.p20.w,
                  AppPadding.p20.h,
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        Strings.supportSubtitle.tr(),
                        style: getRegularTextStyle(
                          color: ColorManager.textSecondary,
                          fontSize: FontSizeManager.s13.sp,
                        ),
                      ),
                      Gap(AppSize.s24.h),
                      Text(
                        Strings.subject.tr(),
                        style: getRegularTextStyle(
                          color: ColorManager.textPrimary,
                          fontSize: FontSizeManager.s13.sp,
                        ),
                      ),
                      Gap(AppSize.s8.h),
                      TextFormField(
                        controller: _titleController,
                        decoration: InputDecoration(
                          hintText: Strings.subjectHint.tr(),
                          hintStyle: getRegularTextStyle(
                            color: ColorManager.textMuted,
                            fontSize: FontSizeManager.s13.sp,
                          ),
                          filled: true,
                          fillColor: ColorManager.backgroundSurface,
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                            AppPadding.p16.w,
                            AppPadding.p14.h,
                            AppPadding.p16.w,
                            AppPadding.p14.h,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(AppSize.s12.r),
                            borderSide: BorderSide(
                              color: ColorManager.borderDefault,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(AppSize.s12.r),
                            borderSide: BorderSide(
                              color: ColorManager.borderDefault,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(AppSize.s12.r),
                            borderSide: BorderSide(
                              color: ColorManager.brandPrimary,
                              width: AppSize.s1_5.w,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(AppSize.s12.r),
                            borderSide: BorderSide(
                              color: ColorManager.stateError,
                            ),
                          ),
                        ),
                        style: getRegularTextStyle(
                          color: ColorManager.textPrimary,
                          fontSize: FontSizeManager.s14.sp,
                        ),
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return '';
                          }
                          return null;
                        },
                      ),
                      Gap(AppSize.s20.h),
                      Text(
                        Strings.message.tr(),
                        style: getRegularTextStyle(
                          color: ColorManager.textPrimary,
                          fontSize: FontSizeManager.s13.sp,
                        ),
                      ),
                      Gap(AppSize.s8.h),
                      TextFormField(
                        controller: _messageController,
                        maxLines: 6,
                        decoration: InputDecoration(
                          hintText: Strings.messageHint.tr(),
                          hintStyle: getRegularTextStyle(
                            color: ColorManager.textMuted,
                            fontSize: FontSizeManager.s13.sp,
                          ),
                          filled: true,
                          fillColor: ColorManager.backgroundSurface,
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                            AppPadding.p16.w,
                            AppPadding.p14.h,
                            AppPadding.p16.w,
                            AppPadding.p14.h,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(AppSize.s12.r),
                            borderSide: BorderSide(
                              color: ColorManager.borderDefault,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(AppSize.s12.r),
                            borderSide: BorderSide(
                              color: ColorManager.borderDefault,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(AppSize.s12.r),
                            borderSide: BorderSide(
                              color: ColorManager.brandPrimary,
                              width: AppSize.s1_5.w,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(AppSize.s12.r),
                            borderSide: BorderSide(
                              color: ColorManager.stateError,
                            ),
                          ),
                        ),
                        style: getRegularTextStyle(
                          color: ColorManager.textPrimary,
                          fontSize: FontSizeManager.s14.sp,
                        ),
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return '';
                          }
                          return null;
                        },
                      ),
                      Gap(AppSize.s32.h),
                      SizedBox(
                        width: double.infinity,
                        height: AppSize.s48.h,
                        child: ElevatedButton(
                          onPressed: _onSubmit,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorManager.brandPrimary,
                            foregroundColor: ColorManager.textInverse,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                AppSize.s12.r,
                              ),
                            ),
                            elevation: 0,
                          ),
                          child: Text(
                            Strings.submit.tr(),
                            style: getRegularTextStyle(
                              color: ColorManager.textInverse,
                              fontSize: FontSizeManager.s15.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
    );
  }
}

class _SuccessView extends StatelessWidget {
  const _SuccessView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsetsDirectional.all(AppPadding.p40.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: AppSize.s80.w,
              height: AppSize.s80.w,
              decoration: BoxDecoration(
                color: ColorManager.stateSuccessSurface,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.check_circle_rounded,
                color: ColorManager.stateSuccess,
                size: AppSize.s44.r,
              ),
            ),
            Gap(AppSize.s20.h),
            Text(
              Strings.supportSent.tr(),
              textAlign: TextAlign.center,
              style: getRegularTextStyle(
                color: ColorManager.textPrimary,
                fontSize: FontSizeManager.s15.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
