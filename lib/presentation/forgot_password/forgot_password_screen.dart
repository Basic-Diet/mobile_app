import 'package:basic_diet/app/dependency_injection.dart';
import 'package:basic_diet/presentation/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:basic_diet/presentation/forgot_password/bloc/forgot_password_event.dart';
import 'package:basic_diet/presentation/forgot_password/bloc/forgot_password_state.dart';
import 'package:basic_diet/presentation/login/login_screen.dart';
import 'package:basic_diet/presentation/reset_password/reset_password_screen.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static const String routeName = '/forgot-password';

  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        initForgotPasswordModule();
        return instance<ForgotPasswordBloc>();
      },
      child: const _ForgotPasswordContent(),
    );
  }
}

class _ForgotPasswordContent extends StatelessWidget {
  const _ForgotPasswordContent();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backgroundApp,
      body: SafeArea(
        child: BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
          listener: (context, state) {
            if (state.status == ForgotPasswordStatus.success) {
              context.push(
                ResetPasswordScreen.routeName,
                extra: state.phone,
              );
            }
            if (state.status == ForgotPasswordStatus.failure &&
                state.errorMessage != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.errorMessage!)),
              );
            }
          },
          builder: (context, state) {
            return Padding(
              padding: EdgeInsetsDirectional.all(AppPadding.p24.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: AppSize.s40.h),
                  Text(
                    Strings.forgotPasswordTitle.tr(),
                    style: getBoldTextStyle(
                      fontSize: FontSizeManager.s24.sp,
                      color: ColorManager.textPrimary,
                    ),
                  ),
                  SizedBox(height: AppSize.s8.h),
                  Text(
                    Strings.forgotPasswordSubtitle.tr(),
                    style: getRegularTextStyle(
                      fontSize: FontSizeManager.s14.sp,
                      color: ColorManager.textSecondary,
                    ),
                  ),
                  SizedBox(height: AppSize.s32.h),
                  TextField(
                    keyboardType: TextInputType.phone,
                    onChanged: (value) {
                      context.read<ForgotPasswordBloc>().add(
                        ForgotPasswordPhoneChanged(value),
                      );
                    },
                    decoration: InputDecoration(
                      labelText: Strings.phone.tr(),
                      hintText: Strings.phoneHint.tr(),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppSize.s14.r),
                      ),
                    ),
                  ),
                  SizedBox(height: AppSize.s24.h),
                  SizedBox(
                    height: AppSize.s52.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorManager.brandPrimary,
                        foregroundColor: ColorManager.textInverse,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(AppSize.s18.r),
                        ),
                      ),
                      onPressed: state.status == ForgotPasswordStatus.loading
                          ? null
                          : () {
                              context.read<ForgotPasswordBloc>().add(
                                const ForgotPasswordSubmitted(),
                              );
                            },
                      child: state.status == ForgotPasswordStatus.loading
                          ? const CircularProgressIndicator(
                              color: ColorManager.textInverse,
                            )
                          : Text(
                              Strings.sendOtp.tr(),
                              style: getBoldTextStyle(
                                fontSize: FontSizeManager.s16.sp,
                                color: ColorManager.textInverse,
                              ),
                            ),
                    ),
                  ),
                  SizedBox(height: AppSize.s16.h),
                  TextButton(
                    onPressed: () => context.push(LoginScreen.loginRoute),
                    child: Text(
                      Strings.backToLogin.tr(),
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s14.sp,
                        color: ColorManager.stateSuccessEmphasis,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
