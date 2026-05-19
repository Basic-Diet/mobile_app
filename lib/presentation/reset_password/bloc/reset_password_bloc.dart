import 'package:basic_diet/domain/usecase/reset_password_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'reset_password_event.dart';
import 'reset_password_state.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  final ResetPasswordUseCase _resetPasswordUseCase;
  final String phone;

  ResetPasswordBloc(this._resetPasswordUseCase, {required this.phone})
      : super(const ResetPasswordState()) {
    on<ResetPasswordOtpChanged>(_onOtpChanged);
    on<ResetPasswordNewPasswordChanged>(_onNewPasswordChanged);
    on<ResetPasswordSubmitted>(_onSubmitted);
  }

  void _onOtpChanged(
    ResetPasswordOtpChanged event,
    Emitter<ResetPasswordState> emit,
  ) {
    emit(state.copyWith(otp: event.otp));
  }

  void _onNewPasswordChanged(
    ResetPasswordNewPasswordChanged event,
    Emitter<ResetPasswordState> emit,
  ) {
    emit(state.copyWith(newPassword: event.newPassword));
  }

  Future<void> _onSubmitted(
    ResetPasswordSubmitted event,
    Emitter<ResetPasswordState> emit,
  ) async {
    emit(state.copyWith(status: ResetPasswordStatus.loading));

    final result = await _resetPasswordUseCase.execute(
      ResetPasswordInput(
        phone: phone,
        otp: state.otp,
        newPassword: state.newPassword,
      ),
    );

    result.fold(
      (failure) {
        if (!isClosed) {
          emit(
            state.copyWith(
              status: ResetPasswordStatus.failure,
              errorMessage: failure.message,
            ),
          );
        }
      },
      (_) {
        if (!isClosed) {
          emit(state.copyWith(status: ResetPasswordStatus.success));
        }
      },
    );
  }
}
