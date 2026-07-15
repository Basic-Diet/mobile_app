import 'package:basic_diet/presentation/login/login_screen.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:basic_diet/presentation/widgets/custom_back_button.dart';
import 'package:basic_diet/presentation/widgets/text_button_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static const String routeName = '/forgot-password';

  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backgroundSurface,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.all(AppPadding.p24.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(AppSize.s20.h),
              const CustomBackButton(),
              Gap(AppSize.s80.h),
              Text(
                Strings.forgotPasswordTitle.tr(),
                style: getBoldTextStyle(
                  fontSize: FontSizeManager.s30.sp,
                  color: ColorManager.textPrimary,
                ),
              ),
              Gap(AppSize.s12.h),
              Text(
                Strings.forgotPasswordContactAdminMessage.tr(),
                style: getRegularTextStyle(
                  fontSize: FontSizeManager.s16.sp,
                  color: ColorManager.textSecondary,
                ),
              ),
              const Spacer(),
              Center(
                child: TextButtonWidget(
                  Strings.backToLogin.tr(),
                  ColorManager.stateSuccessEmphasis,
                  FontSizeManager.s14,
                  () => context.go(LoginScreen.loginRoute),
                ),
              ),
              Gap(AppSize.s20.h),
            ],
          ),
        ),
      ),
    );
  }
}
