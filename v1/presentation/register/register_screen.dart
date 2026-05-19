import 'package:basic_diet/presentation/login/login_screen.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:basic_diet/presentation/widgets/button_widget.dart';
import 'package:basic_diet/presentation/widgets/custom_back_button.dart';
import 'package:basic_diet/presentation/widgets/custom_text_field_style.dart';
import 'package:basic_diet/presentation/widgets/text_button_widget.dart';
import 'package:basic_diet/app/dependency_injection.dart';
import 'package:basic_diet/presentation/verify/verify_screen.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'register_bloc.dart';
import 'register_event.dart';
import 'register_state.dart';

class RegisterScreen extends StatelessWidget {
  static const String registerRoute = "/register";
  RegisterScreen({super.key});

  late final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.viewInsetsOf(context).bottom;

    return BlocProvider(
      create: (_) => instance<RegisterBloc>(),
      child: BlocListener<RegisterBloc, RegisterState>(
        listener: (context, state) {
          if (state is RegisterSuccessState) {
            context.push(VerifyScreen.verifyRoute, extra: state.phone);
          }
        },
        child: Scaffold(
          backgroundColor: ColorManager.backgroundSurface,
          body: SafeArea(
            child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              padding: EdgeInsetsDirectional.symmetric(
                horizontal: AppSize.s24.w,
              ).copyWith(bottom: AppPadding.p20.h + bottomInset),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(AppSize.s20.h),
                  const CustomBackButton(),
                  Gap(AppSize.s100.h),
                  _buildHeader(),
                  Gap(AppSize.s40.h),
                  _buildForm(context),
                  Gap(AppSize.s20.h),
                  _buildFooter(context),
                  Gap(AppSize.s20.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Strings.welcome.tr(),
          style: getBoldTextStyle(
            color: ColorManager.textPrimary,
            fontSize: FontSizeManager.s30.sp,
          ),
        ),
        Gap(AppSize.s10.h),
        Text(
          Strings.registerSubtitle.tr(),
          style: getRegularTextStyle(
            color: ColorManager.textSecondary,
            fontSize: FontSizeManager.s16.sp,
          ),
        ),
      ],
    );
  }

  Widget _buildForm(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Strings.phone.tr(),
          style: getRegularTextStyle(
            color: ColorManager.textPrimary,
            fontSize: FontSizeManager.s16.sp,
          ),
        ),
        Gap(AppSize.s8.h),
        BlocBuilder<RegisterBloc, RegisterState>(
          buildWhen: (previous, current) =>
              previous.phoneError != current.phoneError,
          builder: (context, state) {
            return AppTextField.phone(
              controller: _phoneController,
              errorText: state.phoneError,
              onChanged: (phone) {
                context.read<RegisterBloc>().add(RegisterPhoneChanged(phone));
              },
            );
          },
        ),
        Gap(AppSize.s24.h),

        BlocBuilder<RegisterBloc, RegisterState>(
          builder: (context, state) {
            final isLoading = state is RegisterLoadingState;
            final isEnabled = state.phoneError == null && state.phone.isNotEmpty;

            return ButtonWidget(
              text: isLoading
                  ? Strings.loading.tr()
                  : Strings.createAccount.tr(),
              textColor: ColorManager.backgroundSurface,
              color: isEnabled
                  ? ColorManager.stateSuccessEmphasis
                  : ColorManager.stateSuccessEmphasis.withValues(alpha: 0.5),
              width: double.infinity,
              radius: AppSize.s12.r,
              onTap: isEnabled
                  ? () => context.read<RegisterBloc>().add(
                      const RegisterSubmitted(),
                    )
                  : null,
            );
          },
        ),
      ],
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          Strings.alreadyHaveAccount.tr(),
          style: getRegularTextStyle(
            color: ColorManager.textSecondary,
            fontSize: FontSizeManager.s14.sp,
          ),
        ),
        TextButtonWidget(
          Strings.signIn.tr(),
          ColorManager.stateSuccessEmphasis,
          FontSizeManager.s14,
          () => context.push(LoginScreen.loginRoute),
        ),
      ],
    );
  }
}
