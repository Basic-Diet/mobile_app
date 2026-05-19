import 'package:basic_diet/app/dependency_injection.dart';
import 'package:basic_diet/presentation/login/login_screen.dart';
import 'package:basic_diet/presentation/reset_password/bloc/reset_password_bloc.dart';
import 'package:basic_diet/presentation/reset_password/bloc/reset_password_event.dart';
import 'package:basic_diet/presentation/reset_password/bloc/reset_password_state.dart';
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

class ResetPasswordScreen extends StatelessWidget {
  static const String routeName = '/reset-password';
  final String phone;

  const ResetPasswordScreen({super.key, required this.phone});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        initResetPasswordModule();
        return instance<ResetPasswordBloc>(param1: phone);
      },
      child: const _ResetPasswordContent(),
    );
  }
}

class _ResetPasswordContent extends StatelessWidget {
  const _ResetPasswordContent();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backgroundApp,
      body: SafeArea(
        child: BlocConsumer<ResetPasswordBloc, ResetPasswordState>(
          listener: (context, state) {
            if (state.status == ResetPasswordStatus.success) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(Strings.passwordResetSuccess.tr())),
              );
              context.go(LoginScreen.loginRoute);
            }
            if (state.status == ResetPasswordStatus.failure &&
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
                    Strings.resetPasswordTitle.tr(),
                    style: getBoldTextStyle(
                      fontSize: FontSizeManager.s24.sp,
                      color: ColorManager.textPrimary,
                    ),
                  ),
                  SizedBox(height: AppSize.s8.h),
                  Text(
                    Strings.resetPasswordSubtitle.tr(),
                    style: getRegularTextStyle(
                      fontSize: FontSizeManager.s14.sp,
                      color: ColorManager.textSecondary,
                    ),
                  ),
                  SizedBox(height: AppSize.s32.h),
                  TextField(
                    keyboardType: TextInputType.number,
                    maxLength: 6,
                    onChanged: (value) {
                      context.read<ResetPasswordBloc>().add(
                        ResetPasswordOtpChanged(value),
                      );
                    },
                    decoration: InputDecoration(
                      labelText: Strings.otpCode.tr(),
                      hintText: '123456',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppSize.s14.r),
                      ),
                    ),
                  ),
                  SizedBox(height: AppSize.s16.h),
                  TextField(
                    obscureText: true,
                    onChanged: (value) {
                      context.read<ResetPasswordBloc>().add(
                        ResetPasswordNewPasswordChanged(value),
                      );
                    },
                    decoration: InputDecoration(
                      labelText: Strings.newPassword.tr(),
                      hintText: Strings.passwordHint.tr(),
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
                      onPressed: state.status == ResetPasswordStatus.loading
                          ? null
                          : () {
                              context.read<ResetPasswordBloc>().add(
                                const ResetPasswordSubmitted(),
                              );
                            },
                      child: state.status == ResetPasswordStatus.loading
                          ? const CircularProgressIndicator(
                              color: ColorManager.textInverse,
                            )
                          : Text(
                              Strings.resetPassword.tr(),
                              style: getBoldTextStyle(
                                fontSize: FontSizeManager.s16.sp,
                                color: ColorManager.textInverse,
                              ),
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
