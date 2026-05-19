import 'package:basic_diet/domain/usecase/request_password_reset_otp_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'forgot_password_event.dart';
import 'forgot_password_state.dart';

class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  final RequestPasswordResetOtpUseCase _requestOtpUseCase;

  ForgotPasswordBloc(this._requestOtpUseCase)
      : super(const ForgotPasswordState()) {
    on<ForgotPasswordPhoneChanged>(_onPhoneChanged);
    on<ForgotPasswordSubmitted>(_onSubmitted);
  }

  void _onPhoneChanged(
    ForgotPasswordPhoneChanged event,
    Emitter<ForgotPasswordState> emit,
  ) {
    emit(state.copyWith(phone: event.phone));
  }

  Future<void> _onSubmitted(
    ForgotPasswordSubmitted event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    emit(state.copyWith(status: ForgotPasswordStatus.loading));

    final result = await _requestOtpUseCase.execute(state.phone);

    result.fold(
      (failure) {
        if (!isClosed) {
          emit(
            state.copyWith(
              status: ForgotPasswordStatus.failure,
              errorMessage: failure.message,
            ),
          );
        }
      },
      (_) {
        if (!isClosed) {
          emit(state.copyWith(status: ForgotPasswordStatus.success));
        }
      },
    );
  }
}
