import 'package:basic_diet/app/dependency_injection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:basic_diet/presentation/resources/assets_manager.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'bloc/main_bloc.dart';
import 'bloc/main_event.dart';
import 'bloc/main_state.dart';
import 'home/bloc/home_bloc.dart';
import 'home/home_screen.dart';
import 'menu/menu_screen.dart';
import 'orders/orders_screen.dart';
import '../plans/plans_screen.dart';
import 'profile/profile_screen.dart';

class MainScreen extends StatelessWidget {
  static const String mainRoute = "/main";
  static const int homeTabIndex = 0;
  static const int plansTabIndex = 2;

  final int initialIndex;

  const MainScreen({super.key, this.initialIndex = homeTabIndex});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainBloc(initialIndex: initialIndex),
      child: const _MainScreenContent(),
    );
  }
}

class _MainScreenContent extends StatefulWidget {
  const _MainScreenContent();

  @override
  State<_MainScreenContent> createState() => _MainScreenContentState();
}

class _MainScreenContentState extends State<_MainScreenContent> {
  static const Duration _exitConfirmationWindow = Duration(seconds: 2);

  late final List<Widget> _pages = [
    BlocProvider(
      create: (_) => instance<HomeBloc>(),
      child: const HomeScreen(),
    ),
    const MenuScreen(),
    const PlansScreen(),
    const OrdersScreen(),
    const ProfileScreen(),
  ];
  DateTime? _lastBackPressedAt;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, result) {
            if (didPop) return;
            _handleBackPress(state.currentIndex);
          },
          child: Scaffold(
            backgroundColor: ColorManager.backgroundSurface,
            body: _pages[state.currentIndex],
            bottomNavigationBar: BottomNavBar(
              currentIndex: state.currentIndex,
              onTap: (index) {
                context.read<MainBloc>().add(ChangeBottomNavIndexEvent(index));
              },
            ),
          ),
        );
      },
    );
  }

  void _handleBackPress(int currentIndex) {
    if (currentIndex != MainScreen.homeTabIndex) {
      context.read<MainBloc>().add(
        ChangeBottomNavIndexEvent(MainScreen.homeTabIndex),
      );
      return;
    }

    final now = DateTime.now();
    final shouldExit =
        _lastBackPressedAt != null &&
        now.difference(_lastBackPressedAt!) <= _exitConfirmationWindow;

    if (shouldExit) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      SystemNavigator.pop();
      return;
    }

    _lastBackPressedAt = now;

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(
            Strings.pressBackAgainToExit.tr(),
            style: getRegularTextStyle(
              color: ColorManager.textInverse,
              fontSize: FontSizeManager.s14.sp,
            ),
          ),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsetsDirectional.fromSTEB(
            AppPadding.p16.w,
            AppPadding.p16.h,
            AppPadding.p16.w,
            AppPadding.p16.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s14.r),
          ),
          backgroundColor: ColorManager.backgroundOverlayStrong,
          duration: _exitConfirmationWindow,
        ),
      );
  }
}

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: AppSize.s100.h,
        decoration: BoxDecoration(
          color: ColorManager.backgroundSurface,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppSize.s50.r),
            topRight: Radius.circular(AppSize.s50.r),
          ),
          boxShadow: [
            BoxShadow(
              color: ColorManager.textPrimary.withValues(alpha: 0.15),
              spreadRadius: 0,
              blurRadius: 15,
              offset: const Offset(0, 0), // shadow ABOVE the nav bar
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppSize.s50.r),
            topRight: Radius.circular(AppSize.s50.r),
          ),
          child: BottomNavigationBar(
            backgroundColor: ColorManager.backgroundSurface,
            selectedItemColor: ColorManager.brandPrimary,
            unselectedItemColor: ColorManager.textSecondary,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: onTap,
            items: [
              BottomNavigationBarItem(
                icon: _buildIcon(
                  assetPath: IconAssets.home,
                  isSelected: currentIndex == 0,
                ),
                label: Strings.home.tr(),
              ),
              BottomNavigationBarItem(
                icon: _buildIcon(
                  assetPath: IconAssets.knife,
                  isSelected: currentIndex == 1,
                ),
                label: Strings.menu.tr(),
              ),
              BottomNavigationBarItem(
                icon: _buildIcon(
                  assetPath: IconAssets.plans,
                  isSelected: currentIndex == 2,
                ),
                label: Strings.plans.tr(),
              ),
              BottomNavigationBarItem(
                icon: _buildIcon(
                  assetPath: IconAssets.orders,
                  isSelected: currentIndex == 3,
                ),
                label: Strings.orders.tr(),
              ),
              BottomNavigationBarItem(
                icon: _buildIcon(
                  assetPath: IconAssets.profile,
                  isSelected: currentIndex == 4,
                ),
                label: Strings.profile.tr(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIcon({required String assetPath, required bool isSelected}) {
    if (isSelected) {
      return Container(
        padding: EdgeInsetsDirectional.all(AppPadding.p8.r),
        decoration: const BoxDecoration(
          color: ColorManager.brandPrimary,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          assetPath,
          colorFilter: const ColorFilter.mode(
            ColorManager.backgroundSurface,
            BlendMode.srcIn,
          ),
          width: AppSize.s24.w,
          height: AppSize.s24.h,
        ),
      );
    } else {
      return Padding(
        padding: EdgeInsetsDirectional.all(AppPadding.p8.r),
        child: SvgPicture.asset(
          assetPath,
          colorFilter: const ColorFilter.mode(
            ColorManager.textSecondary,
            BlendMode.srcIn,
          ),
          width: AppSize.s24.w,
          height: AppSize.s24.h,
        ),
      );
    }
  }
}
