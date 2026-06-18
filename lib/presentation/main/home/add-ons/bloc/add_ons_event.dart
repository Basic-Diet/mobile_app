import 'package:basic_diet/domain/model/addon_subscription_options_model.dart';
import 'package:equatable/equatable.dart';

sealed class AddOnsEvent extends Equatable {
  const AddOnsEvent();

  @override
  List<Object> get props => [];
}

final class GetAddOnsEvent extends AddOnsEvent {
  final String planId;
  final Set<String> initiallySelectedIds;

  const GetAddOnsEvent({
    required this.planId,
    this.initiallySelectedIds = const {},
  });

  @override
  List<Object> get props => [planId, initiallySelectedIds];
}

final class ToggleAddOnSelectionEvent extends AddOnsEvent {
  final AddonSubscriptionOptionModel addOn;

  const ToggleAddOnSelectionEvent(this.addOn);

  @override
  List<Object> get props => [addOn];
}
