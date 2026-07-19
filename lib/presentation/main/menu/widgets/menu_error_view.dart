import 'package:basic_diet/presentation/main/menu/bloc/menu_bloc.dart';
import 'package:basic_diet/presentation/main/menu/bloc/menu_event.dart';
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

class MenuErrorView extends StatelessWidget {
  final String message;

  const MenuErrorView({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsetsDirectional.all(AppPadding.p24.r),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              message,
              textAlign: TextAlign.center,
              style: getRegularTextStyle(
                fontSize: FontSizeManager.s14.sp,
                color: ColorManager.textPrimary,
              ),
            ),
            Gap(AppSize.s16.h),
            ElevatedButton(
              onPressed: () {
                context.read<MenuBloc>().add(const RetryMenuEvent());
              },
              child: Text(Strings.tryAgain.tr()),
            ),
          ],
        ),
      ),
    );
  }
}
