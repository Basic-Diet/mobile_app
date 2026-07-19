import 'package:basic_diet/domain/model/addon_choices_model.dart';
import 'package:basic_diet/presentation/plans/timeline/meal_planner/bloc/meal_planner_bloc.dart';
import 'package:basic_diet/presentation/plans/timeline/meal_planner/bloc/meal_planner_event.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class AddonSelectionBottomSheet extends StatefulWidget {
  final MealPlannerBloc bloc;
  final Map<String, AddonChoiceCategoryModel> groupedItems;
  final Map<String, List<String>> selectedAddonIdsByCategory;
  final String emptyLabel;
  final String? Function(
    AddonChoiceModel addon,
    Map<String, List<String>> selectedAddonIdsByCategory,
  )
  badgeLabelBuilder;

  const AddonSelectionBottomSheet({
    super.key,
    required this.bloc,
    required this.groupedItems,
    required this.selectedAddonIdsByCategory,
    required this.emptyLabel,
    required this.badgeLabelBuilder,
  });

  @override
  State<AddonSelectionBottomSheet> createState() =>
      _AddonSelectionBottomSheetState();
}

class _AddonSelectionBottomSheetState extends State<AddonSelectionBottomSheet> {
  late final List<AddonChoiceCategoryModel> _categories;
  late final Map<String, List<String>> _localSelections;
  late String _activeCategoryKey;

  @override
  void initState() {
    super.initState();
    _categories = _resolveOrderedCategories(widget.groupedItems);
    _localSelections = {
      for (final entry in widget.selectedAddonIdsByCategory.entries)
        entry.key: List<String>.from(entry.value),
    };
    _activeCategoryKey =
        _categories.isNotEmpty ? _categories.first.groupKey : 'juice';
  }

  List<AddonChoiceModel> get _activeItems =>
      widget.groupedItems[_activeCategoryKey]?.choices ?? const [];

  void _applySelections() {
    for (final category in _categories) {
      widget.bloc.add(
        SelectAddonForCategoryEvent(
          category: category.groupKey,
          addonIds: _localSelections[category.groupKey] ?? const [],
        ),
      );
    }
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.78,
      minChildSize: 0.5,
      maxChildSize: 0.92,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: ColorManager.backgroundSurface,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(AppSize.s24.r),
            ),
          ),
          child: Column(
            children: [
              Gap(AppSize.s10.h),
              _SheetHandle(),
              Gap(AppSize.s12.h),
              _SheetHeader(title: Strings.pendingAddonBottomSheetTitle.tr()),
              Gap(AppSize.s4.h),
              if (_categories.isNotEmpty) ...[
                _CategoryTabs(
                  categories: _categories,
                  activeCategoryKey: _activeCategoryKey,
                  onCategorySelected: (category) {
                    setState(() => _activeCategoryKey = category.groupKey);
                  },
                ),
                Gap(AppSize.s12.h),
              ],
              Expanded(
                child:
                    _categories.isEmpty
                        ? _EmptySheetBody(emptyLabel: widget.emptyLabel)
                        : ListView.separated(
                          controller: scrollController,
                          padding: EdgeInsets.fromLTRB(
                            AppPadding.p16.w,
                            0,
                            AppPadding.p16.w,
                            AppPadding.p24.h,
                          ),
                          itemCount: _activeItems.length,
                          separatorBuilder: (_, __) => Gap(AppSize.s10.h),
                          itemBuilder: (context, index) {
                            final addon = _activeItems[index];
                            final isSelected =
                                _localSelections[_activeCategoryKey]?.contains(
                                  addon.id,
                                ) ??
                                false;
                            return _AddonItemTile(
                              addon: addon,
                              isSelected: isSelected,
                              badgeLabel: widget.badgeLabelBuilder(
                                addon,
                                _localSelections,
                              ),
                              onTap: () {
                                setState(() {
                                  final selectedIds = List<String>.from(
                                    _localSelections[_activeCategoryKey] ??
                                        const [],
                                  );
                                  if (isSelected) {
                                    selectedIds.remove(addon.id);
                                  } else {
                                    selectedIds.add(addon.id);
                                  }
                                  _localSelections[_activeCategoryKey] =
                                      selectedIds;
                                });
                              },
                            );
                          },
                        ),
              ),
              _ApplyBar(
                onApply: _applySelections,
                onClear:
                    (_localSelections[_activeCategoryKey]?.isEmpty ?? true)
                        ? null
                        : () {
                          setState(() {
                            _localSelections[_activeCategoryKey] = const [];
                          });
                        },
              ),
            ],
          ),
        );
      },
    );
  }

  List<AddonChoiceCategoryModel> _resolveOrderedCategories(
    Map<String, AddonChoiceCategoryModel> groupedItems,
  ) {
    return groupedItems.entries
        .where((entry) => entry.value.choices.isNotEmpty)
        .map((entry) => entry.value)
        .toList();
  }
}

class _CategoryTabs extends StatelessWidget {
  final List<AddonChoiceCategoryModel> categories;
  final String activeCategoryKey;
  final ValueChanged<AddonChoiceCategoryModel> onCategorySelected;

  const _CategoryTabs({
    required this.categories,
    required this.activeCategoryKey,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: AppPadding.p16.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var index = 0; index < categories.length; index++) ...[
            _CategoryTabItem(
              category: categories[index],
              isSelected: categories[index].groupKey == activeCategoryKey,
              onTap: () => onCategorySelected(categories[index]),
            ),
            if (index != categories.length - 1) Gap(AppSize.s12.w),
          ],
        ],
      ),
    );
  }
}

class _CategoryTabItem extends StatelessWidget {
  final AddonChoiceCategoryModel category;
  final bool isSelected;
  final VoidCallback onTap;

  const _CategoryTabItem({
    required this.category,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 72.w,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: 56.w,
              height: 56.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color:
                    isSelected
                        ? ColorManager.brandPrimary
                        : ColorManager.backgroundSurface,
                borderRadius: BorderRadius.circular(AppSize.s16.r),
                border:
                    isSelected
                        ? null
                        : Border.all(color: ColorManager.borderDefault),
              ),
              child: Text(
                _categoryIcon(_categoryDisplayKey(category)),
                style: TextStyle(fontSize: 26.sp),
              ),
            ),
            Gap(6.h),
            Text(
              _categoryTitle(category),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: getBoldTextStyle(
                color:
                    isSelected
                        ? ColorManager.brandPrimary
                        : ColorManager.textSecondary,
                fontSize: FontSizeManager.s10.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AddonItemTile extends StatelessWidget {
  final AddonChoiceModel addon;
  final bool isSelected;
  final String? badgeLabel;
  final VoidCallback onTap;

  const _AddonItemTile({
    required this.addon,
    required this.isSelected,
    required this.badgeLabel,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final requiresPayment =
        badgeLabel != null && RegExp(r'\d').hasMatch(badgeLabel!);
    final localeCode = context.locale.languageCode;
    final title = addon.displayName(localeCode);

    return InkWell(
      borderRadius: BorderRadius.circular(AppSize.s16.r),
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsets.all(AppPadding.p14.w),
        decoration: BoxDecoration(
          color:
              isSelected
                  ? ColorManager.brandPrimaryTint
                  : ColorManager.backgroundSurface,
          borderRadius: BorderRadius.circular(AppSize.s16.r),
          border: Border.all(
            color:
                isSelected
                    ? ColorManager.brandPrimary
                    : ColorManager.borderDefault,
          ),
        ),
        child: Row(
          children: [
            Icon(
              isSelected
                  ? Icons.check_box_rounded
                  : Icons.check_box_outline_blank_rounded,
              color:
                  isSelected
                      ? ColorManager.brandPrimary
                      : ColorManager.stateDisabled,
              size: 24.w,
            ),
            Gap(AppSize.s12.w),
            if (badgeLabel != null) ...[
              _AddonStatusBadge(
                label: badgeLabel!,
                highlighted: requiresPayment,
              ),
              Gap(AppSize.s10.w),
            ],
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.end,
                    style: getBoldTextStyle(
                      color: ColorManager.textPrimary,
                      fontSize: FontSizeManager.s14.sp,
                    ),
                  ),
                  if (addon.calories != null ||
                      addon.prepTimeMinutes != null) ...[
                    Gap(AppSize.s4.h),
                    Wrap(
                      spacing: AppSize.s8.w,
                      runSpacing: AppSize.s4.h,
                      alignment: WrapAlignment.end,
                      children: [
                        if (addon.calories != null)
                          _MetaChip(
                            label: Strings.addonCalories.tr(
                              namedArgs: {'count': addon.calories.toString()},
                            ),
                          ),
                        if (addon.prepTimeMinutes != null)
                          _MetaChip(
                            label: Strings.addonPrepTime.tr(
                              namedArgs: {
                                'minutes': addon.prepTimeMinutes.toString(),
                              },
                            ),
                          ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MetaChip extends StatelessWidget {
  final String label;

  const _MetaChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppPadding.p10.w,
        vertical: AppPadding.p6.h,
      ),
      decoration: BoxDecoration(
        color: ColorManager.backgroundSubtle.withValues(alpha: 0.7),
        borderRadius: BorderRadius.circular(AppSize.s20.r),
      ),
      child: Text(
        label,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: getRegularTextStyle(
          color: ColorManager.textSecondary,
          fontSize: FontSizeManager.s10.sp,
        ),
      ),
    );
  }
}

class _AddonStatusBadge extends StatelessWidget {
  final String label;
  final bool highlighted;

  const _AddonStatusBadge({required this.label, required this.highlighted});

  @override
  Widget build(BuildContext context) {
    final background =
        highlighted
            ? ColorManager.stateWarningSurface
            : ColorManager.stateSuccessSurface;
    final textColor =
        highlighted
            ? ColorManager.stateWarningEmphasis
            : ColorManager.stateSuccessEmphasis;
    final border =
        highlighted
            ? ColorManager.stateWarningBorder
            : ColorManager.brandPrimary;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppPadding.p10.w,
        vertical: AppPadding.p6.h,
      ),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(AppSize.s20.r),
        border: Border.all(color: border),
      ),
      child: Text(
        label,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: getBoldTextStyle(
          color: textColor,
          fontSize: FontSizeManager.s10.sp,
        ),
      ),
    );
  }
}

class _ApplyBar extends StatelessWidget {
  final VoidCallback onApply;
  final VoidCallback? onClear;

  const _ApplyBar({required this.onApply, required this.onClear});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        AppPadding.p16.w,
        AppPadding.p12.h,
        AppPadding.p16.w,
        AppPadding.p20.h,
      ),
      decoration: BoxDecoration(
        color: ColorManager.backgroundSurface,
        border: Border(top: BorderSide(color: ColorManager.borderDefault)),
      ),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (onClear != null) ...[
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: TextButton(
                  onPressed: onClear,
                  child: Text(
                    Strings.addonClearSelection.tr(),
                    style: getBoldTextStyle(
                      color: ColorManager.stateError,
                      fontSize: FontSizeManager.s12.sp,
                    ),
                  ),
                ),
              ),
              Gap(AppSize.s8.h),
            ],
            SizedBox(
              width: double.infinity,
              height: 52.h,
              child: ElevatedButton(
                onPressed: onApply,
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorManager.brandPrimary,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSize.s16.r),
                  ),
                ),
                child: Text(
                  Strings.addonApplySelections.tr(),
                  style: getBoldTextStyle(
                    color: ColorManager.textInverse,
                    fontSize: FontSizeManager.s15.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SheetHandle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48.w,
      height: 5.h,
      decoration: BoxDecoration(
        color: ColorManager.backgroundSubtle,
        borderRadius: BorderRadius.circular(99.r),
      ),
    );
  }
}

class _SheetHeader extends StatelessWidget {
  final String title;

  const _SheetHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppPadding.p16.w),
      child: Row(
        children: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.close,
              color: ColorManager.iconSecondary,
              size: 22.w,
            ),
          ),
          Expanded(
            child: Text(
              title,
              textAlign: TextAlign.end,
              style: getBoldTextStyle(
                color: ColorManager.textPrimary,
                fontSize: FontSizeManager.s18.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _EmptySheetBody extends StatelessWidget {
  final String emptyLabel;

  const _EmptySheetBody({required this.emptyLabel});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(AppPadding.p24.w),
        child: Text(
          emptyLabel,
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

String _categoryTitle(AddonChoiceCategoryModel category) {
  if (category.label.isNotEmpty) return category.label;
  if (category.displayCategory.isNotEmpty) {
    switch (category.displayCategory) {
      case 'juice':
        return Strings.addonSelectJuice.tr();
      case 'snack':
        return Strings.addonSelectSnack.tr();
      case 'small_salad':
        return Strings.addonSelectSalad.tr();
      default:
        return category.displayCategory;
    }
  }
  return category.category;
}

String _categoryDisplayKey(AddonChoiceCategoryModel category) {
  if (category.displayCategory.isNotEmpty) return category.displayCategory;
  return category.category;
}

String _categoryIcon(String category) {
  switch (category) {
    case 'juice':
      return '🥤';
    case 'snack':
      return '🍪';
    case 'small_salad':
      return '🥗';
    default:
      return '🍽️';
  }
}
