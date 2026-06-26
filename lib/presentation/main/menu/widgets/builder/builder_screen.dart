import 'package:basic_diet/domain/model/order_menu_model.dart';
import 'package:basic_diet/presentation/main/cart/bloc/cart_event.dart';
import 'package:basic_diet/presentation/main/menu/utils/menu_utils.dart';
import 'package:basic_diet/presentation/main/menu/widgets/builder/builder_card_container.dart';
import 'package:basic_diet/presentation/main/menu/widgets/builder/builder_hero_image.dart';
import 'package:basic_diet/presentation/main/menu/widgets/builder/builder_hero_pill.dart';
import 'package:basic_diet/presentation/main/menu/widgets/builder/builder_progress_bar.dart';
import 'package:basic_diet/presentation/main/menu/widgets/builder/group_search_picker_sheet.dart';
import 'package:basic_diet/presentation/main/menu/widgets/builder/option_group_card.dart';
import 'package:basic_diet/presentation/main/menu/widgets/builder/quantity_selector.dart';
import 'package:basic_diet/presentation/main/menu/widgets/builder/weight_selector.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class BuilderScreen extends StatefulWidget {
  final OrderMenuProductModel product;
  final String currency;

  const BuilderScreen({
    super.key,
    required this.product,
    required this.currency,
  });

  @override
  State<BuilderScreen> createState() => _BuilderScreenState();
}

class _BuilderScreenState extends State<BuilderScreen> {
  late int _qty;
  late int _weightGrams;
  final Map<String, Set<String>> _selectedOptionIds = {};
  final Map<String, int> _extraWeightByOptionId = {};
  final Set<String> _expandedGroupIds = {};
  bool _isReviewing = false;

  @override
  void initState() {
    super.initState();
    _qty = 1;
    _weightGrams =
        widget.product.defaultWeightGrams > 0
            ? widget.product.defaultWeightGrams
            : widget.product.minWeightGrams;

    if (widget.product.optionGroups.isNotEmpty) {
      final firstRequiredIndex = widget.product.optionGroups.indexWhere(
        (group) => group.isRequired,
      );
      _expandedGroupIds.add(
        widget
            .product
            .optionGroups[firstRequiredIndex >= 0 ? firstRequiredIndex : 0]
            .groupId,
      );
    }
  }

  bool get _isValid {
    if (_qty < 1) {
      return false;
    }

    for (final group in widget.product.optionGroups) {
      final selected = _selectedOptionIds[group.groupId] ?? <String>{};
      if (group.isRequired && selected.isEmpty) {
        return false;
      }
      if (selected.length < group.minSelections) {
        return false;
      }
      if (group.maxSelections != null &&
          selected.length > group.maxSelections!) {
        return false;
      }
    }
    return true;
  }

  int get _estimatedUnitPriceHalala {
    int unitPrice =
        widget.product.pricingModel == 'per_100g'
            ? ((widget.product.priceHalala * _weightGrams) /
                    (widget.product.baseUnitGrams == 0
                        ? 100
                        : widget.product.baseUnitGrams))
                .round()
            : widget.product.priceHalala;

    for (final group in widget.product.optionGroups) {
      final selected = _selectedOptionIds[group.groupId] ?? <String>{};
      for (final optionId in selected) {
        final option = group.options.firstWhere(
          (element) => element.optionId == optionId,
        );
        unitPrice += option.extraPriceHalala;
        if (option.extraWeightUnitGrams > 0 &&
            option.extraWeightPriceHalala > 0) {
          final selectedExtra =
              _extraWeightByOptionId[optionId] ?? option.extraWeightUnitGrams;
          final units = (selectedExtra / option.extraWeightUnitGrams).ceil();
          unitPrice += units * option.extraWeightPriceHalala;
        }
      }
    }

    return unitPrice;
  }

  int get _requiredGroupsCount =>
      widget.product.optionGroups.where((group) => group.isRequired).length;

  int get _completedRequiredGroupsCount =>
      widget.product.optionGroups.where(_isGroupComplete).length;

  List<String> get _missingRequirementLabels =>
      widget.product.optionGroups
          .where((group) => !_isGroupComplete(group))
          .map(
            (group) => Strings.builderSelectFromGroup.tr(
              namedArgs: {
                'count': group.minSelections.toString(),
                'group': group.name,
              },
            ),
          )
          .toList();

  String get _selectionSummary {
    final missingCount = _missingRequirementLabels.length;
    if (missingCount > 0) {
      return Strings.builderSelectionGroupsNeeded.tr(
        namedArgs: {'count': missingCount.toString()},
      );
    }
    return Strings.builderReadyForCart.tr();
  }

  bool _isGroupComplete(OrderMenuOptionGroupModel group) {
    final selectedCount =
        (_selectedOptionIds[group.groupId] ?? <String>{}).length;
    if (!group.isRequired) {
      return true;
    }
    if (group.minSelections == group.maxSelections) {
      return selectedCount == group.minSelections;
    }
    if (group.maxSelections == null) {
      return selectedCount >= group.minSelections;
    }
    return selectedCount >= group.minSelections &&
        selectedCount <= group.maxSelections!;
  }

  String _groupRuleText(OrderMenuOptionGroupModel group) {
    final maxSelections = group.maxSelections;
    if (!group.isRequired) {
      if (maxSelections == null) {
        return Strings.builderOptional.tr();
      }
      return Strings.builderChooseUpTo.tr(
        namedArgs: {'count': '$maxSelections'},
      );
    }

    if (maxSelections == null) {
      return Strings.builderChooseAtLeast.tr(
        namedArgs: {'count': group.minSelections.toString()},
      );
    }

    if (group.minSelections == maxSelections) {
      return Strings.builderChooseExact.tr(
        namedArgs: {'count': maxSelections.toString()},
      );
    }

    return Strings.builderChooseRange.tr(
      namedArgs: {
        'min': group.minSelections.toString(),
        'max': maxSelections.toString(),
      },
    );
  }

  List<OrderMenuOptionModel> _sortedOptions(OrderMenuOptionGroupModel group) {
    final options = [...group.options]
      ..sort((a, b) => a.sortOrder.compareTo(b.sortOrder));
    return options;
  }

  void _toggleOption(OrderMenuOptionGroupModel group, String optionId) {
    setState(() {
      final selected = _selectedOptionIds.putIfAbsent(
        group.groupId,
        () => <String>{},
      );
      if (selected.contains(optionId)) {
        selected.remove(optionId);
        _extraWeightByOptionId.remove(optionId);
        return;
      }

      if (group.maxSelections == 1) {
        selected.clear();
      }

      if (group.maxSelections == null ||
          selected.length < group.maxSelections!) {
        selected.add(optionId);
      }
    });
  }

  void _changeExtraWeight(OrderMenuOptionModel option, int delta) {
    setState(() {
      final current =
          _extraWeightByOptionId[option.optionId] ?? option.extraWeightUnitGrams;
      final next = current + delta;
      if (next >= option.extraWeightUnitGrams) {
        _extraWeightByOptionId[option.optionId] = next;
      }
    });
  }

  void _submit() {
    if (!_isValid) {
      return;
    }

    final selectedOptions = <SelectedCartOption>[];
    for (final group in widget.product.optionGroups) {
      final selected = _selectedOptionIds[group.groupId] ?? <String>{};
      for (final optionId in selected) {
        final option = group.options.firstWhere(
          (element) => element.optionId == optionId,
        );
        selectedOptions.add(
          SelectedCartOption(
            groupId: group.groupId,
            optionId: optionId,
            optionName: option.name,
            extraWeightGrams: _extraWeightByOptionId[optionId],
          ),
        );
      }
    }

    Navigator.of(context).pop(
      CartItem(
        productId: widget.product.id,
        name: widget.product.displayName(context.locale.toString()),
        qty: _qty,
        weightGrams:
            widget.product.pricingModel == 'per_100g' ? _weightGrams : null,
        selectedOptions: selectedOptions,
        unitPriceHalala: _estimatedUnitPriceHalala,
      ),
    );
  }

  void _showDetails() {
    if (!_isValid) {
      return;
    }

    setState(() {
      _isReviewing = true;
    });
  }

  Future<void> _openGroupSearchPicker(OrderMenuOptionGroupModel group) async {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (sheetContext) {
        return GroupSearchPickerSheet(
          group: group,
          currency: widget.currency,
          options: _sortedOptions(group),
          groupRuleText: _groupRuleText(group),
          getSelectedIds: () => _selectedOptionIds[group.groupId] ?? <String>{},
          getExtraWeight:
              (option) =>
                  _extraWeightByOptionId[option.optionId] ??
                  option.extraWeightUnitGrams,
          onToggleOption: (optionId) => _toggleOption(group, optionId),
          onDecreaseExtraWeight:
              (option) => _changeExtraWeight(option, -option.extraWeightUnitGrams),
          onIncreaseExtraWeight:
              (option) => _changeExtraWeight(option, option.extraWeightUnitGrams),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final product = widget.product;
    final missingRequirements = _missingRequirementLabels;
    final progressValue =
        _requiredGroupsCount == 0
            ? 1.0
            : _completedRequiredGroupsCount / _requiredGroupsCount;
    return Scaffold(
      backgroundColor: ColorManager.backgroundApp,
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(
            AppPadding.p16.w,
            AppPadding.p10.h,
            AppPadding.p16.w,
            AppPadding.p16.h,
          ),
          child: BuilderCardContainer(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        _selectionSummary,
                        textAlign: TextAlign.right,
                        style: getBoldTextStyle(
                          fontSize: FontSizeManager.s12.sp,
                          color: ColorManager.stateSuccessEmphasis,
                        ),
                      ),
                      Gap(AppSize.s4.h),
                      Text(
                        formatHalala(
                          _estimatedUnitPriceHalala * _qty,
                          widget.currency,
                        ),
                        textAlign: TextAlign.right,
                        style: getBoldTextStyle(
                          fontSize: FontSizeManager.s15.sp,
                          color: const Color(0xFF112B22),
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(AppSize.s12.w),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: ColorManager.brandPrimary,
                      disabledBackgroundColor: const Color(0xFFB9D6CA),
                      foregroundColor: ColorManager.backgroundSurface,
                      padding: EdgeInsetsDirectional.symmetric(
                        vertical: AppPadding.p16.h,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppSize.s18.r),
                      ),
                    ),
                    onPressed: _isValid
                        ? (_isReviewing ? _submit : _showDetails)
                        : null,
                    child: Text(
                      _isReviewing
                          ? Strings.addToCart.tr()
                          : Strings.builderShowDetails.tr(),
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s13.sp,
                        color: ColorManager.backgroundSurface,
                      ),
                    ),
                  ),
                ),
                if (_isReviewing) ...[
                  Gap(AppSize.s10.w),
                  SizedBox(
                    width: AppSize.s52.w,
                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          _isReviewing = false;
                        });
                      },
                      style: OutlinedButton.styleFrom(
                        minimumSize: Size(AppSize.s52.w, AppSize.s52.h),
                        padding: EdgeInsets.zero,
                        side: BorderSide(color: ColorManager.borderDefault),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(AppSize.s18.r),
                        ),
                      ),
                      child: Icon(
                        Icons.edit_rounded,
                        color: ColorManager.textPrimary,
                        size: AppSize.s20.r,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsetsDirectional.fromSTEB(
            AppPadding.p18.w,
            AppPadding.p12.h,
            AppPadding.p18.w,
            AppPadding.p24.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      if (_isReviewing) {
                        setState(() {
                          _isReviewing = false;
                        });
                        return;
                      }

                      Navigator.of(context).maybePop();
                    },
                    borderRadius: BorderRadius.circular(AppSize.s14.r),
                    child: Container(
                      width: AppSize.s42.w,
                      height: AppSize.s42.h,
                      decoration: BoxDecoration(
                        color: ColorManager.backgroundSurface.withValues(
                          alpha: 0.92,
                        ),
                        borderRadius: BorderRadius.circular(AppSize.s14.r),
                        border: Border.all(
                          color: ColorManager.backgroundSurface.withValues(
                            alpha: 0.78,
                          ),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x14000000),
                            blurRadius: AppSize.s12.r,
                            offset: Offset(0, AppSize.s4.h),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: const Color(0xFF112B22),
                        size: AppSize.s18.r,
                      ),
                    ),
                  ),
                  Gap(AppSize.s12.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          Strings.customOrder.tr(),
                          textAlign: TextAlign.right,
                          style: getBoldTextStyle(
                            fontSize: FontSizeManager.s18.sp,
                            color: ColorManager.textPrimary,
                          ),
                        ),
                        Gap(AppSize.s4.h),
                        Text(
                          _isReviewing
                              ? Strings.builderReviewOrder.tr()
                              : Strings.builderChooseIngredients.tr(),
                          textAlign: TextAlign.right,
                          style: getRegularTextStyle(
                            fontSize: FontSizeManager.s12.sp,
                            color: ColorManager.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Gap(AppSize.s16.h),
              if (_isReviewing)
                ..._buildReviewContent(product)
              else
                ..._buildSelectionContent(
                  product: product,
                  missingRequirements: missingRequirements,
                  progressValue: progressValue,
                ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildSelectionContent({
    required OrderMenuProductModel product,
    required List<String> missingRequirements,
    required double progressValue,
  }) {
    return [
      _BuilderProductHeader(
        product: product,
        currency: widget.currency,
        unitPriceHalala: _estimatedUnitPriceHalala,
        weightGrams: _weightGrams,
        progressValue: progressValue,
        progressLabel: Strings.builderCompletedGroupsCount.tr(
          namedArgs: {
            'done': _completedRequiredGroupsCount.toString(),
            'total': _requiredGroupsCount.toString(),
          },
        ),
      ),
      if (product.pricingModel == 'per_100g') Gap(AppSize.s12.h),
      for (final group in product.optionGroups)
        Padding(
          padding: EdgeInsetsDirectional.only(bottom: AppPadding.p12.h),
          child: OptionGroupCard(
            group: group,
            currency: widget.currency,
            isExpanded: _expandedGroupIds.contains(group.groupId),
            selectedIds: _selectedOptionIds[group.groupId] ?? <String>{},
            extraWeightByOptionId: _extraWeightByOptionId,
            visibleOptions: _sortedOptions(group),
            ruleText: _groupRuleText(group),
            isComplete: _isGroupComplete(group),
            onExpandedChanged: (value) {
              setState(() {
                if (value) {
                  _expandedGroupIds.add(group.groupId);
                } else {
                  _expandedGroupIds.remove(group.groupId);
                }
              });
            },
            onOpenSearch: () => _openGroupSearchPicker(group),
            onToggle: (optionId) => _toggleOption(group, optionId),
            onExtraWeightChanged: _changeExtraWeight,
          ),
        ),
      BuilderCardContainer(
        child: QuantitySelector(
          quantity: _qty,
          onDecrease:
              _qty > 1
                  ? () {
                    setState(() {
                      _qty--;
                    });
                  }
                  : null,
          onIncrease: () {
            setState(() {
              _qty++;
            });
          },
        ),
      ),
      if (missingRequirements.isNotEmpty) ...[
        Gap(AppSize.s12.h),
        Container(
          width: double.infinity,
          padding: EdgeInsetsDirectional.all(AppPadding.p14.r),
          decoration: BoxDecoration(
            color: ColorManager.backgroundSurface.withValues(alpha: 0.78),
            borderRadius: BorderRadius.circular(AppSize.s18.r),
            border: Border.all(color: const Color(0x1A000000)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                Strings.builderRemainingBeforeAdd.tr(),
                textAlign: TextAlign.right,
                style: getBoldTextStyle(
                  fontSize: FontSizeManager.s12.sp,
                  color: ColorManager.textSecondary,
                ),
              ),
              Gap(AppSize.s8.h),
              ...missingRequirements.map(
                (message) => Padding(
                  padding: EdgeInsetsDirectional.only(
                    bottom: AppPadding.p6.h,
                  ),
                  child: Text(
                    '• $message',
                    textAlign: TextAlign.right,
                    style: getRegularTextStyle(
                      fontSize: FontSizeManager.s12.sp,
                      color: const Color(0xFF4B5563),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ];
  }

  List<Widget> _buildReviewContent(OrderMenuProductModel product) {
    final reviewGroups = _selectedReviewGroups(product);

    return [
      _BuilderReviewHeader(
        productName: product.displayName(context.locale.toString()),
        quantity: _qty,
        total: formatHalala(_estimatedUnitPriceHalala * _qty, widget.currency),
        weight: product.pricingModel == 'per_100g' ? weightLabel(_weightGrams) : null,
      ),
      Gap(AppSize.s12.h),
      BuilderCardContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              Strings.builderItemDetails.tr(),
              textAlign: TextAlign.right,
              style: getBoldTextStyle(
                fontSize: FontSizeManager.s15.sp,
                color: ColorManager.textPrimary,
              ),
            ),
            Gap(AppSize.s12.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        product.displayName(context.locale.toString()),
                        textAlign: TextAlign.right,
                        style: getBoldTextStyle(
                          fontSize: FontSizeManager.s18.sp,
                          color: const Color(0xFF112B22),
                        ),
                      ),
                      Gap(AppSize.s6.h),
                      Text(
                        productDescription(product, context),
                        textAlign: TextAlign.right,
                        style: getRegularTextStyle(
                          fontSize: FontSizeManager.s12.sp,
                          color: ColorManager.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(AppSize.s14.w),
                BuilderHeroImage(
                  imageUrl: product.imageUrl,
                  initials: initials(
                    product.displayName(context.locale.toString()),
                    context,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Gap(AppSize.s12.h),
      BuilderCardContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              Strings.builderSelectedOptions.tr(),
              textAlign: TextAlign.right,
              style: getBoldTextStyle(
                fontSize: FontSizeManager.s15.sp,
                color: ColorManager.textPrimary,
              ),
            ),
            Gap(AppSize.s12.h),
            if (reviewGroups.isEmpty)
              Text(
                Strings.builderNoOptionalSelections.tr(),
                textAlign: TextAlign.right,
                style: getRegularTextStyle(
                  fontSize: FontSizeManager.s12.sp,
                  color: ColorManager.textSecondary,
                ),
              )
            else
              ...reviewGroups.map(
                (group) => _BuilderReviewOptionGroup(group: group),
              ),
          ],
        ),
      ),
    ];
  }

  List<_BuilderReviewGroupData> _selectedReviewGroups(
    OrderMenuProductModel product,
  ) {
    return product.optionGroups
        .map((group) {
          final selectedIds = _selectedOptionIds[group.groupId] ?? <String>{};
          final selectedOptions = _sortedOptions(group)
              .where((option) => selectedIds.contains(option.optionId))
              .map(_reviewOptionLabel)
              .toList();
          return _BuilderReviewGroupData(
            label: group.name,
            options: selectedOptions,
          );
        })
        .where((group) => group.options.isNotEmpty)
        .toList();
  }

  String _reviewOptionLabel(OrderMenuOptionModel option) {
    final extraWeight = _extraWeightByOptionId[option.optionId];
    if (extraWeight == null || extraWeight <= 0) {
      return option.name;
    }
    return '${option.name} • ${weightLabel(extraWeight)}';
  }
}

class _BuilderProductHeader extends StatelessWidget {
  final OrderMenuProductModel product;
  final String currency;
  final int unitPriceHalala;
  final int weightGrams;
  final double progressValue;
  final String progressLabel;

  const _BuilderProductHeader({
    required this.product,
    required this.currency,
    required this.unitPriceHalala,
    required this.weightGrams,
    required this.progressValue,
    required this.progressLabel,
  });

  @override
  Widget build(BuildContext context) {
    return BuilderCardContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: AppPadding.p10.w,
              vertical: AppPadding.p8.h,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFFF3F7F4),
              borderRadius: BorderRadius.circular(AppSize.s12.r),
            ),
            child: Text(
              product.pricingModel == 'per_100g'
                  ? '${formatHalala(product.priceHalala, currency)} / ${Strings.grams.tr(args: ['100'])}'
                  : formatHalala(unitPriceHalala, currency),
              style: getBoldTextStyle(
                fontSize: FontSizeManager.s11.sp,
                color: const Color(0xFF12382C),
              ),
            ),
          ),
          Gap(AppSize.s12.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      product.displayName(context.locale.toString()),
                      textAlign: TextAlign.right,
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s22.sp,
                        color: const Color(0xFF112B22),
                      ),
                    ),
                    Gap(AppSize.s6.h),
                    Text(
                      productDescription(product, context),
                      textAlign: TextAlign.right,
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s12_5.sp,
                        color: ColorManager.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              Gap(AppSize.s14.w),
              BuilderHeroImage(
                imageUrl: product.imageUrl,
                initials: initials(
                  product.displayName(context.locale.toString()),
                  context,
                ),
              ),
            ],
          ),
          if (product.pricingModel == 'per_100g') ...[
            Gap(AppSize.s12.h),
            Wrap(
              alignment: WrapAlignment.end,
              spacing: AppSize.s8.w,
              runSpacing: AppSize.s8.h,
              children: [
                BuilderHeroPill(
                  label: Strings.weightGrams.tr(),
                  value: weightLabel(weightGrams),
                ),
                BuilderHeroPill(
                  label: Strings.per100g.tr(),
                  value: formatHalala(product.priceHalala, currency),
                ),
              ],
            ),
          ],
          Gap(AppSize.s14.h),
          BuilderProgressBar(value: progressValue, label: progressLabel),
        ],
      ),
    );
  }
}

class _BuilderReviewHeader extends StatelessWidget {
  final String productName;
  final int quantity;
  final String total;
  final String? weight;

  const _BuilderReviewHeader({
    required this.productName,
    required this.quantity,
    required this.total,
    this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsetsDirectional.all(AppPadding.p16.w),
      decoration: BoxDecoration(
        color: ColorManager.brandPrimaryTint,
        borderRadius: BorderRadius.circular(AppSize.s16.r),
        border: Border.all(color: ColorManager.borderSubtle),
        boxShadow: const [
          BoxShadow(
            color: ColorManager.brandPrimaryGlow,
            blurRadius: AppSize.s24,
            offset: Offset(0, AppSize.s8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      Strings.builderReviewOrder.tr(),
                      textAlign: TextAlign.right,
                      style: getBoldTextStyle(
                        color: ColorManager.textPrimary,
                        fontSize: FontSizeManager.s18.sp,
                      ),
                    ),
                    Gap(AppSize.s4.h),
                    Text(
                      productName,
                      textAlign: TextAlign.right,
                      style: getRegularTextStyle(
                        color: ColorManager.textSecondary,
                        fontSize: FontSizeManager.s12.sp,
                      ),
                    ),
                  ],
                ),
              ),
              Gap(AppSize.s12.w),
              Container(
                width: AppSize.s40.w,
                height: AppSize.s40.w,
                decoration: BoxDecoration(
                  color: ColorManager.brandPrimary,
                  borderRadius: BorderRadius.circular(AppSize.s12.r),
                ),
                child: Icon(
                  Icons.check_rounded,
                  color: ColorManager.iconInverse,
                  size: AppSize.s22.sp,
                ),
              ),
            ],
          ),
          Gap(AppSize.s14.h),
          Wrap(
            alignment: WrapAlignment.end,
            spacing: AppSize.s8.w,
            runSpacing: AppSize.s8.h,
            children: [
              _BuilderReviewMetaPill(
                label: Strings.builderQuantity.tr(),
                value: quantity.toString(),
              ),
              if (weight != null)
                _BuilderReviewMetaPill(
                  label: Strings.weightGrams.tr(),
                  value: weight!,
                ),
              _BuilderReviewMetaPill(
                label: Strings.builderTotal.tr(),
                value: total,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _BuilderReviewMetaPill extends StatelessWidget {
  final String label;
  final String value;

  const _BuilderReviewMetaPill({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.sizeOf(context).width - AppSize.s60.w,
      ),
      child: Container(
        padding: EdgeInsetsDirectional.symmetric(
          horizontal: AppPadding.p10.w,
          vertical: AppPadding.p8.h,
        ),
        decoration: BoxDecoration(
          color: ColorManager.backgroundSurface,
          borderRadius: BorderRadius.circular(AppSize.s10.r),
          border: Border.all(color: ColorManager.borderDefault),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: getRegularTextStyle(
                color: ColorManager.textSecondary,
                fontSize: FontSizeManager.s11.sp,
              ),
            ),
            Gap(AppSize.s6.w),
            Flexible(
              child: Text(
                value,
                overflow: TextOverflow.ellipsis,
                style: getBoldTextStyle(
                  color: ColorManager.textPrimary,
                  fontSize: FontSizeManager.s12.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BuilderReviewGroupData {
  final String label;
  final List<String> options;

  const _BuilderReviewGroupData({
    required this.label,
    required this.options,
  });
}

class _BuilderReviewOptionGroup extends StatelessWidget {
  final _BuilderReviewGroupData group;

  const _BuilderReviewOptionGroup({required this.group});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsetsDirectional.only(bottom: AppSize.s10.h),
      padding: EdgeInsetsDirectional.all(AppPadding.p12.w),
      decoration: BoxDecoration(
        color: ColorManager.backgroundSurface,
        borderRadius: BorderRadius.circular(AppSize.s12.r),
        border: Border.all(color: ColorManager.borderDefault),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            group.label,
            textAlign: TextAlign.right,
            style: getBoldTextStyle(
              color: ColorManager.textPrimary,
              fontSize: FontSizeManager.s13.sp,
            ),
          ),
          Gap(AppSize.s10.h),
          Wrap(
            alignment: WrapAlignment.end,
            spacing: AppSize.s8.w,
            runSpacing: AppSize.s8.h,
            children:
                group.options
                    .map((option) => _BuilderReviewOptionChip(label: option))
                    .toList(),
          ),
        ],
      ),
    );
  }
}

class _BuilderReviewOptionChip extends StatelessWidget {
  final String label;

  const _BuilderReviewOptionChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.sizeOf(context).width - AppSize.s60.w,
      ),
      child: Container(
        padding: EdgeInsetsDirectional.symmetric(
          horizontal: AppPadding.p10.w,
          vertical: AppPadding.p6.h,
        ),
        decoration: BoxDecoration(
          color: ColorManager.backgroundSubtle,
          borderRadius: BorderRadius.circular(AppSize.s8.r),
        ),
        child: Text(
          label,
          overflow: TextOverflow.ellipsis,
          style: getRegularTextStyle(
            color: ColorManager.textPrimary,
            fontSize: FontSizeManager.s12.sp,
          ),
        ),
      ),
    );
  }
}
