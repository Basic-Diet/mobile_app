import 'package:basic_diet/domain/model/order_menu_model.dart';
import 'package:basic_diet/domain/usecase/get_current_subscription_overview_usecase.dart';
import 'package:basic_diet/domain/usecase/get_order_menu_usecase.dart';
import 'package:basic_diet/domain/usecase/get_popular_packages_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetPopularPackagesUseCase _getPopularPackagesUseCase;
  final GetCurrentSubscriptionOverviewUseCase
  _getCurrentSubscriptionOverviewUseCase;
  final GetOrderMenuUseCase _getOrderMenuUseCase;
  OrderMenuModel? _orderMenu;

  HomeBloc(
    this._getPopularPackagesUseCase,
    this._getCurrentSubscriptionOverviewUseCase,
    this._getOrderMenuUseCase,
  ) : super(HomeInitialState()) {
    on<GetPopularPackagesEvent>((event, emit) async {
      emit(HomeLoadingState());
      (await _getPopularPackagesUseCase.execute(null)).fold(
        (failure) {
          if (!isClosed) {
            emit(HomeErrorState(failure.message));
          }
        },
        (data) {
          if (!isClosed) {
            emit(HomePopularPackagesSuccessState(data));
          }
        },
      );
    });

    on<ViewPlansRequestedEvent>((event, emit) async {
      emit(
        HomeNavigateToSubscriptionState(),
      );
    });

    on<WarmOrderMenuRequestedEvent>((event, emit) async {
      if (_orderMenu != null) {
        return;
      }

      (await _getOrderMenuUseCase.execute(null)).fold(
        (_) {},
        (menu) {
          _orderMenu = menu;
        },
      );
    });

    on<OpenBuilderShortcutRequestedEvent>((event, emit) async {
      final cachedMenu = _orderMenu;
      if (cachedMenu != null) {
        _emitOpenProductState(event.productKey, cachedMenu, emit);
        return;
      }

      (await _getOrderMenuUseCase.execute(null)).fold(
        (failure) {
          if (!isClosed) {
            emit(HomeErrorState(failure.message));
          }
        },
        (menu) {
          _orderMenu = menu;
          _emitOpenProductState(event.productKey, menu, emit);
        },
      );
    });

    add(WarmOrderMenuRequestedEvent());
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

  void _emitOpenProductState(
    String productKey,
    OrderMenuModel menu,
    Emitter<HomeState> emit,
  ) {
    final product = _findProductByKey(menu, productKey);

    if (!isClosed && product != null) {
      emit(
        HomeOpenOrderProductState(
          product: product,
          currency: menu.currency,
        ),
      );
    }
  }
}
