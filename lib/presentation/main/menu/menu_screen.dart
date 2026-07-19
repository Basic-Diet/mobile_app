import 'package:basic_diet/app/auth_gate.dart';
import 'package:basic_diet/app/dependency_injection.dart';
import 'package:basic_diet/domain/model/order_menu_model.dart';
import 'package:basic_diet/presentation/main/cart/bloc/cart_bloc.dart';
import 'package:basic_diet/presentation/main/cart/bloc/cart_event.dart';
import 'package:basic_diet/presentation/main/menu/bloc/menu_bloc.dart';
import 'package:basic_diet/presentation/main/menu/bloc/menu_event.dart';
import 'package:basic_diet/presentation/main/menu/bloc/menu_state.dart';
import 'package:basic_diet/presentation/main/menu/menu_navigation_intent.dart';
import 'package:basic_diet/presentation/main/menu/models/menu_models.dart';
import 'package:basic_diet/presentation/main/menu/widgets/dynamic_section.dart';
import 'package:basic_diet/presentation/main/menu/widgets/menu_chips_row.dart';
import 'package:basic_diet/presentation/main/menu/widgets/menu_error_view.dart';
import 'package:basic_diet/presentation/main/menu/widgets/menu_header.dart';
import 'package:basic_diet/presentation/main/menu/widgets/menu_search_field.dart';
import 'package:basic_diet/presentation/main/menu/widgets/pickup_notice_card.dart';
import 'package:basic_diet/presentation/main/menu/widgets/sticky_cart_bar.dart';
import 'package:basic_diet/presentation/main/menu/widgets/builder/builder_screen.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

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
  List<MenuChipData> _currentChips = [];
  double _hideThreshold = 0.0;
  double _accumulatedDelta = 0.0;
  bool _isHandlingMenuIntent = false;

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
    if (_isHandlingMenuIntent) {
      return;
    }

    final menuState = context.read<MenuBloc>().state;
    if (menuState is! MenuSuccess) {
      return;
    }

    final intent = OneTimeMenuCoordinator.intent.value;
    if (intent == null) {
      return;
    }

    _isHandlingMenuIntent = true;
    OneTimeMenuCoordinator.clear();

    try {
      if (intent.sectionKey != null) {
        _selectSection(intent.sectionKey!);
      }

      if (intent.productKey != null) {
        final product = _findProductByKey(menuState.menu, intent.productKey!);
        if (product != null) {
          await _handleProductSelection(product, menuState.menu.currency);
        }
      }
    } finally {
      _isHandlingMenuIntent = false;
    }
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
    final chipIndex = _currentChips.indexWhere(
      (chip) => chip.key == _activeChip,
    );
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
    if ((delta > 0 && _accumulatedDelta < 0) ||
        (delta < 0 && _accumulatedDelta > 0)) {
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
    if (_accumulatedDelta > AppSize.s10.h &&
        _showMenuIntro &&
        offset > _hideThreshold) {
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
        builder: (_) => BuilderScreen(product: product, currency: currency),
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

  List<MenuSectionData> _buildDirectSections(OrderMenuModel menu) {
    final sections = <MenuSectionData>[];

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
        MenuSectionData(
          key: category.key,
          title: category.name,
          subtitle: _sectionSubtitle(category),
          products: actionableProducts,
        ),
      );
    }

    return sections;
  }

  List<MenuChipData> _buildChips(List<MenuSectionData> sections) {
    final chips = <MenuChipData>[
      MenuChipData(key: 'all', label: Strings.all.tr()),
    ];

    for (final section in sections) {
      chips.add(MenuChipData(key: section.key, label: section.title));
    }

    return chips;
  }

  String? _sectionSubtitle(OrderMenuCategoryModel category) {
    if (category.cardVariant == 'sandwich_collection') {
      return Strings.coldSandwichesSubtitle.tr();
    }
    return null;
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
              return MenuErrorView(message: state.message);
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
              return MenuErrorView(message: Strings.noProductsAvailable.tr());
            }

            final sections = _buildDirectSections(menu);
            if (sections.isEmpty) {
              return MenuErrorView(message: Strings.noProductsAvailable.tr());
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
                                      const MenuHeader(),
                                      Gap(AppSize.s12.h),
                                      const PickupNoticeCard(),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Gap(AppSize.s10.h),
                          MenuSearchField(
                            controller: _searchController,
                            onChanged: (value) {
                              setState(() {
                                _searchQuery = value.trim().toLowerCase();
                              });
                            },
                          ),
                          Gap(AppSize.s10.h),
                          MenuChipsRow(
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
                                      child: DynamicSection(
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
                StickyCartBar(currency: menu.currency),
              ],
            );
          },
        ),
      ),
    );
  }
}
