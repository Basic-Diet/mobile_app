import 'package:basic_diet/presentation/main/menu/models/menu_models.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class MenuChipsRow extends StatelessWidget {
  final List<MenuChipData> chips;
  final String activeKey;
  final ValueChanged<String> onSelected;
  final ScrollController scrollController;
  final List<GlobalKey> chipKeys;

  const MenuChipsRow({
    super.key,
    required this.chips,
    required this.activeKey,
    required this.onSelected,
    required this.scrollController,
    required this.chipKeys,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s34.h,
      child: ListView.separated(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final chip = chips[index];
          final isSelected = chip.key == activeKey;
          return Material(
            key: chipKeys[index],
            color:
                isSelected
                    ? const Color(0xFF0B241C)
                    : Colors.white.withValues(alpha: 0.84),
            borderRadius: BorderRadius.circular(AppSize.s13.r),
            child: InkWell(
              onTap: () => onSelected(chip.key),
              borderRadius: BorderRadius.circular(AppSize.s13.r),
              child: Container(
                padding: EdgeInsetsDirectional.symmetric(
                  horizontal: AppPadding.p14.w,
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSize.s13.r),
                  border: Border.all(
                    color:
                        isSelected
                            ? const Color(0xFF0B241C)
                            : const Color(0xFFE1EAE4),
                  ),
                ),
                child: Text(
                  chip.label,
                  style: getBoldTextStyle(
                    fontSize: FontSizeManager.s12.sp,
                    color:
                        isSelected
                            ? ColorManager.backgroundSurface
                            : ColorManager.textSecondary,
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (_, __) => Gap(AppSize.s8.w),
        itemCount: chips.length,
      ),
    );
  }
}
