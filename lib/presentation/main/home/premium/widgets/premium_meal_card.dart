import 'package:basic_diet/domain/model/premium_meals_model.dart';
import 'package:basic_diet/presentation/main/home/premium/widgets/meal_counter.dart';
import 'package:basic_diet/presentation/main/home/premium/widgets/meal_image.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class PremiumMealCard extends StatelessWidget {
  final PremiumMealModel meal;
  final int quantity;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const PremiumMealCard({
    super.key,
    required this.meal,
    required this.quantity,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    final localeCode = Localizations.localeOf(context).languageCode;
    final title = meal.displayName(localeCode);
    final subtitle = meal.displayDescription(localeCode);

    return Container(
      decoration: BoxDecoration(
        color: ColorManager.backgroundSurface,
        borderRadius: BorderRadius.circular(AppSize.s16.r),
        border: Border(
          top: BorderSide(color: ColorManager.brandAccent, width: 3),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorManager.brandAccentGlow,
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MealImage(imageUrl: meal.imageUrl),
          Padding(
            padding: EdgeInsetsDirectional.all(AppPadding.p16.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title.isNotEmpty ? title : meal.ui.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: getBoldTextStyle(
                    color: ColorManager.textPrimary,
                    fontSize: FontSizeManager.s16.sp,
                  ).copyWith(height: 24 / 16),
                ),
                if ((subtitle.isNotEmpty ? subtitle : meal.ui.subtitle).isNotEmpty) ...[
                  Gap(AppSize.s8.h),
                  Text(
                    subtitle.isNotEmpty ? subtitle : meal.ui.subtitle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: getRegularTextStyle(
                      color: ColorManager.textSecondary,
                      fontSize: FontSizeManager.s14.sp,
                    ).copyWith(height: 22.75 / 14),
                  ),
                ],
                Gap(AppSize.s16.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        meal.priceLabel,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: getBoldTextStyle(
                          color: ColorManager.brandAccent,
                          fontSize: FontSizeManager.s24.sp,
                        ).copyWith(height: 32 / 24),
                      ),
                    ),
                    Gap(AppSize.s12.w),
                    MealCounter(
                      quantity: quantity,
                      onIncrement: onIncrement,
                      onDecrement: onDecrement,
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
}
