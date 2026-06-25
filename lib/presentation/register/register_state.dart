import 'package:equatable/equatable.dart';

abstract class RegisterState extends Equatable {
  final String fullName;
  final String? fullNameError;
  final String phone;
  final String? phoneError;
  final bool isPasswordNotEmpty;
  final String? passwordError;
  final bool isConfirmPasswordNotEmpty;
  final String? confirmPasswordError;
  final String email;
  final String? emailError;

  const RegisterState({
    this.fullName = '',
    this.fullNameError,
    this.phone = '',
    this.phoneError,
    this.isPasswordNotEmpty = false,
    this.passwordError,
    this.isConfirmPasswordNotEmpty = false,
    this.confirmPasswordError,
    this.email = '',
    this.emailError,
  });

  RegisterState copyWith({
    String? fullName,
    String? fullNameError,
    String? phone,
    String? phoneError,
    bool? isPasswordNotEmpty,
    String? passwordError,
    bool? isConfirmPasswordNotEmpty,
    String? confirmPasswordError,
    String? email,
    String? emailError,
  });

  @override
  List<Object?> get props => [
    fullName,
    fullNameError ?? '',
    phone,
    phoneError ?? '',
    isPasswordNotEmpty,
    passwordError ?? '',
    isConfirmPasswordNotEmpty,
    confirmPasswordError ?? '',
    email,
    emailError ?? '',
  ];
}

class RegisterFormInitialState extends RegisterState {
  const RegisterFormInitialState({
    super.fullName = '',
    super.fullNameError,
    super.phone = '',
    super.phoneError,
    super.isPasswordNotEmpty = false,
    super.passwordError,
    super.isConfirmPasswordNotEmpty = false,
    super.confirmPasswordError,
    super.email = '',
    super.emailError,
  });

  @override
  RegisterState copyWith({
    String? fullName,
    String? fullNameError,
    String? phone,
    String? phoneError,
    bool? isPasswordNotEmpty,
    String? passwordError,
    bool? isConfirmPasswordNotEmpty,
    String? confirmPasswordError,
    String? email,
    String? emailError,
  }) {
    return RegisterFormInitialState(
      fullName: fullName ?? this.fullName,
      fullNameError: fullNameError,
      phone: phone ?? this.phone,
      phoneError: phoneError,
      isPasswordNotEmpty: isPasswordNotEmpty ?? this.isPasswordNotEmpty,
      passwordError: passwordError,
      isConfirmPasswordNotEmpty:
          isConfirmPasswordNotEmpty ?? this.isConfirmPasswordNotEmpty,
      confirmPasswordError: confirmPasswordError,
      email: email ?? this.email,
      emailError: emailError,
    );
  }
}

class RegisterLoadingState extends RegisterState {
  const RegisterLoadingState({
    super.fullName = '',
    super.fullNameError,
    super.phone = '',
    super.phoneError,
    super.isPasswordNotEmpty = false,
    super.passwordError,
    super.isConfirmPasswordNotEmpty = false,
    super.confirmPasswordError,
    super.email = '',
    super.emailError,
  });

  @override
  RegisterState copyWith({
    String? fullName,
    String? fullNameError,
    String? phone,
    String? phoneError,
    bool? isPasswordNotEmpty,
    String? passwordError,
    bool? isConfirmPasswordNotEmpty,
    String? confirmPasswordError,
    String? email,
    String? emailError,
  }) {
    return RegisterLoadingState(
      fullName: fullName ?? this.fullName,
      fullNameError: fullNameError,
      phone: phone ?? this.phone,
      phoneError: phoneError,
      isPasswordNotEmpty: isPasswordNotEmpty ?? this.isPasswordNotEmpty,
      passwordError: passwordError,
      isConfirmPasswordNotEmpty:
          isConfirmPasswordNotEmpty ?? this.isConfirmPasswordNotEmpty,
      confirmPasswordError: confirmPasswordError,
      email: email ?? this.email,
      emailError: emailError,
    );
  }
}

class RegisterCompletedState extends RegisterState {
  const RegisterCompletedState({
    super.fullName = '',
    super.fullNameError,
    super.phone = '',
    super.phoneError,
    super.isPasswordNotEmpty = false,
    super.passwordError,
    super.isConfirmPasswordNotEmpty = false,
    super.confirmPasswordError,
    super.email = '',
    super.emailError,
  });

  @override
  RegisterState copyWith({
    String? fullName,
    String? fullNameError,
    String? phone,
    String? phoneError,
    bool? isPasswordNotEmpty,
    String? passwordError,
    bool? isConfirmPasswordNotEmpty,
    String? confirmPasswordError,
    String? email,
    String? emailError,
  }) {
    return RegisterCompletedState(
      fullName: fullName ?? this.fullName,
      fullNameError: fullNameError,
      phone: phone ?? this.phone,
      phoneError: phoneError,
      isPasswordNotEmpty: isPasswordNotEmpty ?? this.isPasswordNotEmpty,
      passwordError: passwordError,
      isConfirmPasswordNotEmpty:
          isConfirmPasswordNotEmpty ?? this.isConfirmPasswordNotEmpty,
      confirmPasswordError: confirmPasswordError,
      email: email ?? this.email,
      emailError: emailError,
    );
  }
}

class RegisterErrorState extends RegisterState {
  final String message;

  const RegisterErrorState(
    this.message, {
    super.fullName = '',
    super.fullNameError,
    super.phone = '',
    super.phoneError,
    super.isPasswordNotEmpty = false,
    super.passwordError,
    super.isConfirmPasswordNotEmpty = false,
    super.confirmPasswordError,
    super.email = '',
    super.emailError,
  });

  @override
  RegisterState copyWith({
    String? fullName,
    String? fullNameError,
    String? phone,
    String? phoneError,
    bool? isPasswordNotEmpty,
    String? passwordError,
    bool? isConfirmPasswordNotEmpty,
    String? confirmPasswordError,
    String? email,
    String? emailError,
  }) {
    return RegisterErrorState(
      message,
      fullName: fullName ?? this.fullName,
      fullNameError: fullNameError,
      phone: phone ?? this.phone,
      phoneError: phoneError,
      isPasswordNotEmpty: isPasswordNotEmpty ?? this.isPasswordNotEmpty,
      passwordError: passwordError,
      isConfirmPasswordNotEmpty:
          isConfirmPasswordNotEmpty ?? this.isConfirmPasswordNotEmpty,
      confirmPasswordError: confirmPasswordError,
      email: email ?? this.email,
      emailError: emailError,
    );
  }

  @override
  List<Object?> get props => [...super.props, message];
}
