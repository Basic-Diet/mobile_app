import 'package:easy_localization/easy_localization.dart';
import 'package:basic_diet/app/constants.dart';
import 'package:basic_diet/app/functions.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ManageAccountScreen extends StatelessWidget {
  static const String manageAccountRoute = '/manage-account';

  const ManageAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backgroundApp,
      appBar: AppBar(
        backgroundColor: ColorManager.backgroundApp,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: ColorManager.textPrimary,
            size: AppSize.s20.r,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          Strings.manageAccount.tr(),
          style: getRegularTextStyle(
            color: ColorManager.textPrimary,
            fontSize: FontSizeManager.s16.sp,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsetsDirectional.fromSTEB(
            AppPadding.p16.w,
            AppPadding.p16.h,
            AppPadding.p16.w,
            AppPadding.p20.h,
          ),
          children: const [_AccountDeletionCard()],
        ),
      ),
    );
  }
}

class _AccountDeletionCard extends StatelessWidget {
  const _AccountDeletionCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsetsDirectional.fromSTEB(
        AppPadding.p18.w,
        AppPadding.p16.h,
        AppPadding.p18.w,
        AppPadding.p16.h,
      ),
      decoration: BoxDecoration(
        color: ColorManager.backgroundSurface,
        borderRadius: BorderRadius.circular(AppSize.s18.r),
        border: Border.all(color: ColorManager.borderDefault),
        boxShadow: [
          BoxShadow(
            color: ColorManager.textPrimary.withValues(alpha: 0.06),
            blurRadius: AppSize.s10.r,
            offset: Offset(0, AppSize.s2.h),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            Strings.deleteAccount.tr(),
            style: getRegularTextStyle(
              color: ColorManager.stateError,
              fontSize: FontSizeManager.s14.sp,
            ),
          ),
          Gap(AppSize.s8.h),
          Text(
            Strings.deleteAccountSubtitle.tr(),
            textAlign: TextAlign.end,
            style: getRegularTextStyle(
              color: ColorManager.textSecondary,
              fontSize: FontSizeManager.s12.sp,
            ),
          ),
          Gap(AppSize.s12.h),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () => _showDeleteAccountDialog(context),
              style: OutlinedButton.styleFrom(
                foregroundColor: ColorManager.stateError,
                side: const BorderSide(color: ColorManager.stateError),
                padding: EdgeInsets.symmetric(vertical: AppPadding.p12.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s12.r),
                ),
              ),
              child: Text(
                Strings.openDeletionPage.tr(),
                style: getRegularTextStyle(
                  color: ColorManager.stateError,
                  fontSize: FontSizeManager.s12.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> _showDeleteAccountDialog(BuildContext context) async {
  final shouldOpen = await showDialog<bool>(
    context: context,
    builder:
        (dialogContext) => AlertDialog(
          title: Text(Strings.deleteAccountWarningTitle.tr()),
          content: Text(Strings.deleteAccountWarningBody.tr()),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(false),
              child: Text(Strings.cancel.tr()),
            ),
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(true),
              child: Text(Strings.openDeletionPage.tr()),
            ),
          ],
        ),
  );

  if (shouldOpen != true || !context.mounted) {
    return;
  }

  try {
    await openUrl(Constants.accountDeletionUrl);
  } catch (_) {
    if (!context.mounted) {
      return;
    }

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(Strings.defaultError.tr())));
  }
}
