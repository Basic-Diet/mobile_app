import 'package:easy_localization/easy_localization.dart';
import 'package:basic_diet/app/dependency_injection.dart';
import 'package:basic_diet/domain/model/order_menu_model.dart';
import 'package:basic_diet/presentation/main/cart/bloc/cart_bloc.dart';
import 'package:basic_diet/presentation/main/cart/bloc/cart_event.dart';
import 'package:basic_diet/presentation/main/cart/bloc/cart_state.dart';
import 'package:basic_diet/presentation/main/menu/bloc/menu_bloc.dart';
import 'package:basic_diet/presentation/main/menu/bloc/menu_event.dart';
import 'package:basic_diet/presentation/main/menu/bloc/menu_state.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        initOrderMenuModule();
        final bloc = instance<MenuBloc>();
        bloc.add(const LoadMenuEvent());
        return bloc;
      },
      child: BlocListener<MenuBloc, MenuState>(
        listener: (context, state) {
          if (state is MenuSuccess) {
            context.read<CartBloc>().add(
              SetRestaurantHoursEvent(state.menu.restaurantHours),
            );
          }
        },
        child: const _MenuScreenContent(),
      ),
    );
  }
}

class _MenuScreenContent extends StatelessWidget {
  const _MenuScreenContent();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backgroundSurface,
      appBar: AppBar(
        backgroundColor: ColorManager.backgroundSurface,
        elevation: 0,
        title: Text(
          Strings.menu.tr(),
          style: getBoldTextStyle(
            color: ColorManager.textPrimary,
            fontSize: FontSizeManager.s18.sp,
          ),
        ),
        actions: [
          BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              if (state is CartLoaded && state.totalQty > 0) {
                return Stack(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.shopping_cart_outlined),
                      onPressed: () => context.push('/cart'),
                    ),
                    Positioned(
                      right: 8.w,
                      top: 8.h,
                      child: Container(
                        padding: EdgeInsets.all(4.r),
                        decoration: const BoxDecoration(
                          color: ColorManager.brandPrimary,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          '${state.totalQty}',
                          style: getRegularTextStyle(
                            color: ColorManager.backgroundSurface,
                            fontSize: FontSizeManager.s10.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }
              return IconButton(
                icon: const Icon(Icons.shopping_cart_outlined),
                onPressed: () => context.push('/cart'),
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<MenuBloc, MenuState>(
        builder: (context, state) {
          if (state is MenuLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is MenuError) {
            return _ErrorView(message: state.message);
          }
          if (state is MenuSuccess) {
            return _MenuContent(menu: state.menu);
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}

class _ErrorView extends StatelessWidget {
  final String message;

  const _ErrorView({required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(message, style: getRegularTextStyle(color: ColorManager.textPrimary)),
          SizedBox(height: AppSize.s16.h),
          ElevatedButton(
            onPressed: () {
              context.read<MenuBloc>().add(const RetryMenuEvent());
            },
            child: Text(Strings.tryAgain.tr()),
          ),
        ],
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════════
//  Router: dynamic catalog vs legacy fallback
// ═══════════════════════════════════════════════════════════════════════════════

class _MenuContent extends StatelessWidget {
  final OrderMenuModel menu;

  const _MenuContent({required this.menu});

  @override
  Widget build(BuildContext context) {
    if (menu.hasDynamicCatalog) {
      return _DynamicCatalogView(menu: menu);
    }
    return _LegacyMenuView(menu: menu);
  }
}

// ═══════════════════════════════════════════════════════════════════════════════
//  Dynamic Catalog (categories / products / optionGroups)
// ═══════════════════════════════════════════════════════════════════════════════

class _DynamicCatalogView extends StatelessWidget {
  final OrderMenuModel menu;

  const _DynamicCatalogView({required this.menu});

  @override
  Widget build(BuildContext context) {
    final sortedCategories = [...menu.categories]
      ..sort((a, b) => a.sortOrder.compareTo(b.sortOrder));

    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: AppPadding.p16.w),
      itemCount: sortedCategories.length,
      itemBuilder: (context, index) {
        final category = sortedCategories[index];
        return _CategorySection(category: category, currency: menu.currency);
      },
    );
  }
}

class _CategorySection extends StatelessWidget {
  final OrderMenuCategoryModel category;
  final String currency;

  const _CategorySection({required this.category, required this.currency});

  @override
  Widget build(BuildContext context) {
    final sortedProducts = [...category.products]
      ..sort((a, b) => a.sortOrder.compareTo(b.sortOrder));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: AppPadding.p12.h),
          child: Text(
            category.name,
            style: getBoldTextStyle(
              color: ColorManager.textPrimary,
              fontSize: FontSizeManager.s16.sp,
            ),
          ),
        ),
        ...sortedProducts.map(
          (product) => _DynamicProductCard(product: product, currency: currency),
        ),
      ],
    );
  }
}

class _DynamicProductCard extends StatefulWidget {
  final OrderMenuProductModel product;
  final String currency;

  const _DynamicProductCard({required this.product, required this.currency});

  @override
  State<_DynamicProductCard> createState() => _DynamicProductCardState();
}

class _DynamicProductCardState extends State<_DynamicProductCard> {
  int _qty = 1;
  int? _weightGrams;
  final Map<String, Set<String>> _selectedOptionIds = {};
  final Map<String, int> _optionExtraWeight = {};

  @override
  void initState() {
    super.initState();
    _weightGrams = widget.product.defaultWeightGrams > 0
        ? widget.product.defaultWeightGrams
        : null;
  }

  bool get _canAddToCart {
    if (_qty < 1) return false;
    for (final group in widget.product.optionGroups) {
      final selected = _selectedOptionIds[group.id] ?? <String>{};
      if (group.isRequired && selected.isEmpty) return false;
      if (selected.length < group.minSelections) return false;
      if (selected.length > group.maxSelections) return false;
    }
    return true;
  }

  void _toggleOption(String groupId, String optionId) {
    setState(() {
      final set = _selectedOptionIds.putIfAbsent(groupId, () => <String>{});
      final group = widget.product.optionGroups.firstWhere((g) => g.id == groupId);
      if (set.contains(optionId)) {
        set.remove(optionId);
        _optionExtraWeight.remove(optionId);
      } else {
        if (group.maxSelections == 1) {
          set.clear();
        }
        set.add(optionId);
      }
    });
  }

  void _addToCart(BuildContext context) {
    final selectedOptions = <SelectedCartOption>[];
    for (final group in widget.product.optionGroups) {
      final ids = _selectedOptionIds[group.id] ?? <String>{};
      for (final optionId in ids) {
        final option = group.options.firstWhere((o) => o.optionId == optionId);
        selectedOptions.add(
          SelectedCartOption(
            groupId: group.groupId,
            optionId: option.optionId,
            extraWeightGrams: option.extraWeightUnitGrams > 0
                ? (_optionExtraWeight[optionId] ?? option.extraWeightUnitGrams)
                : null,
          ),
        );
      }
    }

    context.read<CartBloc>().add(
      AddItemEvent(
        CartItem(
          productId: widget.product.id,
          name: widget.product.name,
          qty: _qty,
          weightGrams: widget.product.pricingModel == 'per_100g' ? _weightGrams : null,
          selectedOptions: selectedOptions,
          unitPriceHalala: widget.product.priceHalala,
        ),
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('${widget.product.name} ${Strings.addToCart.tr()}')),
    );
  }

  @override
  Widget build(BuildContext context) {
    final product = widget.product;

    return Card(
      margin: EdgeInsets.only(bottom: AppPadding.p12.h),
      child: Padding(
        padding: EdgeInsets.all(AppPadding.p12.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.name,
              style: getBoldTextStyle(
                color: ColorManager.textPrimary,
                fontSize: FontSizeManager.s14.sp,
              ),
            ),
            SizedBox(height: AppSize.s4.h),
            if (product.pricingModel == 'fixed')
              Text(
                '${(product.priceHalala / 100).toStringAsFixed(2)} ${widget.currency}',
                style: getBoldTextStyle(
                  color: ColorManager.brandPrimary,
                  fontSize: FontSizeManager.s14.sp,
                ),
              ),
            if (product.pricingModel == 'per_100g') ...[
              SizedBox(height: AppSize.s8.h),
              Row(
                children: [
                  Text(
                    'weightGrams'.tr(),
                    style: getRegularTextStyle(color: ColorManager.textSecondary),
                  ),
                  SizedBox(width: AppSize.s8.w),
                  Expanded(
                    child: Slider(
                      value: (_weightGrams ?? product.defaultWeightGrams).toDouble(),
                      min: product.minWeightGrams.toDouble(),
                      max: product.maxWeightGrams > 0
                          ? product.maxWeightGrams.toDouble()
                          : 500,
                      divisions: product.weightStepGrams > 0
                          ? ((product.maxWeightGrams > 0 ? product.maxWeightGrams : 500) -
                                  product.minWeightGrams) ~/
                              product.weightStepGrams
                          : null,
                      label: '${_weightGrams ?? product.defaultWeightGrams}g',
                      onChanged: (value) {
                        setState(() {
                          _weightGrams = value.round();
                        });
                      },
                    ),
                  ),
                  Text(
                    '${_weightGrams ?? product.defaultWeightGrams}g',
                    style: getBoldTextStyle(color: ColorManager.textPrimary),
                  ),
                ],
              ),
            ],
            ...product.optionGroups.map((group) {
              return _OptionGroupSelector(
                group: group,
                selectedIds: _selectedOptionIds[group.id] ?? <String>{},
                onToggle: (optionId) => _toggleOption(group.id, optionId),
                extraWeightMap: _optionExtraWeight,
                onExtraWeightChanged: (optionId, grams) {
                  setState(() {
                    _optionExtraWeight[optionId] = grams;
                  });
                },
              );
            }),
            SizedBox(height: AppSize.s8.h),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.remove_circle_outline),
                  onPressed: _qty > 1
                      ? () => setState(() => _qty--)
                      : null,
                ),
                Text('$_qty', style: getBoldTextStyle(color: ColorManager.textPrimary)),
                IconButton(
                  icon: const Icon(Icons.add_circle_outline),
                  onPressed: () => setState(() => _qty++),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: _canAddToCart ? () => _addToCart(context) : null,
                  child: Text(Strings.addToCart.tr()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _OptionGroupSelector extends StatelessWidget {
  final OrderMenuOptionGroupModel group;
  final Set<String> selectedIds;
  final ValueChanged<String> onToggle;
  final Map<String, int> extraWeightMap;
  final void Function(String optionId, int grams) onExtraWeightChanged;

  const _OptionGroupSelector({
    required this.group,
    required this.selectedIds,
    required this.onToggle,
    required this.extraWeightMap,
    required this.onExtraWeightChanged,
  });

  @override
  Widget build(BuildContext context) {
    final sortedOptions = [...group.options]
      ..sort((a, b) => a.sortOrder.compareTo(b.sortOrder));

    return Padding(
      padding: EdgeInsets.only(top: AppPadding.p8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                group.name,
                style: getBoldTextStyle(
                  color: ColorManager.textPrimary,
                  fontSize: FontSizeManager.s12.sp,
                ),
              ),
              if (group.isRequired) ...[
                SizedBox(width: AppSize.s4.w),
                Text(
                  '(${Strings.required_.tr()})',
                  style: getRegularTextStyle(
                    color: Colors.red,
                    fontSize: FontSizeManager.s10.sp,
                  ),
                ),
              ],
            ],
          ),
          SizedBox(height: AppSize.s4.h),
          Wrap(
            spacing: AppSize.s8.w,
            runSpacing: AppSize.s4.h,
            children: sortedOptions.map((option) {
              final isSelected = selectedIds.contains(option.optionId);
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ChoiceChip(
                    label: Text(
                      option.name +
                          (option.extraPriceHalala > 0
                              ? ' +${(option.extraPriceHalala / 100).toStringAsFixed(2)}'
                              : ''),
                    ),
                    selected: isSelected,
                    onSelected: (_) => onToggle(option.optionId),
                  ),
                  if (isSelected && option.extraWeightUnitGrams > 0)
                    Padding(
                      padding: EdgeInsets.only(bottom: AppPadding.p4.h),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'extraWeight'.tr(),
                            style: getRegularTextStyle(
                              color: ColorManager.textSecondary,
                              fontSize: FontSizeManager.s10.sp,
                            ),
                          ),
                          SizedBox(width: AppSize.s4.w),
                          SizedBox(
                            width: 60.w,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              style: getRegularTextStyle(
                                color: ColorManager.textPrimary,
                                fontSize: FontSizeManager.s12.sp,
                              ),
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: AppPadding.p4.h,
                                ),
                                hintText: '${option.extraWeightUnitGrams}g',
                              ),
                              onChanged: (value) {
                                final grams = int.tryParse(value);
                                if (grams != null && grams > 0) {
                                  onExtraWeightChanged(option.optionId, grams);
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════════
//  Legacy Fallback (standardMeals / sandwiches / salad / addons)
// ═══════════════════════════════════════════════════════════════════════════════

class _LegacyMenuView extends StatelessWidget {
  final OrderMenuModel menu;

  const _LegacyMenuView({required this.menu});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: AppPadding.p16.w),
      children: [
        if (menu.standardMeals != null) ...[
          _SectionTitle(title: 'standardMeals'.tr()),
          _LegacyStandardMealBuilderCard(
            standardMeals: menu.standardMeals!,
            currency: menu.currency,
          ),
        ],
        if (menu.sandwiches.isNotEmpty) ...[
          _SectionTitle(title: 'sandwiches'.tr()),
          ...menu.sandwiches.map(
            (s) => _LegacySandwichCard(sandwich: s, currency: menu.currency),
          ),
        ],
        if (menu.salad != null && menu.salad!.ingredients.isNotEmpty) ...[
          _SectionTitle(title: 'salad'.tr()),
          _LegacySaladBuilderCard(salad: menu.salad!, currency: menu.currency),
        ],
        if (menu.addons != null && menu.addons!.items.isNotEmpty) ...[
          _SectionTitle(title: 'addOns'.tr()),
          ...menu.addons!.items.map(
            (a) => _LegacyAddonCard(addon: a, currency: menu.currency),
          ),
        ],
        SizedBox(height: AppSize.s32.h),
      ],
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;

  const _SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppPadding.p12.h),
      child: Text(
        title,
        style: getBoldTextStyle(
          color: ColorManager.textPrimary,
          fontSize: FontSizeManager.s16.sp,
        ),
      ),
    );
  }
}

class _LegacyStandardMealBuilderCard extends StatefulWidget {
  final OrderMenuStandardMealsModel standardMeals;
  final String currency;

  const _LegacyStandardMealBuilderCard({
    required this.standardMeals,
    required this.currency,
  });

  @override
  State<_LegacyStandardMealBuilderCard> createState() =>
      _LegacyStandardMealBuilderCardState();
}

class _LegacyStandardMealBuilderCardState
    extends State<_LegacyStandardMealBuilderCard> {
  String? _selectedProteinId;
  final Set<String> _selectedCarbIds = {};

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: AppPadding.p12.h),
      child: Padding(
        padding: EdgeInsets.all(AppPadding.p12.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.standardMeals.proteins.isNotEmpty) ...[
              Text(
                'protein'.tr(),
                style: getBoldTextStyle(
                  color: ColorManager.textPrimary,
                  fontSize: FontSizeManager.s14.sp,
                ),
              ),
              SizedBox(height: AppSize.s8.h),
              Wrap(
                spacing: AppSize.s8.w,
                runSpacing: AppSize.s8.h,
                children: widget.standardMeals.proteins.map((protein) {
                  final isSelected = _selectedProteinId == protein.id;
                  return ChoiceChip(
                    label: Text(protein.name),
                    selected: isSelected,
                    onSelected: (_) {
                      setState(() => _selectedProteinId = protein.id);
                    },
                  );
                }).toList(),
              ),
              SizedBox(height: AppSize.s16.h),
            ],
            if (widget.standardMeals.carbs.isNotEmpty) ...[
              Text(
                'carb'.tr(),
                style: getBoldTextStyle(
                  color: ColorManager.textPrimary,
                  fontSize: FontSizeManager.s14.sp,
                ),
              ),
              SizedBox(height: AppSize.s8.h),
              Wrap(
                spacing: AppSize.s8.w,
                runSpacing: AppSize.s8.h,
                children: widget.standardMeals.carbs.map((carb) {
                  final isSelected = _selectedCarbIds.contains(carb.id);
                  return FilterChip(
                    label: Text(carb.name),
                    selected: isSelected,
                    onSelected: (selected) {
                      setState(() {
                        if (selected) {
                          _selectedCarbIds.add(carb.id);
                        } else {
                          _selectedCarbIds.remove(carb.id);
                        }
                      });
                    },
                  );
                }).toList(),
              ),
              SizedBox(height: AppSize.s16.h),
            ],
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _canAddToCart ? () => _addToCart(context) : null,
                child: Text(Strings.addToCart.tr()),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool get _canAddToCart {
    return _selectedProteinId != null && _selectedCarbIds.isNotEmpty;
  }

  void _addToCart(BuildContext context) {
    final protein = widget.standardMeals.proteins.firstWhere(
      (p) => p.id == _selectedProteinId,
    );
    final carbSelections = widget.standardMeals.carbs
        .where((c) => _selectedCarbIds.contains(c.id))
        .map((c) {
      return {'carbId': c.id, 'grams': c.defaultGrams};
    }).toList();

    context.read<CartBloc>().add(
      AddItemEvent(
        CartItem(
          productId: protein.id,
          name: '${protein.name} + ${carbSelections.length} ${Strings.carbs.tr()}',
          qty: 1,
          selectedOptions: [],
        ),
      ),
    );
  }
}

class _LegacySandwichCard extends StatelessWidget {
  final OrderMenuSandwichModel sandwich;
  final String currency;

  const _LegacySandwichCard({required this.sandwich, required this.currency});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: AppPadding.p12.h),
      child: Padding(
        padding: EdgeInsets.all(AppPadding.p12.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              sandwich.name,
              style: getBoldTextStyle(
                color: ColorManager.textPrimary,
                fontSize: FontSizeManager.s14.sp,
              ),
            ),
            SizedBox(height: AppSize.s4.h),
            Text(
              sandwich.description,
              style: getRegularTextStyle(
                color: ColorManager.textSecondary,
                fontSize: FontSizeManager.s12.sp,
              ),
            ),
            SizedBox(height: AppSize.s8.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${(sandwich.priceHalala / 100).toStringAsFixed(2)} $currency',
                  style: getBoldTextStyle(
                    color: ColorManager.brandPrimary,
                    fontSize: FontSizeManager.s14.sp,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<CartBloc>().add(
                      AddItemEvent(
                        CartItem(
                          productId: sandwich.id,
                          name: sandwich.name,
                          qty: 1,
                          unitPriceHalala: sandwich.priceHalala,
                          selectedOptions: const [],
                        ),
                      ),
                    );
                  },
                  child: Text(Strings.addToCart.tr()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _LegacySaladBuilderCard extends StatelessWidget {
  final OrderMenuSaladModel salad;
  final String currency;

  const _LegacySaladBuilderCard({required this.salad, required this.currency});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: AppPadding.p12.h),
      child: Padding(
        padding: EdgeInsets.all(AppPadding.p12.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'salad'.tr(),
              style: getBoldTextStyle(
                color: ColorManager.textPrimary,
                fontSize: FontSizeManager.s14.sp,
              ),
            ),
            SizedBox(height: AppSize.s8.h),
            Text(
              '${salad.ingredients.length} ${Strings.ingredients.tr()}',
              style: getRegularTextStyle(
                color: ColorManager.textSecondary,
                fontSize: FontSizeManager.s12.sp,
              ),
            ),
            SizedBox(height: AppSize.s8.h),
            ElevatedButton(
              onPressed: () {
                context.read<CartBloc>().add(
                  AddItemEvent(
                    CartItem(
                      productId: 'salad_custom_${const Uuid().v4()}',
                      name: 'Custom Salad',
                      qty: 1,
                      selectedOptions: const [],
                    ),
                  ),
                );
              },
              child: Text(Strings.addToCart.tr()),
            ),
          ],
        ),
      ),
    );
  }
}

class _LegacyAddonCard extends StatelessWidget {
  final OrderMenuAddonItemModel addon;
  final String currency;

  const _LegacyAddonCard({required this.addon, required this.currency});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: AppPadding.p12.h),
      child: Padding(
        padding: EdgeInsets.all(AppPadding.p12.r),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    addon.name,
                    style: getBoldTextStyle(
                      color: ColorManager.textPrimary,
                      fontSize: FontSizeManager.s14.sp,
                    ),
                  ),
                  SizedBox(height: AppSize.s4.h),
                  Text(
                    addon.description,
                    style: getRegularTextStyle(
                      color: ColorManager.textSecondary,
                      fontSize: FontSizeManager.s12.sp,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              '${(addon.priceHalala / 100).toStringAsFixed(2)} $currency',
              style: getBoldTextStyle(
                color: ColorManager.brandPrimary,
                fontSize: FontSizeManager.s14.sp,
              ),
            ),
            SizedBox(width: AppSize.s8.w),
            IconButton(
              icon: const Icon(Icons.add_circle_outline),
              onPressed: () {
                context.read<CartBloc>().add(
                  AddItemEvent(
                    CartItem(
                      productId: addon.id,
                      name: addon.name,
                      qty: 1,
                      unitPriceHalala: addon.priceHalala,
                      selectedOptions: const [],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
