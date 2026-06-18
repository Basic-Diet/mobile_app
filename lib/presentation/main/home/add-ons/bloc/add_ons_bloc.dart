import 'package:basic_diet/domain/model/addon_subscription_options_model.dart';
import 'package:basic_diet/domain/usecase/get_addon_subscription_options_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'add_ons_event.dart';
import 'add_ons_state.dart';

class AddOnsBloc extends Bloc<AddOnsEvent, AddOnsState> {
  final GetAddonSubscriptionOptionsUseCase _getOptionsUseCase;

  AddOnsBloc(this._getOptionsUseCase) : super(const AddOnsInitial()) {
    on<GetAddOnsEvent>(_onGetAddOns);
    on<ToggleAddOnSelectionEvent>(_onToggleSelection);
  }

  Future<void> _onGetAddOns(
    GetAddOnsEvent event,
    Emitter<AddOnsState> emit,
  ) async {
    emit(const AddOnsLoading());
    final result = await _getOptionsUseCase.execute(
      GetAddonSubscriptionOptionsInput(planId: event.planId),
    );
    result.fold(
      (failure) {
        if (!isClosed) {
          emit(AddOnsError(failure.message, code: failure.code));
        }
      },
      (options) {
        final selected =
            options.addons
                .where((addon) => event.initiallySelectedIds.contains(addon.id))
                .toSet();
        if (!isClosed) {
          emit(AddOnsSuccess(options, selectedAddOns: selected));
        }
      },
    );
  }

  void _onToggleSelection(
    ToggleAddOnSelectionEvent event,
    Emitter<AddOnsState> emit,
  ) {
    if (state is AddOnsSuccess) {
      final successState = state as AddOnsSuccess;
      final selected = Set<AddonSubscriptionOptionModel>.of(
        successState.selectedAddOns,
      );
      if (selected.contains(event.addOn)) {
        selected.remove(event.addOn);
      } else {
        selected.add(event.addOn);
      }
      emit(successState.copyWith(selectedAddOns: selected));
    }
  }
}
