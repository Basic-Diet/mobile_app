import 'package:basic_diet/app/dependency_injection.dart';
import 'package:basic_diet/domain/model/fulfillment_status_model.dart';
import 'package:basic_diet/presentation/plans/fulfillment_status/fulfillment_status_cubit.dart';
import 'package:basic_diet/presentation/plans/fulfillment_status/fulfillment_status_state.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

/// Status-only screen for **home delivery** subscription days.
///
/// Displays the current delivery status (confirmed → preparing → on the way →
/// delivered) together with address and window info.
/// Does **not** expose any action buttons — read-only tracking only.
class DeliveryStatusScreen extends StatelessWidget {
  final String subscriptionId;
  final String businessDate;

  static const String routeName = '/delivery-status';

  const DeliveryStatusScreen({
    super.key,
    required this.subscriptionId,
    required this.businessDate,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        initFulfillmentStatusModule();
        return instance<FulfillmentStatusCubit>()
          ..startPolling(subscriptionId, businessDate);
      },
      child: Scaffold(
        backgroundColor: ColorManager.backgroundApp,
        appBar: _buildAppBar(),
        body: SafeArea(
          child: BlocBuilder<FulfillmentStatusCubit, FulfillmentStatusState>(
            builder: (context, state) {
              switch (state.status) {
                case FulfillmentStatusStateStatus.initial:
                case FulfillmentStatusStateStatus.loading:
                  if (state.data == null) {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: ColorManager.brandPrimary,
                      ),
                    );
                  }
                  return _DeliveryBody(data: state.data!);

                case FulfillmentStatusStateStatus.failure:
                  if (state.data == null) {
                    return _ErrorView(message: state.error ?? '');
                  }
                  return _DeliveryBody(
                    data: state.data!,
                    errorBanner: state.error,
                  );

                case FulfillmentStatusStateStatus.success:
                  return _DeliveryBody(data: state.data!);
              }
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
          Strings.fulfillmentDeliveryTitle.tr(),
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

class _DeliveryBody extends StatelessWidget {
  final FulfillmentStatusModel data;
  final String? errorBanner;

  const _DeliveryBody({required this.data, this.errorBanner});

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
          // Badge
          _DeliveryStatusBadge(status: data.status),
          Gap(AppSize.s16.h),

          // Main card
          _CardContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Icon + title
                _DeliveryStatusHeader(status: data.status),
                Gap(AppSize.s20.h),

                // 4-step progress
                _DeliveryStepsBar(status: data.status),
                Gap(AppSize.s20.h),

                const _Divider(),
                Gap(AppSize.s16.h),

                // Delivery details
                if (data.deliveryAddress != null) ...[
                  _SectionLabel(
                      label: Strings.fulfillmentDeliveryAddressLabel.tr()),
                  Gap(AppSize.s6.h),
                  _InfoRow(
                    icon: Icons.home_outlined,
                    label: data.deliveryAddress!.summary.isNotEmpty
                        ? data.deliveryAddress!.summary
                        : Strings.fulfillmentAddressMissing.tr(),
                  ),
                  Gap(AppSize.s12.h),
                ],

                if (data.deliveryWindow != null &&
                    data.deliveryWindow!.label.isNotEmpty) ...[
                  _SectionLabel(
                      label: Strings.fulfillmentWindowLabel.tr()),
                  Gap(AppSize.s6.h),
                  _InfoRow(
                    icon: Icons.schedule_rounded,
                    label: data.deliveryWindow!.label,
                  ),
                  Gap(AppSize.s12.h),
                ],

                // Auto-updating note
                _AutoUpdateNote(isPolling: true),

                // Error banner
                if (errorBanner != null && errorBanner!.isNotEmpty) ...[
                  Gap(AppSize.s12.h),
                  _ErrorBanner(message: errorBanner!),
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
// Badge
// ---------------------------------------------------------------------------

class _DeliveryStatusBadge extends StatelessWidget {
  final String status;
  const _DeliveryStatusBadge({required this.status});

  @override
  Widget build(BuildContext context) {
    final cfg = _badgeCfg(status);
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

  _BadgeCfg _badgeCfg(String status) {
    switch (status) {
      case 'confirmed':
        return _BadgeCfg(
          label: Strings.confirmed,
          foreground: ColorManager.bluePrimary,
          background: ColorManager.blueSurface,
          border: ColorManager.blueBorder,
        );
      case 'preparing':
      case 'in_preparation':
        return _BadgeCfg(
          label: Strings.inPreparation,
          foreground: ColorManager.brandAccent,
          background: ColorManager.stateWarningSurface,
          border: ColorManager.stateWarningBorder,
        );
      case 'out_for_delivery':
        return _BadgeCfg(
          label: Strings.fulfillmentDeliveryStepOnTheWay,
          foreground: ColorManager.brandAccent,
          background: ColorManager.stateWarningSurface,
          border: ColorManager.stateWarningBorder,
        );
      case 'delivered':
      case 'fulfilled':
        return _BadgeCfg(
          label: Strings.delivered,
          foreground: ColorManager.brandPrimaryPressed,
          background: ColorManager.brandPrimaryTint,
          border: ColorManager.brandPrimary,
        );
      case 'delivery_canceled':
        return _BadgeCfg(
          label: Strings.deliveryCanceled,
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
// Card container (same design language as pickup screen)
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
// Delivery status header
// ---------------------------------------------------------------------------

class _DeliveryStatusHeader extends StatelessWidget {
  final String status;
  const _DeliveryStatusHeader({required this.status});

  @override
  Widget build(BuildContext context) {
    final cfg = _headerCfg(status);
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
        Container(
          width: AppSize.s52.w,
          height: AppSize.s52.h,
          decoration: BoxDecoration(
            color: cfg.iconBackground,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(cfg.icon, color: cfg.iconColor, size: AppSize.s26.sp),
          ),
        ),
      ],
    );
  }

  _HeaderCfg _headerCfg(String status) {
    switch (status) {
      case 'confirmed':
        return _HeaderCfg(
          title: Strings.confirmed,
          subtitle: Strings.confirmedTrackingDescription,
          icon: Icons.check_circle_outline_rounded,
          iconColor: ColorManager.bluePrimary,
          iconBackground: ColorManager.blueSurface,
        );
      case 'preparing':
      case 'in_preparation':
        return _HeaderCfg(
          title: Strings.inPreparation,
          subtitle: Strings.preparingTrackingDescription,
          icon: Icons.restaurant_rounded,
          iconColor: ColorManager.brandAccent,
          iconBackground: ColorManager.stateWarningSurface,
        );
      case 'out_for_delivery':
        return _HeaderCfg(
          title: Strings.fulfillmentDeliveryStepOnTheWay,
          subtitle: Strings.fulfillmentDeliveryOutForDeliveryAction,
          icon: Icons.delivery_dining_rounded,
          iconColor: ColorManager.brandAccent,
          iconBackground: ColorManager.stateWarningSurface,
        );
      case 'delivered':
      case 'fulfilled':
        return _HeaderCfg(
          title: Strings.delivered,
          subtitle: Strings.completedTrackingDescription,
          icon: Icons.check_circle_rounded,
          iconColor: ColorManager.brandPrimary,
          iconBackground: ColorManager.brandPrimaryTint,
        );
      case 'delivery_canceled':
        return _HeaderCfg(
          title: Strings.deliveryCanceled,
          subtitle: Strings.fulfillmentCanceledAction,
          icon: Icons.cancel_outlined,
          iconColor: ColorManager.stateError,
          iconBackground: ColorManager.stateErrorSurface,
        );
      default:
        return _HeaderCfg(
          title: Strings.fulfillmentDeliveryTitle,
          subtitle: Strings.fulfillmentUnknownStatus,
          icon: Icons.local_shipping_outlined,
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

// ---------------------------------------------------------------------------
// 4-step delivery progress bar
// ---------------------------------------------------------------------------

class _DeliveryStepsBar extends StatelessWidget {
  final String status;
  const _DeliveryStepsBar({required this.status});

  int get _activeStep {
    switch (status) {
      case 'confirmed':
        return 1;
      case 'preparing':
      case 'in_preparation':
        return 2;
      case 'out_for_delivery':
        return 3;
      case 'delivered':
      case 'fulfilled':
        return 4;
      default:
        return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    const stepLabels = [
      Strings.fulfillmentDeliveryStepConfirmed,
      Strings.fulfillmentDeliveryStepPreparing,
      Strings.fulfillmentDeliveryStepOnTheWay,
      Strings.fulfillmentDeliveryStepDelivered,
    ];

    final active = _activeStep;

    return Column(
      children: [
        Row(
          children: List.generate(4, (i) {
            final step = i + 1;
            final isDone = step < active;
            final isCurrent = step == active;
            final isLocked = step > active;

            return Expanded(
              child: Row(
                children: [
                  Container(
                    width: AppSize.s26.w,
                    height: AppSize.s26.h,
                    decoration: BoxDecoration(
                      color: isDone || isCurrent
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
                              size: AppSize.s13.sp,
                            )
                          : Text(
                              '$step',
                              style: getBoldTextStyle(
                                color: isLocked
                                    ? ColorManager.textMuted
                                    : ColorManager.textInverse,
                                fontSize: FontSizeManager.s11.sp,
                              ),
                            ),
                    ),
                  ),
                  if (i < 3)
                    Expanded(
                      child: Container(
                        height: AppSize.s3.h,
                        margin:
                            EdgeInsets.symmetric(horizontal: AppSize.s3.w),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(4, (i) {
            final step = i + 1;
            final isActive = step <= active;
            return SizedBox(
              width: AppSize.s60.w,
              child: Text(
                stepLabels[i].tr(),
                style: getRegularTextStyle(
                  color: isActive
                      ? ColorManager.brandPrimaryPressed
                      : ColorManager.textMuted,
                  fontSize: FontSizeManager.s10.sp,
                ),
                textAlign: i == 0
                    ? TextAlign.start
                    : i == 3
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
// Small helpers
// ---------------------------------------------------------------------------

class _Divider extends StatelessWidget {
  const _Divider();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s1.h,
      color: ColorManager.borderSubtle,
    );
  }
}

class _SectionLabel extends StatelessWidget {
  final String label;
  const _SectionLabel({required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: getBoldTextStyle(
        color: ColorManager.textPrimary,
        fontSize: FontSizeManager.s13.sp,
      ),
    );
  }
}

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

class _AutoUpdateNote extends StatelessWidget {
  final bool isPolling;
  const _AutoUpdateNote({required this.isPolling});

  @override
  Widget build(BuildContext context) {
    if (!isPolling) return const SizedBox.shrink();
    return Row(
      children: [
        const SizedBox(
          width: 12,
          height: 12,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            color: ColorManager.brandPrimary,
          ),
        ),
        Gap(AppSize.s8.w),
        Text(
          Strings.autoUpdatingStatus.tr(),
          style: getRegularTextStyle(
            color: ColorManager.textMuted,
            fontSize: FontSizeManager.s11.sp,
          ),
        ),
      ],
    );
  }
}

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

// ---------------------------------------------------------------------------
// Full error view (when no cached data is available)
// ---------------------------------------------------------------------------

class _ErrorView extends StatelessWidget {
  final String message;
  const _ErrorView({required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(AppPadding.p24.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.cloud_off_rounded,
              color: ColorManager.textMuted,
              size: AppSize.s60.sp,
            ),
            Gap(AppSize.s16.h),
            Text(
              message.isNotEmpty ? message : Strings.defaultError.tr(),
              style: getRegularTextStyle(
                color: ColorManager.textSecondary,
                fontSize: FontSizeManager.s14.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
