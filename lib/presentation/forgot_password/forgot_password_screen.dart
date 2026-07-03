import 'package:basic_diet/app/dependency_injection.dart';
import 'package:basic_diet/presentation/login/login_screen.dart';
import 'package:basic_diet/presentation/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:basic_diet/presentation/forgot_password/bloc/forgot_password_event.dart';
import 'package:basic_diet/presentation/forgot_password/bloc/forgot_password_state.dart';
import 'package:basic_diet/presentation/reset_password/reset_password_screen.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:basic_diet/presentation/widgets/button_widget.dart';
import 'package:basic_diet/presentation/widgets/custom_back_button.dart';
import 'package:basic_diet/presentation/widgets/custom_text_field_style.dart';
import 'package:basic_diet/presentation/widgets/text_button_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordScreen extends StatefulWidget {
  static const String routeName = '/forgot-password';

  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  late final TextEditingController _phoneController;

  @override
  void initState() {
    super.initState();
    _phoneController = TextEditingController();
  }

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        initForgotPasswordModule();
        return instance<ForgotPasswordBloc>();
      },
      child: Scaffold(
        backgroundColor: ColorManager.backgroundSurface,
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
              final isLoading = state.status == ForgotPasswordStatus.loading;
              final isEnabled = state.phone.isNotEmpty && !isLoading;

              return Padding(
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
                      Strings.forgotPasswordSubtitle.tr(),
                      style: getRegularTextStyle(
                        fontSize: FontSizeManager.s16.sp,
                        color: ColorManager.textSecondary,
                      ),
                    ),
                    Gap(AppSize.s32.h),
                    Text(
                      Strings.phone.tr(),
                      style: getRegularTextStyle(
                        color: ColorManager.textPrimary,
                        fontSize: FontSizeManager.s16.sp,
                      ),
                    ),
                    Gap(AppSize.s8.h),
                    AppTextField.phone(
                      controller: _phoneController,
                      hintText: '500000001',
                      prefixWidget: Text(
                        '+966',
                        style: getRegularTextStyle(
                          color: ColorManager.textPrimary,
                          fontSize: FontSizeManager.s16.sp,
                        ),
                      ),
                      onChanged: (phone) {
                        context.read<ForgotPasswordBloc>().add(
                          ForgotPasswordPhoneChanged(phone),
                        );
                      },
                    ),
                    Gap(AppSize.s24.h),
                    ButtonWidget(
                      text: Strings.sendOtp.tr(),
                      textColor: ColorManager.backgroundSurface,
                      color: ColorManager.stateSuccessEmphasis,
                      width: double.infinity,
                      radius: AppSize.s12.r,
                      onTap: isEnabled
                          ? () {
                              context.read<ForgotPasswordBloc>().add(
                                const ForgotPasswordSubmitted(),
                              );
                            }
                          : null,
                      isLoading: isLoading,
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
              );
            },
          ),
        ),
      ),
    );
  }
}
