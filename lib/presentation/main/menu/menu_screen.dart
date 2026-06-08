import 'dart:math';
import 'dart:ui' as ui;

import 'package:basic_diet/app/auth_gate.dart';
import 'package:basic_diet/app/constants.dart';
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
  final ScrollController _chipsScrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';
  String _activeChip = 'all';
  bool _showMenuIntro = true;
  double _lastScrollOffset = 0;
  final List<GlobalKey> _chipKeys = [];
  List<_MenuChipData> _currentChips = [];
  double _hideThreshold = 0.0;
  double _accumulatedDelta = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_handleScroll);
    OneTimeMenuCoordinator.intent.addListener(_handleMenuIntent);
  }

  @override
  void dispose() {
    OneTimeMenuCoordinator.intent.removeListener(_handleMenuIntent);
    _scrollController.removeListener(_handleScroll);
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _handleMenuIntent() async {
    final menuState = context.read<MenuBloc>().state;
    if (menuState is! MenuSuccess) {
      return;
    }

    final intent = OneTimeMenuCoordinator.intent.value;
    if (intent == null) {
      return;
    }

    if (intent.sectionKey != null) {
      _selectSection(intent.sectionKey!);
    }

    if (intent.productKey != null) {
      final product = _findProductByKey(menuState.menu, intent.productKey!);
      if (product != null) {
        await _handleProductSelection(product, menuState.menu.currency);
      }
    }

    OneTimeMenuCoordinator.clear();
  }

  Future<void> _handleProductSelection(
    OrderMenuProductModel product,
    String currency,
  ) async {
    if (product.resolvedRequiresBuilder) {
      await _openBuilder(product, currency);
      return;
    }

    if (!product.resolvedCanAddDirectly) {
      return;
    }

    if (!mounted) {
      return;
    }

    context.read<CartBloc>().add(
      AddItemEvent(
        CartItem(
          productId: product.id,
          name: product.displayName(context.locale.toString()),
          qty: 1,
          unitPriceHalala: product.priceHalala,
        ),
      ),
    );
  }

  void _selectSection(String sectionKey) {
    setState(() {
      _activeChip = sectionKey == 'all' ? 'all' : sectionKey;
    });

    if (_scrollController.hasClients) {
      _scrollController.jumpTo(0);
    }

    // Scroll the selected chip to center
    final chipIndex = _currentChips.indexWhere((chip) => chip.key == _activeChip);
    if (chipIndex != -1) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (_chipKeys[chipIndex].currentContext != null) {
          Scrollable.ensureVisible(
            _chipKeys[chipIndex].currentContext!,
            alignment: 0.5,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        }
      });
    }
  }

  void _handleScroll() {
    if (!_scrollController.hasClients) {
      return;
    }

    final position = _scrollController.position;
    final offset = position.pixels;
    final maxScroll = position.maxScrollExtent;
    final minScroll = position.minScrollExtent;

    // Check if we're bouncing (out of bounds)
    final isOutOfBounds = offset < minScroll || offset > maxScroll;
    if (isOutOfBounds) {
      // Don't update lastScrollOffset when bouncing to avoid false delta calculations
      return;
    }

    final delta = offset - _lastScrollOffset;
    _lastScrollOffset = offset;

    // If delta changes direction, reset accumulated delta
    if ((delta > 0 && _accumulatedDelta < 0) || (delta < 0 && _accumulatedDelta > 0)) {
      _accumulatedDelta = 0.0;
    }
    _accumulatedDelta += delta;

    // If there isn't enough scroll space to hide the intro, keep it visible
    if (maxScroll < AppSize.s40.h) {
      if (!_showMenuIntro) {
        _setMenuIntroVisible(true);
      }
      return;
    }

    if (offset <= AppSize.s4.h) {
      _setMenuIntroVisible(true);
      _accumulatedDelta = 0.0;
      return;
    }

    // Threshold to hide: only hide if we've accumulated enough downward scroll
    if (_accumulatedDelta > AppSize.s10.h && _showMenuIntro && offset > _hideThreshold) {
      _setMenuIntroVisible(false);
      // When hiding, set a threshold to prevent accidental show on small bounces
      _hideThreshold = offset - AppSize.s8.h;
      _accumulatedDelta = 0.0;
      return;
    }

    // Threshold to show: only show if we've accumulated enough upward scroll
    if (_accumulatedDelta < -AppSize.s10.h && !_showMenuIntro) {
      _setMenuIntroVisible(true);
      _hideThreshold = 0.0;
      _accumulatedDelta = 0.0;
    }
  }

  void _setMenuIntroVisible(bool isVisible) {
    if (_showMenuIntro == isVisible || !mounted) {
      return;
    }

    setState(() {
      _showMenuIntro = isVisible;
    });
  }

  Future<void> _openBuilder(
    OrderMenuProductModel product,
    String currency,
  ) async {
    if (!await requireAuthenticated(context)) {
      return;
    }

    if (!mounted) {
      return;
    }

    final cartItem = await Navigator.of(context).push<CartItem>(
      MaterialPageRoute(
        builder: (_) => _BuilderScreen(product: product, currency: currency),
      ),
    );

    if (!mounted || cartItem == null) {
      return;
    }

    context.read<CartBloc>().add(AddItemEvent(cartItem));
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

            final sections = _buildDirectSections(menu);
            if (sections.isEmpty) {
              return _MenuErrorView(message: Strings.noProductsAvailable.tr());
            }
            final chips = _buildChips(sections);
            _currentChips = chips;
            // Initialize chip keys if needed
            if (_chipKeys.length != chips.length) {
              _chipKeys.clear();
              for (int i = 0; i < chips.length; i++) {
                _chipKeys.add(GlobalKey());
              }
            }
            final visibleSections =
                _activeChip == 'all'
                    ? sections
                    : sections
                        .where((section) => section.key == _activeChip)
                        .toList();

            return Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                        AppPadding.p16.w,
                        AppPadding.p12.h,
                        AppPadding.p16.w,
                        AppPadding.p10.h,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRect(
                            child: AnimatedAlign(
                              duration: const Duration(milliseconds: 150),
                              curve: Curves.easeOutCubic,
                              alignment: Alignment.topCenter,
                              heightFactor: _showMenuIntro ? 1 : 0,
                              child: AnimatedOpacity(
                                duration: const Duration(milliseconds: 110),
                                curve: Curves.easeOutCubic,
                                opacity: _showMenuIntro ? 1 : 0,
                                child: AnimatedSlide(
                                  duration: const Duration(milliseconds: 150),
                                  curve: Curves.easeOutCubic,
                                  offset:
                                      _showMenuIntro
                                          ? Offset.zero
                                          : const Offset(0, -0.08),
                                  child: Column(
                                    children: [
                                      const _MenuHeader(),
                                      Gap(AppSize.s12.h),
                                      const _PickupNoticeCard(),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Gap(AppSize.s10.h),
                          _SearchField(
                            controller: _searchController,
                            onChanged: (value) {
                              setState(() {
                                _searchQuery = value.trim().toLowerCase();
                              });
                            },
                          ),
                          Gap(AppSize.s10.h),
                          _MenuChipsRow(
                            chips: chips,
                            activeKey: _activeChip,
                            onSelected: _selectSection,
                            scrollController: _chipsScrollController,
                            chipKeys: _chipKeys,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: CustomScrollView(
                        controller: _scrollController,
                        physics: const BouncingScrollPhysics(),
                        slivers: [
                          SliverPadding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                              AppPadding.p16.w,
                              0,
                              AppPadding.p16.w,
                              AppPadding.p120.h,
                            ),
                            sliver: SliverToBoxAdapter(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Gap(AppSize.s12.h),
                                  for (final section in visibleSections)
                                    Padding(
                                      padding: EdgeInsetsDirectional.only(
                                        top: AppPadding.p28.h,
                                      ),
                                      child: _DynamicSection(
                                        section: section,
                                        currency: menu.currency,
                                        products: _filterProducts(
                                          section.products,
                                        ),
                                        onProductSelected: (product) {
                                          _handleProductSelection(
                                            product,
                                            menu.currency,
                                          );
                                        },
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                _StickyCartBar(currency: menu.currency),
              ],
            );
          },
        ),
      ),
    );
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
              product
                  .displayName(context.locale.toString())
                  .toLowerCase()
                  .contains(_searchQuery) ||
              product.key.toLowerCase().contains(_searchQuery),
        )
        .toList();
  }

  // ignore: unused_element
  _BuilderProductsData _buildBuilderSections(OrderMenuModel menu) {
    final allConfigurable =
        menu.categories
            .expand((category) => category.products)
            .where((product) => product.resolvedRequiresBuilder)
            .toList()
          ..sort((a, b) => a.sortOrder.compareTo(b.sortOrder));

    final main = <OrderMenuProductModel>[];
    final light = <OrderMenuProductModel>[];

    for (final product in allConfigurable) {
      if (product.cardSize == ProductCardSize.small) {
        light.add(product);
      } else {
        main.add(product);
      }
    }

    return _BuilderProductsData(main: main, light: light);
  }

  List<_MenuChipData> _buildChips(List<_MenuSectionData> sections) {
    final chips = <_MenuChipData>[
      _MenuChipData(key: 'all', label: Strings.all.tr()),
    ];

    for (final section in sections) {
      chips.add(_MenuChipData(key: section.key, label: section.title));
    }

    return chips;
  }

  List<_MenuSectionData> _buildDirectSections(OrderMenuModel menu) {
    final sections = <_MenuSectionData>[];

    final categories = [...menu.categories]
      ..sort((a, b) => a.sortOrder.compareTo(b.sortOrder));

    for (final category in categories) {
      final actionableProducts =
          category.products
              .where(
                (product) =>
                    product.resolvedCanAddDirectly ||
                    product.resolvedRequiresBuilder,
              )
              .toList()
            ..sort((a, b) => a.sortOrder.compareTo(b.sortOrder));

      if (actionableProducts.isEmpty) {
        continue;
      }

      sections.add(
        _MenuSectionData(
          key: category.key,
          title: category.name,
          subtitle: _sectionSubtitle(category),
          products: actionableProducts,
        ),
      );
    }

    return sections;
  }

  String? _sectionSubtitle(OrderMenuCategoryModel category) {
    if (category.cardVariant == 'sandwich_collection') {
      return Strings.coldSandwichesSubtitle.tr();
    }
    return null;
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
              onTap: () => _openCart(context),
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
        if (badgeCount > 0)
          PositionedDirectional(
            top: (-4).h,
            end: (-4).w,
            child: Container(
              constraints: BoxConstraints(minWidth: AppSize.s16.w),
              height: AppSize.s16.w,
              padding: EdgeInsetsDirectional.symmetric(
                horizontal: AppPadding.p4.w,
              ),
              decoration: BoxDecoration(
                color: ColorManager.brandPrimary,
                borderRadius: BorderRadius.circular(AppSize.s99.r),
              ),
              alignment: Alignment.center,
              child: Text(
                '$badgeCount',
                style: getBoldTextStyle(
                  fontSize: FontSizeManager.s8.sp,
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
        horizontal: AppPadding.p12.w,
        vertical: AppPadding.p10.h,
      ),
      width: double.infinity,
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
      height: AppSize.s44.h,
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
            horizontal: AppPadding.p12.w,
            vertical: AppPadding.p10.h,
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
  final ScrollController scrollController;
  final List<GlobalKey> chipKeys;

  const _MenuChipsRow({
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

// ignore: unused_element
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
              imageUrl: product.imageUrl,
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
                imageUrl: product.imageUrl,
                currency: currency,
                onTap: () => onOpenBuilder(product, currency),
              ),
            ),
          ),
        ],
      ],
    );
  }
}

class _BuilderProductCard extends StatelessWidget {
  final OrderMenuProductModel product;
  final String currency;
  final String? imageUrl;
  final VoidCallback onTap;

  const _BuilderProductCard({
    required this.product,
    required this.currency,
    required this.onTap,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final isArabic = context.locale.languageCode == 'ar';

    return Material(
      color: ColorManager.backgroundSurface,
      borderRadius: BorderRadius.circular(AppSize.s26.r),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppSize.s26.r),
        child: Container(
          constraints: BoxConstraints(minHeight: AppSize.s188.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s26.r),
            border: Border.all(
              color: Colors.white.withValues(alpha: 0.86),
              width: 1,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppSize.s26.r),
            child: Stack(
              fit: StackFit.passthrough,
              children: [
                Positioned.fill(
                  child: _MenuMediaBox(
                    label: _initials(
                      product.displayName(context.locale.toString()),
                      context,
                    ),
                    imageUrl: imageUrl,
                    borderRadius: AppSize.s26.r,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors:
                          isArabic
                              ? [
                                Colors.white.withValues(alpha: 0.0),
                                Colors.white.withValues(alpha: 0.25),
                                Colors.white.withValues(alpha: 0.84),
                                Colors.white.withValues(alpha: 0.95),
                              ]
                              : [
                                Colors.white.withValues(alpha: 0.95),
                                Colors.white.withValues(alpha: 0.84),
                                Colors.white.withValues(alpha: 0.25),
                                Colors.white.withValues(alpha: 0.0),
                              ],
                      stops: const [0.0, 0.32, 0.68, 1.0],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(
                    AppPadding.p18.w,
                    AppPadding.p16.h,
                    AppPadding.p18.w,
                    AppPadding.p16.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        product.displayName(context.locale.toString()),
                        textAlign: TextAlign.right,
                        style: getBoldTextStyle(
                          fontSize: FontSizeManager.s18.sp,
                          color: const Color(0xFF112B22),
                        ),
                      ),
                      Gap(AppSize.s4.h),
                      Text(
                        _productDescription(product, context),
                        textAlign: TextAlign.right,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: getBoldTextStyle(
                          fontSize: FontSizeManager.s13.sp,
                          color: ColorManager.textSecondary,
                        ),
                      ),
                      Gap(AppSize.s16.h),
                      Directionality(
                        textDirection: ui.TextDirection.ltr,
                        child: Text(
                          _productPriceLabel(product, currency),
                          textAlign: TextAlign.right,
                          style: getBoldTextStyle(
                            fontSize: FontSizeManager.s13.sp,
                            color: const Color(0xFF12382C),
                          ),
                        ),
                      ),
                      Gap(AppSize.s10.h),
                      _ProductCartAction(
                        product: product,
                        onTap: onTap,
                        ctaWidth: AppSize.s120.w,
                      ),
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

class _LightBuilderCard extends StatelessWidget {
  final OrderMenuProductModel product;
  final String? imageUrl;
  final String currency;
  final VoidCallback onTap;

  const _LightBuilderCard({
    required this.product,
    required this.currency,
    required this.onTap,
    this.imageUrl,
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
                      product.displayName(context.locale.toString()),
                      textAlign: TextAlign.right,
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s16.sp,
                        color: const Color(0xFF112B22),
                      ),
                    ),
                    Gap(AppSize.s3.h),
                    Text(
                      _productDescription(product, context),
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
                            _productPriceLabel(product, currency),
                            textAlign: TextAlign.start,
                            style: getBoldTextStyle(
                              fontSize: FontSizeManager.s12_5.sp,
                              color: const Color(0xFF12382C),
                            ),
                          ),
                        ),
                        _ProductCartAction(product: product, onTap: onTap),
                      ],
                    ),
                  ],
                ),
              ),
              Gap(AppSize.s14.w),
              _MenuMediaBox(
                label: _initials(
                  product.displayName(context.locale.toString()),
                  context,
                ),
                imageUrl: imageUrl,
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
  final ValueChanged<OrderMenuProductModel> onProductSelected;

  const _DynamicSection({
    required this.section,
    required this.currency,
    required this.products,
    required this.onProductSelected,
  });

  @override
  Widget build(BuildContext context) {
    Widget buildProductCard(OrderMenuProductModel product) {
      switch (product.cardSize) {
        case ProductCardSize.large:
          return _BuilderProductCard(
            product: product,
            imageUrl: product.imageUrl,
            currency: currency,
            onTap: () => onProductSelected(product),
          );
        case ProductCardSize.small:
          return _CompactProductCard(
            product: product,
            currency: currency,
            onTap: () => onProductSelected(product),
          );
        case ProductCardSize.medium:
          return _ListProductCard(
            product: product,
            currency: currency,
            onTap: () => onProductSelected(product),
          );
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _MenuSectionHeader(title: section.title, subtitle: section.subtitle),
        Gap(AppSize.s14.h),
        if (products.isEmpty)
          _EmptyStateCard(message: Strings.noProductsAvailable.tr())
        else
          Column(
            children:
                products
                    .map(
                      (product) => Padding(
                        padding: EdgeInsetsDirectional.only(
                          bottom: AppPadding.p12.h,
                        ),
                        child: buildProductCard(product),
                      ),
                    )
                    .toList(),
          ),
      ],
    );
  }
}

class _CompactProductCard extends StatelessWidget {
  final OrderMenuProductModel product;
  final String currency;
  final VoidCallback onTap;

  const _CompactProductCard({
    required this.product,
    required this.currency,
    required this.onTap,
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
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: AppSize.s66.w,
            child: AspectRatio(
              aspectRatio: product.imageRatio ?? 1,
              child: _MenuMediaBox(
                label: _initials(
                  product.displayName(context.locale.toString()),
                  context,
                ),
                imageUrl: product.imageUrl,
                borderRadius: AppSize.s16.r,
              ),
            ),
          ),
          Gap(AppSize.s10.h),
          if (product.badge.isNotEmpty) ...[
            _ProductBadge(label: product.badge),
            Gap(AppSize.s6.h),
          ],
          Text(
            product.displayName(context.locale.toString()),
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
          Gap(AppSize.s4.h),
          Row(
            children: [
              _ProductCartAction(product: product, onTap: onTap),
              Gap(AppSize.s8.w),
              Expanded(
                child: Text(
                  _productPriceLabel(product, currency),
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
  final VoidCallback onTap;

  const _ListProductCard({
    required this.product,
    required this.currency,
    required this.onTap,
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
              color: Colors.white.withValues(alpha: 0.84),
              width: 1,
            ),
          ),
          child: Row(
            children: [
              SizedBox(
                width: AppSize.s76.w,
                child: AspectRatio(
                  aspectRatio: product.imageRatio ?? 1,
                  child: _MenuMediaBox(
                    label: _initials(
                      product.displayName(context.locale.toString()),
                      context,
                    ),
                    imageUrl: product.imageUrl,
                    borderRadius: AppSize.s18.r,
                  ),
                ),
              ),
              Gap(AppSize.s14.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    if (product.badge.isNotEmpty) ...[
                      _ProductBadge(label: product.badge),
                      Gap(AppSize.s6.h),
                    ],
                    Text(
                      product.displayName(context.locale.toString()),
                      textAlign: TextAlign.right,
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s16.sp,
                        color: const Color(0xFF112B22),
                      ),
                    ),
                    Gap(AppSize.s3.h),
                    Text(
                      _productDescription(product, context),
                      textAlign: TextAlign.right,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s12.sp,
                        color: ColorManager.textSecondary,
                      ),
                    ),
                    Gap(AppSize.s8.h),
                    Text(
                      _productPriceLabel(product, currency),
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s14.sp,
                        color: const Color(0xFF12382C),
                      ),
                    ),
                    Gap(AppSize.s10.h),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: _ProductCartAction(
                        product: product,
                        onTap: onTap,
                        ctaWidth: AppSize.s120.w,
                      ),
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

class _ProductCartAction extends StatelessWidget {
  final OrderMenuProductModel product;
  final VoidCallback onTap;
  final double? ctaWidth;

  const _ProductCartAction({
    required this.product,
    required this.onTap,
    this.ctaWidth,
  });

  @override
  Widget build(BuildContext context) {
    if (product.resolvedRequiresBuilder) {
      return _ProductCtaButton(
        label: _productCtaLabel(product, context),
        onTap: onTap,
        width: ctaWidth,
      );
    }

    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        final cartItem = _directCartItem(state, product.id);
        if (cartItem == null) {
          return _SquareAddButton(onTap: onTap);
        }

        return _SmallQuantityButton(
          quantity: cartItem.qty,
          onIncrease: onTap,
          onDecrease: () {
            final nextQty = cartItem.qty - 1;
            context.read<CartBloc>().add(
              UpdateQtyEvent(cartItem.compositeKey, nextQty),
            );
          },
        );
      },
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

class _ProductCtaButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final double? width;

  const _ProductCtaButton({
    required this.label,
    required this.onTap,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorManager.brandPrimary,
      borderRadius: BorderRadius.circular(AppSize.s15.r),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppSize.s15.r),
        child: Container(
          width: width,
          height: AppSize.s40.h,
          constraints: BoxConstraints(minWidth: AppSize.s76.w),
          padding: EdgeInsetsDirectional.symmetric(
            horizontal: AppPadding.p12.w,
          ),
          alignment: Alignment.center,
          child: Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: getBoldTextStyle(
              fontSize: FontSizeManager.s11.sp,
              color: ColorManager.backgroundSurface,
            ),
          ),
        ),
      ),
    );
  }
}

class _ProductBadge extends StatelessWidget {
  final String label;

  const _ProductBadge({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: AppPadding.p8.w,
        vertical: AppPadding.p4.h,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFEAF7F1),
        borderRadius: BorderRadius.circular(AppSize.s99.r),
      ),
      child: Text(
        label,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: getBoldTextStyle(
          fontSize: FontSizeManager.s10.sp,
          color: const Color(0xFF12382C),
        ),
      ),
    );
  }
}

class _SmallQuantityButton extends StatelessWidget {
  final int quantity;
  final VoidCallback onIncrease;
  final VoidCallback onDecrease;

  const _SmallQuantityButton({
    required this.quantity,
    required this.onIncrease,
    required this.onDecrease,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s40.h,
      padding: EdgeInsetsDirectional.symmetric(horizontal: AppPadding.p4.w),
      decoration: BoxDecoration(
        color: ColorManager.brandPrimary,
        borderRadius: BorderRadius.circular(AppSize.s15.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _SmallQuantityIconButton(icon: Icons.remove, onTap: onDecrease),
          Container(
            constraints: BoxConstraints(minWidth: AppSize.s24.w),
            alignment: Alignment.center,
            child: Text(
              '$quantity',
              style: getBoldTextStyle(
                fontSize: FontSizeManager.s13.sp,
                color: ColorManager.backgroundSurface,
              ),
            ),
          ),
          _SmallQuantityIconButton(icon: Icons.add, onTap: onIncrease),
        ],
      ),
    );
  }
}

class _SmallQuantityIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _SmallQuantityIconButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppSize.s12.r),
        child: SizedBox(
          width: AppSize.s28.w,
          height: AppSize.s32.h,
          child: Icon(
            icon,
            color: ColorManager.backgroundSurface,
            size: AppSize.s18.w,
          ),
        ),
      ),
    );
  }
}

class _StickyCartBar extends StatelessWidget {
  final String currency;

  const _StickyCartBar({required this.currency});

  @override
  Widget build(BuildContext context) {
    return PositionedDirectional(
      start: AppPadding.p16.w,
      end: AppPadding.p16.w,
      bottom: AppPadding.p10.h,
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
            color: ColorManager.brandPrimary,
            borderRadius: BorderRadius.circular(AppSize.s99.r),
            child: InkWell(
              onTap: () => _openCart(context),
              borderRadius: BorderRadius.circular(AppSize.s99.r),
              child: Container(
                height: AppSize.s54.h,
                padding: EdgeInsetsDirectional.only(
                  start: AppPadding.p20.w,
                  end: AppPadding.p20.w,
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
                      _formatHalala(previewTotal, currency),
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
  final String? imageUrl;
  final double? width;
  final double? height;
  final double borderRadius;

  const _MenuMediaBox({
    required this.label,
    required this.borderRadius,
    this.width,
    this.height,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final resolvedImageUrl = _resolveImageUrl(imageUrl);
    final isArabic = context.locale.languageCode == 'ar';
    const angle = 0.0;

    final media = ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
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
            Transform(
              transform: isArabic
                  ? Matrix4.identity()
                  : (Matrix4.identity()
                    ..setEntry(0, 1, tan(angle))
                    ..setEntry(1, 0, tan(angle))),
              alignment: Alignment.center,
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

String? _resolveImageUrl(String? imageUrl) {
  final value = imageUrl?.trim();
  if (value == null || value.isEmpty) {
    return null;
  }

  final uri = Uri.tryParse(value);
  if (uri == null || uri.hasScheme) {
    return value;
  }

  return Uri.parse(Constants.baseUrl).resolveUri(uri).toString();
}

class _MenuSectionHeader extends StatelessWidget {
  final String title;
  final String? subtitle;

  const _MenuSectionHeader({required this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          textAlign: TextAlign.start,
          style: getBoldTextStyle(
            fontSize: FontSizeManager.s20.sp,
            color: ColorManager.textPrimary,
          ),
        ),
        if (subtitle != null) ...[
          Gap(AppSize.s4.h),
          Text(
            subtitle!,
            textAlign: TextAlign.start,
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

  Future<void> _openGroupSearchPicker(OrderMenuOptionGroupModel group) async {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (sheetContext) {
        return _GroupSearchPickerSheet(
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
              (option) =>
                  _changeExtraWeight(option, -option.extraWeightUnitGrams),
          onIncreaseExtraWeight:
              (option) =>
                  _changeExtraWeight(option, option.extraWeightUnitGrams),
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
                            ? '${_formatHalala(product.priceHalala, widget.currency)} / ${Strings.grams.tr(args: ['100'])}'
                            : _formatHalala(
                              _estimatedUnitPriceHalala,
                              widget.currency,
                            ),
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
                                _productDescription(product, context),
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
                          imageUrl: product.imageUrl,
                          initials: _initials(
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
                          _BuilderHeroPill(
                            label: Strings.weightGrams.tr(),
                            value: _weightLabel(_weightGrams),
                          ),
                          _BuilderHeroPill(
                            label: Strings.per100g.tr(),
                            value: _formatHalala(
                              product.priceHalala,
                              widget.currency,
                            ),
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
                    selectedIds:
                        _selectedOptionIds[group.groupId] ?? <String>{},
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
                    color: ColorManager.backgroundSurface.withValues(
                      alpha: 0.78,
                    ),
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
                  _selectionCountLabel(selectedIds.length, group.maxSelections),
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
            _OptionGroupOptionsView(
              group: group,
              currency: currency,
              selectedIds: selectedIds,
              extraWeightByOptionId: extraWeightByOptionId,
              visibleOptions: visibleOptions,
              ruleText: ruleText,
              onOpenSearch: onOpenSearch,
              onToggle: onToggle,
              onExtraWeightChanged: onExtraWeightChanged,
            ),
          ],
        ),
      ),
    );
  }
}

class _OptionGroupOptionsView extends StatelessWidget {
  final OrderMenuOptionGroupModel group;
  final String currency;
  final Set<String> selectedIds;
  final Map<String, int> extraWeightByOptionId;
  final List<OrderMenuOptionModel> visibleOptions;
  final String ruleText;
  final VoidCallback onOpenSearch;
  final ValueChanged<String> onToggle;
  final void Function(OrderMenuOptionModel option, int delta)
  onExtraWeightChanged;

  const _OptionGroupOptionsView({
    required this.group,
    required this.currency,
    required this.selectedIds,
    required this.extraWeightByOptionId,
    required this.visibleOptions,
    required this.ruleText,
    required this.onOpenSearch,
    required this.onToggle,
    required this.onExtraWeightChanged,
  });

  @override
  Widget build(BuildContext context) {
    if (group.displayStyle == 'dropdown') {
      return _DropdownOptionPicker(
        group: group,
        selectedOptions: _selectedOptions,
        ruleText: ruleText,
        onTap: onOpenSearch,
      );
    }

    final sections = _optionSections(group, visibleOptions);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children:
          sections.map((section) {
            return Padding(
              padding: EdgeInsetsDirectional.only(bottom: AppPadding.p10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  if (section.title.isNotEmpty) ...[
                    Text(
                      section.title,
                      textAlign: TextAlign.right,
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s12.sp,
                        color: ColorManager.textSecondary,
                      ),
                    ),
                    Gap(AppSize.s8.h),
                  ],
                  _buildOptionsForStyle(section.options),
                ],
              ),
            );
          }).toList(),
    );
  }

  List<OrderMenuOptionModel> get _selectedOptions {
    return visibleOptions
        .where((option) => selectedIds.contains(option.optionId))
        .toList();
  }

  Widget _buildOptionsForStyle(List<OrderMenuOptionModel> options) {
    switch (group.displayStyle) {
      case 'radio_cards':
        return Column(
          children:
              options
                  .map(
                    (option) => Padding(
                      padding: EdgeInsetsDirectional.only(
                        bottom: AppPadding.p8.h,
                      ),
                      child: _optionTile(option),
                    ),
                  )
                  .toList(),
        );
      case 'checkbox_grid':
        return Wrap(
          spacing: AppSize.s8.w,
          runSpacing: AppSize.s8.h,
          alignment: WrapAlignment.end,
          children:
              options
                  .map(
                    (option) => SizedBox(
                      width: AppSize.s150.w,
                      child: _optionTile(option),
                    ),
                  )
                  .toList(),
        );
      case 'stepper':
      case 'chips':
      default:
        return Wrap(
          spacing: AppSize.s8.w,
          runSpacing: AppSize.s8.h,
          alignment: WrapAlignment.end,
          children: options.map(_optionChipWithWeight).toList(),
        );
    }
  }

  Widget _optionTile(OrderMenuOptionModel option) {
    final isSelected = selectedIds.contains(option.optionId);
    final maxReached =
        _hasReachedMaxSelections(selectedIds.length, group.maxSelections) &&
        !isSelected;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        _BuilderSearchOptionTile(
          option: option,
          currency: currency,
          isSelected: isSelected,
          isDisabled: maxReached,
          onTap: () => onToggle(option.optionId),
        ),
        if (isSelected && option.extraWeightUnitGrams > 0)
          _extraWeightSelector(option),
      ],
    );
  }

  Widget _optionChipWithWeight(OrderMenuOptionModel option) {
    final isSelected = selectedIds.contains(option.optionId);
    final maxReached =
        _hasReachedMaxSelections(selectedIds.length, group.maxSelections) &&
        !isSelected;
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
          _extraWeightSelector(option),
      ],
    );
  }

  Widget _extraWeightSelector(OrderMenuOptionModel option) {
    return Padding(
      padding: EdgeInsetsDirectional.only(top: AppPadding.p8.h),
      child: _InlineExtraWeightSelector(
        value:
            extraWeightByOptionId[option.optionId] ??
            option.extraWeightUnitGrams,
        step: option.extraWeightUnitGrams,
        onDecrease:
            () => onExtraWeightChanged(option, -option.extraWeightUnitGrams),
        onIncrease:
            () => onExtraWeightChanged(option, option.extraWeightUnitGrams),
      ),
    );
  }
}

class _DropdownOptionPicker extends StatelessWidget {
  final OrderMenuOptionGroupModel group;
  final List<OrderMenuOptionModel> selectedOptions;
  final String ruleText;
  final VoidCallback onTap;

  const _DropdownOptionPicker({
    required this.group,
    required this.selectedOptions,
    required this.ruleText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final label =
        selectedOptions.isEmpty
            ? ruleText
            : selectedOptions.map((option) => option.name).join(', ');
    return InkWell(
      onTap: onTap,
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
            const Icon(Icons.keyboard_arrow_down_rounded),
            Gap(AppSize.s10.w),
            Expanded(
              child: Text(
                label,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.right,
                style: getRegularTextStyle(
                  fontSize: FontSizeManager.s12.sp,
                  color: ColorManager.textSecondary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _GroupSearchPickerSheet extends StatefulWidget {
  const _GroupSearchPickerSheet({
    required this.group,
    required this.currency,
    required this.options,
    required this.groupRuleText,
    required this.getSelectedIds,
    required this.getExtraWeight,
    required this.onToggleOption,
    required this.onDecreaseExtraWeight,
    required this.onIncreaseExtraWeight,
  });

  final OrderMenuOptionGroupModel group;
  final String currency;
  final List<OrderMenuOptionModel> options;
  final String groupRuleText;
  final Set<String> Function() getSelectedIds;
  final int Function(OrderMenuOptionModel option) getExtraWeight;
  final void Function(String optionId) onToggleOption;
  final void Function(OrderMenuOptionModel option) onDecreaseExtraWeight;
  final void Function(OrderMenuOptionModel option) onIncreaseExtraWeight;

  @override
  State<_GroupSearchPickerSheet> createState() =>
      _GroupSearchPickerSheetState();
}

class _GroupSearchPickerSheetState extends State<_GroupSearchPickerSheet> {
  final TextEditingController _controller = TextEditingController();
  String _query = '';

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final visibleOptions =
        widget.options
            .where(
              (option) =>
                  _query.isEmpty ||
                  option.name.toLowerCase().contains(
                    _query.trim().toLowerCase(),
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
                  margin: EdgeInsetsDirectional.only(top: AppPadding.p12.h),
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
                      widget.group.name,
                      textAlign: TextAlign.right,
                      style: getBoldTextStyle(
                        fontSize: FontSizeManager.s18.sp,
                        color: const Color(0xFF112B22),
                      ),
                    ),
                    Gap(AppSize.s4.h),
                    Text(
                      widget.groupRuleText,
                      textAlign: TextAlign.right,
                      style: getRegularTextStyle(
                        fontSize: FontSizeManager.s12.sp,
                        color: ColorManager.textSecondary,
                      ),
                    ),
                    Gap(AppSize.s14.h),
                    TextField(
                      controller: _controller,
                      textAlign: TextAlign.right,
                      autocorrect: false,
                      decoration: InputDecoration(
                        hintText: Strings.builderSearchIn.tr(
                          namedArgs: {'group': widget.group.name},
                        ),
                        hintStyle: getRegularTextStyle(
                          fontSize: FontSizeManager.s12.sp,
                          color: ColorManager.textMuted,
                        ),
                        prefixIcon: const Icon(Icons.search_rounded),
                        filled: true,
                        fillColor: const Color(0xFFF9FCFA),
                        contentPadding: EdgeInsetsDirectional.symmetric(
                          horizontal: AppPadding.p13.w,
                          vertical: AppPadding.p12.h,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(AppSize.s15.r),
                          borderSide: const BorderSide(
                            color: Color(0xFFE5E7EB),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(AppSize.s15.r),
                          borderSide: const BorderSide(
                            color: Color(0xFFE5E7EB),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(AppSize.s15.r),
                          borderSide: const BorderSide(
                            color: Color(0xFF10B981),
                          ),
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _query = value;
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
                          separatorBuilder: (_, __) => Gap(AppSize.s10.h),
                          itemBuilder: (context, index) {
                            final option = visibleOptions[index];
                            final selectedIds = widget.getSelectedIds();
                            final isSelected = selectedIds.contains(
                              option.optionId,
                            );
                            final maxReached =
                                _hasReachedMaxSelections(
                                  selectedIds.length,
                                  widget.group.maxSelections,
                                ) &&
                                !isSelected;

                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                _BuilderSearchOptionTile(
                                  option: option,
                                  currency: widget.currency,
                                  isSelected: isSelected,
                                  isDisabled: maxReached,
                                  onTap: () {
                                    widget.onToggleOption(option.optionId);
                                    if (!mounted) {
                                      return;
                                    }
                                    setState(() {});
                                  },
                                ),
                                if (isSelected &&
                                    option.extraWeightUnitGrams > 0)
                                  Padding(
                                    padding: EdgeInsetsDirectional.only(
                                      top: AppPadding.p8.h,
                                    ),
                                    child: _InlineExtraWeightSelector(
                                      value: widget.getExtraWeight(option),
                                      step: option.extraWeightUnitGrams,
                                      onDecrease: () {
                                        widget.onDecreaseExtraWeight(option);
                                        if (!mounted) {
                                          return;
                                        }
                                        setState(() {});
                                      },
                                      onIncrease: () {
                                        widget.onIncreaseExtraWeight(option);
                                        if (!mounted) {
                                          return;
                                        }
                                        setState(() {});
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
            isSelected
                ? const Color(0xFF0B241C)
                : ColorManager.backgroundSurface,
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
                    isSelected
                        ? const Color(0xFF0B241C)
                        : const Color(0xFFE5E7EB),
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
  final String? imageUrl;
  final String initials;

  const _BuilderHeroImage({required this.imageUrl, required this.initials});

  @override
  Widget build(BuildContext context) {
    final resolvedImageUrl = _resolveImageUrl(imageUrl);

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
  final List<OrderMenuProductModel> products;

  const _MenuSectionData({
    required this.key,
    required this.title,
    required this.products,
    this.subtitle,
  });
}

class _OptionSectionData {
  final String title;
  final List<OrderMenuOptionModel> options;

  const _OptionSectionData({required this.title, required this.options});
}

CartItem? _directCartItem(CartState state, String productId) {
  if (state is! CartLoaded) {
    return null;
  }

  for (final item in state.items) {
    if (item.productId == productId &&
        item.selectedOptions.isEmpty &&
        item.weightGrams == null) {
      return item;
    }
  }

  return null;
}

List<_OptionSectionData> _optionSections(
  OrderMenuOptionGroupModel group,
  List<OrderMenuOptionModel> options,
) {
  if (group.optionSections.isEmpty) {
    return [const _OptionSectionData(title: '', options: [])]
        .map(
          (section) =>
              _OptionSectionData(title: section.title, options: options),
        )
        .toList();
  }

  final optionsById = {
    for (final option in options) option.optionId: option,
    for (final option in options) option.id: option,
  };
  final usedIds = <String>{};
  final sections = <_OptionSectionData>[];
  final sortedSections = [...group.optionSections]
    ..sort((a, b) => a.sortOrder.compareTo(b.sortOrder));

  for (final section in sortedSections) {
    final sectionOptions = <OrderMenuOptionModel>[];
    for (final optionId in section.optionIds) {
      final option = optionsById[optionId];
      if (option != null && !sectionOptions.contains(option)) {
        sectionOptions.add(option);
        usedIds.add(option.optionId);
        usedIds.add(option.id);
      }
    }

    if (sectionOptions.isEmpty && section.proteinFamilyKey.isNotEmpty) {
      for (final option in options) {
        if (option.proteinFamilyKey == section.proteinFamilyKey) {
          sectionOptions.add(option);
          usedIds.add(option.optionId);
          usedIds.add(option.id);
        }
      }
    }

    if (sectionOptions.isEmpty) {
      continue;
    }

    sections.add(
      _OptionSectionData(
        title: section.name.isNotEmpty ? section.name : section.key,
        options: sectionOptions,
      ),
    );
  }

  final unsectioned =
      options
          .where(
            (option) =>
                !usedIds.contains(option.optionId) &&
                !usedIds.contains(option.id),
          )
          .toList();
  if (unsectioned.isNotEmpty) {
    sections.add(_OptionSectionData(title: '', options: unsectioned));
  }

  return sections.isEmpty
      ? [_OptionSectionData(title: '', options: options)]
      : sections;
}

Future<void> _openCart(BuildContext context) async {
  if (!await requireAuthenticated(context)) {
    return;
  }

  if (!context.mounted) {
    return;
  }

  context.push('/cart');
}

String _formatHalala(int halala, String currency) {
  final value = halala / 100;
  final display =
      value % 1 == 0 ? value.toStringAsFixed(0) : value.toStringAsFixed(2);
  return '$display $currency';
}

String _productPriceLabel(OrderMenuProductModel product, String currency) {
  final price = _formatHalala(product.priceHalala, currency);
  if (product.pricingModel == 'per_100g') {
    return '$price / ${Strings.grams.tr(args: ['100'])}';
  }
  return price;
}

bool _hasReachedMaxSelections(int selectedCount, int? maxSelections) {
  return maxSelections != null && selectedCount >= maxSelections;
}

String _selectionCountLabel(int selectedCount, int? maxSelections) {
  if (maxSelections == null) {
    return selectedCount.toString();
  }
  return '$selectedCount/$maxSelections';
}

String _productCtaLabel(OrderMenuProductModel product, BuildContext context) {
  final ctaLabel = product.ctaLabel.trim();
  if (ctaLabel.isNotEmpty) {
    final translated = ctaLabel.tr();
    return translated == ctaLabel ? ctaLabel : translated;
  }
  if (product.resolvedRequiresBuilder) {
    return Strings.startCustomization.tr();
  }
  return Strings.addToCart.tr();
}

String _initials(String value, BuildContext context) {
  final cleaned = value.trim();
  if (cleaned.isEmpty) {
    return context.locale.languageCode == 'ar' ? 'ب' : 'B';
  }

  final words = cleaned.split(' ').where((part) => part.isNotEmpty).toList();
  if (words.length == 1) {
    return words.first.characters.take(2).toString();
  }
  return words.take(2).map((word) => word.characters.first).join();
}

String _productDescription(
  OrderMenuProductModel product,
  BuildContext context,
) {
  final localeCode = context.locale.toString();
  final backendDescription = product.displayDescription(
    localeCode,
    fallback: '',
  );
  if (backendDescription.trim().isNotEmpty) {
    return backendDescription;
  }

  return Strings.customOrderSubtitle.tr();
}
