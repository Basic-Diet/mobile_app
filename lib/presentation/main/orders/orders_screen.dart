import 'package:basic_diet/app/dependency_injection.dart';
import 'package:basic_diet/domain/model/order_model.dart';
import 'package:basic_diet/presentation/main/orders/bloc/orders_bloc.dart';
import 'package:basic_diet/presentation/main/orders/bloc/orders_event.dart';
import 'package:basic_diet/presentation/main/orders/bloc/orders_state.dart';
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

class _OrdersScreenContent extends StatefulWidget {
  const _OrdersScreenContent();

  @override
  State<_OrdersScreenContent> createState() => _OrdersScreenContentState();
}

class _OrdersScreenContentState extends State<_OrdersScreenContent> {
  _OrdersTab _activeTab = _OrdersTab.current;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F3EB),
      body: SafeArea(
        child: BlocConsumer<OrdersBloc, OrdersState>(
          listener: (context, state) {
            if (state is OrderCancelSuccess) {
              context.read<OrdersBloc>().add(const RefreshOrdersEvent());
            }
          },
          builder: (context, state) {
            if (state is OrdersLoading) {
              return const Center(
                child: CircularProgressIndicator(
                  color: ColorManager.brandPrimary,
                ),
              );
            }

            if (state is OrdersError) {
              return _OrdersErrorView(message: state.message);
            }

            final data = _OrdersViewData.fromState(state);
            if (data == null) {
              return const SizedBox.shrink();
            }

            final currentOrders =
                data.orders
                    .where((order) => !_isFinalStatus(order.status))
                    .toList();
            final previousOrders =
                data.orders
                    .where((order) => _isFinalStatus(order.status))
                    .toList();

            final visibleOrders =
                _activeTab == _OrdersTab.current
                    ? currentOrders
                    : previousOrders;

            return RefreshIndicator(
              onRefresh: () async {
                context.read<OrdersBloc>().add(const RefreshOrdersEvent());
              },
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                slivers: [
                  SliverPadding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                      AppPadding.p16.w,
                      AppPadding.p16.h,
                      AppPadding.p16.w,
                      AppPadding.p28.h,
                    ),
                    sliver: SliverList(
                      delegate: SliverChildListDelegate([
                        const _OrdersHeader(),
                        SizedBox(height: AppSize.s20.h),
                        _OrdersTabBar(
                          activeTab: _activeTab,
                          onChanged: (tab) {
                            setState(() {
                              _activeTab = tab;
                            });
                          },
                        ),
                        SizedBox(height: AppSize.s18.h),
                        if (visibleOrders.isEmpty)
                          _EmptyOrdersState(
                            message:
                                _activeTab == _OrdersTab.current
                                    ? Strings.noCurrentOrders.tr()
                                    : Strings.noPreviousOrders.tr(),
                          )
                        else
                          _OrdersList(
                            orders: visibleOrders,
                            isCancelling: state is OrderCancelLoading,
                          ),
                        SizedBox(height: AppSize.s14.h),
                        Text(
                          _activeTab == _OrdersTab.current
                              ? Strings.activeOrdersHint.tr()
                              : Strings.previousOrdersHint.tr(),
                          style: getRegularTextStyle(
                            fontSize: FontSizeManager.s12.sp,
                            color: ColorManager.textSecondary,
                          ),
                        ),
                        if (data.isLoadingMore) ...[
                          SizedBox(height: AppSize.s16.h),
                          const Center(
                            child: CircularProgressIndicator(
                              color: ColorManager.brandPrimary,
                            ),
                          ),
                        ] else if (data.hasMore) ...[
                          SizedBox(height: AppSize.s16.h),
                          Center(
                            child: TextButton(
                              onPressed: () {
                                context.read<OrdersBloc>().add(
                                  const LoadMoreOrdersEvent(),
                                );
                              },
                              child: Text(Strings.loadMore.tr()),
                            ),
                          ),
                        ],
                      ]),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _OrdersHeader extends StatelessWidget {
  const _OrdersHeader();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Strings.orders.tr(),
          style: getBoldTextStyle(
            fontSize: FontSizeManager.s24.sp,
            color: ColorManager.textPrimary,
          ),
        ),
        SizedBox(height: AppSize.s4.h),
        Text(
          Strings.oneTimeOrdersSubtitle.tr(),
          style: getRegularTextStyle(
            fontSize: FontSizeManager.s13.sp,
            color: ColorManager.textSecondary,
          ),
        ),
      ],
    );
  }
}

class _OrdersTabBar extends StatelessWidget {
  final _OrdersTab activeTab;
  final ValueChanged<_OrdersTab> onChanged;

  const _OrdersTabBar({required this.activeTab, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.all(AppPadding.p4.r),
      decoration: BoxDecoration(
        color: ColorManager.backgroundSurface,
        borderRadius: BorderRadius.circular(AppSize.s20.r),
      ),
      child: Row(
        children: [
          Expanded(
            child: _OrdersTabButton(
              title: Strings.currentOrders.tr(),
              selected: activeTab == _OrdersTab.current,
              onTap: () => onChanged(_OrdersTab.current),
            ),
          ),
          Expanded(
            child: _OrdersTabButton(
              title: Strings.previousOrders.tr(),
              selected: activeTab == _OrdersTab.previous,
              onTap: () => onChanged(_OrdersTab.previous),
            ),
          ),
        ],
      ),
    );
  }
}

class _OrdersTabButton extends StatelessWidget {
  final String title;
  final bool selected;
  final VoidCallback onTap;

  const _OrdersTabButton({
    required this.title,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: selected ? ColorManager.stateSuccessEmphasis : Colors.transparent,
      borderRadius: BorderRadius.circular(AppSize.s18.r),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppSize.s18.r),
        child: Padding(
          padding: EdgeInsetsDirectional.symmetric(vertical: AppPadding.p12.h),
          child: Center(
            child: Text(
              title,
              style: getBoldTextStyle(
                fontSize: FontSizeManager.s14.sp,
                color:
                    selected
                        ? ColorManager.backgroundSurface
                        : ColorManager.textPrimary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _OrdersList extends StatelessWidget {
  final List<OrderModel> orders;
  final bool isCancelling;

  const _OrdersList({required this.orders, required this.isCancelling});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          orders
              .map(
                (order) => Padding(
                  padding: EdgeInsetsDirectional.only(bottom: AppPadding.p12.h),
                  child: _OrderHistoryCard(
                    order: order,
                    isCancelling: isCancelling,
                  ),
                ),
              )
              .toList(),
    );
  }
}

class _OrderHistoryCard extends StatelessWidget {
  final OrderModel order;
  final bool isCancelling;

  const _OrderHistoryCard({required this.order, required this.isCancelling});

  String _statusLabel(String status) {
    switch (status) {
      case 'pending_payment':
        return Strings.pendingPayment.tr();
      case 'confirmed':
        return Strings.confirmed.tr();
      case 'in_preparation':
        return Strings.beingPrepared.tr();
      case 'ready_for_pickup':
        return Strings.readyAtBranch.tr();
      case 'fulfilled':
        return Strings.completed.tr();
      case 'cancelled':
        return Strings.cancelled.tr();
      case 'expired':
        return Strings.expired.tr();
      default:
        return status;
    }
  }

  Color _statusColor(String status) {
    switch (status) {
      case 'pending_payment':
        return const Color(0xFFCA6A18);
      case 'confirmed':
        return const Color(0xFF2563EB);
      case 'in_preparation':
        return const Color(0xFFB45309);
      case 'ready_for_pickup':
        return const Color(0xFF047857);
      case 'fulfilled':
        return const Color(0xFF16664A);
      case 'cancelled':
        return const Color(0xFFB91C1C);
      case 'expired':
        return ColorManager.textSecondary;
      default:
        return ColorManager.textSecondary;
    }
  }

  @override
  Widget build(BuildContext context) {
    final statusColor = _statusColor(order.status);
    final canCancel = order.status == 'pending_payment';
    final pricingText =
        order.pricing == null
            ? null
            : _formatMoney(order.pricing!.totalHalala, order.pricing!.currency);

    return Material(
      color: ColorManager.backgroundSurface,
      borderRadius: BorderRadius.circular(AppSize.s24.r),
      child: InkWell(
        onTap: () => context.push('/order-tracking', extra: order.id),
        borderRadius: BorderRadius.circular(AppSize.s24.r),
        child: Padding(
          padding: EdgeInsetsDirectional.all(AppPadding.p16.r),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _OrderAvatar(order: order, statusColor: statusColor),
                  SizedBox(width: AppSize.s12.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          order.orderNumber.isNotEmpty
                              ? order.orderNumber
                              : '#${order.id.substring(0, 8)}',
                          style: getBoldTextStyle(
                            fontSize: FontSizeManager.s15.sp,
                            color: ColorManager.textPrimary,
                          ),
                        ),
                        SizedBox(height: AppSize.s4.h),
                        Text(
                          _subtitleText(order, pricingText),
                          style: getRegularTextStyle(
                            fontSize: FontSizeManager.s12.sp,
                            color: ColorManager.textSecondary,
                          ),
                        ),
                        if (order.pickup?.pickupCode != null) ...[
                          SizedBox(height: AppSize.s6.h),
                          Text(
                            '${Strings.pickupCodeLabel.tr()}: ${order.pickup!.pickupCode}',
                            style: getBoldTextStyle(
                              fontSize: FontSizeManager.s12.sp,
                              color: ColorManager.stateSuccessEmphasis,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsetsDirectional.symmetric(
                          horizontal: AppPadding.p10.w,
                          vertical: AppPadding.p6.h,
                        ),
                        decoration: BoxDecoration(
                          color: statusColor.withValues(alpha: 0.12),
                          borderRadius: BorderRadius.circular(AppSize.s99.r),
                        ),
                        child: Text(
                          _statusLabel(order.status),
                          style: getBoldTextStyle(
                            fontSize: FontSizeManager.s12.sp,
                            color: statusColor,
                          ),
                        ),
                      ),
                      SizedBox(height: AppSize.s10.h),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: AppSize.s16.w,
                        color: ColorManager.textMuted,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: AppSize.s12.h),
              Row(
                children: [
                  Expanded(
                    child: _MetaPill(
                      label:
                          '${Strings.paymentStatus.tr()}: ${order.paymentStatus}',
                    ),
                  ),
                  if (order.pickup?.pickupWindow != null) ...[
                    SizedBox(width: AppSize.s8.w),
                    Expanded(
                      child: _MetaPill(label: order.pickup!.pickupWindow),
                    ),
                  ],
                ],
              ),
              if (canCancel) ...[
                SizedBox(height: AppSize.s12.h),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: TextButton(
                    onPressed:
                        isCancelling
                            ? null
                            : () {
                              context.read<OrdersBloc>().add(
                                CancelOrderEvent(order.id),
                              );
                            },
                    child: Text(
                      Strings.cancelUnpaidOrder.tr(),
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s12.sp,
                        color: ColorManager.stateError,
                      ),
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

  String _subtitleText(OrderModel order, String? pricingText) {
    final itemName =
        order.items.isNotEmpty
            ? (order.items.first.name ?? order.items.first.itemType)
            : order.fulfillmentMethod;
    final relativeDate = _relativeDateLabel(order.createdAt);
    final pieces = <String>[itemName];
    if (relativeDate != null) {
      pieces.add(relativeDate);
    }
    if (pricingText != null) {
      pieces.add(pricingText);
    }
    return pieces.join(' · ');
  }
}

class _OrderAvatar extends StatelessWidget {
  final OrderModel order;
  final Color statusColor;

  const _OrderAvatar({required this.order, required this.statusColor});

  @override
  Widget build(BuildContext context) {
    final emoji = switch (order.status) {
      'ready_for_pickup' => '🥗',
      'fulfilled' => '🥙',
      'cancelled' => '✕',
      'expired' => '⏳',
      _ => '🍽️',
    };

    return Container(
      width: AppSize.s52.w,
      height: AppSize.s52.w,
      decoration: BoxDecoration(
        color: statusColor.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(AppSize.s18.r),
      ),
      alignment: Alignment.center,
      child: Text(emoji, style: TextStyle(fontSize: FontSizeManager.s24.sp)),
    );
  }
}

class _MetaPill extends StatelessWidget {
  final String label;

  const _MetaPill({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: AppPadding.p10.w,
        vertical: AppPadding.p8.h,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF3F4F6),
        borderRadius: BorderRadius.circular(AppSize.s16.r),
      ),
      child: Text(
        label,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: getRegularTextStyle(
          fontSize: FontSizeManager.s11.sp,
          color: ColorManager.textSecondary,
        ),
      ),
    );
  }
}

class _EmptyOrdersState extends StatelessWidget {
  final String message;

  const _EmptyOrdersState({required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsetsDirectional.all(AppPadding.p24.r),
      decoration: BoxDecoration(
        color: ColorManager.backgroundSurface,
        borderRadius: BorderRadius.circular(AppSize.s24.r),
      ),
      child: Text(
        message,
        textAlign: TextAlign.center,
        style: getRegularTextStyle(
          fontSize: FontSizeManager.s14.sp,
          color: ColorManager.textSecondary,
        ),
      ),
    );
  }
}

class _OrdersErrorView extends StatelessWidget {
  final String message;

  const _OrdersErrorView({required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsetsDirectional.all(AppPadding.p24.r),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              message,
              textAlign: TextAlign.center,
              style: getRegularTextStyle(
                fontSize: FontSizeManager.s14.sp,
                color: ColorManager.textPrimary,
              ),
            ),
            SizedBox(height: AppSize.s16.h),
            ElevatedButton(
              onPressed: () {
                context.read<OrdersBloc>().add(const RefreshOrdersEvent());
              },
              child: Text(Strings.tryAgain.tr()),
            ),
          ],
        ),
      ),
    );
  }
}

class _OrdersViewData {
  final List<OrderModel> orders;
  final bool hasMore;
  final bool isLoadingMore;

  const _OrdersViewData({
    required this.orders,
    required this.hasMore,
    required this.isLoadingMore,
  });

  static _OrdersViewData? fromState(OrdersState state) {
    if (state is OrdersSuccess) {
      return _OrdersViewData(
        orders: state.orders,
        hasMore: state.hasMore,
        isLoadingMore: state.isLoadingMore,
      );
    }

    if (state is OrderCancelLoading) {
      return _OrdersViewData(
        orders: state.orders,
        hasMore: false,
        isLoadingMore: false,
      );
    }

    if (state is OrderCancelSuccess) {
      return _OrdersViewData(
        orders: state.orders,
        hasMore: false,
        isLoadingMore: false,
      );
    }

    return null;
  }
}

enum _OrdersTab { current, previous }

bool _isFinalStatus(String status) =>
    status == 'fulfilled' || status == 'cancelled' || status == 'expired';

String _formatMoney(int halala, String currency) {
  final value = halala / 100;
  final display =
      value % 1 == 0 ? value.toStringAsFixed(0) : value.toStringAsFixed(2);
  return '$display $currency';
}

String? _relativeDateLabel(String? rawDate) {
  if (rawDate == null || rawDate.isEmpty) {
    return null;
  }

  final parsed = DateTime.tryParse(rawDate);
  if (parsed == null) {
    return rawDate;
  }

  final local = parsed.toLocal();
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  final date = DateTime(local.year, local.month, local.day);
  final difference = today.difference(date).inDays;

  if (difference == 0) {
    return Strings.today.tr();
  }
  if (difference == 1) {
    return Strings.yesterday.tr();
  }
  return DateFormat('d MMM').format(local);
}
