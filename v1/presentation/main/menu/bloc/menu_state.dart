import 'package:equatable/equatable.dart';
import 'package:basic_diet/domain/model/order_menu_model.dart';

abstract class MenuState extends Equatable {
  const MenuState();

  @override
  List<Object?> get props => [];
}

class MenuInitial extends MenuState {
  const MenuInitial();
}

class MenuLoading extends MenuState {
  const MenuLoading();
}

class MenuSuccess extends MenuState {
  final OrderMenuModel menu;

  const MenuSuccess(this.menu);

  @override
  List<Object?> get props => [menu];
}

class MenuError extends MenuState {
  final String message;

  const MenuError(this.message);

  @override
  List<Object?> get props => [message];
}
