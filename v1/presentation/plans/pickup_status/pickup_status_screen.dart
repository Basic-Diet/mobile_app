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
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class PickupStatusScreen extends StatelessWidget {
  final String subscriptionId;
  final String requestId;
  final SubscriptionPickupRequestModel? initialRequest;

  const PickupStatusScreen({
    super.key,
    required this.subscriptionId,
    required this.requestId,
    this.initialRequest,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        initPickupStatusModule();
        return instance<PickupStatusCubit>()..startRequestPolling(
          subscriptionId: subscriptionId,
          requestId: requestId,
        );
      },
      child: Scaffold(
        backgroundColor: ColorManager.backgroundApp,
        appBar: AppBar(
          backgroundColor: ColorManager.backgroundSurface,
          elevation: 0,
          foregroundColor: ColorManager.textPrimary,
          title: Text(Strings.pickupRequestActiveTitle.tr()),
        ),
        body: SafeArea(
          child: BlocBuilder<PickupStatusCubit, PickupStatusState>(
            builder: (context, state) {
              final request =
                  state is PickupRequestStatusLoaded
                      ? state.data
                      : initialRequest;
              final error =
                  state is PickupRequestStatusError ? state.message : null;

              return SingleChildScrollView(
                padding: EdgeInsets.all(AppPadding.p16.w),
                child: _PickupRequestStatusContent(
                  request: request,
                  error: error,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _PickupRequestStatusContent extends StatelessWidget {
  final SubscriptionPickupRequestModel? request;
  final String? error;

  const _PickupRequestStatusContent({this.request, this.error});

  @override
  Widget build(BuildContext context) {
    if (request == null) {
      return Center(
        child: CircularProgressIndicator(color: ColorManager.brandPrimary),
      );
    }

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppPadding.p18.w),
      decoration: BoxDecoration(
        color: ColorManager.backgroundSurface,
        borderRadius: BorderRadius.circular(AppSize.s18.r),
        border: Border.all(color: ColorManager.borderDefault),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _statusText,
            style: getBoldTextStyle(
              color: ColorManager.textPrimary,
              fontSize: FontSizeManager.s20.sp,
            ),
          ),
          if (request!.message.isNotEmpty) ...[
            Gap(AppSize.s8.h),
            Text(
              request!.message,
              style: getRegularTextStyle(
                color: ColorManager.textSecondary,
                fontSize: FontSizeManager.s14.sp,
              ),
            ),
          ],
          if (error?.isNotEmpty == true) ...[
            Gap(AppSize.s12.h),
            Text(
              error!,
              style: getRegularTextStyle(
                color: ColorManager.stateError,
                fontSize: FontSizeManager.s13.sp,
              ),
            ),
          ],
          Gap(AppSize.s18.h),
          _StepIndicator(step: _currentStep),
          Gap(AppSize.s18.h),
          Text(
            '${Strings.pickupRequestMeals.tr()}: ${request!.mealCount ?? 0}',
            style: getRegularTextStyle(
              color: ColorManager.textSecondary,
              fontSize: FontSizeManager.s14.sp,
            ),
          ),
          if (request!.canShowPickupCode) ...[
            Gap(AppSize.s18.h),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(AppPadding.p16.w),
              decoration: BoxDecoration(
                color: ColorManager.brandPrimaryTint,
                borderRadius: BorderRadius.circular(AppSize.s14.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Strings.pickupCode.tr(),
                    style: getRegularTextStyle(
                      color: ColorManager.textSecondary,
                      fontSize: FontSizeManager.s13.sp,
                    ),
                  ),
                  Gap(AppSize.s4.h),
                  Text(
                    request!.pickupCode!,
                    style: getBoldTextStyle(
                      color: ColorManager.brandPrimaryPressed,
                      fontSize: FontSizeManager.s30.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  int get _currentStep =>
      request!.currentStep ??
      switch (request!.status) {
        'locked' => 2,
        'in_preparation' => 3,
        'ready_for_pickup' || 'fulfilled' => 4,
        _ => 1,
      };

  String get _statusText {
    return switch (request!.status) {
      'locked' => Strings.pickupRequestWaitingKitchen.tr(),
      'in_preparation' => Strings.pickupRequestKitchenPreparing.tr(),
      'ready_for_pickup' => Strings.pickupRequestReady.tr(),
      'fulfilled' => Strings.pickupRequestFulfilled.tr(),
      'no_show' => Strings.pickupRequestNoShow.tr(),
      'canceled' => Strings.pickupRequestCanceled.tr(),
      _ => Strings.fulfillmentUnknownStatus.tr(),
    };
  }
}

class _StepIndicator extends StatelessWidget {
  final int step;

  const _StepIndicator({required this.step});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(4, (index) {
        final current = index + 1;
        final isActive = current <= step;
        return Expanded(
          child: Container(
            height: AppSize.s6.h,
            margin: EdgeInsetsDirectional.only(
              end: current == 4 ? AppSize.s0 : AppSize.s6.w,
            ),
            decoration: BoxDecoration(
              color:
                  isActive
                      ? ColorManager.brandPrimary
                      : ColorManager.backgroundSubtle,
              borderRadius: BorderRadius.circular(AppSize.s100.r),
            ),
          ),
        );
      }),
    );
  }
}
