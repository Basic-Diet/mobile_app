import 'package:basic_diet/app/app_pref.dart';
import 'package:basic_diet/app/toast_handeller.dart';
import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/usecase/login_usecase.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase _loginUseCase;
  final AppPreferences _appPreferences;

  LoginBloc(this._loginUseCase, this._appPreferences)
    : super(const LoginFormInitialState()) {
    on<LoginPhoneChanged>(_onPhoneChanged);
    on<LoginPasswordChanged>(_onPasswordChanged);
    on<LoginSubmitted>(_onSubmitted);
  }

  void _onPhoneChanged(LoginPhoneChanged event, Emitter<LoginState> emit) {
    final error = _validatePhone(event.phone);
    emit(state.copyWith(phone: event.phone, phoneError: error));
  }

  void _onPasswordChanged(
    LoginPasswordChanged event,
    Emitter<LoginState> emit,
  ) {
    final error = _validatePassword(event.password);
    emit(
      state.copyWith(
        isPasswordNotEmpty: event.password.isNotEmpty,
        passwordError: error,
      ),
    );
  }

  Future<void> _onSubmitted(
    LoginSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    final phoneError = _validatePhone(state.phone);
    final passwordError = _validatePassword(event.password);
    if (phoneError != null || passwordError != null) {
      emit(
        state.copyWith(
          phoneError: phoneError,
          isPasswordNotEmpty: event.password.isNotEmpty,
          passwordError: passwordError,
        ),
      );
      return;
    }

    final fullPhone = _buildSaudiPhoneNumber(state.phone);
    emit(
      LoginLoadingState(
        phone: state.phone,
        isPasswordNotEmpty: event.password.isNotEmpty,
      ),
    );

    final result = await _loginUseCase.execute(
      LoginUseCaseInput(fullPhone, event.password),
    );

    await result.fold(
      (failure) async {
        final message = _localizedFailureMessage(failure);
        if (!isClosed) {
          emit(
            LoginErrorState(
              message,
              phone: state.phone,
              isPasswordNotEmpty: event.password.isNotEmpty,
            ),
          );
        }
        showToast(message: message, state: ToastStates.error);
      },
      (data) async {
        if (data.accessToken.isEmpty || data.refreshToken.isEmpty) {
          final message = Strings.defaultError.tr();
          if (!isClosed) {
            emit(
              LoginErrorState(
                message,
                phone: state.phone,
                isPasswordNotEmpty: event.password.isNotEmpty,
              ),
            );
          }
          showToast(message: message, state: ToastStates.error);
          return;
        }

        await _appPreferences.saveSession(
          accessToken: data.accessToken,
          refreshToken: data.refreshToken,
          expiresIn: data.expiresIn,
        );

        if (!isClosed) {
          if (data.user?.forcePasswordChange == true) {
            emit(LoginForcePasswordChangeRequiredState(phone: state.phone));
          } else {
            emit(LoginSuccessState(phone: state.phone));
            showToast(message: Strings.success.tr(), state: ToastStates.success);
          }
        }
      },
    );
  }

  String? _validatePhone(String phone) {
    if (phone.isEmpty) return Strings.phoneRequired.tr();
    if (phone.length < 9) return Strings.phoneTooShort.tr();
    return null;
  }

  String? _validatePassword(String password) {
    if (password.isEmpty) return Strings.passwordRequired.tr();
    if (password.length < 8) return Strings.passwordTooShort.tr();
    return null;
  }

  String _localizedFailureMessage(Failure failure) {
    if (failure.code == 'INVALID_CREDENTIALS') {
      return Strings.invalidCredentials.tr();
    }
    return failure.message;
  }

  String _buildSaudiPhoneNumber(String phone) {
    final trimmedPhone = phone.trim();
    if (trimmedPhone.startsWith('+966')) {
      return trimmedPhone;
    }
    return '+966$trimmedPhone';
  }
}
