import 'package:equatable/equatable.dart';

sealed class VerifyEvent extends Equatable {
  const VerifyEvent();

  @override
  List<Object?> get props => [];
}

class VerifyCodeChanged extends VerifyEvent {
  final String code;
  const VerifyCodeChanged(this.code);

  @override
  List<Object?> get props => [code];
}

class VerifySubmitted extends VerifyEvent {
  final String phone;
  final String password;
  const VerifySubmitted(this.phone, this.password);

  @override
  List<Object?> get props => [phone, password];
}

class VerifyResendCode extends VerifyEvent {
  const VerifyResendCode();
}

class VerifyTimerStarted extends VerifyEvent {
  const VerifyTimerStarted();
}

class VerifyTimerTicked extends VerifyEvent {
  final int duration;
  const VerifyTimerTicked(this.duration);

  @override
  List<Object?> get props => [duration];
}
