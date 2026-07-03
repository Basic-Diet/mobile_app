import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/domain/model/base__model.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/request_password_reset_otp_usecase.dart';
import 'package:basic_diet/presentation/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:basic_diet/presentation/forgot_password/bloc/forgot_password_event.dart';
import 'package:basic_diet/presentation/forgot_password/bloc/forgot_password_state.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ForgotPasswordBloc', () {
    test('requests reset OTP with normalized phone and emits success', () async {
      final repository = _ForgotPasswordRepository();
      final bloc = ForgotPasswordBloc(
        RequestPasswordResetOtpUseCase(repository),
      );

      final expectation = expectLater(
        bloc.stream,
        emitsInOrder([
          const ForgotPasswordState(phone: '500000001'),
          const ForgotPasswordState(
            status: ForgotPasswordStatus.loading,
            phone: '500000001',
          ),
          const ForgotPasswordState(
            status: ForgotPasswordStatus.success,
            phone: '+966500000001',
          ),
        ]),
      );
      bloc.add(const ForgotPasswordPhoneChanged('500000001'));
      bloc.add(const ForgotPasswordSubmitted());
      await expectation;

      await bloc.close();

      expect(repository.requestedPhone, '+966500000001');
    });

    test('emits failure when reset OTP request fails', () async {
      final repository = _ForgotPasswordRepository(
        result: left(Failure(400, 'Unable to send OTP')),
      );
      final bloc = ForgotPasswordBloc(
        RequestPasswordResetOtpUseCase(repository),
      );

      final expectation = expectLater(
        bloc.stream,
        emitsInOrder([
          const ForgotPasswordState(phone: '+966500000001'),
          const ForgotPasswordState(
            status: ForgotPasswordStatus.loading,
            phone: '+966500000001',
          ),
          const ForgotPasswordState(
            status: ForgotPasswordStatus.failure,
            phone: '+966500000001',
            errorMessage: 'Unable to send OTP',
          ),
        ]),
      );
      bloc.add(const ForgotPasswordPhoneChanged('+966500000001'));
      bloc.add(const ForgotPasswordSubmitted());
      await expectation;

      await bloc.close();

      expect(repository.requestedPhone, '+966500000001');
    });
  });
}

class _ForgotPasswordRepository implements Repository {
  _ForgotPasswordRepository({Either<Failure, BaseModel>? result})
    : result = result ?? right(BaseModel(status: true));

  final Either<Failure, BaseModel> result;
  String? requestedPhone;

  @override
  Future<Either<Failure, BaseModel>> requestPasswordResetOtp(
    String phone,
  ) async {
    requestedPhone = phone;
    return result;
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
