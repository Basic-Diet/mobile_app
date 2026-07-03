import 'package:basic_diet/domain/usecase/request_password_reset_otp_usecase.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:easy_localization/easy_localization.dart';
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
    emit(state.copyWith(phone: event.phone.trim(), errorMessage: null));
  }

  Future<void> _onSubmitted(
    ForgotPasswordSubmitted event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    final phoneError = _validatePhone(state.phone);
    if (phoneError != null) {
      emit(
        state.copyWith(
          status: ForgotPasswordStatus.failure,
          errorMessage: phoneError,
        ),
      );
      return;
    }

    final phone = _buildSaudiPhoneNumber(state.phone);

    emit(state.copyWith(status: ForgotPasswordStatus.loading));

    final result = await _requestOtpUseCase.execute(phone);

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
          emit(
            state.copyWith(
              status: ForgotPasswordStatus.success,
              phone: phone,
            ),
          );
        }
      },
    );
  }

  String? _validatePhone(String phone) {
    if (phone.isEmpty) return Strings.phoneRequired.tr();
    if (phone.length < 9) return Strings.phoneTooShort.tr();
    return null;
  }

  String _buildSaudiPhoneNumber(String phone) {
    final trimmedPhone = phone.trim();
    if (trimmedPhone.startsWith('+')) return trimmedPhone;
    if (trimmedPhone.startsWith('966')) return '+$trimmedPhone';
    if (trimmedPhone.startsWith('0')) {
      return '+966${trimmedPhone.substring(1)}';
    }
    return '+966$trimmedPhone';
  }
}
