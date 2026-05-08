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
        constraints: BoxConstraints(minHeight: AppSize.s210.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s24.r),
          color: const Color(0xFF0B2319),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF09261E).withValues(alpha: 0.18),
              blurRadius: 40,
              offset: const Offset(0, 20),
            ),
          ],
          border: Border.all(
            color: Colors.white.withValues(alpha: 0.15),
            width: 1,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppSize.s24.r),
          child: Stack(
            fit: StackFit.passthrough,
            children: [
              const Image(
                image: AssetImage(ImageAssets.oneTimeSubscriptionHero),
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.black.withValues(alpha: 0.08),
                      const Color(0xFF002D1E).withValues(alpha: 0.55),
                      const Color(0xFF002319).withValues(alpha: 0.82),
                    ],
                    stops: const [0.0, 0.45, 1.0],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                  0,
                  AppPadding.p25.h,
                  AppPadding.p20.w,
                  AppPadding.p20.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: EdgeInsetsDirectional.symmetric(
                        horizontal: AppPadding.p12.w,
                        vertical: AppPadding.p4.h,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF8500).withValues(alpha: 0.95),
                        borderRadius: BorderRadius.circular(AppSize.s99.r),
                      ),
                      child: Text(
                        Strings.subscriptionsOfferBadge.tr(),
                        style: getBoldTextStyle(
                          fontSize: FontSizeManager.s11.sp,
                          color: ColorManager.backgroundSurface,
                          letterSpacing: 0.2,
                        ),
                      ),
                    ),
                    Gap(AppSize.s8.h),
                    Text(
                      Strings.subscriptionHeroTitle.tr(),
                      textAlign: TextAlign.right,
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s21.sp,
                        color: ColorManager.backgroundSurface,
                      ).copyWith(height: 1.25),
                    ),
                    Gap(AppSize.s2.h),
                    Text(
                      Strings.subscriptionHeroSubtitle.tr(),
                      textAlign: TextAlign.right,
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s13.sp,
                        color: Colors.white.withValues(alpha: 0.92),
                      ),
                    ),
                    Gap(AppSize.s12.h),
                    Container(
                      padding: EdgeInsetsDirectional.symmetric(
                        horizontal: AppPadding.p24.w,
                        vertical: AppPadding.p8.h,
                      ),
                      decoration: BoxDecoration(
                        color: ColorManager.backgroundSurface,
                        borderRadius: BorderRadius.circular(AppSize.s99.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.3),
                            blurRadius: 25,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Text(
                        Strings.viewPlans.tr(),
                        style: getBoldTextStyle(
                          fontSize: FontSizeManager.s13.sp,
                          color: const Color(0xFF112B22),
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
          stacked: true,
        ),
        Gap(AppSize.s14.h),
        GestureDetector(
          onTap: () => _openMenuSection(context, 'custom_order'),
          child: Container(
            constraints: BoxConstraints(minHeight: AppSize.s188.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.s24.r),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF11382C).withValues(alpha: 0.10),
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                ),
              ],
              color: ColorManager.backgroundSurface,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppSize.s24.r),
              child: Stack(
                fit: StackFit.passthrough,
                children: [
                  const Image(
                    image: AssetImage(ImageAssets.oneTimeCustomOrderHero),
                    fit: BoxFit.cover,
                    alignment: Alignment.centerLeft,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.white.withValues(alpha: 0.0),
                          Colors.white.withValues(alpha: 0.25),
                          Colors.white.withValues(alpha: 0.84),
                          Colors.white.withValues(alpha: 0.95),
                        ],
                        stops: const [0.0, 0.32, 0.68, 1.0],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                      0,
                      AppPadding.p10.h,
                      AppPadding.p18.w,
                      AppPadding.p10.h,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsetsDirectional.symmetric(
                            horizontal: AppPadding.p10.w,
                            vertical: AppPadding.p3.h,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFEBF5F0),
                            borderRadius: BorderRadius.circular(AppSize.s99.r),
                          ),
                          child: Text(
                            Strings.pickupOnly.tr(),
                            style: getBoldTextStyle(
                              fontSize: FontSizeManager.s11.sp,
                              color: ColorManager.stateSuccessEmphasis,
                            ),
                          ),
                        ),
                        Gap(AppSize.s6.h),
                        Text(
                          Strings.customOrderTitle.tr(),
                          textAlign: TextAlign.right,
                          style: getBoldTextStyle(
                            fontSize: FontSizeManager.s16_5.sp,
                            color: const Color(0xFF112B22),
                          ),
                        ),
                        Gap(AppSize.s2.h),
                        Text(
                          Strings.customOrderSubtitle.tr(),
                          textAlign: TextAlign.right,
                          style: getBoldTextStyle(
                            fontSize: FontSizeManager.s11.sp,
                            color: ColorManager.textSecondary,
                          ),
                        ),
                        Gap(AppSize.s4.h),
                        Text(
                          '${Strings.startsFrom.tr()} 19 ${Strings.sar.tr()} / 100 جم',
                          textAlign: TextAlign.right,
                          style: getBoldTextStyle(
                            fontSize: FontSizeManager.s12_5.sp,
                            color: const Color(0xFF12382C),
                          ),
                        ),
                        Gap(AppSize.s4.h),
                        Container(
                          height: AppSize.s45.h,
                          width: AppSize.s134.w,
                          padding: EdgeInsetsDirectional.symmetric(
                            horizontal: AppPadding.p16.w,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFF8500),
                            borderRadius: BorderRadius.circular(AppSize.s16.r),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            Strings.chooseType.tr(),
                            style: getBoldTextStyle(
                              fontSize: FontSizeManager.s13_5.sp,
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
        Gap(AppSize.s9.h),
        Row(
          children: [
            Expanded(
              child: _QuickShortcutCard(
                title: 'سلطة بيسك',
                subtitle: '29 ريال / 100 جم',
                productKey: 'basic_salad',
              ),
            ),
            Gap(AppSize.s8.w),
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
      color: Colors.white.withValues(alpha: 0.88),
      borderRadius: BorderRadius.circular(AppSize.s14.r),
      child: InkWell(
        onTap: () => _openBuilderShortcut(context, productKey),
        borderRadius: BorderRadius.circular(AppSize.s14.r),
        child: Container(
          constraints: BoxConstraints(minHeight: AppSize.s44.h),
          padding: EdgeInsetsDirectional.symmetric(
            horizontal: AppPadding.p11.w,
            vertical: AppPadding.p8.h,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s14.r),
            border: Border.all(
              color: Colors.white.withValues(alpha: 0.8),
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF11382C).withValues(alpha: 0.04),
                blurRadius: 8,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  '$title · $subtitle',
                  textAlign: TextAlign.right,
                  style: getBoldTextStyle(
                    fontSize: FontSizeManager.s10_5.sp,
                    color: const Color(0xFF112B22),
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Gap(AppSize.s6.w),
              Container(
                width: AppSize.s18.w,
                height: AppSize.s18.w,
                decoration: BoxDecoration(
                  color: const Color(0xFFEBF5F0),
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Text(
                  '‹',
                  style: getBoldTextStyle(
                    fontSize: FontSizeManager.s14.sp,
                    color: const Color(0xFF12382C),
                  ),
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
        _RecommendationCardLarge(
          title: 'سلطة فواكه',
          description: 'اختاري 9 أنواع فواكه حسب رغبتك',
          imagePath: ImageAssets.oneTimeFruitSalad,
          helperText: 'السعر حسب الاختيارات',
          productKey: 'fruit_salad',
        ),
        Gap(AppSize.s12.h),
        _RecommendationCardLarge(
          title: 'زبادي يوناني',
          description: 'اختاري الفواكه والمكسرات المناسبة لك',
          imagePath: ImageAssets.oneTimeGreekYogurt,
          helperText: 'السعر حسب الاختيارات',
          productKey: 'greek_yogurt',
        ),
        Gap(AppSize.s12.h),
        Row(
          children: [
            Expanded(
              child: _RecommendationCard(
                title: 'ساندوتش ساوردو',
                description: 'اختيارات ساوردو مميزة',
                imagePath: ImageAssets.oneTimeSourdough,
                footerText: 'عرض',
                helperText: '',
                sectionKey: 'sourdough',
              ),
            ),
            Gap(AppSize.s12.w),
            Expanded(
              child: _RecommendationCard(
                title: 'عصائر',
                description: 'مشروبات منعشة وطازجة',
                imagePath: ImageAssets.oneTimeJuices,
                footerText: 'عرض',
                helperText: '',
                sectionKey: 'juices',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _RecommendationCardLarge extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  final String helperText;
  final String productKey;

  const _RecommendationCardLarge({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.helperText,
    required this.productKey,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white.withValues(alpha: 0.96),
      borderRadius: BorderRadius.circular(AppSize.s20.r),
      child: InkWell(
        onTap: () => _openBuilderShortcut(context, productKey),
        borderRadius: BorderRadius.circular(AppSize.s20.r),
        child: Container(
          constraints: BoxConstraints(minHeight: AppSize.s126.h),
          padding: EdgeInsetsDirectional.all(AppPadding.p13.r),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s20.r),
            border: Border.all(
              color: Colors.white.withValues(alpha: 0.86),
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF11382C).withValues(alpha: 0.08),
                blurRadius: 26,
                offset: const Offset(0, 12),
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.right,
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s19.sp,
                        color: const Color(0xFF112B22),
                      ),
                    ),
                    Gap(AppSize.s3.h),
                    Text(
                      description,
                      textAlign: TextAlign.right,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s13.sp,
                        color: ColorManager.textSecondary,
                      ),
                    ),
                    Gap(AppSize.s16.h),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            helperText,
                            textAlign: TextAlign.right,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: getBoldTextStyle(
                              fontSize: FontSizeManager.s12.sp,
                              color: const Color(0xFF12382C),
                            ),
                          ),
                        ),
                        Gap(AppSize.s8.w),
                        Container(
                          padding: EdgeInsetsDirectional.symmetric(
                            horizontal: AppPadding.p12.w,
                            vertical: AppPadding.p6.h,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFEBF5F0),
                            borderRadius: BorderRadius.circular(AppSize.s99.r),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '‹',
                                style: getBoldTextStyle(
                                  fontSize: FontSizeManager.s14.sp,
                                  color: const Color(0xFF12382C),
                                ),
                              ),
                              Text(
                                'تخصيص',
                                style: getBoldTextStyle(
                                  fontSize: FontSizeManager.s11_5.sp,
                                  color: const Color(0xFF12382C),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Gap(AppSize.s14.w),
              ClipRRect(
                borderRadius: BorderRadius.circular(AppSize.s20.r),
                child: Image.asset(
                  imagePath,
                  width: AppSize.s104.w,
                  height: AppSize.s104.w,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RecommendationCard extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  final String footerText;
  final String helperText;
  final String? sectionKey;

  const _RecommendationCard({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.footerText,
    required this.helperText,
    this.sectionKey,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white.withValues(alpha: 0.96),
      borderRadius: BorderRadius.circular(AppSize.s20.r),
      child: InkWell(
        onTap: () {
          if (sectionKey != null) {
            _openMenuSection(context, sectionKey!);
          }
        },
        borderRadius: BorderRadius.circular(AppSize.s20.r),
        child: Container(
          constraints: BoxConstraints(minHeight: AppSize.s188.h),
          padding: EdgeInsetsDirectional.all(AppPadding.p11.r),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s20.r),
            border: Border.all(
              color: Colors.white.withValues(alpha: 0.86),
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF11382C).withValues(alpha: 0.08),
                blurRadius: 26,
                offset: const Offset(0, 12),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(AppSize.s18.r),
                child: SizedBox(
                  width: double.infinity,
                  height: AppSize.s104.h,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Gap(AppSize.s9.h),
              Text(
                title,
                textAlign: TextAlign.right,
                style: getBoldTextStyle(
                  fontSize: FontSizeManager.s18.sp,
                  color: const Color(0xFF112B22),
                ),
              ),
              Gap(AppSize.s3.h),
              Text(
                description,
                textAlign: TextAlign.right,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: getBoldTextStyle(
                  fontSize: FontSizeManager.s12_5.sp,
                  color: ColorManager.textSecondary,
                ),
              ),
              Gap(AppSize.s12.h),
              Row(
                children: [
                  if (helperText.isNotEmpty)
                    Expanded(
                      child: Text(
                        helperText,
                        textAlign: TextAlign.right,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: getBoldTextStyle(
                          fontSize: FontSizeManager.s12.sp,
                          color: const Color(0xFF12382C),
                        ),
                      ),
                    ),
                  if (helperText.isNotEmpty) Gap(AppSize.s8.w),
                  Container(
                    padding: EdgeInsetsDirectional.symmetric(
                      horizontal: AppPadding.p12.w,
                      vertical: AppPadding.p6.h,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEBF5F0),
                      borderRadius: BorderRadius.circular(AppSize.s99.r),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '‹',
                          style: getBoldTextStyle(
                            fontSize: FontSizeManager.s14.sp,
                            color: const Color(0xFF12382C),
                          ),
                        ),
                        Text(
                          footerText,
                          style: getBoldTextStyle(
                            fontSize: FontSizeManager.s11_5.sp,
                            color: const Color(0xFF12382C),
                          ),
                        ),
                      ],
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
        Container(
          padding: EdgeInsetsDirectional.all(AppPadding.p8.r),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.9),
            borderRadius: BorderRadius.circular(AppSize.s16.r),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF16664A).withValues(alpha: 0.05),
                blurRadius: 12,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            children:
                benefits
                    .map(
                      (benefit) => Expanded(
                        child: _BenefitCard(
                          icon: benefit.$1,
                          title: benefit.$2,
                        ),
                      ),
                    )
                    .toList(),
          ),
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
        horizontal: AppPadding.p6.w,
        vertical: AppPadding.p8.h,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF7FCF9),
        borderRadius: BorderRadius.circular(AppSize.s12.r),
      ),
      child: Column(
        children: [
          Container(
            width: AppSize.s24.w,
            height: AppSize.s24.w,
            decoration: BoxDecoration(
              color: const Color(0xFFEBF5F0),
              borderRadius: BorderRadius.circular(AppSize.s11.r),
            ),
            child: Icon(
              icon,
              color: const Color(0xFF12382C),
              size: AppSize.s15.w,
            ),
          ),
          Gap(AppSize.s6.h),
          Text(
            title,
            textAlign: TextAlign.center,
            style: getBoldTextStyle(
              fontSize: FontSizeManager.s11.sp,
              color: const Color(0xFF112B22),
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
  final bool stacked;

  const _SectionHeader({
    required this.title,
    this.subtitle,
    this.action,
    this.onTap,
    this.stacked = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: stacked ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                title,
                textAlign: TextAlign.right,
                style: getBoldTextStyle(
                  fontSize: FontSizeManager.s22.sp,
                  color: ColorManager.textPrimary,
                ),
              ),
              if (subtitle != null) ...[
                Gap(AppSize.s5.h),
                Text(
                  subtitle!,
                  textAlign: TextAlign.right,
                  style: getBoldTextStyle(
                    fontSize: FontSizeManager.s12.sp,
                    color: ColorManager.textSecondary,
                  ),
                ),
              ],
            ],
          ),
        ),
        if (action != null && onTap != null) ...[
          Gap(AppSize.s12.w),
          GestureDetector(
            onTap: onTap,
            child: Text(
              action!,
              style: getBoldTextStyle(
                fontSize: FontSizeManager.s12.sp,
                color: ColorManager.stateSuccessEmphasis,
              ),
            ),
          ),
        ],
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
