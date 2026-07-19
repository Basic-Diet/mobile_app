import 'dart:ui' as ui;

import 'package:basic_diet/domain/model/order_menu_model.dart';
import 'package:basic_diet/presentation/main/menu/utils/menu_utils.dart';
import 'package:basic_diet/presentation/main/menu/widgets/menu_media_box.dart';
import 'package:basic_diet/presentation/main/menu/widgets/product_cart_action.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class BuilderProductCard extends StatelessWidget {
  final OrderMenuProductModel product;
  final String currency;
  final String? imageUrl;
  final VoidCallback onTap;

  const BuilderProductCard({
    super.key,
    required this.product,
    required this.currency,
    required this.onTap,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final isArabic = context.locale.languageCode == 'ar';

    return Material(
      color: ColorManager.backgroundSurface,
      borderRadius: BorderRadius.circular(AppSize.s26.r),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppSize.s26.r),
        child: Container(
          constraints: BoxConstraints(minHeight: AppSize.s188.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s26.r),
            border: Border.all(
              color: Colors.white.withValues(alpha: 0.86),
              width: 1,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppSize.s26.r),
            child: Stack(
              fit: StackFit.passthrough,
              children: [
                Positioned.fill(
                  child: MenuMediaBox(
                    label: initials(
                      product.displayName(context.locale.toString()),
                      context,
                    ),
                    imageUrl: imageUrl,
                    borderRadius: AppSize.s26.r,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors:
                          isArabic
                              ? [
                                Colors.white.withValues(alpha: 0.0),
                                Colors.white.withValues(alpha: 0.35),
                                Colors.white.withValues(alpha: 0.94),
                                Colors.white.withValues(alpha: 1),
                              ]
                              : [
                                Colors.white.withValues(alpha: 1),
                                Colors.white.withValues(alpha: 0.94),
                                Colors.white.withValues(alpha: 0.35),
                                Colors.white.withValues(alpha: 0.0),
                              ],
                      stops: const [0.0, 0.32, 0.78, 1.0],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(
                    AppPadding.p18.w,
                    AppPadding.p16.h,
                    AppPadding.p18.w,
                    AppPadding.p16.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        product.displayName(context.locale.toString()),
                        textAlign: TextAlign.right,
                        style: getBoldTextStyle(
                          fontSize: FontSizeManager.s18.sp,
                          color: const Color(0xFF112B22),
                        ),
                      ),
                      Gap(AppSize.s4.h),
                      Text(
                        productDescription(product, context),
                        textAlign: TextAlign.right,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: getBoldTextStyle(
                          fontSize: FontSizeManager.s13.sp,
                          color: ColorManager.textSecondary,
                        ),
                      ),
                      Gap(AppSize.s16.h),
                      Directionality(
                        textDirection: ui.TextDirection.ltr,
                        child: Text(
                          productPriceLabel(product, currency),
                          textAlign: TextAlign.right,
                          style: getBoldTextStyle(
                            fontSize: FontSizeManager.s13.sp,
                            color: const Color(0xFF12382C),
                          ),
                        ),
                      ),
                      Gap(AppSize.s10.h),
                      ProductCartAction(
                        product: product,
                        onTap: onTap,
                        ctaWidth: AppSize.s120.w,
                      ),
                    ],
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
