import 'package:easy_localization/easy_localization.dart';
import 'package:basic_diet/app/dependency_injection.dart';
import 'package:basic_diet/domain/model/order_model.dart';
import 'package:basic_diet/presentation/main/cart/bloc/order_tracking_bloc.dart';
import 'package:basic_diet/presentation/main/cart/bloc/order_tracking_event.dart';
import 'package:basic_diet/presentation/main/cart/bloc/order_tracking_state.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
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
      child: const _OrderTrackingContent(),
    );
  }
}

class _OrderTrackingContent extends StatelessWidget {
  const _OrderTrackingContent();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backgroundSurface,
      appBar: AppBar(
        backgroundColor: ColorManager.backgroundSurface,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        title: Text(
          'orderTracking'.tr(),
          style: getBoldTextStyle(
            color: ColorManager.textPrimary,
            fontSize: FontSizeManager.s18.sp,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              final bloc = context.read<OrderTrackingBloc>();
              final state = bloc.state;
              if (state is OrderTrackingSuccess) {
                bloc.add(RefreshOrderDetailEvent(state.order.id));
              }
            },
          ),
        ],
      ),
      body: BlocConsumer<OrderTrackingBloc, OrderTrackingState>(
        listener: (context, state) {
          if (state is OrderTrackingVerifyFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        },
        builder: (context, state) {
          if (state is OrderTrackingLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is OrderTrackingError) {
            return Center(
              child: Text(
                state.message,
                style: getRegularTextStyle(color: ColorManager.textPrimary),
              ),
            );
          }
          if (state is OrderTrackingSuccess) {
            return _OrderStatusView(order: state.order);
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}

class _OrderStatusView extends StatelessWidget {
  final OrderModel order;

  const _OrderStatusView({required this.order});

  static const List<String> _statusFlow = [
    'pending_payment',
    'confirmed',
    'in_preparation',
    'ready_for_pickup',
    'fulfilled',
  ];

  String _statusLabel(String status) {
    switch (status) {
      case 'pending_payment':
        return 'pendingPayment'.tr();
      case 'confirmed':
        return 'waitingForKitchen'.tr();
      case 'in_preparation':
        return 'beingPrepared'.tr();
      case 'ready_for_pickup':
        return 'readyAtBranch'.tr();
      case 'fulfilled':
        return 'completed'.tr();
      case 'cancelled':
        return 'cancelled'.tr();
      case 'expired':
        return 'expired'.tr();
      default:
        return status;
    }
  }

  @override
  Widget build(BuildContext context) {
    final isFinal = ['fulfilled', 'cancelled', 'expired'].contains(order.status);
    final currentIndex = _statusFlow.indexOf(order.status);

    return Padding(
      padding: EdgeInsets.all(AppPadding.p16.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${Strings.orderSummary.tr()}: ${order.orderNumber}',
            style: getBoldTextStyle(
              color: ColorManager.textPrimary,
              fontSize: FontSizeManager.s16.sp,
            ),
          ),
          SizedBox(height: AppSize.s8.h),
          Text(
            '${'status'.tr()}: ${_statusLabel(order.status)}',
            style: getBoldTextStyle(
              color: ColorManager.brandPrimary,
              fontSize: FontSizeManager.s14.sp,
            ),
          ),
          if (order.expiresAt != null && order.status == 'pending_payment')
            Text(
              '${'expiresAt'.tr()}: ${order.expiresAt}',
              style: getRegularTextStyle(
                color: Colors.orange,
                fontSize: FontSizeManager.s12.sp,
              ),
            ),
          if (order.pickup != null) ...[
            SizedBox(height: AppSize.s16.h),
            _InfoCard(
              title: 'pickupFromBranch'.tr(),
              children: [
                Text('${'branch'.tr()}: ${order.pickup!.branchId}'),
                Text('${'pickupWindow'.tr()}: ${order.pickup!.pickupWindow}'),
                if (order.pickup!.pickupCode != null)
                  Text(
                    '${'pickupCode'.tr()}: ${order.pickup!.pickupCode}',
                    style: getBoldTextStyle(
                      color: ColorManager.brandPrimary,
                      fontSize: FontSizeManager.s14.sp,
                    ),
                  ),
              ],
            ),
          ],
          SizedBox(height: AppSize.s24.h),
          if (!isFinal)
            Expanded(
              child: ListView.builder(
                itemCount: _statusFlow.length,
                itemBuilder: (context, index) {
                  final status = _statusFlow[index];
                  final isActive = index <= currentIndex && currentIndex >= 0;
                  final isCurrent = index == currentIndex;

                  return _StatusStep(
                    label: _statusLabel(status),
                    isActive: isActive,
                    isCurrent: isCurrent,
                    isLast: index == _statusFlow.length - 1,
                  );
                },
              ),
            ),
          if (isFinal)
            Center(
              child: Text(
                _statusLabel(order.status),
                style: getBoldTextStyle(
                  color: order.status == 'fulfilled'
                      ? Colors.green
                      : Colors.red,
                  fontSize: FontSizeManager.s20.sp,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const _InfoCard({required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(AppPadding.p12.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: getBoldTextStyle(
                color: ColorManager.textPrimary,
                fontSize: FontSizeManager.s14.sp,
              ),
            ),
            SizedBox(height: AppSize.s8.h),
            ...children,
          ],
        ),
      ),
    );
  }
}

class _StatusStep extends StatelessWidget {
  final String label;
  final bool isActive;
  final bool isCurrent;
  final bool isLast;

  const _StatusStep({
    required this.label,
    required this.isActive,
    required this.isCurrent,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: AppSize.s24.w,
              height: AppSize.s24.h,
              decoration: BoxDecoration(
                color: isActive
                    ? ColorManager.brandPrimary
                    : ColorManager.textSecondary.withValues(alpha: 0.3),
                shape: BoxShape.circle,
              ),
              child: isActive
                  ? const Icon(Icons.check, color: Colors.white, size: 16)
                  : null,
            ),
            if (!isLast)
              Container(
                width: 2.w,
                height: 40.h,
                color: isActive
                    ? ColorManager.brandPrimary
                    : ColorManager.textSecondary.withValues(alpha: 0.3),
              ),
          ],
        ),
        SizedBox(width: AppSize.s12.w),
        Padding(
          padding: EdgeInsets.only(top: AppPadding.p4.h),
          child: Text(
            label,
            style: getBoldTextStyle(
              color: isCurrent
                  ? ColorManager.brandPrimary
                  : ColorManager.textPrimary,
              fontSize: FontSizeManager.s14.sp,
            ),
          ),
        ),
      ],
    );
  }
}
