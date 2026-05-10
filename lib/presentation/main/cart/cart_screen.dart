import 'package:easy_localization/easy_localization.dart';
import 'package:basic_diet/presentation/main/cart/bloc/cart_bloc.dart';
import 'package:basic_diet/presentation/main/cart/bloc/cart_event.dart';
import 'package:basic_diet/presentation/main/cart/bloc/cart_state.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = '/cart';

  const CartScreen({super.key});

  void _handleCheckoutTap(BuildContext context, CartLoaded state) {
    if (!state.canCheckout) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(Strings.selectBranchAndPickupWindow.tr()),
        ),
      );
      return;
    }

    context.push('/checkout', extra: state);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: EdgeInsetsDirectional.only(start: AppPadding.p4.w),
          child: GestureDetector(
            onTap: () => context.pop(),
            child: Container(
              width: AppSize.s42.w,
              height: AppSize.s42.w,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.92),
                borderRadius: BorderRadius.circular(AppSize.s14.r),
                border: Border.all(
                  color: Colors.white.withValues(alpha: 0.78),
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF11382C).withValues(alpha: 0.04),
                    blurRadius: 8,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  '‹',
                  style: getBoldTextStyle(
                    fontSize: FontSizeManager.s24.sp,
                    color: const Color(0xFF112B22),
                  ),
                ),
              ),
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Strings.cart.tr(),
              style: getBoldTextStyle(
                color: ColorManager.textPrimary,
                fontSize: FontSizeManager.s22.sp,
              ),
            ),
            Gap(AppSize.s3.h),
            Text(
              Strings.oneTimeOrdersSubtitle.tr(),
              style: getRegularTextStyle(
                color: ColorManager.textSecondary,
                fontSize: FontSizeManager.s12.sp,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            if (state is! CartLoaded) return const SizedBox.shrink();

            if (state.items.isEmpty) {
              return Center(
                child: Text(
                  'emptyCart'.tr(),
                  style: getRegularTextStyle(color: ColorManager.textSecondary),
                ),
              );
            }

            final subtotal = state.items.fold<int>(
              0,
              (sum, item) => sum + ((item.unitPriceHalala ?? 0) * item.qty),
            );

            return Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: AppPadding.p16.w),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: AppPadding.p12.h),
                          padding: EdgeInsetsDirectional.all(AppPadding.p14.r),
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
                              width: 1,
                            ),
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.storefront_outlined,
                                color: ColorManager.stateSuccessEmphasis,
                                size: 20,
                              ),
                              Gap(AppSize.s8.w),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      Strings.pickupFromBranchOnlyTitle.tr(),
                                      style: getBoldTextStyle(
                                        fontSize: FontSizeManager.s12.sp,
                                        color: const Color(0xFF12382C),
                                      ),
                                    ),
                                    Gap(AppSize.s2.h),
                                    Text(
                                      Strings.deliveryNotAvailableForOrders.tr(),
                                      style: getBoldTextStyle(
                                        fontSize: FontSizeManager.s12.sp,
                                        color: const Color(0xFF12382C).withValues(alpha: 0.85),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: AppPadding.p12.h),
                          padding: EdgeInsetsDirectional.all(AppPadding.p16.r),
                          decoration: BoxDecoration(
                            color: ColorManager.backgroundSurface,
                            borderRadius: BorderRadius.circular(AppSize.s20.r),
                            border: Border.all(
                              color: ColorManager.whiteColor,
                              width: 1,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xFF11382C).withValues(alpha: 0.06),
                                blurRadius: 12,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Column(
                            children: state.items.map((item) => _CartItemTile(item: item)).toList(),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: AppPadding.p12.h),
                          padding: EdgeInsetsDirectional.all(AppPadding.p16.r),
                          decoration: BoxDecoration(
                            color: ColorManager.backgroundSurface,
                            borderRadius: BorderRadius.circular(AppSize.s20.r),
                            border: Border.all(
                              color: ColorManager.whiteColor,
                              width: 1,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xFF11382C).withValues(alpha: 0.06),
                                blurRadius: 12,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Strings.orderSummary.tr(),
                                style: getBoldTextStyle(
                                  color: ColorManager.textPrimary,
                                  fontSize: FontSizeManager.s16.sp,
                                ),
                              ),
                              Gap(AppSize.s12.h),
                              _SummaryRow(label: Strings.subtotal.tr(), value: _formatPrice(subtotal)),
                              Gap(AppSize.s8.h),
                              _SummaryRow(label: Strings.pickupFee.tr(), value: Strings.free.tr()),
                              Gap(AppSize.s8.h),
                              _SummaryRow(label: Strings.tax.tr(), value: Strings.vatIncludedInPrice.tr()),
                              Gap(AppSize.s6.h),
                              Container(
                                padding: EdgeInsetsDirectional.only(top: AppPadding.p12.h),
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(
                                      color: ColorManager.whiteColor,
                                      width: 1,
                                    ),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      Strings.total.tr(),
                                      style: getBoldTextStyle(
                                        color: ColorManager.textPrimary,
                                        fontSize: FontSizeManager.s16.sp,
                                      ),
                                    ),
                                    Text(
                                      _formatPrice(subtotal),
                                      style: getBoldTextStyle(
                                        color: ColorManager.stateSuccessEmphasis,
                                        fontSize: FontSizeManager.s18.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: AppPadding.p16.h),
                          padding: EdgeInsetsDirectional.all(AppPadding.p14.r),
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.78),
                            borderRadius: BorderRadius.circular(AppSize.s16.r),
                            border: Border.all(
                              color: Colors.black.withValues(alpha: 0.04),
                              width: 1,
                            ),
                          ),
                          child: Text(
                            Strings.finalPriceConfirmedBeforePayment.tr(),
                            textAlign: TextAlign.right,
                            style: getRegularTextStyle(
                              fontSize: FontSizeManager.s11_5.sp,
                              color: ColorManager.textSecondary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsetsDirectional.fromSTEB(
                    AppPadding.p16.w,
                    AppPadding.p12.h,
                    AppPadding.p16.w,
                    AppPadding.p20.h,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF7F3EB),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(AppSize.s99.r),
                      onTap: () => _handleCheckoutTap(context, state),
                      child: Ink(
                        height: AppSize.s54.h,
                        padding: EdgeInsetsDirectional.only(
                          start: AppPadding.p20.w,
                          end: AppPadding.p6.w,
                        ),
                        decoration: BoxDecoration(
                          color: state.canCheckout
                              ? const Color(0xFFFF8500)
                              : const Color(0xFFFF8500).withValues(alpha: 0.55),
                          borderRadius: BorderRadius.circular(AppSize.s99.r),
                          boxShadow: state.canCheckout
                              ? [
                                  BoxShadow(
                                    color: const Color(0xFFFF8500).withValues(alpha: 0.3),
                                    blurRadius: 12,
                                    offset: const Offset(0, 4),
                                  ),
                                ]
                              : null,
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: AppSize.s42.w,
                              height: AppSize.s42.w,
                              decoration: BoxDecoration(
                                color: Colors.white.withValues(alpha: 0.2),
                                shape: BoxShape.circle,
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                '${state.totalQty}',
                                style: getBoldTextStyle(
                                  fontSize: FontSizeManager.s13.sp,
                                  color: ColorManager.backgroundSurface,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                Strings.proceedToPayment.tr(),
                                textAlign: TextAlign.center,
                                style: getBoldTextStyle(
                                  fontSize: FontSizeManager.s15.sp,
                                  color: ColorManager.backgroundSurface,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(end: AppPadding.p8.w),
                              child: Text(
                                _formatPrice(subtotal),
                                style: getBoldTextStyle(
                                  fontSize: FontSizeManager.s16.sp,
                                  color: ColorManager.backgroundSurface,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  String _formatPrice(int halala) {
    final value = halala / 100;
    final display = value % 1 == 0 ? value.toStringAsFixed(0) : value.toStringAsFixed(2);
    return '$display ${Strings.sar.tr()}';
  }
}

class _SummaryRow extends StatelessWidget {
  final String label;
  final String value;

  const _SummaryRow({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: getRegularTextStyle(
            color: ColorManager.textSecondary,
            fontSize: FontSizeManager.s13.sp,
          ),
        ),
        Text(
          value,
          style: getBoldTextStyle(
            color: ColorManager.textPrimary,
            fontSize: FontSizeManager.s14.sp,
          ),
        ),
      ],
    );
  }
}

class _PickupDetailsSection extends StatelessWidget {
  final CartLoaded state;

  const _PickupDetailsSection({required this.state});

  @override
  Widget build(BuildContext context) {
    final hasBranchChoices = state.branchIds.isNotEmpty;
    final hasWindowChoices = state.availableWindows.isNotEmpty;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'pickupFromBranch'.tr(),
          style: getBoldTextStyle(
            color: ColorManager.textPrimary,
            fontSize: FontSizeManager.s16.sp,
          ),
        ),
        Gap(AppSize.s6.h),
        Text(
          Strings.selectBranchAndPickupWindow.tr(),
          style: getRegularTextStyle(
            color: ColorManager.textSecondary,
            fontSize: FontSizeManager.s12.sp,
          ),
        ),
        Gap(AppSize.s16.h),
        if (hasBranchChoices)
          _BranchSelector(
            branches: state.branchIds,
            selectedBranch: state.selectedBranchId,
          )
        else
          _TextBranchInput(),
        Gap(AppSize.s16.h),
        if (hasWindowChoices)
          _WindowSelector(
            windows: state.availableWindows,
            selectedWindow: state.selectedPickupWindow,
          )
        else
          _TextWindowInput(),
      ],
    );
  }
}

class _BranchSelector extends StatelessWidget {
  final List<String> branches;
  final String? selectedBranch;

  const _BranchSelector({
    required this.branches,
    required this.selectedBranch,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'branch'.tr(),
          style: getBoldTextStyle(
            color: ColorManager.textPrimary,
            fontSize: FontSizeManager.s14.sp,
          ),
        ),
        SizedBox(height: AppSize.s8.h),
        Wrap(
          spacing: AppSize.s8.w,
          runSpacing: AppSize.s8.h,
          children: branches.map((branchId) {
            final isSelected = selectedBranch == branchId;
            return ChoiceChip(
              label: Text(branchId),
              selected: isSelected,
              onSelected: (_) {
                context.read<CartBloc>().add(SelectBranchEvent(branchId));
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}

class _TextBranchInput extends StatefulWidget {
  @override
  State<_TextBranchInput> createState() => _TextBranchInputState();
}

class _TextBranchInputState extends State<_TextBranchInput> {
  static const String _defaultBranch = 'main';
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    final state = context.read<CartBloc>().state;
    final current =
        state is CartLoaded && state.selectedBranchId?.isNotEmpty == true
            ? state.selectedBranchId!
            : _defaultBranch;
    _controller = TextEditingController(text: current);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        context.read<CartBloc>().add(SelectBranchEvent(current));
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'branch'.tr(),
          style: getBoldTextStyle(
            color: ColorManager.textPrimary,
            fontSize: FontSizeManager.s14.sp,
          ),
        ),
        SizedBox(height: AppSize.s8.h),
        TextField(
          controller: _controller,
          decoration: InputDecoration(
            hintText: Strings.enterBranchId.tr(),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSize.s8.r),
            ),
          ),
          onChanged: (value) {
            context.read<CartBloc>().add(SelectBranchEvent(value.trim()));
          },
        ),
      ],
    );
  }
}

class _WindowSelector extends StatelessWidget {
  final List<String> windows;
  final String? selectedWindow;

  const _WindowSelector({
    required this.windows,
    required this.selectedWindow,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'pickupWindow'.tr(),
          style: getBoldTextStyle(
            color: ColorManager.textPrimary,
            fontSize: FontSizeManager.s14.sp,
          ),
        ),
        SizedBox(height: AppSize.s8.h),
        Wrap(
          spacing: AppSize.s8.w,
          runSpacing: AppSize.s8.h,
          children: windows.map((window) {
            final isSelected = selectedWindow == window;
            return ChoiceChip(
              label: Text(window),
              selected: isSelected,
              onSelected: (_) {
                context.read<CartBloc>().add(
                  SelectPickupWindowEvent(window),
                );
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}

class _TextWindowInput extends StatefulWidget {
  @override
  State<_TextWindowInput> createState() => _TextWindowInputState();
}

class _TextWindowInputState extends State<_TextWindowInput> {
  static const String _defaultWindow = '18:00-20:00';
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    final state = context.read<CartBloc>().state;
    final current =
        state is CartLoaded && state.selectedPickupWindow?.isNotEmpty == true
            ? state.selectedPickupWindow!
            : _defaultWindow;
    _controller = TextEditingController(text: current);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        context.read<CartBloc>().add(SelectPickupWindowEvent(current));
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'pickupWindow'.tr(),
          style: getBoldTextStyle(
            color: ColorManager.textPrimary,
            fontSize: FontSizeManager.s14.sp,
          ),
        ),
        SizedBox(height: AppSize.s8.h),
        TextField(
          controller: _controller,
          decoration: InputDecoration(
            hintText: Strings.pickupWindowExample.tr(),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSize.s8.r),
            ),
          ),
          onChanged: (value) {
            context.read<CartBloc>().add(
              SelectPickupWindowEvent(value.trim()),
            );
          },
        ),
      ],
    );
  }
}

class _CartItemTile extends StatelessWidget {
  final CartItem item;

  const _CartItemTile({required this.item});

  @override
  Widget build(BuildContext context) {
    final subtitle = <String>[];
    if (item.weightGrams != null) {
      subtitle.add(Strings.grams.tr(args: [item.weightGrams.toString()]));
    }
    if (item.selectedOptions.isNotEmpty) {
      subtitle.addAll(item.selectedOptions.map((o) => o.optionId));
    }

    return Container(
      padding: EdgeInsetsDirectional.symmetric(vertical: AppPadding.p14.h),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: ColorManager.whiteColor,
            width: 1,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: AppSize.s56.w,
            height: AppSize.s56.w,
            decoration: BoxDecoration(
              color: const Color(0xFFF7F3EB),
              borderRadius: BorderRadius.circular(AppSize.s12.r),
            ),
            alignment: Alignment.center,
            child: Text(
              _getEmojiForItem(item.name),
              style: TextStyle(fontSize: FontSizeManager.s26.sp),
            ),
          ),
          Gap(AppSize.s12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            item.name,
                            textAlign: TextAlign.right,
                            style: getBoldTextStyle(
                              color: ColorManager.textPrimary,
                              fontSize: FontSizeManager.s16.sp,
                            ),
                          ),
                          if (subtitle.isNotEmpty) ...[
                            Gap(AppSize.s3.h),
                            Text(
                              subtitle.join(' · '),
                              textAlign: TextAlign.right,
                              style: getRegularTextStyle(
                                color: ColorManager.textSecondary,
                                fontSize: FontSizeManager.s11_5.sp,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                    Gap(AppSize.s8.w),
                    if (item.unitPriceHalala != null)
                      Text(
                        _formatPrice(item.unitPriceHalala! * item.qty),
                        style: getBoldTextStyle(
                          color: ColorManager.stateSuccessEmphasis,
                          fontSize: FontSizeManager.s16.sp,
                        ),
                      ),
                  ],
                ),
                Gap(AppSize.s10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _QtyButton(
                      icon: Icons.remove,
                      onPressed: () {
                        context.read<CartBloc>().add(
                          UpdateQtyEvent(item.compositeKey, item.qty - 1),
                        );
                      },
                    ),
                    Gap(AppSize.s6.w),
                    Text(
                      '${item.qty}',
                      style: getBoldTextStyle(
                        color: ColorManager.textPrimary,
                        fontSize: FontSizeManager.s15.sp,
                      ),
                    ),
                    Gap(AppSize.s6.w),
                    _QtyButton(
                      icon: Icons.add,
                      onPressed: () {
                        context.read<CartBloc>().add(
                          UpdateQtyEvent(item.compositeKey, item.qty + 1),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _getEmojiForItem(String name) {
    if (name.contains('سلطة') || name.contains('salad')) return '🥗';
    if (name.contains('وجبة') || name.contains('meal')) return '🍽️';
    if (name.contains('عصير') || name.contains('juice')) return '🥤';
    if (name.contains('فواكه') || name.contains('fruit')) return '🍓';
    if (name.contains('زبادي') || name.contains('yogurt')) return '🥛';
    if (name.contains('ساندوتش') || name.contains('sandwich')) return '🥪';
    if (name.contains('برغر') || name.contains('burger')) return '🍔';
    return '🥗';
  }

  String _formatPrice(int halala) {
    final value = halala / 100;
    final display = value % 1 == 0 ? value.toStringAsFixed(0) : value.toStringAsFixed(2);
    return '$display ${Strings.sar.tr()}';
  }
}

class _QtyButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const _QtyButton({
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: AppSize.s28.w,
        height: AppSize.s28.w,
        decoration: BoxDecoration(
          color: const Color(0xFFF7F3EB),
          shape: BoxShape.circle,
          border: Border.all(
            color: ColorManager.whiteColor,
            width: 1,
          ),
        ),
        child: Icon(
          icon,
          color: ColorManager.stateSuccessEmphasis,
          size: AppSize.s16.w,
        ),
      ),
    );
  }
}
