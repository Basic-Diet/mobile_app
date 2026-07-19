import 'package:basic_diet/domain/model/order_menu_model.dart';
import 'package:basic_diet/presentation/main/menu/models/menu_models.dart';
import 'package:basic_diet/presentation/main/menu/widgets/menu_section_header.dart';
import 'package:basic_diet/presentation/main/menu/widgets/product_cards/builder_product_card.dart';
import 'package:basic_diet/presentation/main/menu/widgets/product_cards/list_product_card.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class DynamicSection extends StatelessWidget {
  final MenuSectionData section;
  final String currency;
  final List<OrderMenuProductModel> products;
  final ValueChanged<OrderMenuProductModel> onProductSelected;

  const DynamicSection({
    super.key,
    required this.section,
    required this.currency,
    required this.products,
    required this.onProductSelected,
  });

  @override
  Widget build(BuildContext context) {
    Widget buildProductCard(OrderMenuProductModel product) {
      switch (product.cardSize) {
        case ProductCardSize.large:
          return BuilderProductCard(
            product: product,
            imageUrl: product.imageUrl,
            currency: currency,
            onTap: () => onProductSelected(product),
          );
        case ProductCardSize.small:
        case ProductCardSize.medium:
          return ListProductCard(
            product: product,
            currency: currency,
            onTap: () => onProductSelected(product),
          );
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MenuSectionHeader(title: section.title, subtitle: section.subtitle),
        Gap(AppSize.s14.h),
        if (products.isEmpty)
          EmptyStateCard(message: Strings.noProductsAvailable.tr())
        else
          Column(
            children:
                products
                    .map(
                      (product) => Padding(
                        padding: EdgeInsetsDirectional.only(
                          bottom: AppPadding.p12.h,
                        ),
                        child: buildProductCard(product),
                      ),
                    )
                    .toList(),
          ),
      ],
    );
  }
}

class EmptyStateCard extends StatelessWidget {
  final String message;

  const EmptyStateCard({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsetsDirectional.all(AppPadding.p18.r),
      decoration: BoxDecoration(
        color: ColorManager.backgroundSurface,
        borderRadius: BorderRadius.circular(AppSize.s20.r),
      ),
      child: Text(
        message,
        style: getRegularTextStyle(
          fontSize: FontSizeManager.s13.sp,
          color: ColorManager.textSecondary,
        ),
      ),
    );
  }
}
