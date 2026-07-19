import 'dart:async';
import 'package:basic_diet/app/app_pref.dart';
import 'package:basic_diet/app/dependency_injection.dart';
import 'package:basic_diet/domain/usecase/get_current_user_usecase.dart';
import 'package:basic_diet/domain/usecase/refresh_token_usecase.dart';
import 'package:basic_diet/presentation/change_password/change_password_screen.dart';
import 'package:basic_diet/presentation/language_selection/language_selection_screen.dart';
import 'package:basic_diet/presentation/main/main_screen.dart';
import 'package:basic_diet/presentation/onboarding/on_boarding_screen.dart';
import 'package:basic_diet/presentation/resources/assets_manager.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/constants_manager.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  static const String splashRoute = '/';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  static const Duration _localReadTimeout = Duration(seconds: 2);
  static const Duration _sessionValidationTimeout = Duration(seconds: 5);
  Timer? _timer;
  final AppPreferences _appPreferences = instance<AppPreferences>();
  final GetCurrentUserUseCase _getCurrentUserUseCase =
      instance<GetCurrentUserUseCase>();
  final RefreshTokenUseCase _refreshTokenUseCase =
      instance<RefreshTokenUseCase>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _startDelay();
      }
    });
  }

  void _startDelay() {
    _timer = Timer(const Duration(seconds: AppConstants.splashDelay), _goNext);
  }

  Future<void> _goNext() async {
    try {
      final isLanguageSelected = await _withTimeout(
        _appPreferences.isLanguageSelected(),
        fallback: false,
      );
      final isOnboardingScreenViewed = await _withTimeout(
        _appPreferences.isOnboardingScreenViewed(),
        fallback: false,
      );

      if (!mounted) {
        return;
      }

      if (!isLanguageSelected) {
        context.go(LanguageSelectionScreen.languageSelectionRoute);
        return;
      }

      if (!isOnboardingScreenViewed) {
        context.go(OnboardingScreen.routeName);
        return;
      }

      final hasSessionTokens = await _withTimeout(
        _appPreferences.hasSessionTokens(),
        fallback: false,
      );
      String? sessionRedirectRoute;
      if (hasSessionTokens) {
        sessionRedirectRoute = await _withTimeout<String?>(
          _resolveSessionRedirectRoute(),
          fallback: null,
          timeout: _sessionValidationTimeout,
        );
      }

      if (!mounted) {
        return;
      }

      context.go(sessionRedirectRoute ?? MainScreen.mainRoute);
    } catch (_) {
      if (mounted) {
        context.go(MainScreen.mainRoute);
      }
    }
  }

  Future<T> _withTimeout<T>(
    Future<T> future, {
    required T fallback,
    Duration timeout = _localReadTimeout,
  }) {
    return future.timeout(timeout, onTimeout: () => fallback);
  }

  Future<String?> _resolveSessionRedirectRoute() async {
    final currentUserResult = await _getCurrentUserUseCase.execute(null);

    return currentUserResult.fold(
      (failure) async {
        if (failure.code == 'TOKEN_EXPIRED') {
          return _refreshSession();
        }

        await _appPreferences.clearSession();
        return null;
      },
      (data) async {
        if (data.user?.forcePasswordChange == true) {
          return ChangePasswordScreen.routeName;
        }
        return null;
      },
    );
  }

  Future<String?> _refreshSession() async {
    final refreshToken = await _appPreferences.getRefreshToken();
    if (refreshToken.isEmpty) {
      await _appPreferences.clearSession();
      return null;
    }

    final refreshResult = await _refreshTokenUseCase.execute(refreshToken);
    return refreshResult.fold(
      (_) async {
        await _appPreferences.clearSession();
        return null;
      },
      (data) async {
        await _appPreferences.saveSession(
          accessToken: data.accessToken,
          refreshToken: data.refreshToken,
          expiresIn: data.expiresIn,
        );

        final retryResult = await _getCurrentUserUseCase.execute(null);
        return retryResult.fold((_) async => null, (data) async {
          if (data.user?.forcePasswordChange == true) {
            return ChangePasswordScreen.routeName;
          }
          return null;
        });
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backgroundSurface,
      body: Center(
        child: SizedBox(
          width: 180,
          height: 180,
          child: Image.asset(ImageAssets.splashLogo),
        ),
      ),
    );
  }
}
