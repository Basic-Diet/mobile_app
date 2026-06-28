import 'package:basic_diet/domain/model/pickup_request_model.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class PickupRequestCard extends StatelessWidget {
  final PickupRequestModel request;
  final int index;

  const PickupRequestCard({
    super.key,
    required this.request,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final isArabic = context.locale.languageCode == 'ar';
    final mealNames =
        request.meals
            .map((meal) => isArabic ? meal.titleAr : meal.titleEn)
            .where((title) => title.isNotEmpty)
            .toList();

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppPadding.p16.w),
      decoration: BoxDecoration(
        color: ColorManager.backgroundSurface,
        borderRadius: BorderRadius.circular(AppSize.s16.r),
        border: Border.all(color: _borderColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  '${Strings.pickupRequest.tr()} #${index + 1}',
                  style: getBoldTextStyle(
                    color: ColorManager.textPrimary,
                    fontSize: FontSizeManager.s14.sp,
                  ),
                ),
              ),
              _StatusBadge(label: _statusLabel, color: _statusColor),
            ],
          ),
          Gap(AppSize.s10.h),
          _InfoLine(icon: Icons.calendar_today_rounded, text: request.date),
          Gap(AppSize.s8.h),
          _InfoLine(
            icon: Icons.restaurant_menu_rounded,
            text: '${Strings.mealCount.tr()}: ${request.mealCount}',
          ),
          if (mealNames.isNotEmpty) ...[
            Gap(AppSize.s8.h),
            ...mealNames.map(
              (mealName) => Padding(
                padding: EdgeInsets.only(bottom: AppPadding.p4.h),
                child: _InfoLine(
                  icon: Icons.check_circle_outline_rounded,
                  text: mealName,
                ),
              ),
            ),
          ],
          Gap(AppSize.s10.h),
          if (request.isReady && request.pickupCode.isNotEmpty)
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(AppPadding.p12.w),
              decoration: BoxDecoration(
                color: ColorManager.brandPrimaryTint,
                borderRadius: BorderRadius.circular(AppSize.s12.r),
                border: Border.all(color: ColorManager.brandPrimary),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Strings.pickupReady.tr(),
                    style: getBoldTextStyle(
                      color: ColorManager.stateSuccessEmphasis,
                      fontSize: FontSizeManager.s13.sp,
                    ),
                  ),
                  Gap(AppSize.s6.h),
                  Text(
                    '${Strings.pickupCode.tr()}: ${request.pickupCode}',
                    style: getBoldTextStyle(
                      color: ColorManager.textPrimary,
                      fontSize: FontSizeManager.s18.sp,
                    ),
                  ),
                ],
              ),
            )
          else if (request.isFulfilled)
            _Hint(text: Strings.pickupCompleted.tr())
          else
            _Hint(text: Strings.pickupCodeAppearsWhenReady.tr()),
        ],
      ),
    );
  }

  String get _statusLabel {
    if (request.statusLabel.isNotEmpty) return request.statusLabel;
    switch (request.status) {
      case 'locked':
        return Strings.pickupRequested.tr();
      case 'in_preparation':
        return Strings.pickupInPreparation.tr();
      case 'ready_for_pickup':
        return Strings.pickupReady.tr();
      case 'fulfilled':
        return Strings.pickupCompleted.tr();
      case 'no_show':
        return Strings.noShow.tr();
      case 'canceled':
      case 'canceled_at_branch':
        return Strings.canceledAtBranch.tr();
      default:
        return request.status;
    }
  }

  Color get _statusColor {
    switch (request.status) {
      case 'ready_for_pickup':
      case 'fulfilled':
        return ColorManager.stateSuccessEmphasis;
      case 'in_preparation':
      case 'locked':
        return ColorManager.blueEmphasis;
      case 'no_show':
      case 'canceled':
      case 'canceled_at_branch':
        return ColorManager.stateError;
      default:
        return ColorManager.textSecondary;
    }
  }

  Color get _borderColor {
    if (request.isReady || request.isFulfilled) {
      return ColorManager.brandPrimary;
    }
    return ColorManager.borderDefault;
  }
}

class _InfoLine extends StatelessWidget {
  final IconData icon;
  final String text;

  const _InfoLine({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: AppSize.s16.sp, color: ColorManager.iconSecondary),
        Gap(AppSize.s8.w),
        Expanded(
          child: Text(
            text,
            style: getRegularTextStyle(
              color: ColorManager.textSecondary,
              fontSize: FontSizeManager.s12.sp,
            ),
          ),
        ),
      ],
    );
  }
}

class _StatusBadge extends StatelessWidget {
  final String label;
  final Color color;

  const _StatusBadge({required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppPadding.p10.w,
        vertical: AppPadding.p6.h,
      ),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(AppSize.s12.r),
      ),
      child: Text(
        label,
        style: getBoldTextStyle(color: color, fontSize: FontSizeManager.s10.sp),
      ),
    );
  }
}

class _Hint extends StatelessWidget {
  final String text;

  const _Hint({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: getRegularTextStyle(
        color: ColorManager.textSecondary,
        fontSize: FontSizeManager.s12.sp,
      ),
    );
  }
}
