import 'package:basic_diet/app/dependency_injection.dart';
import 'package:basic_diet/domain/model/order_menu_model.dart';
import 'package:basic_diet/presentation/main/bloc/main_bloc.dart';
import 'package:basic_diet/presentation/main/bloc/main_event.dart';
import 'package:basic_diet/presentation/main/cart/bloc/cart_bloc.dart';
import 'package:basic_diet/presentation/main/cart/bloc/cart_event.dart';
import 'package:basic_diet/presentation/main/cart/bloc/cart_state.dart';
import 'package:basic_diet/presentation/main/menu/bloc/menu_bloc.dart';
import 'package:basic_diet/presentation/main/menu/bloc/menu_event.dart';
import 'package:basic_diet/presentation/main/menu/bloc/menu_state.dart';
import 'package:basic_diet/presentation/main/menu/menu_navigation_intent.dart';
import 'package:basic_diet/presentation/resources/assets_manager.dart';
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
import 'package:go_router/go_router.dart';

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

class _MenuScreenContent extends StatefulWidget {
  const _MenuScreenContent();

  @override
  State<_MenuScreenContent> createState() => _MenuScreenContentState();
}

class _MenuScreenContentState extends State<_MenuScreenContent> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();
  final Map<String, GlobalKey> _sectionKeys = {};
  String _searchQuery = '';
  String _activeChip = 'all';

  @override
  void initState() {
    super.initState();
    OneTimeMenuCoordinator.intent.addListener(_handleMenuIntent);
  }

  @override
  void dispose() {
    OneTimeMenuCoordinator.intent.removeListener(_handleMenuIntent);
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _handleMenuIntent() {
    final menuState = context.read<MenuBloc>().state;
    if (menuState is! MenuSuccess) {
      return;
    }

    final intent = OneTimeMenuCoordinator.intent.value;
    if (intent == null) {
      return;
    }

    if (intent.sectionKey != null) {
      _scrollToSection(intent.sectionKey!);
    }

    if (intent.productKey != null) {
      final product = _findProductByKey(menuState.menu, intent.productKey!);
      if (product != null) {
        _openBuilder(product, menuState.menu.currency);
      }
    }

    OneTimeMenuCoordinator.clear();
  }

  void _scrollToSection(String sectionKey) {
    setState(() {
      _activeChip = sectionKey == 'all' ? 'all' : sectionKey;
    });

    if (sectionKey == 'all') {
      _scrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeOutCubic,
      );
      return;
    }

    final targetContext = _sectionKeys[sectionKey]?.currentContext;
    if (targetContext == null) {
      return;
    }

    Scrollable.ensureVisible(
      targetContext,
      duration: const Duration(milliseconds: 350),
      curve: Curves.easeOutCubic,
      alignment: 0.06,
    );
  }

  Future<void> _openBuilder(
    OrderMenuProductModel product,
    String currency,
  ) async {
    final cartItem = await Navigator.of(context).push<CartItem>(
      MaterialPageRoute(
        builder: (_) => _BuilderScreen(product: product, currency: currency),
      ),
    );

    if (!mounted || cartItem == null) {
      return;
    }

    context.read<CartBloc>().add(AddItemEvent(cartItem));
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(Strings.itemAddedToCart.tr())));
  }

  OrderMenuProductModel? _findProductByKey(OrderMenuModel menu, String key) {
    for (final category in menu.categories) {
      for (final product in category.products) {
        if (product.key == key) {
          return product;
        }
      }
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<MenuBloc, MenuState>(
          builder: (context, state) {
            if (state is MenuLoading) {
              return const Center(
                child: CircularProgressIndicator(
                  color: ColorManager.brandPrimary,
                ),
              );
            }

            if (state is MenuError) {
              return _MenuErrorView(message: state.message);
            }

            if (state is! MenuSuccess) {
              return const SizedBox.shrink();
            }

            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (mounted && OneTimeMenuCoordinator.intent.value != null) {
                _handleMenuIntent();
              }
            });

            final menu = state.menu;
            if (!menu.hasDynamicCatalog) {
              return _MenuErrorView(message: Strings.noProductsAvailable.tr());
            }

            final builderData = _buildBuilderSections(menu);
            final chips = _buildChips(menu);
            final sections = _buildDirectSections(menu);

            return Stack(
              children: [
                CustomScrollView(
                  controller: _scrollController,
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    SliverPadding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                        AppPadding.p16.w,
                        AppPadding.p16.h,
                        AppPadding.p16.w,
                        AppPadding.p120.h,
                      ),
                      sliver: SliverList(
                        delegate: SliverChildListDelegate([
                          const _MenuHeader(),
                          Gap(AppSize.s18.h),
                          const _PickupNoticeCard(),
                          Gap(AppSize.s14.h),
                          _SearchField(
                            controller: _searchController,
                            onChanged: (value) {
                              setState(() {
                                _searchQuery = value.trim().toLowerCase();
                              });
                            },
                          ),
                          Gap(AppSize.s14.h),
                          _MenuChipsRow(
                            chips: chips,
                            activeKey: _activeChip,
                            onSelected: _scrollToSection,
                          ),
                          Gap(AppSize.s28.h),
                          _SectionAnchor(
                            anchorKey: _sectionKey('custom_order'),
                            child: _BuilderSection(
                              mainProducts: _filterProducts(builderData.main),
                              lightProducts: _filterProducts(builderData.light),
                              currency: menu.currency,
                              onOpenBuilder: _openBuilder,
                            ),
                          ),
                          for (final section in sections)
                            _SectionAnchor(
                              anchorKey: _sectionKey(section.key),
                              child: Padding(
                                padding: EdgeInsetsDirectional.only(
                                  top: AppPadding.p28.h,
                                ),
                                child: _DynamicSection(
                                  section: section,
                                  currency: menu.currency,
                                  products: _filterProducts(section.products),
                                  onAddDirectItem: (product) {
                                    context.read<CartBloc>().add(
                                      AddItemEvent(
                                        CartItem(
                                          productId: product.id,
                                          name: product.name,
                                          qty: 1,
                                          unitPriceHalala: product.priceHalala,
                                        ),
                                      ),
                                    );
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          Strings.itemAddedToCart.tr(),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                        ]),
                      ),
                    ),
                  ],
                ),
                const _StickyCartBar(),
              ],
            );
          },
        ),
      ),
    );
  }

  GlobalKey _sectionKey(String key) {
    return _sectionKeys.putIfAbsent(key, GlobalKey.new);
  }

  List<OrderMenuProductModel> _filterProducts(
    List<OrderMenuProductModel> products,
  ) {
    if (_searchQuery.isEmpty) {
      return products;
    }

    return products
        .where(
          (product) =>
              product.name.toLowerCase().contains(_searchQuery) ||
              product.key.toLowerCase().contains(_searchQuery),
        )
        .toList();
  }

  _BuilderProductsData _buildBuilderSections(OrderMenuModel menu) {
    final allConfigurable =
        menu.categories
            .expand((category) => category.products)
            .where((product) => product.resolvedRequiresBuilder)
            .toList()
          ..sort((a, b) => a.sortOrder.compareTo(b.sortOrder));

    final lightKeys = {'fruit_salad', 'greek_yogurt', 'green_salad'};
    final main = <OrderMenuProductModel>[];
    final light = <OrderMenuProductModel>[];

    for (final product in allConfigurable) {
      if (lightKeys.contains(product.key)) {
        light.add(product);
      } else {
        main.add(product);
      }
    }

    return _BuilderProductsData(main: main, light: light);
  }

  List<_MenuChipData> _buildChips(OrderMenuModel menu) {
    final chips = <_MenuChipData>[
      _MenuChipData(key: 'all', label: Strings.all.tr()),
      _MenuChipData(key: 'custom_order', label: Strings.customOrder.tr()),
    ];

    final addedKeys = {'custom_order', 'light_options'};
    for (final category
        in menu.categories
          ..sort((a, b) => a.sortOrder.compareTo(b.sortOrder))) {
      if (addedKeys.contains(category.key)) {
        continue;
      }
      chips.add(_MenuChipData(key: category.key, label: category.name));
    }

    return chips;
  }

  List<_MenuSectionData> _buildDirectSections(OrderMenuModel menu) {
    final sections = <_MenuSectionData>[];

    for (final category
        in menu.categories
          ..sort((a, b) => a.sortOrder.compareTo(b.sortOrder))) {
      final directProducts =
          category.products
              .where((product) => product.resolvedCanAddDirectly)
              .toList()
            ..sort((a, b) => a.sortOrder.compareTo(b.sortOrder));

      if (directProducts.isEmpty) {
        continue;
      }

      if (category.key == 'custom_order' || category.key == 'light_options') {
        continue;
      }

      sections.add(
        _MenuSectionData(
          key: category.key,
          title: category.name,
          subtitle: _sectionSubtitle(category.key),
          layout: _layoutFor(category.key),
          products: directProducts,
        ),
      );
    }

    return sections;
  }

  String? _sectionSubtitle(String key) {
    switch (key) {
      case 'cold_sandwiches':
        return 'اختيارات خفيفة وسريعة';
      default:
        return null;
    }
  }

  _SectionLayout _layoutFor(String key) {
    switch (key) {
      case 'cold_sandwiches':
        return _SectionLayout.compactScroll;
      default:
        return _SectionLayout.list;
    }
  }
}

class _MenuHeader extends StatelessWidget {
  const _MenuHeader();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              Strings.menu.tr(),
              style: getRegularTextStyle(
                fontSize: FontSizeManager.s28.sp,
                color: ColorManager.stateSuccessEmphasis,
              ),
            ),
            Gap(AppSize.s4.h),
            Text(
              Strings.oneTimeOrdersSubtitle.tr(),
              style: getRegularTextStyle(
                fontSize: FontSizeManager.s14.sp,
                color: ColorManager.textSecondary,
              ),
            ),
          ],
        ),
        Gap(AppSize.s14.w),
        _CircleActionButton(
          icon: Icons.home_outlined,
          onTap: () {
            context.read<MainBloc>().add(ChangeBottomNavIndexEvent(0));
          },
        ),
        Gap(AppSize.s10.w),
        BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            final count = state is CartLoaded ? state.totalQty : 0;
            return _CircleActionButton(
              icon: Icons.shopping_cart_outlined,
              badgeCount: count,
              onTap: () => context.push('/cart'),
            );
          },
        ),
      ],
    );
  }
}

class _CircleActionButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final int badgeCount;

  const _CircleActionButton({
    required this.icon,
    required this.onTap,
    this.badgeCount = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Material(
          color: Colors.white.withValues(alpha: 0.9),
          borderRadius: BorderRadius.circular(AppSize.s14.r),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.s14.r),
              border: Border.all(color: Colors.white.withValues(alpha: 0.78)),

            ),
            child: InkWell(
              onTap: onTap,
              borderRadius: BorderRadius.circular(AppSize.s14.r),
              child: SizedBox(
                width: AppSize.s42.w,
                height: AppSize.s42.w,
                child: Icon(
                  icon,
                  color: const Color(0xFF112B22),
                  size: AppSize.s20.w,
                ),
              ),
            ),
          ),
        ),
        if (badgeCount > 0)
          PositionedDirectional(
            top: (-5).h,
            end: (-5).w,
            child: Container(
              constraints: BoxConstraints(minWidth: AppSize.s18.w),
              height: AppSize.s18.w,
              padding: EdgeInsetsDirectional.symmetric(
                horizontal: AppPadding.p5.w,
              ),
              decoration: BoxDecoration(
                color: ColorManager.brandPrimary,
                borderRadius: BorderRadius.circular(AppSize.s99.r),
              ),
              alignment: Alignment.center,
              child: Text(
                '$badgeCount',
                style: getBoldTextStyle(
                  fontSize: FontSizeManager.s10.sp,
                  color: ColorManager.backgroundSurface,
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class _PickupNoticeCard extends StatelessWidget {
  const _PickupNoticeCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: AppPadding.p14.w,
        vertical: AppPadding.p13.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.s16.r),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFFE4F6EE), Color(0xFFFDFEFD)],
        ),
        border: Border.all(color: Colors.white.withValues(alpha: 0.78)),
      ),
      child: Text(
        Strings.pickupOnlyNotice.tr(),
        textAlign: TextAlign.right,
        style: getBoldTextStyle(
          fontSize: FontSizeManager.s13.sp,
          color: const Color(0xFF12382C),
        ),
      ),
    );
  }
}

class _SearchField extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  const _SearchField({required this.controller, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s52.h,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.94),
        borderRadius: BorderRadius.circular(AppSize.s16.r),
        border: Border.all(color: Colors.white.withValues(alpha: 0.78)),
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          hintText: Strings.searchMenuPlaceholder.tr(),
          hintStyle: getBoldTextStyle(
            fontSize: FontSizeManager.s13.sp,
            color: const Color(0xFFA1A1A6),
          ),
          prefixIcon: const Icon(
            Icons.search_rounded,
            color: Color(0xFFA1A1A6),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s16.r),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsetsDirectional.symmetric(
            horizontal: AppPadding.p14.w,
            vertical: AppPadding.p14.h,
          ),
        ),
      ),
    );
  }
}

class _MenuChipsRow extends StatelessWidget {
  final List<_MenuChipData> chips;
  final String activeKey;
  final ValueChanged<String> onSelected;

  const _MenuChipsRow({
    required this.chips,
    required this.activeKey,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s38.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final chip = chips[index];
          final isSelected = chip.key == activeKey;
          return Material(
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

class _BuilderSection extends StatelessWidget {
  final List<OrderMenuProductModel> mainProducts;
  final List<OrderMenuProductModel> lightProducts;
  final String currency;
  final Future<void> Function(OrderMenuProductModel, String) onOpenBuilder;

  const _BuilderSection({
    required this.mainProducts,
    required this.lightProducts,
    required this.currency,
    required this.onOpenBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _MenuSectionHeader(
          title: Strings.customOrder.tr(),
          subtitle: Strings.chooseProductToCustomize.tr(),
        ),
        Gap(AppSize.s16.h),
        ...mainProducts.map(
          (product) => Padding(
            padding: EdgeInsetsDirectional.only(bottom: AppPadding.p14.h),
            child: _BuilderProductCard(
              product: product,
              imagePath: _imageForProduct(product.key),
              currency: currency,
              onTap: () => onOpenBuilder(product, currency),
            ),
          ),
        ),
        if (lightProducts.isNotEmpty) ...[
          Gap(AppSize.s12.h),
          ...lightProducts.map(
            (product) => Padding(
              padding: EdgeInsetsDirectional.only(bottom: AppPadding.p12.h),
              child: _LightBuilderCard(
                product: product,
                imagePath: _imageForProduct(product.key),
                currency: currency,
                onTap: () => onOpenBuilder(product, currency),
              ),
            ),
          ),
        ],
      ],
    );
  }

  String? _imageForProduct(String productKey) {
    switch (productKey) {
      case 'basic_salad':
        return ImageAssets.oneTimeBasicSalad;
      case 'basic_meal':
        return ImageAssets.oneTimeBasicMeal;
      case 'fruit_salad':
        return ImageAssets.oneTimeFruitSalad;
      case 'greek_yogurt':
        return ImageAssets.oneTimeGreekYogurt;
      default:
        return null;
    }
  }
}

class _BuilderProductCard extends StatelessWidget {
  final OrderMenuProductModel product;
  final String currency;
  final String? imagePath;
  final VoidCallback onTap;

  const _BuilderProductCard({
    required this.product,
    required this.currency,
    required this.onTap,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorManager.backgroundSurface,
      borderRadius: BorderRadius.circular(AppSize.s26.r),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppSize.s26.r),
        child: Container(
          height: AppSize.s184.h,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s26.r),
            border: Border.all(
              color: Colors.white.withValues(alpha: 0.86),
              width: 1,
            ),
          ),
          child: Stack(
            children: [
              if (imagePath != null)
                PositionedDirectional(
                  end: 0,
                  top: 0,
                  bottom: 0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(AppSize.s26.r),
                    ),
                    child: Image.asset(
                      imagePath!,
                      width: AppSize.s200.w,
                      fit: BoxFit.cover,
                      alignment: Alignment.centerLeft,
                    ),
                  ),
                ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.white.withValues(alpha: 0.0),
                      Colors.white.withValues(alpha: 0.18),
                      const Color(0xFFE8F5EE).withValues(alpha: 0.8),
                      Colors.white.withValues(alpha: 1),
                      Colors.white.withValues(alpha: 0.96),
                      Colors.white.withValues(alpha: 1),
                    ],
                    stops: const [0.0, 0.22, 0.58, 0.78, 0.96, 1.0],
                  ),
                  borderRadius: BorderRadius.circular(AppSize.s26.r),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                        AppPadding.p18.w,
                        AppPadding.p20.h,
                        AppPadding.p18.w,
                        AppPadding.p20.h,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            product.name,
                            textAlign: TextAlign.right,
                            style: getBoldTextStyle(
                              fontSize: FontSizeManager.s18.sp,
                              color: const Color(0xFF112B22),
                            ),
                          ),
                          Gap(AppSize.s5.h),
                          Text(
                            _builderDescriptionForKey(product.key, context),
                            textAlign: TextAlign.right,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: getBoldTextStyle(
                              fontSize: FontSizeManager.s13.sp,
                              color: ColorManager.textSecondary,
                            ),
                          ),
                          Gap(AppSize.s16.h),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '${_formatHalala(product.priceHalala, currency)} / 100 جم',
                                textAlign: TextAlign.right,
                                style: getBoldTextStyle(
                                  fontSize: FontSizeManager.s13.sp,
                                  color: const Color(0xFF12382C),
                                ),
                              ),
                              Gap(AppSize.s10.h),
                              Container(
                                width: AppSize.s122.w,
                                height: AppSize.s42.h,
                                decoration: BoxDecoration(
                                  color: ColorManager.brandPrimary,
                                  borderRadius: BorderRadius.circular(AppSize.s16.r),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  Strings.startCustomization.tr(),
                                  style: getBoldTextStyle(
                                    fontSize: FontSizeManager.s12_5.sp,
                                    color: ColorManager.backgroundSurface,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: SizedBox(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}

class _LightBuilderCard extends StatelessWidget {
  final OrderMenuProductModel product;
  final String? imagePath;
  final String currency;
  final VoidCallback onTap;

  const _LightBuilderCard({
    required this.product,
    required this.currency,
    required this.onTap,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white.withValues(alpha: 0.96),
      borderRadius: BorderRadius.circular(AppSize.s22.r),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppSize.s22.r),
          child: Container(
          constraints: BoxConstraints(minHeight: AppSize.s118.h),
          padding: EdgeInsetsDirectional.symmetric(
            horizontal: AppPadding.p16.w,
            vertical: AppPadding.p14.h,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s22.r),
            border: Border.all(
              color: Colors.white.withValues(alpha: 0.82),
              width: 1,
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      textAlign: TextAlign.right,
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s16.sp,
                        color: const Color(0xFF112B22),
                      ),
                    ),
                    Gap(AppSize.s3.h),
                    Text(
                      _builderDescriptionForKey(product.key, context),
                      textAlign: TextAlign.right,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s12_5.sp,
                        color: ColorManager.textSecondary,
                      ),
                    ),
                    Gap(AppSize.s12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            Strings.priceDependsOnChoices.tr(),
                            textAlign: TextAlign.right,
                            style: getBoldTextStyle(
                              fontSize: FontSizeManager.s12_5.sp,
                              color: const Color(0xFF12382C),
                            ),
                          ),
                        ),
                        Container(
                          width: AppSize.s96.w,
                          height: AppSize.s36.h,
                          padding: EdgeInsetsDirectional.symmetric(
                            horizontal: AppPadding.p16.w,
                          ),
                          decoration: BoxDecoration(
                            color: ColorManager.brandPrimary,
                            borderRadius: BorderRadius.circular(AppSize.s15.r),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            Strings.startCustomization.tr(),
                            style: getBoldTextStyle(
                              fontSize: FontSizeManager.s10.sp,
                              color: ColorManager.backgroundSurface,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Gap(AppSize.s14.w),
              _MenuMediaBox(
                label: _initials(product.name),
                imagePath: imagePath,
                width: AppSize.s84.w,
                height: AppSize.s84.w,
                borderRadius: AppSize.s18.r,
              ),
              Gap(AppSize.s14.w),
            ],
          ),
        ),
      ),
    );
  }
}

class _DynamicSection extends StatelessWidget {
  final _MenuSectionData section;
  final String currency;
  final List<OrderMenuProductModel> products;
  final ValueChanged<OrderMenuProductModel> onAddDirectItem;

  const _DynamicSection({
    required this.section,
    required this.currency,
    required this.products,
    required this.onAddDirectItem,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _MenuSectionHeader(title: section.title, subtitle: section.subtitle),
        Gap(AppSize.s14.h),
        if (products.isEmpty)
          _EmptyStateCard(message: Strings.noProductsAvailable.tr())
        else
          switch (section.layout) {
            _SectionLayout.compactScroll => SizedBox(
              height: AppSize.s205.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                separatorBuilder: (_, __) => Gap(AppSize.s12.w),
                itemBuilder:
                    (context, index) => SizedBox(
                      width: AppSize.s170.w,
                      child: _CompactProductCard(
                        product: products[index],
                        currency: currency,
                        onAdd: () => onAddDirectItem(products[index]),
                      ),
                    ),
              ),
            ),
            _SectionLayout.list => Column(
              children:
                  products
                      .map(
                        (product) => Padding(
                          padding: EdgeInsetsDirectional.only(
                            bottom: AppPadding.p12.h,
                          ),
                          child: _ListProductCard(
                            product: product,
                            currency: currency,
                            onAdd: () => onAddDirectItem(product),
                          ),
                        ),
                      )
                      .toList(),
            ),
            _SectionLayout.grid => Column(
              children:
                  products
                      .map(
                        (product) => Padding(
                          padding: EdgeInsetsDirectional.only(
                            bottom: AppPadding.p12.h,
                          ),
                          child: _ListProductCard(
                            product: product,
                            currency: currency,
                            onAdd: () => onAddDirectItem(product),
                          ),
                        ),
                      )
                      .toList(),
            ),
          },
      ],
    );
  }
}

class _CompactProductCard extends StatelessWidget {
  final OrderMenuProductModel product;
  final String currency;
  final VoidCallback onAdd;

  const _CompactProductCard({
    required this.product,
    required this.currency,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.all(AppPadding.p12.r),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.96),
        borderRadius: BorderRadius.circular(AppSize.s20.r),
        border: Border.all(color: Colors.white.withValues(alpha: 0.84)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _MenuMediaBox(
            label: _initials(product.name),
            width: AppSize.s66.w,
            height: AppSize.s66.w,
            borderRadius: AppSize.s16.r,
          ),
          Gap(AppSize.s10.h),
          Text(
            product.name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: getBoldTextStyle(
              fontSize: FontSizeManager.s14.sp,
              color: const Color(0xFF112B22),
            ),
          ),
          Gap(AppSize.s3.h),
          if ((product.description ?? '').isNotEmpty)
            Text(
              product.description!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: getBoldTextStyle(
                fontSize: FontSizeManager.s11_5.sp,
                color: ColorManager.textSecondary,
              ),
            ),
          const Spacer(),
          Gap(AppSize.s4.h),
          Row(
            children: [
              _SquareAddButton(onTap: onAdd),
              Gap(AppSize.s8.w),
              Expanded(
                child: Text(
                  _formatHalala(product.priceHalala, currency),
                  textAlign: TextAlign.right,
                  style: getBoldTextStyle(
                    fontSize: FontSizeManager.s13.sp,
                    color: const Color(0xFF12382C),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ListProductCard extends StatelessWidget {
  final OrderMenuProductModel product;
  final String currency;
  final VoidCallback onAdd;

  const _ListProductCard({
    required this.product,
    required this.currency,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white.withValues(alpha: 0.96),
      borderRadius: BorderRadius.circular(AppSize.s22.r),
      child: InkWell(
        onTap: onAdd,
        borderRadius: BorderRadius.circular(AppSize.s22.r),
        child: Container(
          constraints: BoxConstraints(minHeight: AppSize.s118.h),
          padding: EdgeInsetsDirectional.symmetric(
            horizontal: AppPadding.p16.w,
            vertical: AppPadding.p14.h,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s22.r),
            border: Border.all(
              color: Colors.white.withValues(alpha: 0.84),
              width: 1,
            ),
          ),
          child: Row(
            children: [
              _MenuMediaBox(
                label: _initials(product.name),
                width: AppSize.s76.w,
                height: AppSize.s76.w,
                borderRadius: AppSize.s18.r,
              ),
              Gap(AppSize.s14.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      product.name,
                      textAlign: TextAlign.right,
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s16.sp,
                        color: const Color(0xFF112B22),
                      ),
                    ),
                    Gap(AppSize.s3.h),
                    Text(
                      _productDescription(product),
                      textAlign: TextAlign.right,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s12.sp,
                        color: ColorManager.textSecondary,
                      ),
                    ),
                    Gap(AppSize.s8.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _SquareAddButton(onTap: onAdd),
                        Text(
                          _formatHalala(product.priceHalala, currency),
                          style: getBoldTextStyle(
                            fontSize: FontSizeManager.s14.sp,
                            color: const Color(0xFF12382C),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SquareAddButton extends StatelessWidget {
  final VoidCallback onTap;

  const _SquareAddButton({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorManager.brandPrimary,
      borderRadius: BorderRadius.circular(AppSize.s15.r),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppSize.s15.r),
        child: SizedBox(
          width: AppSize.s40.w,
          height: AppSize.s40.w,
          child: const Icon(
            Icons.add,
            color: ColorManager.backgroundSurface,
            size: 22,
          ),
        ),
      ),
    );
  }
}

class _StickyCartBar extends StatelessWidget {
  const _StickyCartBar();

  @override
  Widget build(BuildContext context) {
    return PositionedDirectional(
      start: AppPadding.p16.w,
      end: AppPadding.p16.w,
      bottom: AppPadding.p70.h,
      child: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          if (state is! CartLoaded || state.items.isEmpty) {
            return const SizedBox.shrink();
          }

          final previewTotal = state.items.fold<int>(
            0,
            (sum, item) => sum + ((item.unitPriceHalala ?? 0) * item.qty),
          );

          return Material(
            color: ColorManager.stateSuccessEmphasis,
            borderRadius: BorderRadius.circular(AppSize.s99.r),
            child: InkWell(
              onTap: () => context.push('/cart'),
              borderRadius: BorderRadius.circular(AppSize.s99.r),
              child: Container(
                height: AppSize.s54.h,
                padding: EdgeInsetsDirectional.only(
                  start: AppPadding.p20.w,
                  end: AppPadding.p6.w,
                ),
                child: Row(
                  children: [
                    Container(
                      width: AppSize.s42.w,
                      height: AppSize.s42.w,
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.2),
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        '${state.totalQty}',
                        style: getBoldTextStyle(
                          fontSize: FontSizeManager.s13.sp,
                          color: ColorManager.backgroundSurface,
                        ),
                      ),
                    ),
                    Gap(AppSize.s12.w),
                    Expanded(
                      child: Text(
                        Strings.viewCart.tr(),
                        style: getBoldTextStyle(
                          fontSize: FontSizeManager.s15.sp,
                          color: ColorManager.backgroundSurface,
                        ),
                      ),
                    ),
                    Text(
                      _formatHalala(previewTotal, 'SAR'),
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s16.sp,
                        color: ColorManager.backgroundSurface,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _MenuErrorView extends StatelessWidget {
  final String message;

  const _MenuErrorView({required this.message});

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

class _EmptyStateCard extends StatelessWidget {
  final String message;

  const _EmptyStateCard({required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsetsDirectional.all(AppPadding.p18.r),
      decoration: BoxDecoration(
        color: ColorManager.backgroundSurface,
        borderRadius: BorderRadius.circular(AppSize.s20.r),
      ),
      child: Text(
        message,
        style: getRegularTextStyle(
          fontSize: FontSizeManager.s13.sp,
          color: ColorManager.textSecondary,
        ),
      ),
    );
  }
}

class _MenuMediaBox extends StatelessWidget {
  final String label;
  final String? imagePath;
  final double width;
  final double height;
  final double borderRadius;

  const _MenuMediaBox({
    required this.label,
    required this.width,
    required this.height,
    required this.borderRadius,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    final image = imagePath;

    if (image != null) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: Image.asset(
          image,
          width: width,
          height: height,
          fit: BoxFit.cover,
        ),
      );
    }

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFF2FBF6),
            Color(0xFFFFFFFF),
          ],
        ),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      alignment: Alignment.center,
      child: Text(
        label,
        style: getBoldTextStyle(
          fontSize: FontSizeManager.s20.sp,
          color: ColorManager.stateSuccessEmphasis,
        ),
      ),
    );
  }
}

class _MenuSectionHeader extends StatelessWidget {
  final String title;
  final String? subtitle;

  const _MenuSectionHeader({required this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          title,
          textAlign: TextAlign.right,
          style: getBoldTextStyle(
            fontSize: FontSizeManager.s20.sp,
            color: ColorManager.textPrimary,
          ),
        ),
        if (subtitle != null) ...[
          Gap(AppSize.s4.h),
          Text(
            subtitle!,
            textAlign: TextAlign.right,
            style: getBoldTextStyle(
              fontSize: FontSizeManager.s13.sp,
              color: ColorManager.textSecondary,
            ),
          ),
        ],
      ],
    );
  }
}

class _SectionAnchor extends StatelessWidget {
  final GlobalKey anchorKey;
  final Widget child;

  const _SectionAnchor({required this.anchorKey, required this.child});

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(key: anchorKey, child: child);
  }
}

class _BuilderScreen extends StatefulWidget {
  final OrderMenuProductModel product;
  final String currency;

  const _BuilderScreen({required this.product, required this.currency});

  @override
  State<_BuilderScreen> createState() => _BuilderScreenState();
}

class _BuilderScreenState extends State<_BuilderScreen> {
  late int _qty;
  late int _weightGrams;
  final Map<String, Set<String>> _selectedOptionIds = {};
  final Map<String, int> _extraWeightByOptionId = {};
  final Set<String> _expandedGroupIds = {};

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
        widget.product.optionGroups[
          firstRequiredIndex >= 0 ? firstRequiredIndex : 0
        ].groupId,
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
      if (selected.length > group.maxSelections) {
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
    final selectedCount = (_selectedOptionIds[group.groupId] ?? <String>{}).length;
    if (!group.isRequired) {
      return true;
    }
    if (group.minSelections == group.maxSelections) {
      return selectedCount == group.minSelections;
    }
    return selectedCount >= group.minSelections &&
        selectedCount <= group.maxSelections;
  }

  String _groupRuleText(OrderMenuOptionGroupModel group) {
    if (!group.isRequired) {
      return Strings.builderChooseUpTo.tr(
        namedArgs: {'count': group.maxSelections.toString()},
      );
    }

    if (group.minSelections == group.maxSelections) {
      return Strings.builderChooseExact.tr(
        namedArgs: {'count': group.maxSelections.toString()},
      );
    }

    return Strings.builderChooseRange.tr(
      namedArgs: {
        'min': group.minSelections.toString(),
        'max': group.maxSelections.toString(),
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

      if (selected.length < group.maxSelections) {
        selected.add(optionId);
      }
    });
  }

  void _changeExtraWeight(OrderMenuOptionModel option, int delta) {
    setState(() {
      final current =
          _extraWeightByOptionId[option.optionId] ??
          option.extraWeightUnitGrams;
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
        selectedOptions.add(
          SelectedCartOption(
            groupId: group.groupId,
            optionId: optionId,
            extraWeightGrams: _extraWeightByOptionId[optionId],
          ),
        );
      }
    }

    Navigator.of(context).pop(
      CartItem(
        productId: widget.product.id,
        name: widget.product.name,
        qty: _qty,
        weightGrams:
            widget.product.pricingModel == 'per_100g' ? _weightGrams : null,
        selectedOptions: selectedOptions,
        unitPriceHalala: _estimatedUnitPriceHalala,
      ),
    );
  }

  Future<void> _openGroupSearchPicker(OrderMenuOptionGroupModel group) async {
    final controller = TextEditingController();
    String query = '';

    try {
      await showModalBottomSheet<void>(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (sheetContext) {
          return StatefulBuilder(
            builder: (context, setSheetState) {
              final visibleOptions =
                  _sortedOptions(group)
                      .where(
                        (option) =>
                            query.isEmpty ||
                            option.name.toLowerCase().contains(
                              query.trim().toLowerCase(),
                            ),
                      )
                      .toList();

              return SafeArea(
                top: false,
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.viewInsetsOf(context).bottom,
                  ),
                  child: Container(
                    height: MediaQuery.sizeOf(context).height * 0.76,
                    decoration: BoxDecoration(
                      color: ColorManager.backgroundSurface,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(AppSize.s28.r),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Center(
                          child: Container(
                            margin: EdgeInsetsDirectional.only(
                              top: AppPadding.p12.h,
                            ),
                            width: AppSize.s48.w,
                            height: AppSize.s5.h,
                            decoration: BoxDecoration(
                              color: const Color(0xFFD8E7DF),
                              borderRadius: BorderRadius.circular(999.r),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                            AppPadding.p18.w,
                            AppPadding.p16.h,
                            AppPadding.p18.w,
                            AppPadding.p12.h,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                group.name,
                                textAlign: TextAlign.right,
                                style: getBoldTextStyle(
                                  fontSize: FontSizeManager.s18.sp,
                                  color: const Color(0xFF112B22),
                                ),
                              ),
                              Gap(AppSize.s4.h),
                              Text(
                                _groupRuleText(group),
                                textAlign: TextAlign.right,
                                style: getRegularTextStyle(
                                  fontSize: FontSizeManager.s12.sp,
                                  color: ColorManager.textSecondary,
                                ),
                              ),
                              Gap(AppSize.s14.h),
                              TextField(
                                controller: controller,
                                textAlign: TextAlign.right,
                                autocorrect: false,
                                decoration: InputDecoration(
                                  hintText: Strings.builderSearchIn.tr(
                                    namedArgs: {'group': group.name},
                                  ),
                                  hintStyle: getRegularTextStyle(
                                    fontSize: FontSizeManager.s12.sp,
                                    color: ColorManager.textMuted,
                                  ),
                                  prefixIcon: const Icon(Icons.search_rounded),
                                  filled: true,
                                  fillColor: const Color(0xFFF9FCFA),
                                  contentPadding:
                                      EdgeInsetsDirectional.symmetric(
                                        horizontal: AppPadding.p13.w,
                                        vertical: AppPadding.p12.h,
                                      ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      AppSize.s15.r,
                                    ),
                                    borderSide: const BorderSide(
                                      color: Color(0xFFE5E7EB),
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      AppSize.s15.r,
                                    ),
                                    borderSide: const BorderSide(
                                      color: Color(0xFFE5E7EB),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      AppSize.s15.r,
                                    ),
                                    borderSide: const BorderSide(
                                      color: Color(0xFF10B981),
                                    ),
                                  ),
                                ),
                                onChanged: (value) {
                                  setSheetState(() {
                                    query = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child:
                              visibleOptions.isEmpty
                                  ? Center(
                                    child: Text(
                                      Strings.noProductsAvailable.tr(),
                                      style: getRegularTextStyle(
                                        fontSize: FontSizeManager.s13.sp,
                                        color: ColorManager.textSecondary,
                                      ),
                                    ),
                                  )
                                  : ListView.separated(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      AppPadding.p18.w,
                                      0,
                                      AppPadding.p18.w,
                                      AppPadding.p18.h,
                                    ),
                                    itemCount: visibleOptions.length,
                                    separatorBuilder:
                                        (_, __) => Gap(AppSize.s10.h),
                                    itemBuilder: (context, index) {
                                      final option = visibleOptions[index];
                                      final selectedIds =
                                          _selectedOptionIds[group.groupId] ??
                                          <String>{};
                                      final isSelected = selectedIds.contains(
                                        option.optionId,
                                      );
                                      final maxReached =
                                          selectedIds.length >=
                                              group.maxSelections &&
                                          !isSelected;

                                      return Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          _BuilderSearchOptionTile(
                                            option: option,
                                            currency: widget.currency,
                                            isSelected: isSelected,
                                            isDisabled: maxReached,
                                            onTap: () {
                                              _toggleOption(
                                                group,
                                                option.optionId,
                                              );
                                              setSheetState(() {});
                                            },
                                          ),
                                          if (isSelected &&
                                              option.extraWeightUnitGrams > 0)
                                            Padding(
                                              padding:
                                                  EdgeInsetsDirectional.only(
                                                    top: AppPadding.p8.h,
                                                  ),
                                              child: _InlineExtraWeightSelector(
                                                value:
                                                    _extraWeightByOptionId[option
                                                        .optionId] ??
                                                    option.extraWeightUnitGrams,
                                                step:
                                                    option.extraWeightUnitGrams,
                                                onDecrease: () {
                                                  _changeExtraWeight(
                                                    option,
                                                    -option.extraWeightUnitGrams,
                                                  );
                                                  setSheetState(() {});
                                                },
                                                onIncrease: () {
                                                  _changeExtraWeight(
                                                    option,
                                                    option.extraWeightUnitGrams,
                                                  );
                                                  setSheetState(() {});
                                                },
                                              ),
                                            ),
                                        ],
                                      );
                                    },
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      );
    } finally {
      controller.dispose();
    }
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
          child: Container(
            padding: EdgeInsetsDirectional.fromSTEB(
              AppPadding.p14.w,
              AppPadding.p12.h,
              AppPadding.p14.w,
              AppPadding.p12.h,
            ),
            decoration: BoxDecoration(
              color: ColorManager.backgroundSurface.withValues(alpha: 0.94),
              borderRadius: BorderRadius.circular(AppSize.s24.r),
              border: Border.all(
                color: ColorManager.backgroundSurface.withValues(alpha: 0.78),
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x1C11382C),
                  blurRadius: AppSize.s24.r,
                  offset: Offset(0, AppSize.s8.h),
                ),
              ],
            ),
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
                        _formatHalala(
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
                    onPressed: _isValid ? _submit : null,
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
                    child: Text(
                      Strings.addToCart.tr(),
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s13.sp,
                        color: ColorManager.backgroundSurface,
                      ),
                    ),
                  ),
                ),
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
                    onTap: () => Navigator.of(context).maybePop(),
                    borderRadius: BorderRadius.circular(AppSize.s14.r),
                    child: Container(
                      width: AppSize.s42.w,
                      height: AppSize.s42.h,
                      decoration: BoxDecoration(
                        color: ColorManager.backgroundSurface.withValues(alpha: 0.92),
                        borderRadius: BorderRadius.circular(AppSize.s14.r),
                        border: Border.all(
                          color: ColorManager.backgroundSurface.withValues(alpha: 0.78),
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
                          Strings.builderChooseIngredients.tr(),
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
              Container(
                width: double.infinity,
                padding: EdgeInsetsDirectional.all(AppPadding.p16.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSize.s28.r),
                  border: Border.all(color: const Color(0x140E9F6E)),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFFFEFFFE), Color(0xFFF1F8F4)],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x1411382C),
                      blurRadius: AppSize.s20.r,
                      offset: Offset(0, AppSize.s8.h),
                    ),
                  ],
                ),
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
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Text(
                        product.pricingModel == 'per_100g'
                            ? '${_formatHalala(product.priceHalala, widget.currency)} / 100 g'
                            : _formatHalala(_estimatedUnitPriceHalala, widget.currency),
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
                                product.name,
                                textAlign: TextAlign.right,
                                style: getBoldTextStyle(
                                  fontSize: FontSizeManager.s22.sp,
                                  color: const Color(0xFF112B22),
                                ),
                              ),
                              Gap(AppSize.s6.h),
                              Text(
                                _builderDescriptionForKey(product.key, context),
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
                        _BuilderHeroImage(
                          imagePath: _builderImageForProduct(product.key),
                          initials: _initials(product.name),
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
                          _BuilderHeroPill(
                            label: Strings.weightGrams.tr(),
                            value: _weightLabel(_weightGrams),
                          ),
                          _BuilderHeroPill(
                            label: Strings.per100g.tr(),
                            value: _formatHalala(product.priceHalala, widget.currency),
                          ),
                        ],
                      ),
                    ],
                    Gap(AppSize.s14.h),
                    _BuilderProgressBar(
                      value: progressValue,
                      label: Strings.builderCompletedGroupsCount.tr(
                        namedArgs: {
                          'done': _completedRequiredGroupsCount.toString(),
                          'total': _requiredGroupsCount.toString(),
                        },
                      ),
                    ),
                  ],
                ),
              ),
              if (product.pricingModel == 'per_100g') ...[
                Gap(AppSize.s12.h),
                _BuilderCardContainer(
                  child: _WeightSelector(
                    value: _weightGrams,
                    min: product.minWeightGrams,
                    max:
                        product.maxWeightGrams > 0
                            ? product.maxWeightGrams
                            : 600,
                    step:
                        product.weightStepGrams > 0
                            ? product.weightStepGrams
                            : 50,
                    onChanged: (value) {
                      setState(() {
                        _weightGrams = value;
                      });
                    },
                  ),
                ),
              ],
              if (product.pricingModel == 'per_100g') Gap(AppSize.s12.h),
              for (final group in product.optionGroups)
                Padding(
                  padding: EdgeInsetsDirectional.only(bottom: AppPadding.p12.h),
                  child: _OptionGroupCard(
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
              _BuilderCardContainer(
                child: _QuantitySelector(
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
                    border: Border.all(color: const Color(0x14000000)),
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
                          padding: EdgeInsetsDirectional.only(bottom: AppPadding.p6.h),
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
            ],
          ),
        ),
      ),
    );
  }
}

class _WeightSelector extends StatelessWidget {
  final int value;
  final int min;
  final int max;
  final int step;
  final ValueChanged<int> onChanged;

  const _WeightSelector({
    required this.value,
    required this.min,
    required this.max,
    required this.step,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final divisions = ((max - min) / step).round();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          Strings.weightGrams.tr(),
          style: getBoldTextStyle(
            fontSize: FontSizeManager.s16.sp,
            color: const Color(0xFF112B22),
          ),
        ),
        Gap(AppSize.s8.h),
        Text(
          _weightLabel(value),
          style: getBoldTextStyle(
            fontSize: FontSizeManager.s12.sp,
            color: ColorManager.textSecondary,
          ),
        ),
        Gap(AppSize.s6.h),
        Slider(
          value: value.toDouble(),
          min: min.toDouble(),
          max: max.toDouble(),
          divisions: divisions > 0 ? divisions : null,
          activeColor: ColorManager.brandPrimary,
          inactiveColor: const Color(0xFFD8E7DF),
          label: _weightLabel(value),
          onChanged: (newValue) => onChanged(newValue.round()),
        ),
        Row(
          children: [
            Text(
              _weightLabel(min),
              style: getRegularTextStyle(
                fontSize: FontSizeManager.s11.sp,
                color: ColorManager.textSecondary,
              ),
            ),
            const Spacer(),
            Text(
              _weightLabel(max),
              style: getRegularTextStyle(
                fontSize: FontSizeManager.s11.sp,
                color: ColorManager.textSecondary,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _OptionGroupCard extends StatelessWidget {
  final OrderMenuOptionGroupModel group;
  final String currency;
  final bool isExpanded;
  final Set<String> selectedIds;
  final Map<String, int> extraWeightByOptionId;
  final List<OrderMenuOptionModel> visibleOptions;
  final String ruleText;
  final bool isComplete;
  final ValueChanged<bool> onExpandedChanged;
  final VoidCallback onOpenSearch;
  final ValueChanged<String> onToggle;
  final void Function(OrderMenuOptionModel option, int delta)
  onExtraWeightChanged;

  const _OptionGroupCard({
    required this.group,
    required this.currency,
    required this.isExpanded,
    required this.selectedIds,
    required this.extraWeightByOptionId,
    required this.visibleOptions,
    required this.ruleText,
    required this.isComplete,
    required this.onExpandedChanged,
    required this.onOpenSearch,
    required this.onToggle,
    required this.onExtraWeightChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.backgroundSurface.withValues(alpha: 0.96),
        borderRadius: BorderRadius.circular(AppSize.s20.r),
        border: Border.all(color: const Color(0xFFF2F4F7)),
        boxShadow: [
          BoxShadow(
            color: const Color(0x1211382C),
            blurRadius: AppSize.s14.r,
            offset: Offset(0, AppSize.s5.h),
          ),
        ],
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          key: PageStorageKey(group.groupId),
          initiallyExpanded: isExpanded,
          onExpansionChanged: onExpandedChanged,
          tilePadding: EdgeInsetsDirectional.fromSTEB(
            AppPadding.p16.w,
            AppPadding.p14.h,
            AppPadding.p16.w,
            AppPadding.p14.h,
          ),
          childrenPadding: EdgeInsetsDirectional.fromSTEB(
            AppPadding.p16.w,
            0,
            AppPadding.p16.w,
            AppPadding.p16.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s20.r),
          ),
          collapsedShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s20.r),
          ),
          trailing: Icon(
            isExpanded
                ? Icons.keyboard_arrow_up_rounded
                : Icons.keyboard_arrow_down_rounded,
            color: const Color(0xFF112B22),
          ),
          title: Row(
            children: [
              Container(
                width: AppSize.s30.w,
                height: AppSize.s30.h,
                decoration: BoxDecoration(
                  color:
                      isComplete
                          ? ColorManager.brandPrimary
                          : const Color(0xFFF4F7F5),
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Icon(
                  isComplete ? Icons.check_rounded : Icons.add_rounded,
                  size: AppSize.s16.r,
                  color:
                      isComplete
                          ? ColorManager.backgroundSurface
                          : ColorManager.textSecondary,
                ),
              ),
              Gap(AppSize.s10.w),
              Container(
                padding: EdgeInsetsDirectional.symmetric(
                  horizontal: AppPadding.p10.w,
                  vertical: AppPadding.p6.h,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFEBF5F0),
                  borderRadius: BorderRadius.circular(999.r),
                ),
                child: Text(
                  '${selectedIds.length}/${group.maxSelections}',
                  style: getBoldTextStyle(
                    fontSize: FontSizeManager.s12.sp,
                    color: const Color(0xFF12382C),
                  ),
                ),
              ),
              const Spacer(),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      group.name,
                      textAlign: TextAlign.right,
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s16.sp,
                        color: const Color(0xFF112B22),
                      ),
                    ),
                    Gap(AppSize.s4.h),
                    Text(
                      ruleText,
                      textAlign: TextAlign.right,
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s11_5.sp,
                        color: ColorManager.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          children: [
            if (group.options.length > 8) ...[
              InkWell(
                onTap: onOpenSearch,
                borderRadius: BorderRadius.circular(AppSize.s15.r),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsetsDirectional.symmetric(
                    horizontal: AppPadding.p13.w,
                    vertical: AppPadding.p12.h,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF9FCFA),
                    borderRadius: BorderRadius.circular(AppSize.s15.r),
                    border: Border.all(color: const Color(0xFFE5E7EB)),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search_rounded,
                        color: Color(0xFF9CA3AF),
                      ),
                      Gap(AppSize.s10.w),
                      Expanded(
                        child: Text(
                          Strings.builderSearchIn.tr(
                            namedArgs: {'group': group.name},
                          ),
                          textAlign: TextAlign.right,
                          style: getRegularTextStyle(
                            fontSize: FontSizeManager.s12.sp,
                            color: ColorManager.textMuted,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(AppSize.s10.h),
            ],
            Wrap(
              spacing: AppSize.s8.w,
              runSpacing: AppSize.s8.h,
              alignment: WrapAlignment.end,
              children:
                  visibleOptions.map((option) {
                    final isSelected = selectedIds.contains(option.optionId);
                    final maxReached =
                        selectedIds.length >= group.maxSelections && !isSelected;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        _BuilderOptionChip(
                          option: option,
                          currency: currency,
                          isSelected: isSelected,
                          isDisabled: maxReached,
                          onTap: () => onToggle(option.optionId),
                        ),
                        if (isSelected && option.extraWeightUnitGrams > 0)
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                              top: AppPadding.p8.h,
                            ),
                            child: _InlineExtraWeightSelector(
                              value:
                                  extraWeightByOptionId[option.optionId] ??
                                  option.extraWeightUnitGrams,
                              step: option.extraWeightUnitGrams,
                              onDecrease:
                                  () => onExtraWeightChanged(
                                    option,
                                    -option.extraWeightUnitGrams,
                                  ),
                              onIncrease:
                                  () => onExtraWeightChanged(
                                    option,
                                    option.extraWeightUnitGrams,
                                  ),
                            ),
                          ),
                      ],
                    );
                  }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class _BuilderSearchOptionTile extends StatelessWidget {
  final OrderMenuOptionModel option;
  final String currency;
  final bool isSelected;
  final bool isDisabled;
  final VoidCallback onTap;

  const _BuilderSearchOptionTile({
    required this.option,
    required this.currency,
    required this.isSelected,
    required this.isDisabled,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: isDisabled ? 0.42 : 1,
      child: Material(
        color: ColorManager.backgroundSurface,
        borderRadius: BorderRadius.circular(AppSize.s18.r),
        child: InkWell(
          onTap: isDisabled ? null : onTap,
          borderRadius: BorderRadius.circular(AppSize.s18.r),
          child: Container(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: AppPadding.p14.w,
              vertical: AppPadding.p14.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.s18.r),
              border: Border.all(
                color:
                    isSelected
                        ? ColorManager.brandPrimary
                        : const Color(0xFFE5E7EB),
              ),
              color:
                  isSelected
                      ? ColorManager.brandPrimaryTint.withValues(alpha: 0.45)
                      : ColorManager.backgroundSurface,
            ),
            child: Row(
              children: [
                Container(
                  width: AppSize.s28.w,
                  height: AppSize.s28.h,
                  decoration: BoxDecoration(
                    color:
                        isSelected
                            ? ColorManager.brandPrimary
                            : const Color(0xFFF4F7F5),
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: Icon(
                    isSelected ? Icons.check_rounded : Icons.add_rounded,
                    size: AppSize.s16.r,
                    color:
                        isSelected
                            ? ColorManager.backgroundSurface
                            : const Color(0xFF112B22),
                  ),
                ),
                Gap(AppSize.s10.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        option.name,
                        textAlign: TextAlign.right,
                        style: getBoldTextStyle(
                          fontSize: FontSizeManager.s14.sp,
                          color: const Color(0xFF112B22),
                        ),
                      ),
                      if (option.extraPriceHalala > 0) ...[
                        Gap(AppSize.s4.h),
                        Text(
                          '+ ${_formatHalala(option.extraPriceHalala, currency)}',
                          textAlign: TextAlign.right,
                          style: getBoldTextStyle(
                            fontSize: FontSizeManager.s11.sp,
                            color: ColorManager.brandAccent,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _BuilderOptionChip extends StatelessWidget {
  final OrderMenuOptionModel option;
  final String currency;
  final bool isSelected;
  final bool isDisabled;
  final VoidCallback onTap;

  const _BuilderOptionChip({
    required this.option,
    required this.currency,
    required this.isSelected,
    required this.isDisabled,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: isDisabled ? 0.42 : 1,
      child: Material(
        color:
            isSelected ? const Color(0xFF0B241C) : ColorManager.backgroundSurface,
        borderRadius: BorderRadius.circular(AppSize.s15.r),
        child: InkWell(
          onTap: isDisabled ? null : onTap,
          borderRadius: BorderRadius.circular(AppSize.s15.r),
          child: Container(
            constraints: BoxConstraints(minHeight: AppSize.s42.h),
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: AppPadding.p12.w,
              vertical: AppPadding.p10.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.s15.r),
              border: Border.all(
                color:
                    isSelected ? const Color(0xFF0B241C) : const Color(0xFFE5E7EB),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (isSelected) ...[
                  Icon(
                    Icons.check_rounded,
                    size: AppSize.s14.r,
                    color: ColorManager.backgroundSurface,
                  ),
                  Gap(AppSize.s6.w),
                ],
                if (option.extraPriceHalala > 0) ...[
                  Text(
                    '+ ${_formatHalala(option.extraPriceHalala, currency)}',
                    style: getBoldTextStyle(
                      fontSize: FontSizeManager.s11.sp,
                      color:
                          isSelected
                              ? ColorManager.backgroundSurface
                              : ColorManager.brandAccent,
                    ),
                  ),
                  Gap(AppSize.s4.w),
                ],
                Flexible(
                  child: Text(
                    option.name,
                    style: getBoldTextStyle(
                      fontSize: FontSizeManager.s12.sp,
                      color:
                          isSelected
                              ? ColorManager.backgroundSurface
                              : const Color(0xFF112B22),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _BuilderCardContainer extends StatelessWidget {
  final Widget child;

  const _BuilderCardContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsetsDirectional.all(AppPadding.p16.r),
      decoration: BoxDecoration(
        color: ColorManager.backgroundSurface,
        borderRadius: BorderRadius.circular(AppSize.s20.r),
        border: Border.all(color: const Color(0xFFF2F4F7)),
        boxShadow: [
          BoxShadow(
            color: const Color(0x1211382C),
            blurRadius: AppSize.s14.r,
            offset: Offset(0, AppSize.s5.h),
          ),
        ],
      ),
      child: child,
    );
  }
}

class _BuilderProgressBar extends StatelessWidget {
  final double value;
  final String label;

  const _BuilderProgressBar({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s38.h,
      decoration: BoxDecoration(
        color: ColorManager.backgroundSurface.withValues(alpha: 0.78),
        borderRadius: BorderRadius.circular(AppSize.s14.r),
        border: Border.all(color: const Color(0x1A0E9F6E)),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          FractionallySizedBox(
            widthFactor: value.clamp(0, 1),
            alignment: AlignmentDirectional.centerEnd,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0x290E9F6E), Color(0x120E9F6E)],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsetsDirectional.only(end: AppPadding.p12.w),
              child: Text(
                label,
                style: getBoldTextStyle(
                  fontSize: FontSizeManager.s12.sp,
                  color: const Color(0xFF12382C),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InlineExtraWeightSelector extends StatelessWidget {
  final int value;
  final int step;
  final VoidCallback onDecrease;
  final VoidCallback onIncrease;

  const _InlineExtraWeightSelector({
    required this.value,
    required this.step,
    required this.onDecrease,
    required this.onIncrease,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: AppPadding.p10.w,
        vertical: AppPadding.p8.h,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF6F9F7),
        borderRadius: BorderRadius.circular(AppSize.s16.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: value > step ? onDecrease : null,
            visualDensity: VisualDensity.compact,
            icon: const Icon(Icons.remove_circle_outline),
          ),
          Text(
            _weightLabel(value),
            style: getBoldTextStyle(
              fontSize: FontSizeManager.s12.sp,
              color: ColorManager.textPrimary,
            ),
          ),
          IconButton(
            onPressed: onIncrease,
            visualDensity: VisualDensity.compact,
            icon: const Icon(Icons.add_circle_outline),
          ),
        ],
      ),
    );
  }
}

class _QuantitySelector extends StatelessWidget {
  final int quantity;
  final VoidCallback? onDecrease;
  final VoidCallback onIncrease;

  const _QuantitySelector({
    required this.quantity,
    required this.onDecrease,
    required this.onIncrease,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _QuantityButton(icon: Icons.add_rounded, onTap: onIncrease),
        Gap(AppSize.s12.w),
        Container(
          width: AppSize.s48.w,
          alignment: Alignment.center,
          child: Text(
            '$quantity',
            style: getBoldTextStyle(
              fontSize: FontSizeManager.s18.sp,
              color: const Color(0xFF112B22),
            ),
          ),
        ),
        Gap(AppSize.s12.w),
        _QuantityButton(icon: Icons.remove_rounded, onTap: onDecrease),
        const Spacer(),
        Text(
          Strings.builderQuantity.tr(),
          style: getBoldTextStyle(
            fontSize: FontSizeManager.s16.sp,
            color: const Color(0xFF112B22),
          ),
        ),
      ],
    );
  }
}

class _QuantityButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;

  const _QuantityButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: onTap == null ? 0.4 : 1,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppSize.s14.r),
        child: Container(
          width: AppSize.s40.w,
          height: AppSize.s40.h,
          decoration: BoxDecoration(
            color: const Color(0xFFF4F7F5),
            borderRadius: BorderRadius.circular(AppSize.s14.r),
          ),
          child: Icon(
            icon,
            color: const Color(0xFF112B22),
            size: AppSize.s18.r,
          ),
        ),
      ),
    );
  }
}

class _BuilderHeroImage extends StatelessWidget {
  final String? imagePath;
  final String initials;

  const _BuilderHeroImage({required this.imagePath, required this.initials});

  @override
  Widget build(BuildContext context) {
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
      child:
          imagePath == null
              ? Center(
                child: Text(
                  initials,
                  style: getBoldTextStyle(
                    fontSize: FontSizeManager.s26.sp,
                    color: const Color(0xFF12382C),
                  ),
                ),
              )
              : Image.asset(imagePath!, fit: BoxFit.cover),
    );
  }
}

class _BuilderHeroPill extends StatelessWidget {
  final String label;
  final String value;

  const _BuilderHeroPill({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: AppPadding.p10.w,
        vertical: AppPadding.p8.h,
      ),
      decoration: BoxDecoration(
        color: ColorManager.backgroundSurface.withValues(alpha: 0.86),
        borderRadius: BorderRadius.circular(999.r),
        border: Border.all(color: const Color(0x1A0E9F6E)),
      ),
      child: Text(
        '$value • $label',
        style: getBoldTextStyle(
          fontSize: FontSizeManager.s11.sp,
          color: const Color(0xFF12382C),
        ),
      ),
    );
  }
}

String? _builderImageForProduct(String productKey) {
  switch (productKey) {
    case 'basic_salad':
      return ImageAssets.oneTimeBasicSalad;
    case 'basic_meal':
      return ImageAssets.oneTimeBasicMeal;
    case 'fruit_salad':
      return ImageAssets.oneTimeFruitSalad;
    case 'greek_yogurt':
      return ImageAssets.oneTimeGreekYogurt;
    default:
      return null;
  }
}

String _weightLabel(int grams) => '$grams g';

class _BuilderProductsData {
  final List<OrderMenuProductModel> main;
  final List<OrderMenuProductModel> light;

  const _BuilderProductsData({required this.main, required this.light});
}

class _MenuChipData {
  final String key;
  final String label;

  const _MenuChipData({required this.key, required this.label});
}

class _MenuSectionData {
  final String key;
  final String title;
  final String? subtitle;
  final _SectionLayout layout;
  final List<OrderMenuProductModel> products;

  const _MenuSectionData({
    required this.key,
    required this.title,
    required this.layout,
    required this.products,
    this.subtitle,
  });
}

enum _SectionLayout { compactScroll, list, grid }

String _formatHalala(int halala, String currency) {
  final value = halala / 100;
  final display =
      value % 1 == 0 ? value.toStringAsFixed(0) : value.toStringAsFixed(2);
  return '$display $currency';
}

String _initials(String value) {
  final cleaned = value.trim();
  if (cleaned.isEmpty) {
    return 'ب';
  }

  final words = cleaned.split(' ').where((part) => part.isNotEmpty).toList();
  if (words.length == 1) {
    return words.first.characters.take(2).toString();
  }
  return words.take(2).map((word) => word.characters.first).join();
}

String _productDescription(OrderMenuProductModel product) {
  final description = product.description?.trim();
  if (description != null && description.isNotEmpty) {
    return description;
  }

  return product.name;
}

String _builderDescriptionForKey(String key, BuildContext context) {
  switch (key) {
    case 'basic_salad':
      return 'اختاري الورقيات والخضار والبروتين والصوص';
    case 'basic_meal':
      return 'اختاري الكارب والبروتين حسب مزاجك';
    case 'fruit_salad':
      return 'اختاري 9 أنواع فواكه حسب رغبتك';
    case 'greek_yogurt':
      return 'اختاري الفواكه والمكسرات المناسبة لك';
    default:
      return Strings.customOrderSubtitle.tr();
  }
}
