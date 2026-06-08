import 'package:basic_diet/presentation/main/menu/utils/menu_utils.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuilderHeroImage extends StatelessWidget {
  final String? imageUrl;
  final String initials;

  const BuilderHeroImage({
    super.key,
    required this.imageUrl,
    required this.initials,
  });

  @override
  Widget build(BuildContext context) {
    final resolvedImageUrl = resolveImageUrl(imageUrl);

    return Container(
      width: AppSize.s95.w,
      height: AppSize.s118.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.s20.r),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFFEAF7F1), Color(0xFFFFFFFF)],
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Center(
            child: Text(
              initials,
              style: getBoldTextStyle(
                fontSize: FontSizeManager.s26.sp,
                color: const Color(0xFF12382C),
              ),
            ),
          ),
          if (resolvedImageUrl != null)
            Image.network(
              resolvedImageUrl,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => const SizedBox.shrink(),
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                }
                return const SizedBox.shrink();
              },
            ),
        ],
      ),
    );
  }
}
