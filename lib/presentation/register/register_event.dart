import 'package:equatable/equatable.dart';

sealed class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object?> get props => [];
}

class RegisterFullNameChanged extends RegisterEvent {
  final String fullName;

  const RegisterFullNameChanged(this.fullName);

  @override
  List<Object?> get props => [fullName];
}

class RegisterPhoneChanged extends RegisterEvent {
  final String phone;

  const RegisterPhoneChanged(this.phone);

  @override
  List<Object?> get props => [phone];
}

class RegisterPasswordChanged extends RegisterEvent {
  final String password;
  final String confirmPassword;

  const RegisterPasswordChanged({
    required this.password,
    required this.confirmPassword,
  });

  @override
  List<Object?> get props => [password.isNotEmpty, confirmPassword.isNotEmpty];
}

class RegisterConfirmPasswordChanged extends RegisterEvent {
  final String password;
  final String confirmPassword;

  const RegisterConfirmPasswordChanged({
    required this.password,
    required this.confirmPassword,
  });

  @override
  List<Object?> get props => [password.isNotEmpty, confirmPassword.isNotEmpty];
}

class RegisterEmailChanged extends RegisterEvent {
  final String email;

  const RegisterEmailChanged(this.email);

  @override
  List<Object?> get props => [email];
}

class RegisterSubmitted extends RegisterEvent {
  final String phone;
  final String password;
  final String confirmPassword;
  final String email;

  const RegisterSubmitted({
    required this.phone,
    required this.password,
    required this.confirmPassword,
    this.email = '',
  });

  @override
  List<Object?> get props => [
    phone,
    password.isNotEmpty,
    confirmPassword.isNotEmpty,
    email,
  ];
}
