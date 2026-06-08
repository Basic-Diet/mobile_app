import 'package:basic_diet/domain/model/order_menu_model.dart';
import 'package:basic_diet/presentation/main/menu/utils/menu_utils.dart';
import 'package:basic_diet/presentation/main/menu/widgets/menu_media_box.dart';
import 'package:basic_diet/presentation/main/menu/widgets/product_badge.dart';
import 'package:basic_diet/presentation/main/menu/widgets/product_cart_action.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ListProductCard extends StatelessWidget {
  final OrderMenuProductModel product;
  final String currency;
  final VoidCallback onTap;

  const ListProductCard({
    super.key,
    required this.product,
    required this.currency,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white.withValues(alpha: 0.96),
      borderRadius: BorderRadius.circular(AppSize.s22.r),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppSize.s22.r),
        child: Container(
          constraints: BoxConstraints(minHeight: AppSize.s118.h),
          padding: EdgeInsetsDirectional.symmetric(
            horizontal: AppPadding.p16.w,
            vertical: AppPadding.p14.h,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s22.r),
            border: Border.all(
              color: Colors.white.withValues(alpha: 0.84),
              width: 1,
            ),
          ),
          child: Row(
            children: [
              SizedBox(
                width: AppSize.s100.w,
                height: AppSize.s130.h,
                child: AspectRatio(
                  aspectRatio: product.imageRatio ?? 1,
                  child: MenuMediaBox(
                    label: initials(
                      product.displayName(context.locale.toString()),
                      context,
                    ),
                    imageUrl: product.imageUrl,
                    borderRadius: AppSize.s18.r,
                  ),
                ),
              ),
              Gap(AppSize.s14.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    if (product.badge.isNotEmpty) ...[
                      ProductBadge(label: product.badge),
                      Gap(AppSize.s6.h),
                    ],
                    Text(
                      product.displayName(context.locale.toString()),
                      textAlign: TextAlign.right,
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s16.sp,
                        color: const Color(0xFF112B22),
                      ),
                    ),
                    Gap(AppSize.s3.h),
                    Text(
                      productDescription(product, context),
                      textAlign: TextAlign.right,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s12.sp,
                        color: ColorManager.textSecondary,
                      ),
                    ),
                    Gap(AppSize.s8.h),
                    Text(
                      productPriceLabel(product, currency),
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s14.sp,
                        color: const Color(0xFF12382C),
                      ),
                    ),
                    Gap(AppSize.s10.h),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: ProductCartAction(
                        product: product,
                        onTap: onTap,
                        ctaWidth: AppSize.s120.w,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
