import 'dart:ui' as ui;

import 'package:easy_localization/easy_localization.dart';
import 'package:basic_diet/app/dependency_injection.dart';
import 'package:basic_diet/app/functions.dart';
import 'package:basic_diet/domain/model/client_profile_model.dart';
import 'package:basic_diet/presentation/login/login_screen.dart';
import 'package:basic_diet/presentation/main/bloc/main_bloc.dart';
import 'package:basic_diet/presentation/main/bloc/main_event.dart';
import 'package:basic_diet/presentation/main/main_screen.dart';
import 'package:basic_diet/presentation/main/profile/bloc/profile_bloc.dart';
import 'package:basic_diet/presentation/main/profile/bloc/profile_event.dart';
import 'package:basic_diet/presentation/main/profile/bloc/profile_state.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        return instance<ProfileBloc>()..add(const ProfileOverviewRequested());
      },
      child: const _ProfileView(),
    );
  }
}

class _ProfileView extends StatelessWidget {
  const _ProfileView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backgroundApp,
      body: BlocListener<ProfileBloc, ProfileState>(
        listenWhen:
            (previous, current) =>
                previous.isSignedOut != current.isSignedOut ||
                previous.errorMessage != current.errorMessage,
        listener: (context, state) {
          if (state.isSignedOut) {
            context.go(LoginScreen.loginRoute);
            return;
          }

          if (state.status == ProfileStatus.failure &&
              state.errorMessage.isNotEmpty) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Text(
                    state.errorMessage,
                    style: getRegularTextStyle(
                      color: ColorManager.textInverse,
                      fontSize: FontSizeManager.s12.sp,
                    ),
                  ),
                  backgroundColor: ColorManager.stateError,
                ),
              );
          }
        },
        child: SafeArea(
          child: BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              if (state.status == ProfileStatus.loading &&
                  state.profile == null) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: ColorManager.brandPrimary,
                  ),
                );
              }

              return RefreshIndicator(
                color: ColorManager.brandPrimary,
                onRefresh: () async {
                  context.read<ProfileBloc>().add(
                    const ProfileOverviewRequested(),
                  );
                },
                child: ListView(
                  physics: const AlwaysScrollableScrollPhysics(
                    parent: BouncingScrollPhysics(),
                  ),
                  padding: EdgeInsetsDirectional.fromSTEB(
                    AppPadding.p10.w,
                    AppPadding.p4.h,
                    AppPadding.p10.w,
                    AppPadding.p20.h,
                  ),
                  children: [
                    _UserCard(profile: state.profile),
                    Gap(AppSize.s12.h),
                    _SubscriptionCard(profile: state.profile),
                    Gap(AppSize.s12.h),
                    _ProfileMenuCard(profile: state.profile),
                    Gap(AppSize.s12.h),
                    _LogoutButton(
                      onTap: () {
                        context.read<ProfileBloc>().add(
                          const ProfileLogoutRequested(),
                        );
                      },
                    ),
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

class _UserCard extends StatelessWidget {
  final ClientProfileDataModel? profile;

  const _UserCard({required this.profile});

  @override
  Widget build(BuildContext context) {
    final user = profile?.user;
    final name =
        user?.displayName.trim().isNotEmpty == true
            ? user!.displayName.trim()
            : Strings.guestName.tr();
    final phone = user?.phone.trim() ?? '';
    final email = user?.email.trim() ?? '';
    final initial = name.characters.first.toUpperCase();

    return _ProfileCard(
      height: AppSize.s76.h,
      padding: EdgeInsetsDirectional.fromSTEB(
        AppPadding.p20.w,
        AppPadding.p12.h,
        AppPadding.p14.w,
        AppPadding.p12.h,
      ),
      child: Directionality(
        textDirection: ui.TextDirection.ltr,
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.end,
                    style: getRegularTextStyle(
                      color: ColorManager.textPrimary,
                      fontSize: FontSizeManager.s13.sp,
                    ),
                  ),
                  Gap(AppSize.s6.h),
                  Text(
                    phone,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.end,
                    style: getRegularTextStyle(
                      color: ColorManager.textSecondary,
                      fontSize: FontSizeManager.s11.sp,
                    ),
                  ),
                  if (email.isNotEmpty) ...[
                    Gap(AppSize.s4.h),
                    Text(
                      email,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.end,
                      style: getRegularTextStyle(
                        color: ColorManager.textSecondary,
                        fontSize: FontSizeManager.s11.sp,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            Gap(AppSize.s12.w),
            Container(
              width: AppSize.s44.w,
              height: AppSize.s44.w,
              decoration: const BoxDecoration(
                color: ColorManager.brandPrimaryTint,
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: Text(
                initial,
                style: getRegularTextStyle(
                  color: ColorManager.stateSuccessEmphasis,
                  fontSize: FontSizeManager.s16.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SubscriptionCard extends StatelessWidget {
  final ClientProfileDataModel? profile;

  const _SubscriptionCard({required this.profile});

  @override
  Widget build(BuildContext context) {
    final summary = profile?.subscriptionSummary;
    final remaining = summary?.remainingMeals ?? 0;
    final total = summary?.totalMeals ?? 0;
    final progress = total == 0 ? 0.0 : (remaining / total).clamp(0.0, 1.0);
    final statusLabel =
        summary?.statusLabelAr.trim().isNotEmpty == true
            ? summary!.statusLabelAr
            : (summary?.hasActiveSubscription == true
                ? Strings.active.tr()
                : Strings.unavailableNow.tr());
    final planName = summary?.planName.trim() ?? '';
    final hasPlanName = planName.isNotEmpty;

    return _ProfileCard(
      padding: EdgeInsetsDirectional.fromSTEB(
        AppPadding.p18.w,
        AppPadding.p16.h,
        AppPadding.p18.w,
        AppPadding.p12.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            Strings.currentSubscription.tr(),
            style: getRegularTextStyle(
              color: ColorManager.textPrimary,
              fontSize: FontSizeManager.s14.sp,
            ),
          ),
          if (hasPlanName) ...[
            Gap(AppSize.s6.h),
            Text(
              planName,
              textAlign: TextAlign.end,
              style: getRegularTextStyle(
                color: ColorManager.textSecondary,
                fontSize: FontSizeManager.s12.sp,
              ),
            ),
          ],
          Gap(AppSize.s12.h),
          Directionality(
            textDirection: ui.TextDirection.ltr,
            child: Row(
              children: [
                _StatusChip(label: statusLabel),
                const Spacer(),
                Text(
                  '$remaining ${Strings.meals.tr()}',
                  style: getRegularTextStyle(
                    color: ColorManager.textPrimary,
                    fontSize: FontSizeManager.s11.sp,
                  ),
                ),
              ],
            ),
          ),
          Gap(AppSize.s12.h),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Text(
              Strings.profileMealsRemaining.tr(args: ['$remaining', '$total']),
              style: getRegularTextStyle(
                color: ColorManager.textSecondary,
                fontSize: FontSizeManager.s11.sp,
              ),
            ),
          ),
          Gap(AppSize.s8.h),
          ClipRRect(
            borderRadius: BorderRadius.circular(AppSize.s8.r),
            child: LinearProgressIndicator(
              minHeight: AppSize.s6.h,
              value: progress,
              color: ColorManager.brandPrimary,
              backgroundColor: ColorManager.backgroundSubtle,
            ),
          ),
          Gap(AppSize.s12.h),
          InkWell(
            borderRadius: BorderRadius.circular(AppSize.s8.r),
            onTap: () {
              context.read<MainBloc>().add(
                const ChangeBottomNavIndexEvent(MainScreen.plansTabIndex),
              );
            },
            child: Container(
              height: AppSize.s40.h,
              padding: EdgeInsetsDirectional.symmetric(
                horizontal: AppPadding.p12.w,
              ),
              decoration: BoxDecoration(
                color: ColorManager.backgroundSubtle.withValues(alpha: 0.65),
                borderRadius: BorderRadius.circular(AppSize.s8.r),
              ),
              child: Directionality(
                textDirection: ui.TextDirection.ltr,
                child: Row(
                  children: [
                    Icon(
                      Icons.chevron_left_rounded,
                      color: ColorManager.textPrimary,
                      size: AppSize.s20.r,
                    ),
                    const Spacer(),
                    Text(
                      Strings.viewSubscription.tr(),
                      style: getRegularTextStyle(
                        color: ColorManager.textPrimary,
                        fontSize: FontSizeManager.s12.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfileMenuCard extends StatelessWidget {
  final ClientProfileDataModel? profile;

  const _ProfileMenuCard({required this.profile});

  @override
  Widget build(BuildContext context) {
    final menu = profile?.profileMenu;
    final languageValue =
        menu?.language.current.trim().isNotEmpty == true
            ? menu!.language.current
            : (context.locale.languageCode == 'ar'
                ? Strings.arabic.tr()
                : Strings.english.tr());
    final supportValue = _supportValue(menu?.support);
    final supportEnabled = menu?.support.hasContact ?? false;
    final legalEnabled = menu?.legal.hasLinks ?? false;

    return _ProfileCard(
      padding: EdgeInsetsDirectional.fromSTEB(
        AppPadding.p18.w,
        AppPadding.p16.h,
        AppPadding.p18.w,
        AppPadding.p10.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            Strings.menu.tr(),
            style: getRegularTextStyle(
              color: ColorManager.textPrimary,
              fontSize: FontSizeManager.s14.sp,
            ),
          ),
          Gap(AppSize.s12.h),
          _MenuRow(
            title: _labelOrFallback(menu?.orders.labelAr, Strings.myOrders.tr()),
            value: '${menu?.orders.count ?? 0}',
            icon: Icons.receipt_long_outlined,
            onTap: () {
              context.read<MainBloc>().add(const ChangeBottomNavIndexEvent(3));
            },
          ),
          _MenuRow(
            title: _labelOrFallback(
              menu?.addresses.labelAr,
              Strings.myAddresses.tr(),
            ),
            value: '${menu?.addresses.count ?? 0}',
            icon: Icons.location_on_outlined,
          ),
          _MenuRow(
            title: _labelOrFallback(menu?.language.labelAr, Strings.language.tr()),
            value: languageValue,
            icon: Icons.language_rounded,
            onTap: () => _showLanguageSelector(context),
          ),
          _MenuRow(
            title: _labelOrFallback(menu?.support.labelAr, Strings.support.tr()),
            value: supportValue,
            icon: Icons.headset_mic_outlined,
            enabled: supportEnabled,
          ),
          _MenuRow(
            title: _labelOrFallback(menu?.legal.labelAr, Strings.termsPrivacy.tr()),
            icon: Icons.description_outlined,
            enabled: legalEnabled,
            showDivider: false,
          ),
        ],
      ),
    );
  }
}

String _labelOrFallback(String? value, String fallback) {
  final label = value?.trim() ?? '';
  return label.isNotEmpty ? label : fallback;
}

String _supportValue(ClientProfileSupportItemModel? support) {
  if (support == null || !support.hasContact) {
    return Strings.unavailableNow.tr();
  }

  if (support.phone.trim().isNotEmpty) {
    return support.phone;
  }

  if (support.whatsapp.trim().isNotEmpty) {
    return support.whatsapp;
  }

  if (support.email.trim().isNotEmpty) {
    return support.email;
  }

  return Strings.unavailableNow.tr();
}

class _MenuRow extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final VoidCallback? onTap;
  final bool enabled;
  final bool showDivider;

  const _MenuRow({
    required this.title,
    this.value = '',
    required this.icon,
    this.onTap,
    this.enabled = true,
    this.showDivider = true,
  });

  @override
  Widget build(BuildContext context) {
    final contentColor =
        enabled ? ColorManager.textPrimary : ColorManager.textMuted;
    final valueColor =
        enabled ? ColorManager.textSecondary : ColorManager.textMuted;

    return InkWell(
      onTap: enabled ? onTap : null,
      child: Column(
        children: [
          SizedBox(
            height: AppSize.s38.h,
            child: Directionality(
              textDirection: ui.TextDirection.ltr,
              child: Row(
                children: [
                  Icon(
                    Icons.chevron_left_rounded,
                    color: valueColor,
                    size: AppSize.s18.r,
                  ),
                  if (value.isNotEmpty) ...[
                    Gap(AppSize.s10.w),
                    Text(
                      value,
                      style: getRegularTextStyle(
                        color: valueColor,
                        fontSize: FontSizeManager.s11.sp,
                      ),
                    ),
                  ],
                  const Spacer(),
                  Expanded(
                    child: Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.end,
                      style: getRegularTextStyle(
                        color: contentColor,
                        fontSize: FontSizeManager.s12.sp,
                      ),
                    ),
                  ),
                  Gap(AppSize.s10.w),
                  Icon(icon, color: valueColor, size: AppSize.s16.r),
                ],
              ),
            ),
          ),
          if (showDivider)
            Divider(
              color: ColorManager.borderSubtle,
              height: AppSize.s1.h,
              thickness: AppSize.s1.h,
            ),
        ],
      ),
    );
  }
}

class _StatusChip extends StatelessWidget {
  final String label;

  const _StatusChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: AppPadding.p12.w,
        vertical: AppPadding.p4.h,
      ),
      decoration: BoxDecoration(
        color: ColorManager.brandPrimaryTint,
        borderRadius: BorderRadius.circular(AppSize.s16.r),
      ),
      child: Text(
        label,
        style: getRegularTextStyle(
          color: ColorManager.stateSuccessEmphasis,
          fontSize: FontSizeManager.s10.sp,
        ),
      ),
    );
  }
}

class _LogoutButton extends StatelessWidget {
  final VoidCallback onTap;

  const _LogoutButton({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(AppSize.s12.r),
      onTap: onTap,
      child: Container(
        height: AppSize.s36.h,
        decoration: BoxDecoration(
          color: ColorManager.stateErrorSurface,
          borderRadius: BorderRadius.circular(AppSize.s12.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.logout_rounded,
              color: ColorManager.stateError,
              size: AppSize.s16.r,
            ),
            Gap(AppSize.s8.w),
            Text(
              Strings.logout.tr(),
              style: getRegularTextStyle(
                color: ColorManager.stateError,
                fontSize: FontSizeManager.s12.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  final double? height;

  const _ProfileCard({
    required this.child,
    this.padding = EdgeInsets.zero,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      padding: padding,
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
      child: child,
    );
  }
}

void _showLanguageSelector(BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    backgroundColor: ColorManager.backgroundSurface,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(AppSize.s18.r)),
    ),
    builder: (_) => const _LanguageSelectorSheet(),
  );
}

class _LanguageSelectorSheet extends StatelessWidget {
  const _LanguageSelectorSheet();

  @override
  Widget build(BuildContext context) {
    final isArabic = context.locale.languageCode == 'ar';

    return SafeArea(
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(
          AppPadding.p20.w,
          AppPadding.p16.h,
          AppPadding.p20.w,
          AppPadding.p12.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              Strings.chooseLanguage.tr(),
              style: getRegularTextStyle(
                color: ColorManager.textPrimary,
                fontSize: FontSizeManager.s16.sp,
              ),
            ),
            Gap(AppSize.s4.h),
            Text(
              Strings.selectYourLanguage.tr(),
              style: getRegularTextStyle(
                color: ColorManager.textSecondary,
                fontSize: FontSizeManager.s12.sp,
              ),
            ),
            Gap(AppSize.s16.h),
            _LanguageOptionTile(
              label: Strings.english.tr(),
              languageCode: 'en',
              isSelected: !isArabic,
            ),
            Gap(AppSize.s8.h),
            _LanguageOptionTile(
              label: Strings.arabic.tr(),
              languageCode: 'ar',
              isSelected: isArabic,
            ),
            Gap(AppSize.s8.h),
          ],
        ),
      ),
    );
  }
}

class _LanguageOptionTile extends StatelessWidget {
  final String label;
  final String languageCode;
  final bool isSelected;

  const _LanguageOptionTile({
    required this.label,
    required this.languageCode,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(AppSize.s12.r),
      onTap: () {
        Navigator.pop(context);
        if (!isSelected) {
          changeLanguageTo(context, languageCode);
        }
      },
      child: Container(
        height: AppSize.s48.h,
        padding: EdgeInsetsDirectional.symmetric(horizontal: AppPadding.p16.w),
        decoration: BoxDecoration(
          color:
              isSelected
                  ? ColorManager.brandPrimaryTint
                  : ColorManager.backgroundSubtle.withValues(alpha: 0.5),
          borderRadius: BorderRadius.circular(AppSize.s12.r),
          border:
              isSelected
                  ? Border.all(color: ColorManager.brandPrimary)
                  : Border.all(color: ColorManager.borderSubtle),
        ),
        child: Directionality(
          textDirection: ui.TextDirection.ltr,
          child: Row(
            children: [
              if (isSelected)
                Icon(
                  Icons.check_circle_rounded,
                  color: ColorManager.brandPrimary,
                  size: AppSize.s20.r,
                )
              else
                Icon(
                  Icons.circle_outlined,
                  color: ColorManager.borderSubtle,
                  size: AppSize.s20.r,
                ),
              const Spacer(),
              Text(
                label,
                style: getRegularTextStyle(
                  color:
                      isSelected
                          ? ColorManager.brandPrimary
                          : ColorManager.textPrimary,
                  fontSize: FontSizeManager.s13.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
