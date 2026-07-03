import 'package:equatable/equatable.dart';

enum ForgotPasswordStatus { initial, loading, success, failure }

const Object _notProvided = Object();

class ForgotPasswordState extends Equatable {
  final ForgotPasswordStatus status;
  final String phone;
  final String? errorMessage;

  const ForgotPasswordState({
    this.status = ForgotPasswordStatus.initial,
    this.phone = '',
    this.errorMessage,
  });

  ForgotPasswordState copyWith({
    ForgotPasswordStatus? status,
    String? phone,
    Object? errorMessage = _notProvided,
  }) {
    return ForgotPasswordState(
      status: status ?? this.status,
      phone: phone ?? this.phone,
      errorMessage: errorMessage == _notProvided
          ? this.errorMessage
          : errorMessage as String?,
    );
  }

  @override
  List<Object?> get props => [status, phone, errorMessage];
}
