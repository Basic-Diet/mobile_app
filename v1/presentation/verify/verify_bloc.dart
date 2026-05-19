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
  static const int _timerDuration = 5;

  VerifyBloc(this._verifyOtpUseCase, this._appPreferences)
    : super(const VerifyInitialState()) {
    on<VerifyCodeChanged>(_onCodeChanged);
    on<VerifyPasswordChanged>(_onPasswordChanged);
    on<VerifySubmitted>(_onSubmitted);
    on<VerifyResendCode>(_onResendCode);
    on<VerifyTimerStarted>(_onTimerStarted);
    on<VerifyTimerTicked>(_onTimerTicked);
    add(const VerifyTimerStarted());
  }

  void _onTimerStarted(VerifyTimerStarted event, Emitter<VerifyState> emit) {
    _timer?.cancel();
    emit(state.copyWith(timerDuration: _timerDuration, canResend: false));
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      add(VerifyTimerTicked(_timerDuration - timer.tick));
    });
  }

  void _onTimerTicked(VerifyTimerTicked event, Emitter<VerifyState> emit) {
    if (event.duration > 0) {
      emit(state.copyWith(timerDuration: event.duration));
    } else {
      _timer?.cancel();
      emit(state.copyWith(timerDuration: 0, canResend: true));
    }
  }

  void _onCodeChanged(VerifyCodeChanged event, Emitter<VerifyState> emit) {
    final error = _validateCode(event.code);
    emit(state.copyWith(otpCode: event.code, otpError: error));
  }

  void _onPasswordChanged(
    VerifyPasswordChanged event,
    Emitter<VerifyState> emit,
  ) {
    final error = _validatePassword(event.password);
    emit(state.copyWith(password: event.password, passwordError: error));
  }

  Future<void> _onSubmitted(
    VerifySubmitted event,
    Emitter<VerifyState> emit,
  ) async {
    final otpError = _validateCode(state.otpCode);
    final passwordError = _validatePassword(state.password);
    if (otpError != null || passwordError != null) {
      emit(state.copyWith(otpError: otpError, passwordError: passwordError));
      return;
    }

    emit(
      VerifyLoadingState(
        otpCode: state.otpCode,
        password: state.password,
        timerDuration: state.timerDuration,
        canResend: state.canResend,
      ),
    );

    final result = await _verifyOtpUseCase.execute(
      VerifyOtpUseCaseInput(event.phone, state.otpCode, state.password),
    );

    await result.fold(
      (failure) async {
        showToast(message: failure.message, state: ToastStates.error);
        emit(
          VerifyErrorState(
            failure.message,
            otpCode: state.otpCode,
            password: state.password,
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
              password: state.password,
              timerDuration: state.timerDuration,
              canResend: state.canResend,
            ),
          );
        } else {
          emit(
            VerifyErrorState(
              "Token not found",
              otpCode: state.otpCode,
              password: state.password,
              timerDuration: state.timerDuration,
              canResend: state.canResend,
            ),
          );
        }
      },
    );
  }

  Future<void> _onResendCode(
    VerifyResendCode event,
    Emitter<VerifyState> emit,
  ) async {
    // Only allow resend if it's enabled
    if (!state.canResend) return;

    // Restart timer
    add(const VerifyTimerStarted());

    // Logic to actually resend code would go here
  }

  String? _validateCode(String code) {
    if (code.isEmpty) return "Code is required";
    if (code.length < 6) return "Code must be 6 digits";
    return null;
  }

  String? _validatePassword(String password) {
    if (password.isEmpty) return "Password is required";
    if (password.length < 8) return "Password is too short";
    return null;
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
