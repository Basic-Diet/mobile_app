import 'package:equatable/equatable.dart';

abstract class ForgotPasswordEvent extends Equatable {
  const ForgotPasswordEvent();

  @override
  List<Object?> get props => [];
}

class ForgotPasswordPhoneChanged extends ForgotPasswordEvent {
  final String phone;
  const ForgotPasswordPhoneChanged(this.phone);
  @override
  List<Object?> get props => [phone];
}

class ForgotPasswordSubmitted extends ForgotPasswordEvent {
  const ForgotPasswordSubmitted();
}
