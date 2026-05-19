import 'package:equatable/equatable.dart';

// The LoginState is the Screen Snapshot (What the UI should look like right now).
// It describes the condition of the Login screen at any moment.

// Base class: All specific login states inherit from this.
// Equatable: Helps Flutter/Bloc know if the state really changed, so the UI rebuilds only when needed.
abstract class LoginState extends Equatable {
  final String phone;
  final String? phoneError;
  final String password;
  final String? passwordError;

  const LoginState({
    this.phone = '',
    this.phoneError,
    this.password = '',
    this.passwordError,
  });

  LoginState copyWith({
    String? phone,
    String? phoneError,
    String? password,
    String? passwordError,
  });

  @override
  List<Object?> get props => [
    phone,
    phoneError ?? '',
    password,
    passwordError ?? '',
  ];
}

// Meaning: The screen just opened.
// UI Reaction: Show the empty form. No spinners, no error messages.
class LoginFormInitialState extends LoginState {
  const LoginFormInitialState({
    super.phone = '',
    super.phoneError,
    super.password = '',
    super.passwordError,
  });

  @override
  LoginState copyWith({
    String? phone,
    String? phoneError,
    String? password,
    String? passwordError,
  }) {
    return LoginFormInitialState(
      phone: phone ?? this.phone,
      phoneError: phoneError,
      password: password ?? this.password,
      passwordError: passwordError,
    );
  }
}

// Meaning: The user clicked "Login", and we're waiting for the server.
// UI Reaction:
//   Disable the Login button so the user doesn't click it twice.
//   Show a CircularProgressIndicator (spinner).
class LoginLoadingState extends LoginState {
  const LoginLoadingState({
    super.phone = '',
    super.phoneError,
    super.password = '',
    super.passwordError,
  });

  @override
  LoginState copyWith({
    String? phone,
    String? phoneError,
    String? password,
    String? passwordError,
  }) {
    return LoginLoadingState(
      phone: phone ?? this.phone,
      phoneError: phoneError,
      password: password ?? this.password,
      passwordError: passwordError,
    );
  }
}

// Meaning: The server returned a 200 OK. The user is authenticated.
// UI Reaction: Navigate away from this screen (e.g., Navigator.pushReplacementNamed('/home')).
class LoginSuccessState extends LoginState {
  const LoginSuccessState({
    super.phone = '',
    super.phoneError,
    super.password = '',
    super.passwordError,
  });

  @override
  LoginState copyWith({
    String? phone,
    String? phoneError,
    String? password,
    String? passwordError,
  }) {
    return LoginSuccessState(
      phone: phone ?? this.phone,
      phoneError: phoneError,
      password: password ?? this.password,
      passwordError: passwordError,
    );
  }
}

// Meaning: The server request failed (invalid credentials, no internet, timeout, etc.).
// UI Reaction: Show a Snackbar or a global error message telling the user what went wrong (e.g., "Connection Timeout").
class LoginErrorState extends LoginState {
  final String message;
  const LoginErrorState(
    this.message, {
    super.phone = '',
    super.phoneError,
    super.password = '',
    super.passwordError,
  });

  @override
  LoginState copyWith({
    String? phone,
    String? phoneError,
    String? password,
    String? passwordError,
  }) {
    return LoginErrorState(
      message,
      phone: phone ?? this.phone,
      phoneError: phoneError,
      password: password ?? this.password,
      passwordError: passwordError,
    );
  }

  @override
  List<Object?> get props => [
    phone,
    phoneError ?? '',
    password,
    passwordError ?? '',
    message,
  ];
}

/*
Imagine:
LoginFormInitialState   → "The kitchen is empty, ready for a new order."
LoginLoadingState       → "The chef is preparing the meal."
LoginSuccessState       → "The order is ready and served successfully."
LoginErrorState         → "The chef couldn't prepare the meal because something went wrong."
 */
