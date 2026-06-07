import 'dart:async';
import 'package:basic_diet/app/app_pref.dart';
import 'package:basic_diet/app/toast_handeller.dart';
import 'package:basic_diet/domain/usecase/verify_otp_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'verify_event.dart';
import 'verify_state.dart';

class VerifyBloc extends Bloc<VerifyEvent, VerifyState> {
  final VerifyOtpUseCase _verifyOtpUseCase;
  final AppPreferences _appPreferences;
  Timer? _timer;

  VerifyBloc(this._verifyOtpUseCase, this._appPreferences)
    : super(const VerifyInitialState()) {
    on<VerifyCodeChanged>(_onCodeChanged);
    on<VerifySubmitted>(_onSubmitted);
    on<VerifyResendCode>(_onResendCode);
    on<VerifyTimerStarted>(_onTimerStarted);
    on<VerifyTimerTicked>(_onTimerTicked);

    add(const VerifyTimerStarted());
  }

  void _onResendCode(VerifyResendCode event, Emitter<VerifyState> emit) {
    emit(state.copyWith(canResend: false, timerDuration: 59));
    add(const VerifyTimerStarted());
  }

  void _onTimerStarted(VerifyTimerStarted event, Emitter<VerifyState> emit) {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (state.timerDuration > 0) {
        add(VerifyTimerTicked(state.timerDuration - 1));
      } else {
        timer.cancel();
        if (!isClosed) {
          emit(state.copyWith(canResend: true));
        }
      }
    });
  }

  void _onTimerTicked(VerifyTimerTicked event, Emitter<VerifyState> emit) {
    emit(
      state.copyWith(
        timerDuration: event.duration,
        canResend: event.duration == 0,
      ),
    );
  }

  void _onCodeChanged(VerifyCodeChanged event, Emitter<VerifyState> emit) {
    final error = _validateCode(event.code);
    emit(state.copyWith(otpCode: event.code, otpError: error));
  }

  Future<void> _onSubmitted(
    VerifySubmitted event,
    Emitter<VerifyState> emit,
  ) async {
    final otpError = _validateCode(state.otpCode);
    if (otpError != null) {
      emit(state.copyWith(otpError: otpError));
      return;
    }

    emit(
      VerifyLoadingState(
        otpCode: state.otpCode,
        timerDuration: state.timerDuration,
        canResend: state.canResend,
      ),
    );

    final result = await _verifyOtpUseCase.execute(
      VerifyOtpUseCaseInput(event.phone, state.otpCode, event.password),
    );

    await result.fold(
      (failure) async {
        showToast(message: failure.message, state: ToastStates.error);
        emit(
          VerifyErrorState(
            failure.message,
            otpCode: state.otpCode,
            timerDuration: state.timerDuration,
            canResend: state.canResend,
          ),
        );
      },
      (data) async {
        if (data.accessToken.isNotEmpty && data.refreshToken.isNotEmpty) {
          await _appPreferences.saveSession(
            accessToken: data.accessToken,
            refreshToken: data.refreshToken,
            expiresIn: data.expiresIn,
          );
          showToast(message: "Success Otp", state: ToastStates.success);
          emit(
            VerifySuccessState(
              otpCode: state.otpCode,
              timerDuration: state.timerDuration,
              canResend: state.canResend,
            ),
          );
        } else {
          showToast(message: "Token not found", state: ToastStates.error);
          emit(
            VerifyErrorState(
              "Token not found",
              otpCode: state.otpCode,
              timerDuration: state.timerDuration,
              canResend: state.canResend,
            ),
          );
        }
      },
    );
  }

  String? _validateCode(String code) {
    if (code.isEmpty) return "Verification code is required";
    if (code.length < 6) return "Code must be 6 digits";
    return null;
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
