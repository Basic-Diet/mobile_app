import 'dart:async';

import 'package:basic_diet/app/dependency_injection.dart';
import 'package:basic_diet/domain/model/order_model.dart';
import 'package:basic_diet/presentation/main/cart/bloc/order_tracking_bloc.dart';
import 'package:basic_diet/presentation/main/cart/bloc/order_tracking_event.dart';
import 'package:basic_diet/presentation/main/cart/bloc/order_tracking_state.dart';
import 'package:basic_diet/presentation/main/main_screen.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OrderTrackingScreen extends StatelessWidget {
  static const String routeName = '/order-tracking';
  final String orderId;

  const OrderTrackingScreen({super.key, required this.orderId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        initOrderTrackingModule();
        final bloc = instance<OrderTrackingBloc>();
        bloc.add(LoadOrderDetailEvent(orderId));
        return bloc;
      },
      child: _OrderTrackingContent(orderId: orderId),
    );
  }
}

class _OrderTrackingContent extends StatefulWidget {
  final String orderId;

  const _OrderTrackingContent({required this.orderId});

  @override
  State<_OrderTrackingContent> createState() => _OrderTrackingContentState();
}

class _OrderTrackingContentState extends State<_OrderTrackingContent> {
  Timer? _pollingTimer;

  @override
  void initState() {
    super.initState();
    _startPolling();
  }

  @override
  void dispose() {
    _pollingTimer?.cancel();
    super.dispose();
  }

  void _startPolling() {
    _pollingTimer?.cancel();
    _pollingTimer = Timer.periodic(const Duration(seconds: 10), (_) {
      if (!mounted) {
        return;
      }

      final state = context.read<OrderTrackingBloc>().state;
      final order = _OrderTrackingViewData.fromState(state)?.order;

      if (order == null || _isTerminalStatus(order.status)) {
        _pollingTimer?.cancel();
        return;
      }

      context.read<OrderTrackingBloc>().add(
        RefreshOrderDetailEvent(widget.orderId),
      );
    });
  }

  bool _isTerminalStatus(String status) {
    return status == 'fulfilled' ||
        status == 'cancelled' ||
        status == 'expired';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backgroundApp,
      body: SafeArea(
        child: BlocConsumer<OrderTrackingBloc, OrderTrackingState>(
          listener: (context, state) {
            if (state is OrderTrackingVerifyFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.message)),
              );
            }
          },
          builder: (context, state) {
            if (state is OrderTrackingLoading || state is OrderTrackingInitial) {
              return const Center(
                child: CircularProgressIndicator(
                  color: ColorManager.brandPrimary,
                ),
              );
            }

            if (state is OrderTrackingError) {
              return _TrackingErrorView(
                message: state.message,
                orderId: widget.orderId,
              );
            }

            final viewData = _OrderTrackingViewData.fromState(state);
            if (viewData == null) {
              return const SizedBox.shrink();
            }

            return _OrderTrackingView(data: viewData);
          },
        ),
      ),
      bottomNavigationBar: BlocBuilder<OrderTrackingBloc, OrderTrackingState>(
        builder: (context, state) {
          final viewData = _OrderTrackingViewData.fromState(state);
          if (viewData == null) {
            return const SizedBox.shrink();
          }

          return const _StickyActions();
        },
      ),
    );
  }
}

class _OrderTrackingViewData {
  final OrderModel order;
  final String? inlineMessage;
  final bool showProcessingNotice;

  const _OrderTrackingViewData({
    required this.order,
    this.inlineMessage,
    this.showProcessingNotice = false,
  });

  static _OrderTrackingViewData? fromState(OrderTrackingState state) {
    if (state is OrderTrackingSuccess) {
      return _OrderTrackingViewData(order: state.order);
    }
    if (state is OrderTrackingVerifying) {
      return _OrderTrackingViewData(
        order: state.order,
        inlineMessage: Strings.paymentProcessing.tr(),
        showProcessingNotice: true,
      );
    }
    if (state is OrderTrackingVerifyProcessing) {
      return _OrderTrackingViewData(
        order: state.order,
        inlineMessage: Strings.paymentProcessing.tr(),
        showProcessingNotice: true,
      );
    }
    if (state is OrderTrackingVerifyFailure) {
      return _OrderTrackingViewData(order: state.order);
    }

    return null;
  }
}

class _OrderTrackingView extends StatelessWidget {
  final _OrderTrackingViewData data;

  const _OrderTrackingView({required this.data});

  @override
  Widget build(BuildContext context) {
    final order = data.order;
    final steps = _TrackingStepData.buildSteps(order, context);

    return SingleChildScrollView(
      padding: EdgeInsetsDirectional.fromSTEB(
        AppPadding.p18.w,
        AppPadding.p12.h,
        AppPadding.p18.w,
        AppPadding.p24.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _TrackingHeader(orderNumber: order.orderNumber),
          SizedBox(height: AppSize.s16.h),
          if (_shouldShowPickupCodeCard(order)) ...[
            _PickupCodeCard(order: order),
            SizedBox(height: AppSize.s12.h),
          ],
          if (data.showProcessingNotice && data.inlineMessage != null) ...[
            _MutedNote(message: data.inlineMessage!),
            SizedBox(height: AppSize.s12.h),
          ],
          _TrackingCard(
            title: Strings.orderStatusTitle.tr(),
            child: Column(
              children: [
                for (var i = 0; i < steps.length; i++)
                  _StatusStepTile(
                    step: steps[i],
                    stepNumber: i + 1,
                    isLast: i == steps.length - 1,
                  ),
              ],
            ),
          ),
          SizedBox(height: AppSize.s12.h),
          _MutedNote(message: Strings.pickupOnlyTrackingNote.tr()),
        ],
      ),
    );
  }

  bool _shouldShowPickupCodeCard(OrderModel order) {
    return order.fulfillmentMethod == 'pickup' || order.pickup != null;
  }
}

class _TrackingHeader extends StatelessWidget {
  final String orderNumber;

  const _TrackingHeader({required this.orderNumber});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _SquareIconButton(
          icon: Icons.arrow_back_ios_new_rounded,
          onTap: () => context.pop(),
        ),
        SizedBox(width: AppSize.s12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Strings.orderTracking.tr(),
                style: getBoldTextStyle(
                  color: ColorManager.textPrimary,
                  fontSize: FontSizeManager.s22.sp,
                ),
              ),
              SizedBox(height: AppSize.s3.h),
              Text(
                orderNumber,
                style: getRegularTextStyle(
                  color: ColorManager.textSecondary,
                  fontSize: FontSizeManager.s12.sp,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _PickupCodeCard extends StatelessWidget {
  final OrderModel order;

  const _PickupCodeCard({required this.order});

  @override
  Widget build(BuildContext context) {
    final pickupCode = _resolvePickupCode(order);

    return Container(
      padding: EdgeInsetsDirectional.fromSTEB(
        AppPadding.p16.w,
        AppPadding.p14.h,
        AppPadding.p16.w,
        AppPadding.p14.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.s20.r),
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFFFFFFFF),
            Color(0xFFF1F8F4),
          ],
        ),
        border: Border.all(
          color: ColorManager.borderDefault,
        ),
        boxShadow: [
          BoxShadow(
            color: ColorManager.textPrimary.withValues(alpha: 0.06),
            blurRadius: AppSize.s18.r,
            offset: Offset(0, AppSize.s6.h),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Strings.pickupCodeCardLabel.tr(),
            style: getBoldTextStyle(
              color: ColorManager.stateSuccessEmphasis,
              fontSize: FontSizeManager.s12.sp,
            ),
          ),
          SizedBox(height: AppSize.s8.h),
          Text(
            pickupCode,
            style: getBoldTextStyle(
              color: ColorManager.textPrimary,
              fontSize: FontSizeManager.s30.sp,
              letterSpacing: 1.8,
            ),
          ),
          SizedBox(height: AppSize.s8.h),
          Text(
            Strings.pickupCodeTrackingHint.tr(),
            style: getRegularTextStyle(
              color: ColorManager.textSecondary,
              fontSize: FontSizeManager.s12.sp,
            ),
          ),
        ],
      ),
    );
  }

  String _resolvePickupCode(OrderModel order) {
    final rawCode = order.pickup?.pickupCode?.trim() ?? '';
    if (rawCode.isNotEmpty) {
      return rawCode;
    }

    return '------';
  }
}

class _TrackingCard extends StatelessWidget {
  final String title;
  final Widget child;

  const _TrackingCard({
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.all(AppPadding.p16.r),
      decoration: BoxDecoration(
        color: ColorManager.backgroundSurface,
        borderRadius: BorderRadius.circular(AppSize.s20.r),
        border: Border.all(color: ColorManager.borderDefault),
        boxShadow: [
          BoxShadow(
            color: ColorManager.textPrimary.withValues(alpha: 0.05),
            blurRadius: AppSize.s16.r,
            offset: Offset(0, AppSize.s6.h),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: getBoldTextStyle(
              color: ColorManager.textPrimary,
              fontSize: FontSizeManager.s16.sp,
            ),
          ),
          SizedBox(height: AppSize.s12.h),
          child,
        ],
      ),
    );
  }
}

class _TrackingStepData {
  final String title;
  final String description;
  final _TrackingStepVisualState visualState;

  const _TrackingStepData({
    required this.title,
    required this.description,
    required this.visualState,
  });

  static List<_TrackingStepData> buildSteps(
    OrderModel order,
    BuildContext context,
  ) {
    final status = order.status;
    final currentIndex = _statusIndex(status);
    final branchName = _branchDisplay(context, order);
    final pickupWindow = order.pickup?.pickupWindow.trim() ?? '';
    final readyDescription = pickupWindow.isEmpty
        ? Strings.readyForPickupTrackingDescription.tr(
            namedArgs: {'branch': branchName},
          )
        : Strings.readyForPickupTrackingDescriptionWithWindow.tr(
            namedArgs: {
              'branch': branchName,
              'window': pickupWindow,
            },
          );

    final steps = <_TrackingStepData>[
      _TrackingStepData(
        title: Strings.confirmed.tr(),
        description: Strings.confirmedTrackingDescription.tr(),
        visualState: _visualStateForStepIndex(currentIndex, 0, status),
      ),
      _TrackingStepData(
        title: Strings.beingPrepared.tr(),
        description: Strings.preparingTrackingDescription.tr(),
        visualState: _visualStateForStepIndex(currentIndex, 1, status),
      ),
      _TrackingStepData(
        title: Strings.readyForPickup.tr(),
        description: readyDescription,
        visualState: _visualStateForStepIndex(currentIndex, 2, status),
      ),
      _TrackingStepData(
        title: Strings.completed.tr(),
        description: Strings.completedTrackingDescription.tr(),
        visualState: _visualStateForStepIndex(currentIndex, 3, status),
      ),
    ];

    if (status == 'pending_payment') {
      return [
        _TrackingStepData(
          title: Strings.pendingPayment.tr(),
          description: Strings.pendingPaymentTrackingDescription.tr(),
          visualState: _TrackingStepVisualState.current,
        ),
        ...steps.map(
          (step) => _TrackingStepData(
            title: step.title,
            description: step.description,
            visualState: _TrackingStepVisualState.upcoming,
          ),
        ),
      ];
    }

    if (status == 'cancelled' || status == 'expired') {
      return [
        _TrackingStepData(
          title: status == 'cancelled'
              ? Strings.cancelled.tr()
              : Strings.expired.tr(),
          description: status == 'cancelled'
              ? Strings.cancelledTrackingDescription.tr()
              : Strings.expiredTrackingDescription.tr(),
          visualState: _TrackingStepVisualState.current,
        ),
        ...steps.map(
          (step) => _TrackingStepData(
            title: step.title,
            description: step.description,
            visualState: _TrackingStepVisualState.upcoming,
          ),
        ),
      ];
    }

    return steps;
  }

  static String _branchDisplay(BuildContext context, OrderModel order) {
    final branchId = order.pickup?.branchId.trim();
    if (branchId == null || branchId.isEmpty) {
      return Strings.pickupFromBranch.tr();
    }

    return '${Strings.branch.tr()} $branchId';
  }

  static int _statusIndex(String status) {
    switch (status) {
      case 'confirmed':
        return 0;
      case 'in_preparation':
        return 1;
      case 'ready_for_pickup':
        return 2;
      case 'fulfilled':
        return 3;
      default:
        return -1;
    }
  }

  static _TrackingStepVisualState _visualStateForStepIndex(
    int currentIndex,
    int stepIndex,
    String status,
  ) {
    if (status == 'fulfilled') {
      return _TrackingStepVisualState.done;
    }
    if (currentIndex > stepIndex) {
      return _TrackingStepVisualState.done;
    }
    if (currentIndex == stepIndex) {
      return _TrackingStepVisualState.current;
    }

    return _TrackingStepVisualState.upcoming;
  }
}

enum _TrackingStepVisualState { done, current, upcoming }

class _StatusStepTile extends StatelessWidget {
  final _TrackingStepData step;
  final int stepNumber;
  final bool isLast;

  const _StatusStepTile({
    required this.step,
    required this.stepNumber,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    final isDone = step.visualState == _TrackingStepVisualState.done;
    final isCurrent = step.visualState == _TrackingStepVisualState.current;
    final dotColor = isDone || isCurrent
        ? ColorManager.brandPrimary
        : ColorManager.backgroundSubtle;
    final textColor = isCurrent
        ? ColorManager.stateSuccessEmphasis
        : ColorManager.textPrimary;
    final lineColor = isDone
        ? ColorManager.brandPrimary
        : ColorManager.borderDefault;

    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: AppSize.s30.w,
                height: AppSize.s30.h,
                decoration: BoxDecoration(
                  color: dotColor,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: isDone
                    ? Icon(
                        Icons.check_rounded,
                        size: AppSize.s18.r,
                        color: ColorManager.textInverse,
                      )
                    : Text(
                        '$stepNumber',
                        style: getBoldTextStyle(
                          color: isCurrent
                              ? ColorManager.textInverse
                              : ColorManager.textSecondary,
                          fontSize: FontSizeManager.s13.sp,
                        ),
                      ),
              ),
              if (!isLast)
                Expanded(
                  child: Container(
                    width: AppSize.s2.w,
                    margin: EdgeInsets.symmetric(vertical: AppMargin.m4.h),
                    color: lineColor,
                  ),
                ),
            ],
          ),
          SizedBox(width: AppSize.s12.w),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: AppPadding.p2.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    step.title,
                    style: getBoldTextStyle(
                      color: textColor,
                      fontSize: FontSizeManager.s16.sp,
                    ),
                  ),
                  SizedBox(height: AppSize.s4.h),
                  Text(
                    step.description,
                    style: getRegularTextStyle(
                      color: ColorManager.textSecondary,
                      fontSize: FontSizeManager.s12.sp,
                    ),
                  ),
                  if (!isLast) SizedBox(height: AppSize.s16.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MutedNote extends StatelessWidget {
  final String message;

  const _MutedNote({required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.fromSTEB(
        AppPadding.p14.w,
        AppPadding.p11.h,
        AppPadding.p14.w,
        AppPadding.p11.h,
      ),
      decoration: BoxDecoration(
        color: ColorManager.backgroundSurface.withValues(alpha: 0.8),
        borderRadius: BorderRadius.circular(AppSize.s14.r),
        border: Border.all(
          color: ColorManager.borderDefault.withValues(alpha: 0.9),
        ),
      ),
      child: Text(
        message,
        style: getBoldTextStyle(
          color: ColorManager.textSecondary,
          fontSize: FontSizeManager.s11_5.sp,
        ),
      ),
    );
  }
}

class _StickyActions extends StatelessWidget {
  const _StickyActions();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        padding: EdgeInsetsDirectional.fromSTEB(
          AppPadding.p14.w,
          AppPadding.p8.h,
          AppPadding.p14.w,
          AppPadding.p12.h,
        ),
        decoration: BoxDecoration(
          color: ColorManager.backgroundSurface.withValues(alpha: 0.95),
          border: Border(
            top: BorderSide(
              color: ColorManager.borderDefault,
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: ColorManager.textPrimary.withValues(alpha: 0.08),
              blurRadius: AppSize.s18.r,
              offset: const Offset(0, -4),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: SizedBox(
                height: AppSize.s48.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorManager.brandPrimary,
                    foregroundColor: ColorManager.textInverse,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSize.s18.r),
                    ),
                  ),
                  onPressed: () {
                    context.go(MainScreen.mainRoute, extra: 3);
                  },
                  child: Text(
                    Strings.orders.tr(),
                    style: getBoldTextStyle(
                      color: ColorManager.textInverse,
                      fontSize: FontSizeManager.s14.sp,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: AppSize.s10.w),
            Expanded(
              child: SizedBox(
                height: AppSize.s48.h,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: ColorManager.backgroundSurface,
                    foregroundColor: ColorManager.stateSuccessEmphasis,
                    side: const BorderSide(color: ColorManager.borderDefault),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSize.s18.r),
                    ),
                  ),
                  onPressed: () {
                    context.go(
                      MainScreen.mainRoute,
                      extra: MainScreen.homeTabIndex,
                    );
                  },
                  child: Text(
                    Strings.home.tr(),
                    style: getBoldTextStyle(
                      color: ColorManager.stateSuccessEmphasis,
                      fontSize: FontSizeManager.s14.sp,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TrackingErrorView extends StatelessWidget {
  final String message;
  final String orderId;

  const _TrackingErrorView({
    required this.message,
    required this.orderId,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.all(AppPadding.p24.r),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            message,
            textAlign: TextAlign.center,
            style: getRegularTextStyle(
              color: ColorManager.textPrimary,
              fontSize: FontSizeManager.s14.sp,
            ),
          ),
          SizedBox(height: AppSize.s16.h),
          SizedBox(
            height: AppSize.s48.h,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorManager.brandPrimary,
                foregroundColor: ColorManager.textInverse,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s18.r),
                ),
              ),
              onPressed: () {
                context.read<OrderTrackingBloc>().add(
                  LoadOrderDetailEvent(orderId),
                );
              },
              child: Text(
                Strings.tryAgain.tr(),
                style: getBoldTextStyle(
                  color: ColorManager.textInverse,
                  fontSize: FontSizeManager.s14.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SquareIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _SquareIconButton({
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorManager.backgroundSurface.withValues(alpha: 0.92),
      borderRadius: BorderRadius.circular(AppSize.s14.r),
      child: InkWell(
        borderRadius: BorderRadius.circular(AppSize.s14.r),
        onTap: onTap,
        child: Container(
          width: AppSize.s42.w,
          height: AppSize.s42.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s14.r),
            border: Border.all(
              color: ColorManager.backgroundSurface.withValues(alpha: 0.78),
            ),
            boxShadow: [
              BoxShadow(
                color: ColorManager.textPrimary.withValues(alpha: 0.05),
                blurRadius: AppSize.s12.r,
                offset: Offset(0, AppSize.s4.h),
              ),
            ],
          ),
          child: Icon(
            icon,
            color: ColorManager.stateSuccessEmphasis,
            size: AppSize.s18.r,
          ),
        ),
      ),
    );
  }
}
