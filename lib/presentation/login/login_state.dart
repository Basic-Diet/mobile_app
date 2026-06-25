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

class LoginForcePasswordChangeRequiredState extends LoginState {
  const LoginForcePasswordChangeRequiredState({
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
    return LoginForcePasswordChangeRequiredState(
      phone: phone ?? this.phone,
      phoneError: phoneError,
      isPasswordNotEmpty: isPasswordNotEmpty ?? this.isPasswordNotEmpty,
      passwordError: passwordError,
    );
  }
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
