import 'package:basic_diet/domain/model/addon_subscription_options_model.dart';
import 'package:equatable/equatable.dart';

sealed class AddOnsState extends Equatable {
  const AddOnsState();

  @override
  List<Object?> get props => [];
}

final class AddOnsInitial extends AddOnsState {
  const AddOnsInitial();
}

final class AddOnsLoading extends AddOnsState {
  const AddOnsLoading();
}

final class AddOnsSuccess extends AddOnsState {
  final AddonSubscriptionOptionsModel options;
  final Set<AddonSubscriptionOptionModel> selectedAddOns;

  const AddOnsSuccess(this.options, {this.selectedAddOns = const {}});

  AddOnsSuccess copyWith({
    AddonSubscriptionOptionsModel? options,
    Set<AddonSubscriptionOptionModel>? selectedAddOns,
  }) {
    return AddOnsSuccess(
      options ?? this.options,
      selectedAddOns: selectedAddOns ?? this.selectedAddOns,
    );
  }

  @override
  List<Object?> get props => [options, selectedAddOns];
}

final class AddOnsError extends AddOnsState {
  final String message;
  final Object? code;

  const AddOnsError(this.message, {this.code});

  @override
  List<Object?> get props => [message, code];
}
