import 'package:easy_localization/easy_localization.dart';
import 'package:basic_diet/presentation/main/home/premium/bloc/premium_meals_bloc.dart';
import 'package:basic_diet/presentation/main/home/premium/bloc/premium_meals_event.dart';
import 'package:basic_diet/presentation/main/home/premium/bloc/premium_meals_state.dart';
import 'package:basic_diet/presentation/main/home/premium/widgets/bottom_actions.dart';
import 'package:basic_diet/presentation/main/home/premium/widgets/premium_info_banner.dart';
import 'package:basic_diet/presentation/main/home/premium/widgets/premium_meal_card.dart';
import 'package:basic_diet/presentation/main/home/subscription/bloc/subscription_bloc.dart';
import 'package:basic_diet/presentation/main/home/subscription/bloc/subscription_state.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class PremiumMealsSuccessView extends StatelessWidget {
  final PremiumMealsSuccess state;

  const PremiumMealsSuccessView({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    final subscriptionBloc = context.read<SubscriptionBloc>();
    final subscriptionState = subscriptionBloc.state;

    int maxPremiumMeals = 0;
    if (subscriptionState is SubscriptionSuccess &&
        subscriptionState.selectedPlan != null &&
        subscriptionState.selectedMealOption != null) {
      maxPremiumMeals =
          subscriptionState.selectedPlan!.daysCount *
          subscriptionState.selectedMealOption!.mealsPerDay;
    }

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: AppPadding.p16.w,
              vertical: AppPadding.p20.h,
            ),
            child: Column(
              children: [
                const PremiumInfoBanner(),
                Gap(AppSize.s16.h),
                ...state.premiumMealsModel.meals.map((meal) {
                  final quantity = state.mealCounters[meal.premiumKey] ?? 0;
                  return Padding(
                    padding: EdgeInsetsDirectional.only(bottom: AppSize.s16.h),
                    child: PremiumMealCard(
                      meal: meal,
                      quantity: quantity,
                      onIncrement: () {
                        final currentTotal = state.mealCounters.values
                            .fold<int>(0, (sum, qty) => sum + qty);
                        if (currentTotal >= maxPremiumMeals &&
                            maxPremiumMeals > 0) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(Strings.premiumLimitExceeded.tr()),
                              behavior: SnackBarBehavior.floating,
                            ),
                          );
                          return;
                        }
                        context.read<PremiumMealsBloc>().add(
                          UpdateMealCounterEvent(meal.premiumKey, quantity + 1),
                        );
                      },
                      onDecrement:
                          () => context.read<PremiumMealsBloc>().add(
                            UpdateMealCounterEvent(
                              meal.premiumKey,
                              quantity - 1,
                            ),
                          ),
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
        const PremiumMealsBottomActions(),
      ],
    );
  }
}
