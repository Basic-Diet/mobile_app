import 'package:equatable/equatable.dart';

sealed class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object?> get props => [];
}

class LoginPhoneChanged extends LoginEvent {
  final String phone;

  const LoginPhoneChanged(this.phone);

  @override
  List<Object?> get props => [phone];
}

class LoginPasswordChanged extends LoginEvent {
  final String password;

  const LoginPasswordChanged(this.password);

  @override
  List<Object?> get props => [password.isNotEmpty];
}

class LoginSubmitted extends LoginEvent {
  final String password;

  const LoginSubmitted(this.password);

  @override
  List<Object?> get props => [password.isNotEmpty];
}
