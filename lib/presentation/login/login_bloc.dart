import 'package:basic_diet/app/toast_handeller.dart';
import 'package:basic_diet/app/app_pref.dart';
import 'package:basic_diet/domain/usecase/login_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_event.dart';
import 'login_state.dart';

// The LoginBloc is the Main Logic Center (The Kitchen).
// It sits between your UI (The customer ordering food) and your Data (The pantry/suppliers).

// It extends Bloc
// You must define:
//    Input: LoginEvent (What comes in?)
//    Output: LoginState (What goes out?)

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase _loginUseCase;
  final AppPreferences _appPreferences;

  // 1. Constructor & Initial State
  // We pass the initial state to the superclass.
  // We start with LoginFormInitialState because the screen should initially show an empty form.
  LoginBloc(this._loginUseCase, this._appPreferences)
    : super(const LoginFormInitialState()) {
    // 2. Event Handlers (The "Recipes")
    // We register "Listeners" for each event.
    // "When you see LoginPhoneChanged, run this function..."
    on<LoginPhoneChanged>(_onPhoneChanged);
    on<LoginPasswordChanged>(_onPasswordChanged);
    // "When you see LoginSubmitted, run this function..."
    on<LoginSubmitted>(_onSubmitted);
  }

  // _onPhoneChanged is called whenever the user changes the phone input and a LoginPhoneChanged event is added to the Bloc. context.read<LoginBloc>().add(LoginPhoneChanged(phone));
  //
  void _onPhoneChanged(LoginPhoneChanged event, Emitter<LoginState> emit) {
    final error = _validatePhone(event.phone);
    // what is emit? emit is a function that is called to emit a new state إصدار حالة جديدة.
    // what is state.copyWith? state.copyWith is a function that is called to create a new state with the same values as the old state but with the new values.
    emit(state.copyWith(phone: event.phone, phoneError: error));
  }

  void _onPasswordChanged(
    LoginPasswordChanged event,
    Emitter<LoginState> emit,
  ) {
    final error = _validatePassword(event.password);
    emit(state.copyWith(password: event.password, passwordError: error));
  }

  Future<void> _onSubmitted(
    LoginSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    final phoneError = _validatePhone(state.phone);
    final passwordError = _validatePassword(state.password);
    if (phoneError != null || passwordError != null) {
      emit(state.copyWith(phoneError: phoneError, passwordError: passwordError));
      return;
    }

    emit(LoginLoadingState(phone: state.phone, password: state.password));

    final result = await _loginUseCase.execute(
      LoginUseCaseInput(state.phone, state.password),
    );

    await result.fold(
      (failure) async {
        emit(
          LoginErrorState(
            failure.message,
            phone: state.phone,
            password: state.password,
          ),
        );
        showToast(message: failure.message, state: ToastStates.error);
      },
      (data) async {
        if (data.accessToken.isEmpty || data.refreshToken.isEmpty) {
          emit(
            LoginErrorState(
              "Token not found",
              phone: state.phone,
              password: state.password,
            ),
          );
          showToast(message: "Token not found", state: ToastStates.error);
          return;
        }

        await _appPreferences.saveSession(
          accessToken: data.accessToken,
          refreshToken: data.refreshToken,
          expiresIn: data.expiresIn,
        );
        emit(LoginSuccessState(phone: state.phone, password: state.password));
        showToast(message: "Login successful", state: ToastStates.success);
      },
    );
  }

  String? _validatePhone(String phone) {
    if (phone.isEmpty) return "Phone is required";
    if (phone.length < 9) return "Phone is too short";
    return null;
  }

  String? _validatePassword(String password) {
    if (password.isEmpty) return "Password is required";
    if (password.length < 8) return "Password is too short";
    return null;
  }
}
