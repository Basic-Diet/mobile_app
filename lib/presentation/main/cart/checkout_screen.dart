import 'dart:developer' as developer;

import 'package:easy_localization/easy_localization.dart';
import 'package:basic_diet/app/dependency_injection.dart';
import 'package:basic_diet/domain/model/create_order_request_model.dart';
import 'package:basic_diet/domain/model/one_time_order_model.dart';
import 'package:basic_diet/domain/model/order_quote_model.dart';
import 'package:basic_diet/domain/model/order_quote_request_model.dart';
import 'package:basic_diet/presentation/main/cart/bloc/cart_bloc.dart';
import 'package:basic_diet/presentation/main/cart/bloc/cart_event.dart';
import 'package:basic_diet/presentation/main/cart/bloc/cart_state.dart';
import 'package:basic_diet/presentation/main/cart/bloc/checkout_bloc.dart';
import 'package:basic_diet/presentation/main/cart/bloc/checkout_event.dart';
import 'package:basic_diet/presentation/main/cart/bloc/checkout_state.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
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
  static const String _paymentSuccessUrl =
      'https://basicdiet145.onrender.com/payment-success';
  static const String _paymentCancelUrl =
      'https://basicdiet145.onrender.com/payment-cancel';

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
    if (cartState == null) {
      return;
    }

    final items = cartState.items.map((item) {
      return OrderQuoteItemRequestModel(
        productId: item.productId,
        qty: item.qty,
        weightGrams: item.weightGrams,
        selectedOptions: item.selectedOptions.map((option) {
          return OrderQuoteSelectedOptionRequestModel(
            groupId: option.groupId,
            optionId: option.optionId,
            extraWeightGrams: option.extraWeightGrams,
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
    if (cartState == null) {
      return;
    }

    final items = cartState.items.map((item) {
      return CreateOrderItemRequestModel(
        productId: item.productId,
        qty: item.qty,
        weightGrams: item.weightGrams,
        selectedOptions: item.selectedOptions.map((option) {
          return CreateOrderSelectedOptionRequestModel(
            groupId: option.groupId,
            optionId: option.optionId,
            extraWeightGrams: option.extraWeightGrams,
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
          successUrl: _paymentSuccessUrl,
          backUrl: _paymentCancelUrl,
        ),
        idempotencyKey: _idempotencyKey,
      ),
    );
  }

  Future<void> _openPaymentWebView(
    String paymentUrl,
    OneTimeOrderModel order,
  ) async {
    final result = await context.push<bool?>(
      '/payment-webview',
      extra: {
        'paymentUrl': paymentUrl,
        'successUrl': _paymentSuccessUrl,
        'backUrl': _paymentCancelUrl,
      },
    );
    developer.log('Payment WebView returned: $result', name: 'checkout');

    if (!mounted) {
      return;
    }

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
      backgroundColor: const Color(0xFFF8FAF9),
      body: BlocListener<CheckoutBloc, CheckoutState>(
        listener: (context, state) {
          if (state is CheckoutLoaded &&
              state.createStatus == OrderCreateStatus.success &&
              state.verifyStatus == OrderVerifyStatus.initial &&
              state.order != null) {
            _openPaymentWebView(state.order!.paymentUrl, state.order!);
          }

          if (state is CheckoutLoaded &&
              state.verifyStatus == OrderVerifyStatus.success) {
            final orderId = state.order?.orderId;
            if (orderId != null) {
              context.read<CartBloc>().add(const ClearCartEvent());
              context.pushReplacement('/order-tracking', extra: orderId);
            }
          }

          if (state is CheckoutLoaded &&
              state.verifyStatus == OrderVerifyStatus.failure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  state.verifyErrorMessage ?? Strings.defaultError.tr(),
                ),
              ),
            );
          }
        },
        child: BlocBuilder<CheckoutBloc, CheckoutState>(
          builder: (context, state) {
            if (state is CheckoutInitial ||
                state is CheckoutLoaded &&
                    state.quoteStatus == OrderQuoteStatus.loading) {
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
              return _CheckoutView(
                cartState: _cartState,
                quote: state.quote!,
                createStatus: state.createStatus,
                verifyStatus: state.verifyStatus,
                createErrorMessage: state.createErrorMessage,
                verifyErrorMessage: state.verifyErrorMessage,
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

  const _ErrorView({
    required this.message,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(AppPadding.p24.r),
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
            ElevatedButton(
              onPressed: onRetry,
              child: Text(Strings.tryAgain.tr()),
            ),
          ],
        ),
      ),
    );
  }
}

class _CheckoutView extends StatelessWidget {
  final CartLoaded? cartState;
  final OrderQuoteModel quote;
  final OrderCreateStatus createStatus;
  final OrderVerifyStatus verifyStatus;
  final String? createErrorMessage;
  final String? verifyErrorMessage;
  final VoidCallback onConfirm;

  const _CheckoutView({
    required this.cartState,
    required this.quote,
    required this.createStatus,
    required this.verifyStatus,
    required this.createErrorMessage,
    required this.verifyErrorMessage,
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    final isLoading = createStatus == OrderCreateStatus.loading ||
        verifyStatus == OrderVerifyStatus.loading ||
        verifyStatus == OrderVerifyStatus.processing;
    final totalQty =
        cartState?.totalQty ?? quote.items.fold<int>(0, (sum, item) => sum + item.qty);
    final branchName = _resolveBranchName(cartState);
    final pickupWindow = _formatPickupWindow(cartState?.selectedPickupWindow);
    final total = _formatPrice(quote.pricing.totalHalala, quote.currency);

    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: AppPadding.p18.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: AppSize.s12.h),
                  _CheckoutHeader(
                    onBack: () => context.pop(),
                  ),
                  SizedBox(height: AppSize.s18.h),
                  const _TrustCard(),
                  SizedBox(height: AppSize.s12.h),
                  _MiniSummary(
                    totalQty: totalQty,
                    branchName: branchName,
                    pickupWindow: pickupWindow,
                  ),
                  SizedBox(height: AppSize.s12.h),
                  _PickupCard(
                    branchName: branchName,
                    pickupWindow: pickupWindow,
                  ),
                  SizedBox(height: AppSize.s12.h),
                  _PaymentSummaryCard(
                    quote: quote,
                    total: total,
                  ),
                  SizedBox(height: AppSize.s12.h),
                  _MutedNote(text: Strings.paymentConfirmationNote.tr()),
                  if (createStatus == OrderCreateStatus.failure) ...[
                    SizedBox(height: AppSize.s12.h),
                    _ErrorBanner(
                      message: createErrorMessage ?? Strings.defaultError.tr(),
                    ),
                  ],
                  if (verifyStatus == OrderVerifyStatus.processing) ...[
                    SizedBox(height: AppSize.s12.h),
                    _MutedNote(text: Strings.paymentProcessing.tr()),
                  ],
                  if (verifyStatus == OrderVerifyStatus.failure) ...[
                    SizedBox(height: AppSize.s12.h),
                    _ErrorBanner(
                      message:
                          verifyErrorMessage ?? Strings.paymentVerifyFailedMessage.tr(),
                    ),
                  ],
                  SizedBox(height: AppSize.s24.h),
                ],
              ),
            ),
          ),
          _StickyPaymentBar(
            total: total,
            isLoading: isLoading,
            onTap: onConfirm,
          ),
        ],
      ),
    );
  }

  String _resolveBranchName(CartLoaded? currentCartState) {
    final selectedBranchId = currentCartState?.selectedBranchId;
    if (selectedBranchId == null || selectedBranchId.isEmpty) {
      return Strings.branch.tr();
    }

    final branchData = currentCartState?.restaurantHours[selectedBranchId];
    if (branchData is Map<String, dynamic>) {
      final possibleName = branchData['name'] ??
          branchData['branchName'] ??
          branchData['label'] ??
          branchData['title'];
      if (possibleName is String && possibleName.trim().isNotEmpty) {
        return possibleName.trim();
      }
    }

    return selectedBranchId;
  }

  String _formatPickupWindow(String? pickupWindow) {
    if (pickupWindow == null || pickupWindow.trim().isEmpty) {
      return Strings.pickupWindow.tr();
    }

    return pickupWindow.replaceAll('-', ' – ');
  }

  String _formatPrice(int halala, String currency) {
    final value = halala / 100;
    final display =
        value % 1 == 0 ? value.toStringAsFixed(0) : value.toStringAsFixed(2);
    if (currency == 'SAR') {
      return '$display ${Strings.sar.tr()}';
    }

    return '$display $currency';
  }
}

class _CheckoutHeader extends StatelessWidget {
  final VoidCallback onBack;

  const _CheckoutHeader({required this.onBack});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onBack,
          child: Container(
            width: AppSize.s42.w,
            height: AppSize.s42.w,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.92),
              borderRadius: BorderRadius.circular(AppSize.s14.r),
              border: Border.all(
                color: Colors.white.withValues(alpha: 0.78),
                width: AppSize.s1.w,
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF11382C).withValues(alpha: 0.04),
                  blurRadius: AppSize.s8.r,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            alignment: Alignment.center,
            child: Text(
              '‹',
              style: getBoldTextStyle(
                fontSize: FontSizeManager.s24.sp,
                color: const Color(0xFF112B22),
              ),
            ),
          ),
        ),
        SizedBox(width: AppSize.s12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Strings.checkoutTitle.tr(),
                style: getBoldTextStyle(
                  color: ColorManager.textPrimary,
                  fontSize: FontSizeManager.s22.sp,
                ),
              ),
              SizedBox(height: AppSize.s3.h),
              Text(
                Strings.checkoutSubtitle.tr(),
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

class _TrustCard extends StatelessWidget {
  const _TrustCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppPadding.p14.r),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFE4F6EE),
            Color(0xFFFFFFFF),
          ],
        ),
        borderRadius: BorderRadius.circular(AppSize.s16.r),
        border: Border.all(
          color: const Color(0xFF0E9F6E).withValues(alpha: 0.12),
          width: AppSize.s1.w,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF11382C).withValues(alpha: 0.04),
            blurRadius: AppSize.s8.r,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: AppSize.s40.w,
            height: AppSize.s40.w,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.72),
              borderRadius: BorderRadius.circular(AppSize.s14.r),
            ),
            child: Icon(
              Icons.lock_outline_rounded,
              color: ColorManager.stateSuccessEmphasis,
              size: AppSize.s20.sp,
            ),
          ),
          SizedBox(width: AppSize.s10.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Strings.securePaymentTitle.tr(),
                  style: getBoldTextStyle(
                    fontSize: FontSizeManager.s14.sp,
                    color: const Color(0xFF12382C),
                  ),
                ),
                SizedBox(height: AppSize.s2.h),
                Text(
                  Strings.securePaymentSubtitle.tr(),
                  style: getRegularTextStyle(
                    fontSize: FontSizeManager.s12.sp,
                    color: const Color(0xFF12382C).withValues(alpha: 0.86),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _MiniSummary extends StatelessWidget {
  final int totalQty;
  final String branchName;
  final String pickupWindow;

  const _MiniSummary({
    required this.totalQty,
    required this.branchName,
    required this.pickupWindow,
  });

  @override
  Widget build(BuildContext context) {
    final productsLabel = totalQty == 1
        ? '1 ${Strings.productsCount.tr()}'
        : Strings.itemsCount.tr(args: [totalQty.toString()]);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: AppPadding.p12.w,
        vertical: AppPadding.p11.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.78),
        borderRadius: BorderRadius.circular(AppSize.s14.r),
        border: Border.all(
          color: Colors.black.withValues(alpha: 0.04),
          width: AppSize.s1.w,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: AppSize.s8.w,
            height: AppSize.s8.w,
            margin: EdgeInsets.only(top: AppSize.s5.h),
            decoration: const BoxDecoration(
              color: ColorManager.brandPrimary,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(width: AppSize.s10.w),
          Expanded(
            child: Text(
              '$productsLabel · $pickupWindow · $branchName',
              style: getRegularTextStyle(
                color: ColorManager.textPrimary,
                fontSize: FontSizeManager.s12.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PickupCard extends StatelessWidget {
  final String branchName;
  final String pickupWindow;

  const _PickupCard({
    required this.branchName,
    required this.pickupWindow,
  });

  @override
  Widget build(BuildContext context) {
    return _SurfaceCard(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  branchName,
                  style: getBoldTextStyle(
                    color: ColorManager.textPrimary,
                    fontSize: FontSizeManager.s14.sp,
                  ),
                ),
                SizedBox(height: AppSize.s4.h),
                Text(
                  '${Strings.pickupWindow.tr()} · $pickupWindow',
                  style: getRegularTextStyle(
                    color: ColorManager.textSecondary,
                    fontSize: FontSizeManager.s12.sp,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: AppSize.s12.w),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppPadding.p10.w,
              vertical: AppPadding.p6.h,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFFEBF5F0),
              borderRadius: BorderRadius.circular(AppSize.s99.r),
            ),
            child: Text(
              Strings.pickupOnly.tr(),
              style: getBoldTextStyle(
                color: const Color(0xFF12382C),
                fontSize: FontSizeManager.s11.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PaymentSummaryCard extends StatelessWidget {
  final OrderQuoteModel quote;
  final String total;

  const _PaymentSummaryCard({
    required this.quote,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return _SurfaceCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Strings.paymentSummary.tr(),
            style: getBoldTextStyle(
              color: ColorManager.textPrimary,
              fontSize: FontSizeManager.s16.sp,
            ),
          ),
          SizedBox(height: AppSize.s12.h),
          _SummaryRow(
            label: Strings.orderType.tr(),
            value: Strings.oneTimeOrder.tr(),
          ),
          SizedBox(height: AppSize.s10.h),
          _SummaryRow(
            label: Strings.paymentMethod.tr(),
            value: Strings.paymentMethodCardApplePay.tr(),
          ),
          SizedBox(height: AppSize.s10.h),
          _SummaryRow(
            label: Strings.vatIncluded.tr(),
            value: Strings.vatIncludedInPrice.tr(),
          ),
          if (quote.pricing.discountHalala > 0) ...[
            SizedBox(height: AppSize.s10.h),
            _SummaryRow(
              label: Strings.discount.tr(),
              value:
                  '-${_formatPrice(quote.pricing.discountHalala, quote.currency)}',
              valueColor: ColorManager.stateSuccessEmphasis,
            ),
          ],
          SizedBox(height: AppSize.s12.h),
          Container(
            padding: EdgeInsets.only(top: AppPadding.p12.h),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: ColorManager.borderDefault,
                  width: AppSize.s1.w,
                ),
              ),
            ),
            child: _SummaryRow(
              label: Strings.total.tr(),
              value: total,
              isEmphasized: true,
            ),
          ),
        ],
      ),
    );
  }

  String _formatPrice(int halala, String currency) {
    final value = halala / 100;
    final display =
        value % 1 == 0 ? value.toStringAsFixed(0) : value.toStringAsFixed(2);
    if (currency == 'SAR') {
      return '$display ${Strings.sar.tr()}';
    }

    return '$display $currency';
  }
}

class _MutedNote extends StatelessWidget {
  final String text;

  const _MutedNote({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: AppPadding.p14.w,
        vertical: AppPadding.p11.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.78),
        borderRadius: BorderRadius.circular(AppSize.s16.r),
        border: Border.all(
          color: Colors.black.withValues(alpha: 0.04),
          width: AppSize.s1.w,
        ),
      ),
      child: Text(
        text,
        style: getRegularTextStyle(
          fontSize: FontSizeManager.s11_5.sp,
          color: ColorManager.textSecondary,
        ),
      ),
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
      padding: EdgeInsets.all(AppPadding.p14.r),
      decoration: BoxDecoration(
        color: ColorManager.stateErrorSurface,
        borderRadius: BorderRadius.circular(AppSize.s16.r),
        border: Border.all(
          color: ColorManager.stateErrorBorder,
          width: AppSize.s1.w,
        ),
      ),
      child: Text(
        message,
        style: getRegularTextStyle(
          color: ColorManager.stateErrorEmphasis,
          fontSize: FontSizeManager.s12.sp,
        ),
      ),
    );
  }
}

class _StickyPaymentBar extends StatelessWidget {
  final String total;
  final bool isLoading;
  final VoidCallback onTap;

  const _StickyPaymentBar({
    required this.total,
    required this.isLoading,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.fromSTEB(
        AppPadding.p18.w,
        AppPadding.p12.h,
        AppPadding.p18.w,
        AppPadding.p20.h,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF7F3EB),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: AppSize.s12.r,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(AppSize.s99.r),
          onTap: isLoading ? null : onTap,
          child: Ink(
            height: AppSize.s54.h,
            padding: EdgeInsetsDirectional.only(
              start: AppPadding.p20.w,
              end: AppPadding.p18.w,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFFFF8500),
              borderRadius: BorderRadius.circular(AppSize.s99.r),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFFFF8500).withValues(alpha: 0.30),
                  blurRadius: AppSize.s12.r,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              children: [
                SizedBox(
                  width: AppSize.s20.w,
                  height: AppSize.s20.w,
                  child: isLoading
                      ? CircularProgressIndicator(
                          strokeWidth: AppSize.s2.w,
                          valueColor: const AlwaysStoppedAnimation<Color>(
                            ColorManager.textInverse,
                          ),
                        )
                      : null,
                ),
                Expanded(
                  child: Text(
                    Strings.openPaymentPage.tr(),
                    textAlign: TextAlign.center,
                    style: getBoldTextStyle(
                      fontSize: FontSizeManager.s15.sp,
                      color: ColorManager.textInverse,
                    ),
                  ),
                ),
                Text(
                  total,
                  style: getBoldTextStyle(
                    fontSize: FontSizeManager.s16.sp,
                    color: ColorManager.textInverse,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SurfaceCard extends StatelessWidget {
  final Widget child;

  const _SurfaceCard({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppPadding.p16.r),
      decoration: BoxDecoration(
        color: ColorManager.backgroundSurface,
        borderRadius: BorderRadius.circular(AppSize.s20.r),
        border: Border.all(
          color: ColorManager.borderSubtle,
          width: AppSize.s1.w,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF11382C).withValues(alpha: 0.06),
            blurRadius: AppSize.s12.r,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: child,
    );
  }
}

class _SummaryRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isEmphasized;
  final Color? valueColor;

  const _SummaryRow({
    required this.label,
    required this.value,
    this.isEmphasized = false,
    this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: isEmphasized
              ? getBoldTextStyle(
                  color: ColorManager.textPrimary,
                  fontSize: FontSizeManager.s16.sp,
                )
              : getRegularTextStyle(
                  color: ColorManager.textSecondary,
                  fontSize: FontSizeManager.s13.sp,
                ),
        ),
        Text(
          value,
          style: getBoldTextStyle(
            color: valueColor ??
                (isEmphasized
                    ? ColorManager.stateSuccessEmphasis
                    : ColorManager.textPrimary),
            fontSize:
                isEmphasized ? FontSizeManager.s18.sp : FontSizeManager.s14.sp,
          ),
        ),
      ],
    );
  }
}
