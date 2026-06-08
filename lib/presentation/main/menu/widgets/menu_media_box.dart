import 'package:basic_diet/presentation/main/menu/utils/menu_utils.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuMediaBox extends StatelessWidget {
  final String label;
  final String? imageUrl;
  final double? width;
  final double? height;
  final double borderRadius;

  const MenuMediaBox({
    super.key,
    required this.label,
    required this.borderRadius,
    this.width,
    this.height,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final resolvedImageUrl = resolveImageUrl(imageUrl);
    final isArabic = context.locale.languageCode == 'ar';

    final media = ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFFF2FBF6), Color(0xFFFFFFFF)],
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              label,
              style: getBoldTextStyle(
                fontSize: FontSizeManager.s20.sp,
                color: ColorManager.stateSuccessEmphasis,
              ),
            ),
          ),
          if (resolvedImageUrl != null)
            if (isArabic)
              Image.network(
                resolvedImageUrl,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => const SizedBox.shrink(),
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  }
                  return const SizedBox.shrink();
                },
              )
            else
              Transform.flip(
                flipX: true,
                child: Image.network(
                  resolvedImageUrl,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => const SizedBox.shrink(),
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return const SizedBox.shrink();
                  },
                ),
              ),
        ],
      ),
    );

    if (width == null && height == null) {
      return media;
    }

    return SizedBox(width: width, height: height, child: media);
  }
}
