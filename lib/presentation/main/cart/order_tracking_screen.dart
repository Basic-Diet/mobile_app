import 'package:basic_diet/app/dependency_injection.dart';
import 'package:basic_diet/domain/model/order_model.dart';
import 'package:basic_diet/domain/model/order_status.dart';
import 'package:basic_diet/domain/model/order_timeline_model.dart';
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
        bloc.add(const StartPollingEvent());
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
  @override
  void dispose() {
    context.read<OrderTrackingBloc>().add(const StopPollingEvent());
    super.dispose();
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
  final OrderTimelineModel? timeline;
  final String? inlineMessage;
  final bool showProcessingNotice;

  const _OrderTrackingViewData({
    required this.order,
    this.timeline,
    this.inlineMessage,
    this.showProcessingNotice = false,
  });

  static _OrderTrackingViewData? fromState(OrderTrackingState state) {
    final order = state.orderOrNull;
    if (order == null) return null;

    final timeline = state.timeline;

    if (state is OrderTrackingSuccess || state is OrderTrackingRefreshing) {
      return _OrderTrackingViewData(order: order, timeline: timeline);
    }
    if (state is OrderTrackingVerifying) {
      return _OrderTrackingViewData(
        order: order,
        timeline: timeline,
        inlineMessage: Strings.paymentProcessing.tr(),
        showProcessingNotice: true,
      );
    }
    if (state is OrderTrackingVerifyProcessing) {
      return _OrderTrackingViewData(
        order: order,
        timeline: timeline,
        inlineMessage: Strings.paymentProcessing.tr(),
        showProcessingNotice: true,
      );
    }
    if (state is OrderTrackingVerifyFailure) {
      return _OrderTrackingViewData(order: order, timeline: timeline);
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
    final timeline = data.timeline;

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
          if (order.status == OrderStatus.cancelled) ...[
            _CancellationCard(order: order),
            SizedBox(height: AppSize.s12.h),
          ],
          if (data.showProcessingNotice && data.inlineMessage != null) ...[
            _MutedNote(message: data.inlineMessage!),
            SizedBox(height: AppSize.s12.h),
          ],
          _TrackingCard(
            title: Strings.orderStatusTitle.tr(),
            child: timeline != null && timeline.timeline.isNotEmpty
                ? _BackendTimeline(timeline: timeline)
                : _FallbackTimeline(order: order),
          ),
          SizedBox(height: AppSize.s12.h),
          _MutedNote(message: Strings.pickupOnlyTrackingNote.tr()),
        ],
      ),
    );
  }

  bool _shouldShowPickupCodeCard(OrderModel order) {
    return order.isPickup || order.pickup != null;
  }
}

class _BackendTimeline extends StatelessWidget {
  final OrderTimelineModel timeline;

  const _BackendTimeline({required this.timeline});

  @override
  Widget build(BuildContext context) {
    final visibleItems = timeline.timeline.where((i) => !i.isHidden).toList();

    return Column(
      children: [
        for (var i = 0; i < visibleItems.length; i++)
          _TimelineStepTile(
            item: visibleItems[i],
            isLast: i == visibleItems.length - 1,
            stepNumber: i + 1,
          ),
      ],
    );
  }
}

class _FallbackTimeline extends StatelessWidget {
  final OrderModel order;

  const _FallbackTimeline({required this.order});

  @override
  Widget build(BuildContext context) {
    final steps = _TrackingStepData.buildSteps(order, context);

    return Column(
      children: [
        for (var i = 0; i < steps.length; i++)
          _StatusStepTile(
            step: steps[i],
            stepNumber: i + 1,
            isLast: i == steps.length - 1,
          ),
      ],
    );
  }
}

class _TimelineStepTile extends StatelessWidget {
  final OrderTimelineItemModel item;
  final bool isLast;
  final int stepNumber;

  const _TimelineStepTile({
    required this.item,
    required this.isLast,
    required this.stepNumber,
  });

  @override
  Widget build(BuildContext context) {
    final isDone = item.isCompleted;
    final isCurrent = item.isActive;
    final isCancelled = item.isCancelled;

    final dotColor = isDone || isCurrent || isCancelled
        ? (isCancelled ? ColorManager.stateError : ColorManager.brandPrimary)
        : ColorManager.backgroundSubtle;
    final textColor = isCurrent
        ? ColorManager.stateSuccessEmphasis
        : ColorManager.textPrimary;
    final lineColor = isDone
        ? ColorManager.brandPrimary
        : ColorManager.borderDefault;

    final label = context.locale.languageCode.startsWith('ar')
        ? item.labelAr
        : item.labelEn;

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
                          color: isCurrent || isCancelled
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
                    label,
                    style: getBoldTextStyle(
                      color: textColor,
                      fontSize: FontSizeManager.s16.sp,
                    ),
                  ),
                  if (item.time != null && item.time!.isNotEmpty) ...[
                    SizedBox(height: AppSize.s4.h),
                    Text(
                      _formatTime(item.time!),
                      style: getRegularTextStyle(
                        color: ColorManager.textSecondary,
                        fontSize: FontSizeManager.s12.sp,
                      ),
                    ),
                  ],
                  if (!isLast) SizedBox(height: AppSize.s16.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _formatTime(String raw) {
    final parsed = DateTime.tryParse(raw);
    if (parsed == null) return raw;
    return DateFormat('d MMM, hh:mm a').format(parsed.toLocal());
  }
}

class _CancellationCard extends StatelessWidget {
  final OrderModel order;

  const _CancellationCard({required this.order});

  @override
  Widget build(BuildContext context) {
    final message = _cancellationMessage(order);

    return Container(
      padding: EdgeInsetsDirectional.fromSTEB(
        AppPadding.p16.w,
        AppPadding.p14.h,
        AppPadding.p16.w,
        AppPadding.p14.h,
      ),
      decoration: BoxDecoration(
        color: ColorManager.stateErrorSurface,
        borderRadius: BorderRadius.circular(AppSize.s20.r),
        border: Border.all(color: ColorManager.stateErrorBorder),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.cancel_rounded,
                color: ColorManager.stateError,
                size: AppSize.s20.r,
              ),
              SizedBox(width: AppSize.s8.w),
              Text(
                Strings.cancelled.tr(),
                style: getBoldTextStyle(
                  color: ColorManager.stateError,
                  fontSize: FontSizeManager.s14.sp,
                ),
              ),
            ],
          ),
          SizedBox(height: AppSize.s8.h),
          Text(
            message,
            style: getRegularTextStyle(
              color: ColorManager.textPrimary,
              fontSize: FontSizeManager.s13.sp,
            ),
          ),
        ],
      ),
    );
  }

  String _cancellationMessage(OrderModel order) {
    final reason = order.cancellationReason;
    final by = order.cancelledBy;

    if (by == 'customer') {
      return Strings.cancelledByCustomer.tr();
    }
    if (by == 'restaurant') {
      if (reason == 'restaurant_rejected') {
        return Strings.cancelledByRestaurantRejected.tr();
      }
      return Strings.cancelledByRestaurant.tr();
    }
    if (by == 'admin') {
      return Strings.cancelledByAdmin.tr();
    }
    if (by == 'system') {
      if (reason == 'payment_failed') {
        return Strings.cancelledPaymentFailed.tr();
      }
      if (reason == 'payment_expired') {
        return Strings.expired.tr();
      }
      return Strings.cancelledBySystem.tr();
    }
    return Strings.cancelledTrackingDescription.tr();
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

    if (status == OrderStatus.pendingPayment) {
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

    if (status == OrderStatus.cancelled || status == OrderStatus.expired) {
      return [
        _TrackingStepData(
          title: status == OrderStatus.cancelled
              ? Strings.cancelled.tr()
              : Strings.expired.tr(),
          description: status == OrderStatus.cancelled
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

  static int _statusIndex(OrderStatus status) {
    switch (status) {
      case OrderStatus.confirmed:
        return 0;
      case OrderStatus.inPreparation:
        return 1;
      case OrderStatus.readyForPickup:
        return 2;
      case OrderStatus.fulfilled:
        return 3;
      default:
        return -1;
    }
  }

  static _TrackingStepVisualState _visualStateForStepIndex(
    int currentIndex,
    int stepIndex,
    OrderStatus status,
  ) {
    if (status == OrderStatus.fulfilled) {
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
