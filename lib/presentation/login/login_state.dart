import 'package:equatable/equatable.dart';

abstract class LoginState extends Equatable {
  final String phone;
  final String? phoneError;
  final bool isPasswordNotEmpty;
  final String? passwordError;

  const LoginState({
    this.phone = '',
    this.phoneError,
    this.isPasswordNotEmpty = false,
    this.passwordError,
  });

  LoginState copyWith({
    String? phone,
    String? phoneError,
    bool? isPasswordNotEmpty,
    String? passwordError,
  });

  @override
  List<Object?> get props => [
    phone,
    phoneError ?? '',
    isPasswordNotEmpty,
    passwordError ?? '',
  ];
}

class LoginFormInitialState extends LoginState {
  const LoginFormInitialState({
    super.phone = '',
    super.phoneError,
    super.isPasswordNotEmpty = false,
    super.passwordError,
  });

  @override
  LoginState copyWith({
    String? phone,
    String? phoneError,
    bool? isPasswordNotEmpty,
    String? passwordError,
  }) {
    return LoginFormInitialState(
      phone: phone ?? this.phone,
      phoneError: phoneError,
      isPasswordNotEmpty: isPasswordNotEmpty ?? this.isPasswordNotEmpty,
      passwordError: passwordError,
    );
  }
}

class LoginLoadingState extends LoginState {
  const LoginLoadingState({
    super.phone = '',
    super.phoneError,
    super.isPasswordNotEmpty = false,
    super.passwordError,
  });

  @override
  LoginState copyWith({
    String? phone,
    String? phoneError,
    bool? isPasswordNotEmpty,
    String? passwordError,
  }) {
    return LoginLoadingState(
      phone: phone ?? this.phone,
      phoneError: phoneError,
      isPasswordNotEmpty: isPasswordNotEmpty ?? this.isPasswordNotEmpty,
      passwordError: passwordError,
    );
  }
}

class LoginSuccessState extends LoginState {
  const LoginSuccessState({
    super.phone = '',
    super.phoneError,
    super.isPasswordNotEmpty = false,
    super.passwordError,
  });

  @override
  LoginState copyWith({
    String? phone,
    String? phoneError,
    bool? isPasswordNotEmpty,
    String? passwordError,
  }) {
    return LoginSuccessState(
      phone: phone ?? this.phone,
      phoneError: phoneError,
      isPasswordNotEmpty: isPasswordNotEmpty ?? this.isPasswordNotEmpty,
      passwordError: passwordError,
    );
  }
}

class LoginPasswordChangeRequiredState extends LoginState {
  final String passwordChangeToken;
  final String phoneE164;
  final String? fullName;
  final int expiresIn;

  const LoginPasswordChangeRequiredState({
    required this.passwordChangeToken,
    required this.phoneE164,
    this.fullName,
    this.expiresIn = 0,
    super.phone = '',
    super.phoneError,
    super.isPasswordNotEmpty = false,
    super.passwordError,
  });

  @override
  LoginState copyWith({
    String? phone,
    String? phoneError,
    bool? isPasswordNotEmpty,
    String? passwordError,
  }) {
    return LoginPasswordChangeRequiredState(
      passwordChangeToken: passwordChangeToken,
      phoneE164: phoneE164,
      fullName: fullName,
      expiresIn: expiresIn,
      phone: phone ?? this.phone,
      phoneError: phoneError,
      isPasswordNotEmpty: isPasswordNotEmpty ?? this.isPasswordNotEmpty,
      passwordError: passwordError,
    );
  }

  @override
  List<Object?> get props => [
    ...super.props,
    phoneE164,
    fullName ?? '',
    expiresIn,
  ];
}

class LoginErrorState extends LoginState {
  final String message;

  const LoginErrorState(
    this.message, {
    super.phone = '',
    super.phoneError,
    super.isPasswordNotEmpty = false,
    super.passwordError,
  });

  @override
  LoginState copyWith({
    String? phone,
    String? phoneError,
    bool? isPasswordNotEmpty,
    String? passwordError,
  }) {
    return LoginErrorState(
      message,
      phone: phone ?? this.phone,
      phoneError: phoneError,
      isPasswordNotEmpty: isPasswordNotEmpty ?? this.isPasswordNotEmpty,
      passwordError: passwordError,
    );
  }

  @override
  List<Object?> get props => [...super.props, message];
}
