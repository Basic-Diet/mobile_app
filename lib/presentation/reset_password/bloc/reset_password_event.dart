import 'package:equatable/equatable.dart';

abstract class ResetPasswordEvent extends Equatable {
  const ResetPasswordEvent();

  @override
  List<Object?> get props => [];
}

class ResetPasswordOtpChanged extends ResetPasswordEvent {
  final String otp;
  const ResetPasswordOtpChanged(this.otp);
  @override
  List<Object?> get props => [otp];
}

class ResetPasswordNewPasswordChanged extends ResetPasswordEvent {
  final String newPassword;
  const ResetPasswordNewPasswordChanged(this.newPassword);
  @override
  List<Object?> get props => [newPassword];
}

class ResetPasswordSubmitted extends ResetPasswordEvent {
  const ResetPasswordSubmitted();
}
