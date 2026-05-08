import 'package:basic_diet/presentation/main/bloc/main_bloc.dart';
import 'package:basic_diet/presentation/main/bloc/main_event.dart';
import 'package:basic_diet/presentation/main/main_screen.dart';
import 'package:basic_diet/presentation/main/menu/menu_navigation_intent.dart';
import 'package:basic_diet/presentation/resources/assets_manager.dart';
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
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F3EB),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsetsDirectional.fromSTEB(
            AppPadding.p16.w,
            AppPadding.p16.h,
            AppPadding.p16.w,
            AppPadding.p36.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _HomeHeader(),
              Gap(AppSize.s18.h),
              const _SubscriptionHeroCard(),
              Gap(AppSize.s24.h),
              const _QuickOrderSection(),
              Gap(AppSize.s24.h),
              const _RecommendedSection(),
              Gap(AppSize.s24.h),
              const _BenefitsSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class _HomeHeader extends StatelessWidget {
  const _HomeHeader();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Strings.welcome.tr(),
                style: getBoldTextStyle(
                  fontSize: FontSizeManager.s24.sp,
                  color: ColorManager.textPrimary,
                ),
              ),
              Gap(AppSize.s4.h),
              Text(
                Strings.eatHealthy.tr(),
                style: getRegularTextStyle(
                  fontSize: FontSizeManager.s14.sp,
                  color: ColorManager.textSecondary,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: AppSize.s48.w,
          height: AppSize.s48.w,
          decoration: BoxDecoration(
            color: ColorManager.stateSuccessEmphasis,
            borderRadius: BorderRadius.circular(AppSize.s18.r),
          ),
          alignment: Alignment.center,
          child: Text(
            'ب',
            style: getBoldTextStyle(
              fontSize: FontSizeManager.s20.sp,
              color: ColorManager.backgroundSurface,
            ),
          ),
        ),
        Gap(AppSize.s10.w),
        _HeaderButton(
          icon: Icons.notifications_none_rounded,
          hasIndicator: true,
          onTap: () {},
        ),
        Gap(AppSize.s10.w),
        _HeaderButton(
          icon: Icons.shopping_cart_outlined,
          onTap: () => context.push('/cart'),
        ),
      ],
    );
  }
}

class _HeaderButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final bool hasIndicator;

  const _HeaderButton({
    required this.icon,
    required this.onTap,
    this.hasIndicator = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Material(
          color: ColorManager.backgroundSurface,
          borderRadius: BorderRadius.circular(AppSize.s18.r),
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(AppSize.s18.r),
            child: SizedBox(
              width: AppSize.s48.w,
              height: AppSize.s48.w,
              child: Icon(
                icon,
                color: ColorManager.stateSuccessEmphasis,
                size: AppSize.s24.w,
              ),
            ),
          ),
        ),
        if (hasIndicator)
          PositionedDirectional(
            top: AppSize.s10.h,
            end: AppSize.s11.w,
            child: Container(
              width: AppSize.s8.w,
              height: AppSize.s8.w,
              decoration: const BoxDecoration(
                color: ColorManager.brandAccent,
                shape: BoxShape.circle,
              ),
            ),
          ),
      ],
    );
  }
}

class _SubscriptionHeroCard extends StatelessWidget {
  const _SubscriptionHeroCard();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<MainBloc>().add(
          ChangeBottomNavIndexEvent(MainScreen.plansTabIndex),
        );
      },
      child: Container(
        height: AppSize.s205.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s30.r),
          boxShadow: [
            BoxShadow(
              color: ColorManager.textPrimary.withValues(alpha: 0.12),
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppSize.s30.r),
          child: Stack(
            fit: StackFit.expand,
            children: [
              const Image(
                image: AssetImage(ImageAssets.oneTimeSubscriptionHero),
                fit: BoxFit.cover,
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      const Color(0xFF0B3E2E).withValues(alpha: 0.22),
                      const Color(0xFF0B3E2E).withValues(alpha: 0.88),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                  AppPadding.p20.w,
                  AppPadding.p20.h,
                  AppPadding.p20.w,
                  AppPadding.p20.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsetsDirectional.symmetric(
                        horizontal: AppPadding.p10.w,
                        vertical: AppPadding.p6.h,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFDBF6EA),
                        borderRadius: BorderRadius.circular(AppSize.s99.r),
                      ),
                      child: Text(
                        Strings.subscriptionsOfferBadge.tr(),
                        style: getBoldTextStyle(
                          fontSize: FontSizeManager.s12.sp,
                          color: ColorManager.stateSuccessEmphasis,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      Strings.subscriptionHeroTitle.tr(),
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s24.sp,
                        color: ColorManager.backgroundSurface,
                      ).copyWith(height: 1.18),
                    ),
                    Gap(AppSize.s6.h),
                    Text(
                      Strings.subscriptionHeroSubtitle.tr(),
                      style: getRegularTextStyle(
                        fontSize: FontSizeManager.s14.sp,
                        color: ColorManager.backgroundSurface.withValues(
                          alpha: 0.86,
                        ),
                      ),
                    ),
                    Gap(AppSize.s16.h),
                    Text(
                      Strings.viewPlans.tr(),
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s15.sp,
                        color: const Color(0xFFFFE5D3),
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

class _QuickOrderSection extends StatelessWidget {
  const _QuickOrderSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _SectionHeader(
          title: Strings.quickOrderToday.tr(),
          subtitle: Strings.quickOrderSubtitle.tr(),
          action: Strings.viewMenu.tr(),
          onTap: () => _openMenuSection(context, 'custom_order'),
        ),
        Gap(AppSize.s14.h),
        GestureDetector(
          onTap: () => _openMenuSection(context, 'custom_order'),
          child: Container(
            height: AppSize.s205.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.s28.r),
              boxShadow: [
                BoxShadow(
                  color: ColorManager.brandAccent.withValues(alpha: 0.16),
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppSize.s28.r),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  const Image(
                    image: AssetImage(ImageAssets.oneTimeCustomOrderHero),
                    fit: BoxFit.cover,
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withValues(alpha: 0.12),
                          Colors.black.withValues(alpha: 0.5),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.all(AppPadding.p18.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsetsDirectional.symmetric(
                            horizontal: AppPadding.p10.w,
                            vertical: AppPadding.p6.h,
                          ),
                          decoration: BoxDecoration(
                            color: ColorManager.brandAccentSoft,
                            borderRadius: BorderRadius.circular(AppSize.s99.r),
                          ),
                          child: Text(
                            Strings.pickupOnly.tr(),
                            style: getBoldTextStyle(
                              fontSize: FontSizeManager.s12.sp,
                              color: ColorManager.brandAccentPressed,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          Strings.customOrderTitle.tr(),
                          style: getBoldTextStyle(
                            fontSize: FontSizeManager.s24.sp,
                            color: ColorManager.backgroundSurface,
                          ),
                        ),
                        Gap(AppSize.s6.h),
                        Text(
                          Strings.customOrderSubtitle.tr(),
                          style: getRegularTextStyle(
                            fontSize: FontSizeManager.s14.sp,
                            color: ColorManager.backgroundSurface.withValues(
                              alpha: 0.9,
                            ),
                          ),
                        ),
                        Gap(AppSize.s10.h),
                        Text(
                          '${Strings.startsFrom.tr()} 19 ${Strings.sar.tr()} / 100 جم',
                          style: getBoldTextStyle(
                            fontSize: FontSizeManager.s15.sp,
                            color: const Color(0xFFFFE5D3),
                          ),
                        ),
                        Gap(AppSize.s14.h),
                        Container(
                          padding: EdgeInsetsDirectional.symmetric(
                            horizontal: AppPadding.p14.w,
                            vertical: AppPadding.p10.h,
                          ),
                          decoration: BoxDecoration(
                            color: ColorManager.brandAccent,
                            borderRadius: BorderRadius.circular(AppSize.s18.r),
                          ),
                          child: Text(
                            Strings.chooseType.tr(),
                            style: getBoldTextStyle(
                              fontSize: FontSizeManager.s14.sp,
                              color: ColorManager.backgroundSurface,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Gap(AppSize.s12.h),
        Row(
          children: const [
            Expanded(
              child: _QuickShortcutCard(
                title: 'سلطة بيسك',
                subtitle: '29 ريال / 100 جم',
                productKey: 'basic_salad',
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: _QuickShortcutCard(
                title: 'وجبة بيسك',
                subtitle: '19 ريال / 100 جم',
                productKey: 'basic_meal',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _QuickShortcutCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String productKey;

  const _QuickShortcutCard({
    required this.title,
    required this.subtitle,
    required this.productKey,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorManager.backgroundSurface,
      borderRadius: BorderRadius.circular(AppSize.s20.r),
      child: InkWell(
        onTap: () => _openBuilderShortcut(context, productKey),
        borderRadius: BorderRadius.circular(AppSize.s20.r),
        child: Padding(
          padding: EdgeInsetsDirectional.symmetric(
            horizontal: AppPadding.p16.w,
            vertical: AppPadding.p16.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: getBoldTextStyle(
                  fontSize: FontSizeManager.s14.sp,
                  color: ColorManager.textPrimary,
                ),
              ),
              Gap(AppSize.s4.h),
              Text(
                subtitle,
                style: getRegularTextStyle(
                  fontSize: FontSizeManager.s12.sp,
                  color: ColorManager.textSecondary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RecommendedSection extends StatelessWidget {
  const _RecommendedSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _SectionHeader(
          title: Strings.recommendedForYou.tr(),
          action: Strings.viewMenu.tr(),
          onTap: () => _openMenuSection(context, 'custom_order'),
        ),
        Gap(AppSize.s14.h),
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          crossAxisSpacing: AppSize.s12.w,
          mainAxisSpacing: AppSize.s12.h,
          childAspectRatio: 0.84,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            _RecommendationCard(
              title: 'سلطة فواكه',
              description: 'اختاري 9 أنواع فواكه حسب رغبتك',
              imagePath: ImageAssets.oneTimeFruitSalad,
              footerText: 'تخصيص',
              helperText: 'السعر حسب الاختيارات',
              productKey: 'fruit_salad',
            ),
            _RecommendationCard(
              title: 'زبادي يوناني',
              description: 'اختاري الفواكه والمكسرات المناسبة لك',
              imagePath: ImageAssets.oneTimeGreekYogurt,
              footerText: 'تخصيص',
              helperText: 'السعر حسب الاختيارات',
              productKey: 'greek_yogurt',
            ),
            _RecommendationCard(
              title: 'ساندوتش ساوردو',
              description: 'اختيارات ساوردو مميزة',
              imagePath: ImageAssets.oneTimeSourdough,
              footerText: 'عرض',
              helperText: '',
              sectionKey: 'sourdough',
            ),
            _RecommendationCard(
              title: 'عصائر',
              description: 'مشروبات منعشة وطازجة',
              imagePath: ImageAssets.oneTimeJuices,
              footerText: 'عرض',
              helperText: '',
              sectionKey: 'juices',
            ),
          ],
        ),
      ],
    );
  }
}

class _RecommendationCard extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  final String footerText;
  final String helperText;
  final String? productKey;
  final String? sectionKey;

  const _RecommendationCard({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.footerText,
    required this.helperText,
    this.productKey,
    this.sectionKey,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorManager.backgroundSurface,
      borderRadius: BorderRadius.circular(AppSize.s24.r),
      child: InkWell(
        onTap: () {
          if (productKey != null) {
            _openBuilderShortcut(context, productKey!);
            return;
          }
          if (sectionKey != null) {
            _openMenuSection(context, sectionKey!);
          }
        },
        borderRadius: BorderRadius.circular(AppSize.s24.r),
        child: Padding(
          padding: EdgeInsetsDirectional.all(AppPadding.p12.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppSize.s18.r),
                  child: Image.asset(
                    imagePath,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Gap(AppSize.s12.h),
              Text(
                title,
                style: getBoldTextStyle(
                  fontSize: FontSizeManager.s14.sp,
                  color: ColorManager.textPrimary,
                ),
              ),
              Gap(AppSize.s4.h),
              Text(
                description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: getRegularTextStyle(
                  fontSize: FontSizeManager.s12.sp,
                  color: ColorManager.textSecondary,
                ),
              ),
              Gap(AppSize.s8.h),
              Row(
                children: [
                  if (helperText.isNotEmpty)
                    Expanded(
                      child: Text(
                        helperText,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: getRegularTextStyle(
                          fontSize: FontSizeManager.s11.sp,
                          color: ColorManager.textMuted,
                        ),
                      ),
                    )
                  else
                    const Spacer(),
                  Text(
                    footerText,
                    style: getBoldTextStyle(
                      fontSize: FontSizeManager.s13.sp,
                      color: ColorManager.stateSuccessEmphasis,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BenefitsSection extends StatelessWidget {
  const _BenefitsSection();

  @override
  Widget build(BuildContext context) {
    final benefits = [
      (Icons.eco_outlined, Strings.freshIngredients.tr()),
      (Icons.access_time_rounded, Strings.readyForPickupFast.tr()),
      (Icons.swap_horiz_rounded, Strings.flexiblePlans.tr()),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _SectionHeader(title: Strings.basicDietBenefits.tr()),
        Gap(AppSize.s14.h),
        Row(
          children:
              benefits
                  .map(
                    (benefit) => Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.only(
                          end: benefit == benefits.last ? 0 : AppPadding.p10.w,
                        ),
                        child: _BenefitCard(
                          icon: benefit.$1,
                          title: benefit.$2,
                        ),
                      ),
                    ),
                  )
                  .toList(),
        ),
      ],
    );
  }
}

class _BenefitCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const _BenefitCard({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: AppPadding.p12.w,
        vertical: AppPadding.p16.h,
      ),
      decoration: BoxDecoration(
        color: ColorManager.backgroundSurface,
        borderRadius: BorderRadius.circular(AppSize.s20.r),
      ),
      child: Column(
        children: [
          Container(
            width: AppSize.s40.w,
            height: AppSize.s40.w,
            decoration: BoxDecoration(
              color: ColorManager.brandPrimaryTint,
              borderRadius: BorderRadius.circular(AppSize.s14.r),
            ),
            child: Icon(
              icon,
              color: ColorManager.stateSuccessEmphasis,
              size: AppSize.s22.w,
            ),
          ),
          Gap(AppSize.s10.h),
          Text(
            title,
            textAlign: TextAlign.center,
            style: getBoldTextStyle(
              fontSize: FontSizeManager.s12.sp,
              color: ColorManager.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String? action;
  final VoidCallback? onTap;

  const _SectionHeader({
    required this.title,
    this.subtitle,
    this.action,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: getBoldTextStyle(
                  fontSize: FontSizeManager.s20.sp,
                  color: ColorManager.textPrimary,
                ),
              ),
              if (subtitle != null) ...[
                Gap(AppSize.s4.h),
                Text(
                  subtitle!,
                  style: getRegularTextStyle(
                    fontSize: FontSizeManager.s13.sp,
                    color: ColorManager.textSecondary,
                  ),
                ),
              ],
            ],
          ),
        ),
        if (action != null && onTap != null)
          TextButton(
            onPressed: onTap,
            child: Text(
              action!,
              style: getBoldTextStyle(
                fontSize: FontSizeManager.s13.sp,
                color: ColorManager.stateSuccessEmphasis,
              ),
            ),
          ),
      ],
    );
  }
}

void _openMenuSection(BuildContext context, String sectionKey) {
  OneTimeMenuCoordinator.openSection(sectionKey);
  context.read<MainBloc>().add(ChangeBottomNavIndexEvent(1));
}

void _openBuilderShortcut(BuildContext context, String productKey) {
  OneTimeMenuCoordinator.openProduct(productKey);
  context.read<MainBloc>().add(ChangeBottomNavIndexEvent(1));
}
