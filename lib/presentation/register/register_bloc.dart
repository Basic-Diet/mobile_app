import 'package:basic_diet/app/app_pref.dart';
import 'package:basic_diet/app/toast_handeller.dart';
import 'package:basic_diet/domain/usecase/register_usecase.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'register_event.dart';
import 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterUseCase _registerUseCase;

  RegisterBloc(this._registerUseCase, AppPreferences _appPreferences)
    : super(const RegisterFormInitialState()) {
    on<RegisterFullNameChanged>(_onFullNameChanged);
    on<RegisterPhoneChanged>(_onPhoneChanged);
    on<RegisterPasswordChanged>(_onPasswordChanged);
    on<RegisterConfirmPasswordChanged>(_onConfirmPasswordChanged);
    on<RegisterEmailChanged>(_onEmailChanged);
    on<RegisterSubmitted>(_onSubmitted);
  }

  void _onFullNameChanged(
    RegisterFullNameChanged event,
    Emitter<RegisterState> emit,
  ) {
    final error = _validateFullName(event.fullName);
    emit(state.copyWith(fullName: event.fullName, fullNameError: error));
  }

  void _onPhoneChanged(
    RegisterPhoneChanged event,
    Emitter<RegisterState> emit,
  ) {
    final error = _validatePhone(event.phone);
    emit(state.copyWith(phone: event.phone, phoneError: error));
  }

  void _onPasswordChanged(
    RegisterPasswordChanged event,
    Emitter<RegisterState> emit,
  ) {
    final passwordError = _validatePassword(event.password);
    final confirmPasswordError =
        event.confirmPassword.isEmpty
            ? state.confirmPasswordError
            : _validateConfirmPassword(
              event.confirmPassword,
              event.password,
            );

    emit(
      state.copyWith(
        isPasswordNotEmpty: event.password.isNotEmpty,
        passwordError: passwordError,
        confirmPasswordError: confirmPasswordError,
      ),
    );
  }

  void _onConfirmPasswordChanged(
    RegisterConfirmPasswordChanged event,
    Emitter<RegisterState> emit,
  ) {
    final error = _validateConfirmPassword(
      event.confirmPassword,
      event.password,
    );
    emit(
      state.copyWith(
        isConfirmPasswordNotEmpty: event.confirmPassword.isNotEmpty,
        confirmPasswordError: error,
      ),
    );
  }

  void _onEmailChanged(
    RegisterEmailChanged event,
    Emitter<RegisterState> emit,
  ) {
    final error = _validateEmail(event.email);
    emit(state.copyWith(email: event.email, emailError: error));
  }

  Future<void> _onSubmitted(
    RegisterSubmitted event,
    Emitter<RegisterState> emit,
  ) async {
    final phone = event.phone.trim();
    final email = event.email.trim();
    final phoneError = _validatePhone(phone);
    final passwordError = _validatePassword(event.password);
    final confirmPasswordError = _validateConfirmPassword(
      event.confirmPassword,
      event.password,
    );
    final emailError = _validateEmail(email);

    if (phoneError != null ||
        passwordError != null ||
        confirmPasswordError != null ||
        emailError != null) {
      emit(
        state.copyWith(
          phone: phone,
          phoneError: phoneError,
          isPasswordNotEmpty: event.password.isNotEmpty,
          passwordError: passwordError,
          isConfirmPasswordNotEmpty: event.confirmPassword.isNotEmpty,
          confirmPasswordError: confirmPasswordError,
          email: email,
          emailError: emailError,
        ),
      );
      return;
    }

    emit(
      RegisterLoadingState(
        fullName: state.fullName,
        phone: phone,
        isPasswordNotEmpty: event.password.isNotEmpty,
        isConfirmPasswordNotEmpty: event.confirmPassword.isNotEmpty,
        email: email,
      ),
    );

    final result = await _registerUseCase.execute(
      RegisterUseCaseInput(
        phone: _buildSaudiPhoneNumber(phone),
      ),
    );

    await result.fold(
      (failure) async {
        if (!isClosed) {
          emit(
            RegisterErrorState(
              failure.message,
              fullName: state.fullName,
              phone: phone,
              isPasswordNotEmpty: event.password.isNotEmpty,
              isConfirmPasswordNotEmpty: event.confirmPassword.isNotEmpty,
              email: email,
            ),
          );
        }
        showToast(message: failure.message, state: ToastStates.error);
      },
      (data) async {
        if (!isClosed) {
          emit(
            RegisterCompletedState(
              fullName: state.fullName,
              phone: phone,
              email: email,
            ),
          );
        }
        showToast(message: Strings.otpSent.tr(), state: ToastStates.success);
      },
    );
  }

  String? _validateFullName(String fullName) {
    if (fullName.isEmpty) return Strings.fullNameRequired.tr();
    return null;
  }

  String? _validatePhone(String phone) {
    if (phone.isEmpty) return Strings.phoneRequired.tr();
    if (phone.length < 9) return Strings.phoneTooShort.tr();
    return null;
  }

  String? _validatePassword(String password) {
    if (password.isEmpty) return Strings.passwordRequired.tr();
    if (password.length < 8) return Strings.passwordTooShort.tr();
    final hasLetter = password.contains(RegExp(r'[a-zA-Z]'));
    final hasNumber = password.contains(RegExp(r'[0-9]'));
    if (!hasLetter || !hasNumber) {
      return Strings.passwordComplexity.tr();
    }
    return null;
  }

  String? _validateConfirmPassword(String confirmPassword, String password) {
    if (confirmPassword.isEmpty) return Strings.confirmPasswordRequired.tr();
    if (confirmPassword != password) return Strings.passwordMismatch.tr();
    return null;
  }

  String? _validateEmail(String email) {
    if (email.isNotEmpty && !email.contains("@")) {
      return Strings.invalidEmail.tr();
    }
    return null;
  }

  String _buildSaudiPhoneNumber(String phone) {
    final trimmedPhone = phone.trim();
    if (trimmedPhone.startsWith('+966')) {
      return trimmedPhone;
    }
    return '+966$trimmedPhone';
  }
}
