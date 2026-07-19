import 'package:basic_diet/app/dependency_injection.dart';
import 'package:basic_diet/presentation/complete_password_change/complete_password_change_bloc.dart';
import 'package:basic_diet/presentation/complete_password_change/complete_password_change_event.dart';
import 'package:basic_diet/presentation/complete_password_change/complete_password_change_state.dart';
import 'package:basic_diet/presentation/login/login_screen.dart';
import 'package:basic_diet/presentation/main/main_screen.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:basic_diet/presentation/widgets/button_widget.dart';
import 'package:basic_diet/presentation/widgets/custom_text_field_style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class PasswordChangeChallengeArgs {
  final String passwordChangeToken;
  final String phoneE164;
  final String? fullName;
  final int expiresIn;

  const PasswordChangeChallengeArgs({
    required this.passwordChangeToken,
    required this.phoneE164,
    this.fullName,
    this.expiresIn = 0,
  });
}

class CompletePasswordChangeScreen extends StatefulWidget {
  static const String routeName = '/complete-password-change';
  final PasswordChangeChallengeArgs args;

  const CompletePasswordChangeScreen({super.key, required this.args});

  @override
  State<CompletePasswordChangeScreen> createState() =>
      _CompletePasswordChangeScreenState();
}

class _CompletePasswordChangeScreenState
    extends State<CompletePasswordChangeScreen> {
  late final TextEditingController _newPasswordController;
  late final TextEditingController _confirmPasswordController;

  @override
  void initState() {
    super.initState();
    _newPasswordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    _clearPasswordControllers();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.viewInsetsOf(context).bottom;

    return BlocProvider(
      create:
          (_) => instance<CompletePasswordChangeBloc>(
            param1: widget.args.passwordChangeToken,
          ),
      child: PopScope(
        canPop: false,
        child: BlocListener<
          CompletePasswordChangeBloc,
          CompletePasswordChangeState
        >(
          listenWhen: (previous, current) => previous.status != current.status,
          listener: (context, state) {
            if (state.status == CompletePasswordChangeStatus.success) {
              _clearPasswordControllers();
              context.go(MainScreen.mainRoute);
              return;
            }

            if ((state.status == CompletePasswordChangeStatus.failure ||
                    state.status ==
                        CompletePasswordChangeStatus.challengeInvalid) &&
                state.errorMessage != null) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(SnackBar(content: Text(state.errorMessage!)));

              if (state.status ==
                  CompletePasswordChangeStatus.challengeInvalid) {
                _clearPasswordControllers();
                context.go(LoginScreen.loginRoute);
              }
            }
          },
          child: Scaffold(
            backgroundColor: ColorManager.backgroundSurface,
            body: SafeArea(
              child: SingleChildScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                padding: EdgeInsetsDirectional.symmetric(
                  horizontal: AppPadding.p24.w,
                ).copyWith(bottom: AppPadding.p20.h + bottomInset),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(AppSize.s80.h),
                    _buildHeader(),
                    Gap(AppSize.s40.h),
                    _buildForm(),
                  ],
                ),
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
          Strings.completePasswordChangeTitle.tr(),
          style: getBoldTextStyle(
            color: ColorManager.textPrimary,
            fontSize: FontSizeManager.s30.sp,
          ),
        ),
        Gap(AppSize.s12.h),
        Text(
          Strings.completePasswordChangeSubtitle.tr(),
          style: getRegularTextStyle(
            color: ColorManager.textSecondary,
            fontSize: FontSizeManager.s16.sp,
          ),
        ),
        if (widget.args.phoneE164.isNotEmpty) ...[
          Gap(AppSize.s16.h),
          Text(
            '${Strings.account.tr()}: ${widget.args.phoneE164}',
            style: getRegularTextStyle(
              color: ColorManager.textSecondary,
              fontSize: FontSizeManager.s14.sp,
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildForm() {
    return BlocBuilder<CompletePasswordChangeBloc, CompletePasswordChangeState>(
      builder: (context, state) {
        final isLoading = state.status == CompletePasswordChangeStatus.loading;
        final isEnabled =
            state.newPasswordError == null &&
            state.confirmPasswordError == null &&
            state.isNewPasswordNotEmpty &&
            state.isConfirmPasswordNotEmpty &&
            !isLoading;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildFieldLabel(Strings.newPassword.tr()),
            Gap(AppSize.s8.h),
            AppTextField.password(
              controller: _newPasswordController,
              errorText: state.newPasswordError,
              hintText: Strings.newPasswordHint.tr(),
              onChanged: (password) {
                context.read<CompletePasswordChangeBloc>().add(
                  CompletePasswordChangeNewChanged(
                    newPassword: password,
                    confirmPassword: _confirmPasswordController.text,
                  ),
                );
              },
            ),
            Gap(AppSize.s24.h),
            _buildFieldLabel(Strings.confirmPassword.tr()),
            Gap(AppSize.s8.h),
            AppTextField.password(
              controller: _confirmPasswordController,
              errorText: state.confirmPasswordError,
              hintText: Strings.confirmPasswordHint.tr(),
              onChanged: (password) {
                context.read<CompletePasswordChangeBloc>().add(
                  CompletePasswordChangeConfirmChanged(
                    newPassword: _newPasswordController.text,
                    confirmPassword: password,
                  ),
                );
              },
            ),
            Gap(AppSize.s32.h),
            ButtonWidget(
              text: Strings.completePasswordChangeButton.tr(),
              textColor: ColorManager.backgroundSurface,
              color:
                  isEnabled
                      ? ColorManager.stateSuccessEmphasis
                      : ColorManager.stateSuccessEmphasis.withValues(
                        alpha: 0.5,
                      ),
              width: double.infinity,
              radius: AppSize.s12.r,
              onTap:
                  isEnabled
                      ? () => context.read<CompletePasswordChangeBloc>().add(
                        CompletePasswordChangeSubmitted(
                          newPassword: _newPasswordController.text,
                          confirmPassword: _confirmPasswordController.text,
                        ),
                      )
                      : null,
              isLoading: isLoading,
            ),
          ],
        );
      },
    );
  }

  Widget _buildFieldLabel(String text) {
    return Text(
      text,
      style: getRegularTextStyle(
        color: ColorManager.textPrimary,
        fontSize: FontSizeManager.s16.sp,
      ),
    );
  }

  void _clearPasswordControllers() {
    _newPasswordController.clear();
    _confirmPasswordController.clear();
  }
}
