import 'package:basic_diet/app/dependency_injection.dart';
import 'package:basic_diet/domain/model/subscription_pickup_request_model.dart';
import 'package:basic_diet/presentation/plans/pickup_status/pickup_status_cubit.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

/// Full-screen pickup-request status UI.
///
/// Shows:
///  - Status badge (colour-coded)
///  - Animated step indicator (3 steps: sent → preparing → ready)
///  - Status icon + title + subtitle per state
///  - Info chips: meals count, branch name, order time
///  - Pickup-code card (only when ready / fulfilled)
///  - Inline error banner
class PickupRequestStatusScreen extends StatelessWidget {
  final String subscriptionId;
  final String requestId;
  final SubscriptionPickupRequestModel? initialRequest;

  // Optional branch name & order creation-time forwarded from the calling screen
  final String? branchName;
  final String? orderedAt;

  static const String routeName = '/pickup-request-status';

  const PickupRequestStatusScreen({
    super.key,
    required this.subscriptionId,
    required this.requestId,
    this.initialRequest,
    this.branchName,
    this.orderedAt,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        initPickupStatusModule();
        return instance<PickupStatusCubit>()
          ..startRequestPolling(
            subscriptionId: subscriptionId,
            requestId: requestId,
          );
      },
      child: Scaffold(
        backgroundColor: ColorManager.backgroundApp,
        appBar: _buildAppBar(),
        body: SafeArea(
          child: BlocBuilder<PickupStatusCubit, PickupStatusState>(
            builder: (context, state) {
              final request = state is PickupRequestStatusLoaded
                  ? state.data
                  : initialRequest;
              final error =
                  state is PickupRequestStatusError ? state.message : null;

              if (request == null) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: ColorManager.brandPrimary,
                  ),
                );
              }

              return _PickupRequestBody(
                request: request,
                error: error,
                branchName: branchName,
                orderedAt: orderedAt,
              );
            },
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() => AppBar(
        backgroundColor: ColorManager.backgroundSurface,
        elevation: 0,
        foregroundColor: ColorManager.textPrimary,
        title: Text(
          Strings.pickupRequestTitle.tr(),
          style: getBoldTextStyle(
            color: ColorManager.textPrimary,
            fontSize: FontSizeManager.s18.sp,
          ),
        ),
        centerTitle: true,
      );
}

// ---------------------------------------------------------------------------
// Body
// ---------------------------------------------------------------------------

class _PickupRequestBody extends StatelessWidget {
  final SubscriptionPickupRequestModel request;
  final String? error;
  final String? branchName;
  final String? orderedAt;

  const _PickupRequestBody({
    required this.request,
    this.error,
    this.branchName,
    this.orderedAt,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        horizontal: AppPadding.p16.w,
        vertical: AppPadding.p20.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Status badge row ──────────────────────────────────────────
          _StatusBadge(status: request.status),
          Gap(AppSize.s16.h),

          // ── Card ─────────────────────────────────────────────────────
          _CardContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title row: icon + text
                _StatusHeader(request: request),
                Gap(AppSize.s20.h),

                // Step indicator
                _StepsBar(status: request.status),
                Gap(AppSize.s20.h),

                // Info chips
                _InfoRow(
                  icon: Icons.dinner_dining_rounded,
                  label:
                      '${Strings.pickupRequestMeals.tr()}: ${request.mealCount ?? 0}',
                ),
                if ((branchName ?? '').isNotEmpty) ...[
                  Gap(AppSize.s8.h),
                  _InfoRow(
                    icon: Icons.location_on_outlined,
                    label: '${Strings.branch.tr()}: $branchName',
                  ),
                ],
                if ((orderedAt ?? '').isNotEmpty) ...[
                  Gap(AppSize.s8.h),
                  _InfoRow(
                    icon: Icons.access_time_rounded,
                    label: '${Strings.pickupRequestCreatedAt.tr()}: $orderedAt',
                  ),
                ],

                // Pickup code card
                if (request.canShowPickupCode) ...[
                  Gap(AppSize.s20.h),
                  _PickupCodeCard(code: request.pickupCode!),
                ],

                // Error banner
                if (error != null && error!.isNotEmpty) ...[
                  Gap(AppSize.s16.h),
                  _ErrorBanner(message: error!),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Status badge
// ---------------------------------------------------------------------------

class _StatusBadge extends StatelessWidget {
  final String status;
  const _StatusBadge({required this.status});

  @override
  Widget build(BuildContext context) {
    final cfg = _badgeConfig(status);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppPadding.p12.w,
        vertical: AppPadding.p6.h,
      ),
      decoration: BoxDecoration(
        color: cfg.background,
        borderRadius: BorderRadius.circular(AppSize.s20.r),
        border: Border.all(color: cfg.border),
      ),
      child: Text(
        cfg.label.tr(),
        style: getBoldTextStyle(
          color: cfg.foreground,
          fontSize: FontSizeManager.s12.sp,
        ),
      ),
    );
  }

  _BadgeCfg _badgeConfig(String status) {
    switch (status) {
      case 'locked':
        return _BadgeCfg(
          label: Strings.pickupRequestWaitingKitchen,
          foreground: ColorManager.bluePrimary,
          background: ColorManager.blueSurface,
          border: ColorManager.blueBorder,
        );
      case 'in_preparation':
        return _BadgeCfg(
          label: Strings.inPreparation,
          foreground: ColorManager.brandAccent,
          background: ColorManager.stateWarningSurface,
          border: ColorManager.stateWarningBorder,
        );
      case 'ready_for_pickup':
        return _BadgeCfg(
          label: Strings.readyForPickup,
          foreground: ColorManager.brandPrimaryPressed,
          background: ColorManager.brandPrimaryTint,
          border: ColorManager.brandPrimary,
        );
      case 'fulfilled':
        return _BadgeCfg(
          label: Strings.pickupRequestFulfilled,
          foreground: ColorManager.brandPrimaryPressed,
          background: ColorManager.brandPrimaryTint,
          border: ColorManager.brandPrimary,
        );
      case 'no_show':
        return _BadgeCfg(
          label: Strings.pickupRequestNoShow,
          foreground: ColorManager.stateError,
          background: ColorManager.stateErrorSurface,
          border: ColorManager.stateErrorBorder,
        );
      case 'canceled':
        return _BadgeCfg(
          label: Strings.pickupRequestCanceled,
          foreground: ColorManager.stateError,
          background: ColorManager.stateErrorSurface,
          border: ColorManager.stateErrorBorder,
        );
      default:
        return _BadgeCfg(
          label: Strings.fulfillmentUnknownStatus,
          foreground: ColorManager.textSecondary,
          background: ColorManager.backgroundSubtle,
          border: ColorManager.borderDefault,
        );
    }
  }
}

class _BadgeCfg {
  final String label;
  final Color foreground;
  final Color background;
  final Color border;
  const _BadgeCfg({
    required this.label,
    required this.foreground,
    required this.background,
    required this.border,
  });
}

// ---------------------------------------------------------------------------
// Card container
// ---------------------------------------------------------------------------

class _CardContainer extends StatelessWidget {
  final Widget child;
  const _CardContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppPadding.p18.w),
      decoration: BoxDecoration(
        color: ColorManager.backgroundSurface,
        borderRadius: BorderRadius.circular(AppSize.s18.r),
        border: Border.all(color: ColorManager.borderDefault),
        boxShadow: [
          BoxShadow(
            color: ColorManager.brandPrimaryGlow,
            blurRadius: AppSize.s12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: child,
    );
  }
}

// ---------------------------------------------------------------------------
// Status header: icon + title + subtitle
// ---------------------------------------------------------------------------

class _StatusHeader extends StatelessWidget {
  final SubscriptionPickupRequestModel request;
  const _StatusHeader({required this.request});

  @override
  Widget build(BuildContext context) {
    final cfg = _headerConfig(request.status);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cfg.title.tr(),
                style: getBoldTextStyle(
                  color: ColorManager.textPrimary,
                  fontSize: FontSizeManager.s20.sp,
                ),
              ),
              Gap(AppSize.s4.h),
              Text(
                cfg.subtitle.tr(),
                style: getRegularTextStyle(
                  color: ColorManager.textSecondary,
                  fontSize: FontSizeManager.s13.sp,
                ),
              ),
            ],
          ),
        ),
        Gap(AppSize.s12.w),
        _StatusIcon(status: request.status, iconData: cfg.icon, cfg: cfg),
      ],
    );
  }

  _HeaderCfg _headerConfig(String status) {
    switch (status) {
      case 'locked':
        return _HeaderCfg(
          title: Strings.pickupRequestWaitingKitchen,
          subtitle: Strings.pickupRequestLockedMessage,
          icon: Icons.access_time_rounded,
          iconColor: ColorManager.bluePrimary,
          iconBackground: ColorManager.blueSurface,
        );
      case 'in_preparation':
        return _HeaderCfg(
          title: Strings.pickupRequestKitchenPreparing,
          subtitle: Strings.pickupRequestPreparingMessage,
          icon: Icons.restaurant_rounded,
          iconColor: ColorManager.brandAccent,
          iconBackground: ColorManager.stateWarningSurface,
        );
      case 'ready_for_pickup':
        return _HeaderCfg(
          title: Strings.pickupRequestReady,
          subtitle: Strings.pickupRequestReadyMessage,
          icon: Icons.check_circle_outline_rounded,
          iconColor: ColorManager.brandPrimary,
          iconBackground: ColorManager.brandPrimaryTint,
        );
      case 'fulfilled':
        return _HeaderCfg(
          title: Strings.pickupRequestFulfilled,
          subtitle: Strings.pickupRequestFulfilledMessage,
          icon: Icons.check_circle_rounded,
          iconColor: ColorManager.brandPrimary,
          iconBackground: ColorManager.brandPrimaryTint,
        );
      case 'no_show':
        return _HeaderCfg(
          title: Strings.pickupRequestNoShow,
          subtitle: Strings.pickupRequestNoShowMessage,
          icon: Icons.error_outline_rounded,
          iconColor: ColorManager.stateError,
          iconBackground: ColorManager.stateErrorSurface,
        );
      case 'canceled':
        return _HeaderCfg(
          title: Strings.pickupRequestCanceled,
          subtitle: Strings.pickupRequestCanceledMessage,
          icon: Icons.cancel_outlined,
          iconColor: ColorManager.stateError,
          iconBackground: ColorManager.stateErrorSurface,
        );
      default:
        return _HeaderCfg(
          title: Strings.fulfillmentUnknownStatus,
          subtitle: '',
          icon: Icons.help_outline_rounded,
          iconColor: ColorManager.textSecondary,
          iconBackground: ColorManager.backgroundSubtle,
        );
    }
  }
}

class _HeaderCfg {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color iconColor;
  final Color iconBackground;
  const _HeaderCfg({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.iconColor,
    required this.iconBackground,
  });
}

class _StatusIcon extends StatelessWidget {
  final String status;
  final IconData iconData;
  final _HeaderCfg cfg;

  const _StatusIcon({
    required this.status,
    required this.iconData,
    required this.cfg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.s52.w,
      height: AppSize.s52.h,
      decoration: BoxDecoration(
        color: cfg.iconBackground,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Icon(iconData, color: cfg.iconColor, size: AppSize.s26.sp),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// 3-step progress bar
// ---------------------------------------------------------------------------

class _StepsBar extends StatelessWidget {
  final String status;
  const _StepsBar({required this.status});

  int get _activeStep {
    switch (status) {
      case 'locked':
        return 1;
      case 'in_preparation':
        return 2;
      case 'ready_for_pickup':
      case 'fulfilled':
        return 3;
      default:
        return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    const labels = [
      Strings.fulfillmentPickupStepSelections,
      Strings.fulfillmentPickupStepPreparing,
      Strings.fulfillmentPickupStepReady,
    ];

    final active = _activeStep;

    return Column(
      children: [
        Row(
          children: List.generate(3, (i) {
            final step = i + 1;
            final isDone = step < active;
            final isCurrent = step == active;
            final isLocked = step > active;

            return Expanded(
              child: Row(
                children: [
                  // Circle
                  Container(
                    width: AppSize.s28.w,
                    height: AppSize.s28.h,
                    decoration: BoxDecoration(
                      color: isDone
                          ? ColorManager.brandPrimary
                          : isCurrent
                              ? ColorManager.brandPrimary
                              : ColorManager.backgroundSubtle,
                      shape: BoxShape.circle,
                      border: isCurrent
                          ? Border.all(
                              color: ColorManager.brandPrimaryPressed,
                              width: AppSize.s2,
                            )
                          : null,
                    ),
                    child: Center(
                      child: isDone
                          ? Icon(
                              Icons.check_rounded,
                              color: ColorManager.textInverse,
                              size: AppSize.s14.sp,
                            )
                          : Text(
                              '$step',
                              style: getBoldTextStyle(
                                color: isLocked
                                    ? ColorManager.textMuted
                                    : ColorManager.textInverse,
                                fontSize: FontSizeManager.s12.sp,
                              ),
                            ),
                    ),
                  ),
                  // Connector line (not after last)
                  if (i < 2)
                    Expanded(
                      child: Container(
                        height: AppSize.s3.h,
                        margin: EdgeInsets.symmetric(horizontal: AppSize.s4.w),
                        decoration: BoxDecoration(
                          color: isDone
                              ? ColorManager.brandPrimary
                              : ColorManager.backgroundSubtle,
                          borderRadius:
                              BorderRadius.circular(AppSize.s100.r),
                        ),
                      ),
                    ),
                ],
              ),
            );
          }),
        ),
        Gap(AppSize.s8.h),
        // Step labels
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(3, (i) {
            final step = i + 1;
            final isActive = step <= active;
            return SizedBox(
              width: AppSize.s80.w,
              child: Text(
                labels[i].tr(),
                style: getRegularTextStyle(
                  color: isActive
                      ? ColorManager.brandPrimaryPressed
                      : ColorManager.textMuted,
                  fontSize: FontSizeManager.s11.sp,
                ),
                textAlign: i == 0
                    ? TextAlign.start
                    : i == 2
                        ? TextAlign.end
                        : TextAlign.center,
                maxLines: 2,
              ),
            );
          }),
        ),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// Info row chip
// ---------------------------------------------------------------------------

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String label;

  const _InfoRow({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: ColorManager.brandPrimary, size: AppSize.s16.sp),
        Gap(AppSize.s6.w),
        Flexible(
          child: Text(
            label,
            style: getRegularTextStyle(
              color: ColorManager.textSecondary,
              fontSize: FontSizeManager.s13.sp,
            ),
          ),
        ),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// Pickup code card
// ---------------------------------------------------------------------------

class _PickupCodeCard extends StatelessWidget {
  final String code;
  const _PickupCodeCard({required this.code});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppPadding.p16.w),
      decoration: BoxDecoration(
        color: ColorManager.brandPrimaryTint,
        borderRadius: BorderRadius.circular(AppSize.s14.r),
        border: Border.all(color: ColorManager.brandPrimary.withAlpha(60)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Strings.pickupCode.tr(),
                  style: getRegularTextStyle(
                    color: ColorManager.textSecondary,
                    fontSize: FontSizeManager.s12.sp,
                  ),
                ),
                Gap(AppSize.s4.h),
                Text(
                  code,
                  style: getBoldTextStyle(
                    color: ColorManager.brandPrimaryPressed,
                    fontSize: FontSizeManager.s32.sp,
                    letterSpacing: 4,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Clipboard.setData(ClipboardData(text: code));
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(Strings.pickupRequestCopied.tr()),
                  duration: const Duration(seconds: 2),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.all(AppPadding.p10.w),
              decoration: BoxDecoration(
                color: ColorManager.backgroundSurface,
                borderRadius: BorderRadius.circular(AppSize.s10.r),
                border: Border.all(color: ColorManager.borderDefault),
              ),
              child: Icon(
                Icons.copy_rounded,
                color: ColorManager.brandPrimary,
                size: AppSize.s20.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Error banner
// ---------------------------------------------------------------------------

class _ErrorBanner extends StatelessWidget {
  final String message;
  const _ErrorBanner({required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppPadding.p12.w),
      decoration: BoxDecoration(
        color: ColorManager.stateErrorSurface,
        borderRadius: BorderRadius.circular(AppSize.s12.r),
        border: Border.all(color: ColorManager.stateErrorBorder),
      ),
      child: Row(
        children: [
          Icon(
            Icons.error_outline_rounded,
            color: ColorManager.stateError,
            size: AppSize.s18.sp,
          ),
          Gap(AppSize.s8.w),
          Flexible(
            child: Text(
              message,
              style: getRegularTextStyle(
                color: ColorManager.stateError,
                fontSize: FontSizeManager.s13.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
