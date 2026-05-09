import 'dart:developer' as developer;

import 'package:easy_localization/easy_localization.dart';
import 'package:basic_diet/app/dependency_injection.dart';
import 'package:basic_diet/domain/model/create_order_request_model.dart';
import 'package:basic_diet/domain/model/order_quote_request_model.dart';
import 'package:basic_diet/domain/model/one_time_order_model.dart';
import 'package:basic_diet/presentation/main/cart/bloc/cart_bloc.dart';
import 'package:basic_diet/presentation/main/cart/bloc/cart_state.dart';
import 'package:basic_diet/presentation/main/cart/bloc/checkout_bloc.dart';
import 'package:basic_diet/presentation/main/cart/bloc/checkout_event.dart';
import 'package:basic_diet/presentation/main/cart/bloc/checkout_state.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';

class CheckoutScreen extends StatelessWidget {
  static const String routeName = '/checkout';
  final CartLoaded? cartState;

  const CheckoutScreen({super.key, this.cartState});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => instance<CheckoutBloc>(),
      child: _CheckoutScreenContent(cartState: cartState),
    );
  }
}

class _CheckoutScreenContent extends StatefulWidget {
  final CartLoaded? cartState;

  const _CheckoutScreenContent({this.cartState});

  @override
  State<_CheckoutScreenContent> createState() => _CheckoutScreenContentState();
}

class _CheckoutScreenContentState extends State<_CheckoutScreenContent> {
  late String _idempotencyKey;

  @override
  void initState() {
    super.initState();
    _idempotencyKey = const Uuid().v4();
    WidgetsBinding.instance.addPostFrameCallback((_) => _requestQuote());
  }

  CartLoaded? get _cartState {
    final passedCartState = widget.cartState;
    if (passedCartState != null) {
      return passedCartState;
    }

    final currentCartState = context.read<CartBloc>().state;
    if (currentCartState is CartLoaded) {
      return currentCartState;
    }

    return null;
  }

  void _requestQuote() {
    final cartState = _cartState;
    if (cartState == null) return;

    final items = cartState.items.map((item) {
      return OrderQuoteItemRequestModel(
        productId: item.productId,
        qty: item.qty,
        weightGrams: item.weightGrams,
        selectedOptions: item.selectedOptions.map((o) {
          return OrderQuoteSelectedOptionRequestModel(
            groupId: o.groupId,
            optionId: o.optionId,
            extraWeightGrams: o.extraWeightGrams,
          );
        }).toList(),
      );
    }).toList();

    context.read<CheckoutBloc>().add(
      GetOrderQuoteEvent(
        OrderQuoteRequestModel(
          fulfillmentMethod: 'pickup',
          pickup: cartState.selectedBranchId != null &&
                  cartState.selectedPickupWindow != null
              ? OrderQuotePickupRequestModel(
                  branchId: cartState.selectedBranchId!,
                  pickupWindow: cartState.selectedPickupWindow!,
                )
              : null,
          items: items,
        ),
      ),
    );
  }

  void _createOrder() {
    final cartState = _cartState;
    if (cartState == null) return;

    final items = cartState.items.map((item) {
      return CreateOrderItemRequestModel(
        productId: item.productId,
        qty: item.qty,
        weightGrams: item.weightGrams,
        selectedOptions: item.selectedOptions.map((o) {
          return CreateOrderSelectedOptionRequestModel(
            groupId: o.groupId,
            optionId: o.optionId,
            extraWeightGrams: o.extraWeightGrams,
          );
        }).toList(),
      );
    }).toList();

    context.read<CheckoutBloc>().add(
      CreateOrderEvent(
        CreateOrderRequestModel(
          fulfillmentMethod: 'pickup',
          pickup: cartState.selectedBranchId != null &&
                  cartState.selectedPickupWindow != null
              ? CreateOrderPickupRequestModel(
                  branchId: cartState.selectedBranchId!,
                  pickupWindow: cartState.selectedPickupWindow!,
                )
              : null,
          items: items,
          successUrl: 'basicdiet://orders/payment-success',
          backUrl: 'basicdiet://orders/payment-cancel',
        ),
        idempotencyKey: _idempotencyKey,
      ),
    );
  }

  Future<void> _openPaymentWebView(String paymentUrl, OneTimeOrderModel order) async {
    final result = await context.push<bool?>('/payment-webview', extra: paymentUrl);
    developer.log('Payment WebView returned: $result', name: 'checkout');

    if (!mounted) return;

    context.read<CheckoutBloc>().add(
      VerifyPaymentEvent(
        orderId: order.orderId,
        paymentId: order.paymentId,
        providerInvoiceId: order.invoiceId,
      ),
    );
  }

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
          Strings.confirmAndPay.tr(),
          style: getBoldTextStyle(
            color: ColorManager.textPrimary,
            fontSize: FontSizeManager.s18.sp,
          ),
        ),
      ),
      body: BlocListener<CheckoutBloc, CheckoutState>(
        listener: (context, state) {
          if (state is CheckoutLoaded &&
              state.createStatus == OrderCreateStatus.success &&
              state.order != null) {
            _openPaymentWebView(state.order!.paymentUrl, state.order!);
          }

          if (state is CheckoutLoaded &&
              state.verifyStatus == OrderVerifyStatus.success) {
            final orderId = state.order?.orderId;
            if (orderId != null) {
              context.pushReplacement('/order-tracking', extra: orderId);
            }
          }

          if (state is CheckoutLoaded &&
              state.verifyStatus == OrderVerifyStatus.failure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.verifyErrorMessage ?? Strings.defaultError.tr())),
            );
          }
        },
        child: BlocBuilder<CheckoutBloc, CheckoutState>(
          builder: (context, state) {
            if (state is CheckoutInitial ||
                (state is CheckoutLoaded &&
                    state.quoteStatus == OrderQuoteStatus.loading)) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state is CheckoutLoaded &&
                state.quoteStatus == OrderQuoteStatus.failure) {
              return _ErrorView(
                message: state.quoteErrorMessage ?? Strings.defaultError.tr(),
                onRetry: _requestQuote,
              );
            }

            if (state is CheckoutLoaded &&
                state.quoteStatus == OrderQuoteStatus.success &&
                state.quote != null) {
              return _QuoteView(
                quote: state.quote!,
                createStatus: state.createStatus,
                verifyStatus: state.verifyStatus,
                onConfirm: _createOrder,
              );
            }

            return const SizedBox.shrink();
          },
        ),
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

class _QuoteView extends StatelessWidget {
  final dynamic quote;
  final OrderCreateStatus createStatus;
  final OrderVerifyStatus verifyStatus;
  final VoidCallback onConfirm;

  const _QuoteView({
    required this.quote,
    required this.createStatus,
    required this.verifyStatus,
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    final isLoading = createStatus == OrderCreateStatus.loading ||
        verifyStatus == OrderVerifyStatus.loading ||
        verifyStatus == OrderVerifyStatus.processing;

    return Padding(
      padding: EdgeInsets.all(AppPadding.p16.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'orderSummary'.tr(),
            style: getBoldTextStyle(
              color: ColorManager.textPrimary,
              fontSize: FontSizeManager.s16.sp,
            ),
          ),
          SizedBox(height: AppSize.s16.h),
          ...quote.items.map<Widget>((item) {
            return Padding(
              padding: EdgeInsets.only(bottom: AppPadding.p8.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${item.name ?? item.productId} x${item.qty}',
                    style: getRegularTextStyle(color: ColorManager.textPrimary),
                  ),
                  Text(
                    '${(item.lineTotalHalala ?? 0) / 100} ${quote.currency}',
                    style: getBoldTextStyle(color: ColorManager.textPrimary),
                  ),
                ],
              ),
            );
          }).toList(),
          const Divider(),
          if (quote.pricing.subtotalHalala > 0)
            _PriceRow(
              label: 'subtotal'.tr(),
              value: '${quote.pricing.subtotalHalala / 100} ${quote.currency}',
            ),
          if (quote.pricing.discountHalala > 0)
            _PriceRow(
              label: 'discount'.tr(),
              value:
                  '-${quote.pricing.discountHalala / 100} ${quote.currency}',
              valueColor: Colors.green,
            ),
          if (quote.pricing.vatIncluded)
            _PriceRow(
              label: 'vatIncluded'.tr(),
              value: '${quote.pricing.vatHalala / 100} ${quote.currency}',
            ),
          const Divider(),
          _PriceRow(
            label: '${Strings.total.tr()}:',
            value:
                '${quote.pricing.totalHalala / 100} ${quote.currency}',
            isBold: true,
          ),
          SizedBox(height: AppSize.s32.h),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: isLoading ? null : onConfirm,
              child: isLoading
                  ? const SizedBox(
                      width: 24,
                      height: 24,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : Text(Strings.payNow.tr()),
            ),
          ),
          if (verifyStatus == OrderVerifyStatus.processing) ...[
            SizedBox(height: AppSize.s16.h),
            Center(
              child: Text(
                'paymentProcessing'.tr(),
                style: getRegularTextStyle(color: ColorManager.textSecondary),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _PriceRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isBold;
  final Color? valueColor;

  const _PriceRow({
    required this.label,
    required this.value,
    this.isBold = false,
    this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppPadding.p4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: isBold
                ? getBoldTextStyle(color: ColorManager.textPrimary)
                : getRegularTextStyle(color: ColorManager.textSecondary),
          ),
          Text(
            value,
            style: isBold
                ? getBoldTextStyle(
                    color: valueColor ?? ColorManager.textPrimary)
                : getBoldTextStyle(
                    color: valueColor ?? ColorManager.textPrimary),
          ),
        ],
      ),
    );
  }
}
