import 'package:basic_diet/app/dependency_injection.dart';
import 'package:basic_diet/presentation/change_password/change_password_bloc.dart';
import 'package:basic_diet/presentation/change_password/change_password_event.dart';
import 'package:basic_diet/presentation/change_password/change_password_state.dart';
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

class ChangePasswordScreen extends StatefulWidget {
  static const String routeName = '/change-password';
  final String? phone;

  const ChangePasswordScreen({super.key, this.phone});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  late final TextEditingController _currentPasswordController;
  late final TextEditingController _newPasswordController;
  late final TextEditingController _confirmPasswordController;

  @override
  void initState() {
    super.initState();
    _currentPasswordController = TextEditingController();
    _newPasswordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    _clearPasswordControllers();
    _currentPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.viewInsetsOf(context).bottom;

    return BlocProvider(
      create: (_) => instance<ChangePasswordBloc>(),
      child: PopScope(
        canPop: false,
        child: BlocListener<ChangePasswordBloc, ChangePasswordState>(
          listenWhen: (previous, current) => previous.status != current.status,
          listener: (context, state) {
            if (state.status == ChangePasswordStatus.success) {
              _clearPasswordControllers();
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(content: Text(Strings.passwordChangedSuccess.tr())),
                );
              context.go(MainScreen.mainRoute);
              return;
            }

            if (state.status == ChangePasswordStatus.failure &&
                state.errorMessage != null) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(SnackBar(content: Text(state.errorMessage!)));
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
          Strings.forcePasswordChangeTitle.tr(),
          style: getBoldTextStyle(
            color: ColorManager.textPrimary,
            fontSize: FontSizeManager.s30.sp,
          ),
        ),
        Gap(AppSize.s12.h),
        Text(
          Strings.forcePasswordChangeSubtitle.tr(),
          style: getRegularTextStyle(
            color: ColorManager.textSecondary,
            fontSize: FontSizeManager.s16.sp,
          ),
        ),
      ],
    );
  }

  Widget _buildForm() {
    return BlocBuilder<ChangePasswordBloc, ChangePasswordState>(
      builder: (context, state) {
        final isLoading = state.status == ChangePasswordStatus.loading;
        final isEnabled =
            state.currentPasswordError == null &&
            state.newPasswordError == null &&
            state.confirmPasswordError == null &&
            state.isCurrentPasswordNotEmpty &&
            state.isNewPasswordNotEmpty &&
            state.isConfirmPasswordNotEmpty;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildFieldLabel(Strings.currentPassword.tr()),
            Gap(AppSize.s8.h),
            AppTextField.password(
              controller: _currentPasswordController,
              errorText: state.currentPasswordError,
              hintText: Strings.currentPasswordHint.tr(),
              onChanged: (password) {
                context.read<ChangePasswordBloc>().add(
                  ChangePasswordCurrentChanged(password),
                );
              },
            ),
            Gap(AppSize.s24.h),
            _buildFieldLabel(Strings.newPassword.tr()),
            Gap(AppSize.s8.h),
            AppTextField.password(
              controller: _newPasswordController,
              errorText: state.newPasswordError,
              hintText: Strings.newPasswordHint.tr(),
              onChanged: (password) {
                context.read<ChangePasswordBloc>().add(
                  ChangePasswordNewChanged(
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
                context.read<ChangePasswordBloc>().add(
                  ChangePasswordConfirmChanged(
                    newPassword: _newPasswordController.text,
                    confirmPassword: password,
                  ),
                );
              },
            ),
            Gap(AppSize.s32.h),
            ButtonWidget(
              text: Strings.changePassword.tr(),
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
                      ? () => context.read<ChangePasswordBloc>().add(
                        ChangePasswordSubmitted(
                          currentPassword: _currentPasswordController.text,
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
    _currentPasswordController.clear();
    _newPasswordController.clear();
    _confirmPasswordController.clear();
  }
}
