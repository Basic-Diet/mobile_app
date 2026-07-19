import 'package:basic_diet/domain/model/order_menu_model.dart';
import 'package:basic_diet/presentation/main/cart/bloc/cart_bloc.dart';
import 'package:basic_diet/presentation/main/cart/bloc/cart_event.dart';
import 'package:basic_diet/presentation/main/cart/bloc/cart_state.dart';
import 'package:basic_diet/presentation/main/menu/utils/menu_utils.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCartAction extends StatelessWidget {
  final OrderMenuProductModel product;
  final VoidCallback onTap;
  final double? ctaWidth;

  const ProductCartAction({
    super.key,
    required this.product,
    required this.onTap,
    this.ctaWidth,
  });

  @override
  Widget build(BuildContext context) {
    if (product.resolvedRequiresBuilder) {
      return ProductCtaButton(
        label: productCtaLabel(product, context),
        onTap: onTap,
        width: ctaWidth,
      );
    }

    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        final cartItem = directCartItem(state, product.id);
        if (cartItem == null) {
          return SquareAddButton(onTap: onTap);
        }

        return SmallQuantityButton(
          quantity: cartItem.qty,
          onIncrease: onTap,
          onDecrease: () {
            final nextQty = cartItem.qty - 1;
            context.read<CartBloc>().add(
              UpdateQtyEvent(cartItem.compositeKey, nextQty),
            );
          },
        );
      },
    );
  }
}

class SquareAddButton extends StatelessWidget {
  final VoidCallback onTap;

  const SquareAddButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorManager.brandPrimary,
      borderRadius: BorderRadius.circular(AppSize.s15.r),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppSize.s15.r),
        child: SizedBox(
          width: AppSize.s40.w,
          height: AppSize.s40.w,
          child: const Icon(
            Icons.add,
            color: ColorManager.backgroundSurface,
            size: 22,
          ),
        ),
      ),
    );
  }
}

class ProductCtaButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final double? width;

  const ProductCtaButton({
    super.key,
    required this.label,
    required this.onTap,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorManager.brandPrimary,
      borderRadius: BorderRadius.circular(AppSize.s15.r),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppSize.s15.r),
        child: Container(
          width: width,
          height: AppSize.s40.h,
          constraints: BoxConstraints(minWidth: AppSize.s76.w),
          padding: EdgeInsetsDirectional.symmetric(
            horizontal: AppPadding.p12.w,
          ),
          alignment: Alignment.center,
          child: Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: getBoldTextStyle(
              fontSize: FontSizeManager.s11.sp,
              color: ColorManager.backgroundSurface,
            ),
          ),
        ),
      ),
    );
  }
}

class SmallQuantityButton extends StatelessWidget {
  final int quantity;
  final VoidCallback onIncrease;
  final VoidCallback onDecrease;

  const SmallQuantityButton({
    super.key,
    required this.quantity,
    required this.onIncrease,
    required this.onDecrease,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s40.h,
      padding: EdgeInsetsDirectional.symmetric(horizontal: AppPadding.p4.w),
      decoration: BoxDecoration(
        color: ColorManager.brandPrimary,
        borderRadius: BorderRadius.circular(AppSize.s15.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SmallQuantityIconButton(icon: Icons.remove, onTap: onDecrease),
          Container(
            constraints: BoxConstraints(minWidth: AppSize.s24.w),
            alignment: Alignment.center,
            child: Text(
              '$quantity',
              style: getBoldTextStyle(
                fontSize: FontSizeManager.s13.sp,
                color: ColorManager.backgroundSurface,
              ),
            ),
          ),
          SmallQuantityIconButton(icon: Icons.add, onTap: onIncrease),
        ],
      ),
    );
  }
}

class SmallQuantityIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const SmallQuantityIconButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppSize.s12.r),
        child: SizedBox(
          width: AppSize.s28.w,
          height: AppSize.s32.h,
          child: Icon(
            icon,
            color: ColorManager.backgroundSurface,
            size: AppSize.s18.w,
          ),
        ),
      ),
    );
  }
}
