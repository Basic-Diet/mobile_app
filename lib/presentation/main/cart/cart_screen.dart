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
import 'package:go_router/go_router.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = '/cart';

  const CartScreen({super.key});

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
          'cart'.tr(),
          style: getBoldTextStyle(
            color: ColorManager.textPrimary,
            fontSize: FontSizeManager.s18.sp,
          ),
        ),
      ),
      body: BlocBuilder<CartBloc, CartState>(
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

          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: AppPadding.p16.w),
                  itemCount: state.items.length,
                  itemBuilder: (context, index) {
                    final item = state.items[index];
                    return _CartItemTile(item: item);
                  },
                ),
              ),
              if (state.previewTotalHalala != null)
                Padding(
                  padding: EdgeInsets.all(AppPadding.p16.r),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'previewTotal'.tr(),
                        style: getBoldTextStyle(
                          color: ColorManager.textPrimary,
                          fontSize: FontSizeManager.s16.sp,
                        ),
                      ),
                      Text(
                        '${(state.previewTotalHalala! / 100).toStringAsFixed(2)} ${Strings.sar.tr()}',
                        style: getBoldTextStyle(
                          color: ColorManager.brandPrimary,
                          fontSize: FontSizeManager.s16.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              Padding(
                padding: EdgeInsets.all(AppPadding.p16.r),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: state.canCheckout
                        ? () => context.push('/checkout')
                        : null,
                    child: Text(Strings.confirmAndPay.tr()),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _CartItemTile extends StatelessWidget {
  final CartItem item;

  const _CartItemTile({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: AppPadding.p12.h),
      child: Padding(
        padding: EdgeInsets.all(AppPadding.p12.r),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: getBoldTextStyle(
                      color: ColorManager.textPrimary,
                      fontSize: FontSizeManager.s14.sp,
                    ),
                  ),
                  SizedBox(height: AppSize.s4.h),
                  Text(
                    item.itemType,
                    style: getRegularTextStyle(
                      color: ColorManager.textSecondary,
                      fontSize: FontSizeManager.s12.sp,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.remove_circle_outline),
                  onPressed: () {
                    context.read<CartBloc>().add(
                      UpdateQtyEvent(item.id, item.qty - 1),
                    );
                  },
                ),
                Text(
                  '${item.qty}',
                  style: getBoldTextStyle(
                    color: ColorManager.textPrimary,
                    fontSize: FontSizeManager.s14.sp,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add_circle_outline),
                  onPressed: () {
                    context.read<CartBloc>().add(
                      UpdateQtyEvent(item.id, item.qty + 1),
                    );
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.delete_outline, color: Colors.red),
                  onPressed: () {
                    context.read<CartBloc>().add(
                      RemoveItemEvent(item.id),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
