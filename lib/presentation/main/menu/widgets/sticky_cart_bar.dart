import 'package:basic_diet/presentation/main/cart/bloc/cart_bloc.dart';
import 'package:basic_diet/presentation/main/cart/bloc/cart_state.dart';
import 'package:basic_diet/presentation/main/menu/utils/menu_utils.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class StickyCartBar extends StatelessWidget {
  final String currency;

  const StickyCartBar({
    super.key,
    required this.currency,
  });

  @override
  Widget build(BuildContext context) {
    return PositionedDirectional(
      start: AppPadding.p16.w,
      end: AppPadding.p16.w,
      bottom: AppPadding.p10.h,
      child: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          if (state is! CartLoaded || state.items.isEmpty) {
            return const SizedBox.shrink();
          }

          final previewTotal = state.items.fold<int>(
            0,
            (sum, item) => sum + ((item.unitPriceHalala ?? 0) * item.qty),
          );

          return Material(
            color: ColorManager.brandPrimary,
            borderRadius: BorderRadius.circular(AppSize.s99.r),
            child: InkWell(
              onTap: () => openCart(context),
              borderRadius: BorderRadius.circular(AppSize.s99.r),
              child: Container(
                height: AppSize.s54.h,
                padding: EdgeInsetsDirectional.only(
                  start: AppPadding.p20.w,
                  end: AppPadding.p20.w,
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
                    Gap(AppSize.s12.w),
                    Expanded(
                      child: Text(
                        Strings.viewCart.tr(),
                        style: getBoldTextStyle(
                          fontSize: FontSizeManager.s15.sp,
                          color: ColorManager.backgroundSurface,
                        ),
                      ),
                    ),
                    Text(
                      formatHalala(previewTotal, currency),
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s16.sp,
                        color: ColorManager.backgroundSurface,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
