import 'package:basic_diet/presentation/main/bloc/main_bloc.dart';
import 'package:basic_diet/presentation/main/bloc/main_event.dart';
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

class MenuHeader extends StatelessWidget {
  const MenuHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Strings.menu.tr(),
              style: getRegularTextStyle(
                fontSize: FontSizeManager.s24.sp,
                color: ColorManager.stateSuccessEmphasis,
              ),
            ),
            Gap(AppSize.s2.h),
            Text(
              Strings.oneTimeOrdersSubtitle.tr(),
              style: getRegularTextStyle(
                fontSize: FontSizeManager.s12.sp,
                color: ColorManager.textSecondary,
              ),
            ),
          ],
        ),

        Row(
          children: [
            CircleActionButton(
              icon: Icons.home_outlined,
              onTap: () {
                context.read<MainBloc>().add(const ChangeBottomNavIndexEvent(0));
              },
            ),
            Gap(AppSize.s10.w),
            BlocBuilder<CartBloc, CartState>(
              builder: (context, state) {
                final count = state is CartLoaded ? state.totalQty : 0;
                return CircleActionButton(
                  icon: Icons.shopping_cart_outlined,
                  badgeCount: count,
                  onTap: () => openCart(context),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}

class CircleActionButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final int badgeCount;

  const CircleActionButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.badgeCount = 0,
  });

  @override
  Widget build(BuildContext context) {
    final badgeLabel = badgeCount > 99 ? '99+' : '$badgeCount';

    return SizedBox(
      width: AppSize.s42.w,
      height: AppSize.s42.w,
      child: Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Material(
            color: Colors.white.withValues(alpha: 0.9),
            borderRadius: BorderRadius.circular(AppSize.s12.r),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSize.s12.r),
                border: Border.all(color: Colors.white.withValues(alpha: 0.78)),
              ),
              child: InkWell(
                onTap: onTap,
                borderRadius: BorderRadius.circular(AppSize.s12.r),
                child: SizedBox(
                  width: AppSize.s36.w,
                  height: AppSize.s36.w,
                  child: Icon(
                    icon,
                    color: const Color(0xFF112B22),
                    size: AppSize.s18.w,
                  ),
                ),
              ),
            ),
          ),
        ),
        if (badgeCount > 0)
          PositionedDirectional(
            top: 0,
            end: 0,
            child: Container(
              constraints: BoxConstraints(minWidth: AppSize.s18.w),
              height: AppSize.s18.w,
              padding: EdgeInsetsDirectional.symmetric(
                horizontal: AppPadding.p4.w,
              ),
              decoration: BoxDecoration(
                color: ColorManager.brandPrimary,
                borderRadius: BorderRadius.circular(AppSize.s99.r),
              ),
              alignment: Alignment.center,
              child: Text(
                badgeLabel,
                style: getBoldTextStyle(
                  fontSize: FontSizeManager.s9.sp,
                  color: ColorManager.backgroundSurface,
                ),
              ),
            ),
          ),
      ],
      ),
    );
  }
}
