abstract class HomeEvent {}

class GetPopularPackagesEvent extends HomeEvent {}

class ViewPlansRequestedEvent extends HomeEvent {}

class WarmOrderMenuRequestedEvent extends HomeEvent {}

class OpenBuilderShortcutRequestedEvent extends HomeEvent {
  final String productKey;

  OpenBuilderShortcutRequestedEvent(this.productKey);
}
