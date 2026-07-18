import 'package:basic_diet/app/dependency_injection.dart';
import 'package:basic_diet/domain/model/addon_subscription_options_model.dart';
import 'package:basic_diet/presentation/main/home/add-ons/bloc/add_ons_bloc.dart';
import 'package:basic_diet/presentation/main/home/add-ons/bloc/add_ons_event.dart';
import 'package:basic_diet/presentation/main/home/add-ons/bloc/add_ons_state.dart';
import 'package:basic_diet/presentation/main/home/delivery/delivery_method_screen.dart';
import 'package:basic_diet/presentation/main/home/subscription/bloc/subscription_bloc.dart';
import 'package:basic_diet/presentation/main/home/subscription/bloc/subscription_event.dart';
import 'package:basic_diet/presentation/main/home/subscription/bloc/subscription_state.dart';
import 'package:basic_diet/presentation/main/home/subscription/subscription_screen.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:basic_diet/presentation/widgets/subscription_step_intro_card.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class AddOnsScreen extends StatelessWidget {
  static const String addOnsRoute = '/add_ons';

  const AddOnsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final subscriptionState = context.read<SubscriptionBloc>().state;
    final selectedPlanId =
        subscriptionState is SubscriptionSuccess
            ? subscriptionState.selectedPlan?.id ?? ''
            : '';
    final selectedIds =
        subscriptionState is SubscriptionSuccess
            ? subscriptionState.selectedAddOns.map((addon) => addon.id).toSet()
            : <String>{};

    if (selectedPlanId.isEmpty) {
      return _Scaffold(
        body: _ErrorView(message: Strings.selectValidPlanAgain.tr()),
      );
    }

    return BlocProvider(
      create:
          (_) =>
              instance<AddOnsBloc>()..add(
                GetAddOnsEvent(
                  planId: selectedPlanId,
                  initiallySelectedIds: selectedIds,
                ),
              ),
      child: _Scaffold(
        body: _AddOnsBody(planId: selectedPlanId),
        bottomNavigationBar: const _BottomActions(),
      ),
    );
  }
}

class _Scaffold extends StatelessWidget {
  final Widget body;
  final Widget? bottomNavigationBar;

  const _Scaffold({required this.body, this.bottomNavigationBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backgroundSurface,
      appBar: AppBar(
        backgroundColor: ColorManager.backgroundSurface,
        elevation: 0,
        centerTitle: false,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: ColorManager.textPrimary,
            size: AppSize.s20.sp,
          ),
        ),
        title: Text(
          Strings.addOns.tr(),
          style: getBoldTextStyle(
            color: ColorManager.textPrimary,
            fontSize: FontSizeManager.s18.sp,
          ),
        ),
        bottom: const _DividerBottom(),
      ),
      body: SafeArea(child: body),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}

class _AddOnsBody extends StatelessWidget {
  final String planId;

  const _AddOnsBody({required this.planId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddOnsBloc, AddOnsState>(
      builder:
          (context, state) => switch (state) {
            AddOnsInitial() || AddOnsLoading() => const _LoadingView(),
            AddOnsError() => _buildError(context, state),
            AddOnsSuccess() when state.options.addons.isEmpty =>
              const _EmptyView(),
            AddOnsSuccess() => _AddOnsListView(
              addOns: state.options.addons,
              selectedAddOns: state.selectedAddOns,
            ),
          },
    );
  }

  Widget _buildError(BuildContext context, AddOnsError state) {
    final code = state.code?.toString().toUpperCase() ?? '';
    final isPlanError =
        code == '400' ||
        code == '404' ||
        code == 'VALIDATION_ERROR' ||
        code == 'NOT_FOUND';
    return _ErrorView(
      message: isPlanError ? Strings.selectValidPlanAgain.tr() : state.message,
      actionLabel:
          isPlanError ? Strings.backToPlans.tr() : Strings.tryAgain.tr(),
      onRetry:
          isPlanError
              ? () => context.go(SubscriptionScreen.subscriptionRoute)
              : () => context.read<AddOnsBloc>().add(
                GetAddOnsEvent(planId: planId),
              ),
    );
  }
}

class _LoadingView extends StatelessWidget {
  const _LoadingView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(color: ColorManager.brandPrimary),
    );
  }
}

class _ErrorView extends StatelessWidget {
  final String message;
  final VoidCallback? onRetry;
  final String? actionLabel;

  const _ErrorView({required this.message, this.onRetry, this.actionLabel});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsetsDirectional.all(AppPadding.p20.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              message,
              textAlign: TextAlign.center,
              style: getRegularTextStyle(
                color: ColorManager.textSecondary,
                fontSize: FontSizeManager.s14.sp,
              ),
            ),
            if (onRetry != null) ...[
              Gap(AppSize.s12.h),
              TextButton(
                onPressed: onRetry,
                child: Text(actionLabel ?? Strings.tryAgain.tr()),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _EmptyView extends StatelessWidget {
  const _EmptyView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsetsDirectional.all(AppPadding.p20.w),
        child: Text(
          Strings.noAddonsAvailableForPlan.tr(),
          textAlign: TextAlign.center,
          style: getRegularTextStyle(
            color: ColorManager.textSecondary,
            fontSize: FontSizeManager.s14.sp,
          ),
        ),
      ),
    );
  }
}

class _DividerBottom extends StatelessWidget implements PreferredSizeWidget {
  const _DividerBottom();

  @override
  Size get preferredSize => Size.fromHeight(AppSize.s1.h);

  @override
  Widget build(BuildContext context) {
    return Container(color: ColorManager.borderDefault, height: AppSize.s1.h);
  }
}

class _AddOnsListView extends StatelessWidget {
  final List<AddonSubscriptionOptionModel> addOns;
  final Set<AddonSubscriptionOptionModel> selectedAddOns;

  const _AddOnsListView({required this.addOns, required this.selectedAddOns});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: AppPadding.p20.w,
        vertical: AppPadding.p20.h,
      ),
      children: [
        SubscriptionStepIntroCard(
          badge: Strings.optionalStepLabel.tr(),
          title: Strings.addOnsStepTitle.tr(),
          description: Strings.addOnsStepDescription.tr(),
          hint: Strings.addOnsStepHint.tr(),
          icon: Icons.local_cafe_rounded,
          accentColor: ColorManager.brandPrimary,
          surfaceColor: ColorManager.brandPrimaryTint,
          borderColor: ColorManager.brandPrimary.withValues(alpha: 0.18),
        ),
        Gap(AppSize.s24.h),
        Text(
          Strings.addonChoosePrompt.tr(),
          style: getRegularTextStyle(
            color: ColorManager.textPrimary,
            fontSize: FontSizeManager.s16.sp,
          ),
        ),
        Gap(AppSize.s16.h),
        for (final addOn in addOns)
          Padding(
            padding: EdgeInsetsDirectional.only(bottom: AppSize.s16.h),
            child: _AddOnCard(
              addOn: addOn,
              isSelected: selectedAddOns.contains(addOn),
              onTap:
                  () => context.read<AddOnsBloc>().add(
                    ToggleAddOnSelectionEvent(addOn),
                  ),
            ),
          ),
      ],
    );
  }
}

class _AddOnCard extends StatelessWidget {
  final AddonSubscriptionOptionModel addOn;
  final bool isSelected;
  final VoidCallback onTap;

  const _AddOnCard({
    required this.addOn,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final languageCode = context.locale.languageCode;
    final productNames = addOn.menuProducts
        .where((product) => product.isActive)
        .map((product) => product.localizedName(languageCode))
        .where((name) => name.isNotEmpty)
        .take(3)
        .join(', ');

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppSize.s16.r),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsetsDirectional.all(AppPadding.p16.w),
        decoration: BoxDecoration(
          color: ColorManager.backgroundSurface,
          borderRadius: BorderRadius.circular(AppSize.s16.r),
          border: Border.all(
            color:
                isSelected
                    ? ColorManager.brandPrimary
                    : ColorManager.borderDefault,
            width: isSelected ? AppSize.s2.w : AppSize.s1.w,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    addOn.localizedName(languageCode),
                    style: getBoldTextStyle(
                      color: ColorManager.textPrimary,
                      fontSize: FontSizeManager.s16.sp,
                    ),
                  ),
                  Gap(AppSize.s6.h),
                  Text(
                    addOn.priceLabel,
                    style: getBoldTextStyle(
                      color: ColorManager.brandPrimary,
                      fontSize: FontSizeManager.s16.sp,
                    ),
                  ),
                  if (productNames.isNotEmpty) ...[
                    Gap(AppSize.s6.h),
                    Text(
                      '${Strings.includes.tr()}: $productNames',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: getRegularTextStyle(
                        color: ColorManager.textSecondary,
                        fontSize: FontSizeManager.s12.sp,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            Gap(AppSize.s12.w),
            Icon(
              isSelected ? Icons.check_circle : Icons.radio_button_unchecked,
              color:
                  isSelected
                      ? ColorManager.brandPrimary
                      : ColorManager.borderDefault,
              size: AppSize.s24.sp,
            ),
          ],
        ),
      ),
    );
  }
}

class _BottomActions extends StatelessWidget {
  const _BottomActions();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Material(
        elevation: AppSize.s5,
        color: ColorManager.backgroundSurface,
        child: Padding(
          padding: EdgeInsetsDirectional.symmetric(
            horizontal: AppPadding.p20.w,
            vertical: AppPadding.p16.h,
          ),
          child: BlocBuilder<AddOnsBloc, AddOnsState>(
            builder: (context, state) {
              final count =
                  state is AddOnsSuccess ? state.selectedAddOns.length : 0;
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    count == 0
                        ? Strings.noAddOnsSelected.tr()
                        : Strings.addonSelectedCount.tr(
                          namedArgs: {'count': count.toString()},
                        ),
                    style: getRegularTextStyle(
                      color: ColorManager.textSecondary,
                      fontSize: FontSizeManager.s14.sp,
                    ),
                  ),
                  Gap(AppSize.s12.h),
                  ElevatedButton(
                    onPressed: () => _proceed(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorManager.brandPrimary,
                      minimumSize: Size(double.infinity, AppSize.s56.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppSize.s16.r),
                      ),
                      elevation: 0,
                    ),
                    child: Text(
                      Strings.continueText.tr(),
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s16.sp,
                        color: ColorManager.textInverse,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  void _proceed(BuildContext context) {
    final state = context.read<AddOnsBloc>().state;
    final selected =
        state is AddOnsSuccess
            ? state.selectedAddOns
            : <AddonSubscriptionOptionModel>{};
    final subscriptionBloc =
        context.read<SubscriptionBloc>()
          ..add(SaveAddOnsSelectionEvent(selected));
    context.push(
      DeliveryMethodScreen.deliveryMethodRoute,
      extra: subscriptionBloc,
    );
  }
}
