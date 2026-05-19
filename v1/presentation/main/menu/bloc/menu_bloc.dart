import 'package:basic_diet/domain/usecase/get_order_menu_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'menu_event.dart';
import 'menu_state.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  final GetOrderMenuUseCase _getOrderMenuUseCase;

  MenuBloc(this._getOrderMenuUseCase) : super(const MenuInitial()) {
    on<LoadMenuEvent>(_onLoadMenu);
    on<RetryMenuEvent>(_onLoadMenu);
  }

  Future<void> _onLoadMenu(MenuEvent event, Emitter<MenuState> emit) async {
    emit(const MenuLoading());
    final result = await _getOrderMenuUseCase.execute(null);
    result.fold(
      (failure) {
        if (!isClosed) {
          emit(MenuError(failure.message));
        }
      },
      (menu) {
        if (!isClosed) {
          emit(MenuSuccess(menu));
        }
      },
    );
  }
}
