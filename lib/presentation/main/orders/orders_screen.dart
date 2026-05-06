import 'package:easy_localization/easy_localization.dart';
import 'package:basic_diet/app/dependency_injection.dart';
import 'package:basic_diet/domain/model/order_model.dart';
import 'package:basic_diet/presentation/main/orders/bloc/orders_bloc.dart';
import 'package:basic_diet/presentation/main/orders/bloc/orders_event.dart';
import 'package:basic_diet/presentation/main/orders/bloc/orders_state.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        initOrdersModule();
        final bloc = instance<OrdersBloc>();
        bloc.add(const LoadOrdersEvent());
        return bloc;
      },
      child: const _OrdersScreenContent(),
    );
  }
}

class _OrdersScreenContent extends StatelessWidget {
  const _OrdersScreenContent();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backgroundSurface,
      appBar: AppBar(
        backgroundColor: ColorManager.backgroundSurface,
        elevation: 0,
        title: Text(
          Strings.orders.tr(),
          style: getBoldTextStyle(
            color: ColorManager.textPrimary,
            fontSize: FontSizeManager.s18.sp,
          ),
        ),
      ),
      body: BlocConsumer<OrdersBloc, OrdersState>(
        listener: (context, state) {
          if (state is OrderCancelSuccess) {
            context.read<OrdersBloc>().add(const RefreshOrdersEvent());
          }
        },
        builder: (context, state) {
          if (state is OrdersLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is OrdersError) {
            return _ErrorView(
              message: state.message,
              onRetry: () {
                context.read<OrdersBloc>().add(const RefreshOrdersEvent());
              },
            );
          }
          if (state is OrdersSuccess ||
              state is OrderCancelLoading ||
              state is OrderCancelSuccess) {
            List<OrderModel> orders = [];
            bool hasMore = false;
            bool isLoadingMore = false;
            if (state is OrdersSuccess) {
              orders = state.orders;
              hasMore = state.hasMore;
              isLoadingMore = state.isLoadingMore;
            }
            if (state is OrderCancelLoading) orders = state.orders;
            if (state is OrderCancelSuccess) orders = state.orders;

            if (orders.isEmpty) {
              return Center(
                child: Text(
                  'noOrdersYet'.tr(),
                  style: getRegularTextStyle(color: ColorManager.textSecondary),
                ),
              );
            }

            return RefreshIndicator(
              onRefresh: () async {
                context.read<OrdersBloc>().add(const RefreshOrdersEvent());
              },
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: AppPadding.p16.w),
                itemCount: orders.length + (hasMore || isLoadingMore ? 1 : 0),
                itemBuilder: (context, index) {
                  if (index == orders.length) {
                    if (isLoadingMore) {
                      return const Padding(
                        padding: EdgeInsets.all(16),
                        child: Center(child: CircularProgressIndicator()),
                      );
                    }
                    if (hasMore) {
                      context.read<OrdersBloc>().add(const LoadMoreOrdersEvent());
                      return const Padding(
                        padding: EdgeInsets.all(16),
                        child: Center(child: CircularProgressIndicator()),
                      );
                    }
                    return const SizedBox.shrink();
                  }
                  final order = orders[index];
                  return _OrderListTile(order: order);
                },
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}

class _ErrorView extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _ErrorView({required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(message, style: getRegularTextStyle(color: ColorManager.textPrimary)),
          SizedBox(height: AppSize.s16.h),
          ElevatedButton(
            onPressed: onRetry,
            child: Text(Strings.tryAgain.tr()),
          ),
        ],
      ),
    );
  }
}

class _OrderListTile extends StatelessWidget {
  final OrderModel order;

  const _OrderListTile({required this.order});

  String _statusLabel(String status) {
    switch (status) {
      case 'pending_payment':
        return 'pendingPayment'.tr();
      case 'confirmed':
        return 'confirmed'.tr();
      case 'in_preparation':
        return 'inPreparation'.tr();
      case 'ready_for_pickup':
        return 'readyForPickup'.tr();
      case 'fulfilled':
        return 'fulfilled'.tr();
      case 'cancelled':
        return 'cancelled'.tr();
      case 'expired':
        return 'expired'.tr();
      default:
        return status;
    }
  }

  Color _statusColor(String status) {
    switch (status) {
      case 'pending_payment':
        return Colors.orange;
      case 'confirmed':
        return Colors.blue;
      case 'in_preparation':
        return Colors.amber;
      case 'ready_for_pickup':
        return Colors.green;
      case 'fulfilled':
        return Colors.green.shade700;
      case 'cancelled':
        return Colors.red;
      case 'expired':
        return Colors.grey;
      default:
        return ColorManager.textSecondary;
    }
  }

  @override
  Widget build(BuildContext context) {
    final canCancel = order.status == 'pending_payment';

    return Card(
      margin: EdgeInsets.only(bottom: AppPadding.p12.h),
      child: InkWell(
        onTap: () => context.push('/order-tracking', extra: order.id),
        child: Padding(
          padding: EdgeInsets.all(AppPadding.p12.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    order.orderNumber.isNotEmpty
                        ? order.orderNumber
                        : '#${order.id.substring(0, 8)}',
                    style: getBoldTextStyle(
                      color: ColorManager.textPrimary,
                      fontSize: FontSizeManager.s14.sp,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppPadding.p8.w,
                      vertical: AppPadding.p4.h,
                    ),
                    decoration: BoxDecoration(
                      color: _statusColor(order.status).withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(AppSize.s8.r),
                    ),
                    child: Text(
                      _statusLabel(order.status),
                      style: getRegularTextStyle(
                        color: _statusColor(order.status),
                        fontSize: FontSizeManager.s12.sp,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppSize.s8.h),
              Text(
                '${'paymentStatus'.tr()}: ${order.paymentStatus}',
                style: getRegularTextStyle(
                  color: ColorManager.textSecondary,
                  fontSize: FontSizeManager.s12.sp,
                ),
              ),
              if (order.pricing != null)
                Text(
                  '${Strings.total.tr()}: ${(order.pricing!.totalHalala / 100).toStringAsFixed(2)} ${order.pricing!.currency}',
                  style: getRegularTextStyle(
                    color: ColorManager.textSecondary,
                    fontSize: FontSizeManager.s12.sp,
                  ),
                ),
              if (order.createdAt != null)
                Text(
                  order.createdAt!,
                  style: getRegularTextStyle(
                    color: ColorManager.textSecondary,
                    fontSize: FontSizeManager.s12.sp,
                  ),
                ),
              if (canCancel) ...[
                SizedBox(height: AppSize.s8.h),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: TextButton(
                    onPressed: () {
                      context.read<OrdersBloc>().add(
                        CancelOrderEvent(order.id),
                      );
                    },
                    child: Text(
                      Strings.cancel.tr(),
                      style: getRegularTextStyle(color: Colors.red),
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
