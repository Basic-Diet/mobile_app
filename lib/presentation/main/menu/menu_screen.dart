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
            return _MenuSections(menu: state.menu);
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

class _MenuSections extends StatelessWidget {
  final OrderMenuModel menu;

  const _MenuSections({required this.menu});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: AppPadding.p16.w),
      children: [
        if (menu.standardMeals != null) ...[
          _SectionTitle(title: 'standardMeals'.tr()),
          _StandardMealBuilderCard(
            standardMeals: menu.standardMeals!,
            currency: menu.currency,
          ),
        ],
        if (menu.sandwiches.isNotEmpty) ...[
          _SectionTitle(title: 'sandwiches'.tr()),
          ...menu.sandwiches.map(
            (s) => _SandwichCard(sandwich: s, currency: menu.currency),
          ),
        ],
        if (menu.salad != null && menu.salad!.ingredients.isNotEmpty) ...[
          _SectionTitle(title: 'salad'.tr()),
          _SaladBuilderCard(salad: menu.salad!, currency: menu.currency),
        ],
        if (menu.addons != null && menu.addons!.items.isNotEmpty) ...[
          _SectionTitle(title: 'addOns'.tr()),
          ...menu.addons!.items.map(
            (a) => _AddonCard(addon: a, currency: menu.currency),
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

class _StandardMealBuilderCard extends StatefulWidget {
  final OrderMenuStandardMealsModel standardMeals;
  final String currency;

  const _StandardMealBuilderCard({
    required this.standardMeals,
    required this.currency,
  });

  @override
  State<_StandardMealBuilderCard> createState() =>
      _StandardMealBuilderCardState();
}

class _StandardMealBuilderCardState extends State<_StandardMealBuilderCard> {
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
                child: Text(Strings.addAndPay.tr()),
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
          id: const Uuid().v4(),
          itemType: 'standard_meal',
          name: '${protein.name} + ${carbSelections.length} ${Strings.carbs.tr()}',
          qty: 1,
          selections: {
            'proteinId': _selectedProteinId,
            'carbs': carbSelections,
          },
        ),
      ),
    );
  }
}

class _SandwichCard extends StatelessWidget {
  final OrderMenuSandwichModel sandwich;
  final String currency;

  const _SandwichCard({required this.sandwich, required this.currency});

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
                          id: const Uuid().v4(),
                          itemType: 'sandwich',
                          name: sandwich.name,
                          qty: 1,
                          unitPriceHalala: sandwich.priceHalala,
                          selections: {
                            'sandwichId': sandwich.id,
                            'addons': <String>[],
                          },
                        ),
                      ),
                    );
                  },
                  child: Text(Strings.addAndPay.tr()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _SaladBuilderCard extends StatelessWidget {
  final OrderMenuSaladModel salad;
  final String currency;

  const _SaladBuilderCard({required this.salad, required this.currency});

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
                final ingredients = salad.ingredients.take(3).map((i) {
                  return {'ingredientId': i.id, 'qty': 1};
                }).toList();
                context.read<CartBloc>().add(
                  AddItemEvent(
                    CartItem(
                      id: const Uuid().v4(),
                      itemType: 'salad',
                      name: 'Custom Salad',
                      qty: 1,
                      selections: {
                        'ingredients': ingredients,
                        'dressingId': salad.ingredients.isNotEmpty
                            ? salad.ingredients.first.id
                            : '',
                      },
                    ),
                  ),
                );
              },
              child: Text(Strings.addAndPay.tr()),
            ),
          ],
        ),
      ),
    );
  }
}

class _AddonCard extends StatelessWidget {
  final OrderMenuAddonItemModel addon;
  final String currency;

  const _AddonCard({required this.addon, required this.currency});

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
                      id: const Uuid().v4(),
                      itemType: 'addon_item',
                      name: addon.name,
                      qty: 1,
                      unitPriceHalala: addon.priceHalala,
                      selections: {'addonItemId': addon.id},
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
