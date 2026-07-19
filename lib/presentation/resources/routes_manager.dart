import 'package:basic_diet/app/constants.dart';
import 'package:basic_diet/app/dependency_injection.dart';
import 'package:basic_diet/app/functions.dart';
import 'package:basic_diet/domain/model/subscription_quote_model.dart';
import 'package:basic_diet/presentation/language_selection/language_selection_screen.dart';
import 'package:basic_diet/presentation/login/login_screen.dart';
import 'package:basic_diet/presentation/change_password/change_password_screen.dart';
import 'package:basic_diet/presentation/complete_password_change/complete_password_change_screen.dart';
import 'package:basic_diet/presentation/main/main_screen.dart';
import 'package:basic_diet/presentation/main/home/delivery/delivery_method_screen.dart';
import 'package:basic_diet/presentation/main/home/add-ons/add_ons_screen.dart';
import 'package:basic_diet/presentation/main/home/premium/premium_meals_screen.dart';
import 'package:basic_diet/presentation/main/home/subscription-details/subscription_details_screen.dart';
import 'package:basic_diet/presentation/main/home/subscription/subscription_screen.dart';
import 'package:basic_diet/presentation/main/home/subscription/bloc/subscription_bloc.dart';
import 'package:basic_diet/presentation/main/cart/bloc/cart_state.dart';
import 'package:basic_diet/presentation/main/cart/cart_screen.dart';
import 'package:basic_diet/presentation/main/cart/checkout_screen.dart';
import 'package:basic_diet/presentation/main/cart/payment_webview_screen.dart';
import 'package:basic_diet/presentation/main/cart/order_tracking_screen.dart';
import 'package:basic_diet/presentation/onboarding/on_boarding_screen.dart';
import 'package:basic_diet/presentation/register/register_screen.dart';
import 'package:basic_diet/presentation/splash/splash_screen.dart';
import 'package:basic_diet/presentation/verify/verify_screen.dart';
import 'package:basic_diet/presentation/forgot_password/forgot_password_screen.dart';
import 'package:basic_diet/presentation/main/profile/support/support_screen.dart';
import 'package:basic_diet/presentation/main/profile/manage_account/manage_account_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class GoRouterConfig {
  static GoRouter get router => _router;
  static final GoRouter _router = GoRouter(
    navigatorKey: navigatorKey,
    routes: <RouteBase>[
      GoRoute(
        path: SplashScreen.splashRoute,
        pageBuilder:
            (BuildContext context, GoRouterState state) =>
                getCustomTransitionPage(state: state, child: SplashScreen()),
      ),
      GoRoute(
        path: LanguageSelectionScreen.languageSelectionRoute,
        pageBuilder:
            (BuildContext context, GoRouterState state) =>
                getCustomTransitionPage(
                  state: state,
                  child: const LanguageSelectionScreen(),
                ),
      ),
      GoRoute(
        path: OnboardingScreen.routeName,
        pageBuilder:
            (BuildContext context, GoRouterState state) =>
                getCustomTransitionPage(
                  state: state,
                  child: OnboardingScreen(),
                ),
      ),
      GoRoute(
        path: LoginScreen.loginRoute,
        pageBuilder: (BuildContext context, GoRouterState state) {
          initLoginModule();
          return getCustomTransitionPage(state: state, child: LoginScreen());
        },
      ),
      GoRoute(
        path: RegisterScreen.registerRoute,
        pageBuilder: (BuildContext context, GoRouterState state) {
          initRegisterModule();
          return getCustomTransitionPage(state: state, child: RegisterScreen());
        },
      ),
      GoRoute(
        path: VerifyScreen.verifyRoute,
        pageBuilder: (BuildContext context, GoRouterState state) {
          initVerifyModule();
          final extra = state.extra;
          final phoneNumber =
              extra is Map<String, String> ? extra['phone'] : extra as String?;
          final password =
              extra is Map<String, String> ? extra['password'] : null;
          return getCustomTransitionPage(
            state: state,
            child: VerifyScreen(phoneNumber: phoneNumber, password: password),
          );
        },
      ),
      GoRoute(
        path: ForgotPasswordScreen.routeName,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return getCustomTransitionPage(
            state: state,
            child: const ForgotPasswordScreen(),
          );
        },
      ),
      GoRoute(
        path: ChangePasswordScreen.routeName,
        pageBuilder: (BuildContext context, GoRouterState state) {
          initChangePasswordModule();
          final phone = state.extra as String?;
          return getCustomTransitionPage(
            state: state,
            child: ChangePasswordScreen(phone: phone),
          );
        },
      ),
      GoRoute(
        path: CompletePasswordChangeScreen.routeName,
        pageBuilder: (BuildContext context, GoRouterState state) {
          final extra = state.extra;
          if (extra is! PasswordChangeChallengeArgs) {
            initLoginModule();
            return getCustomTransitionPage(state: state, child: LoginScreen());
          }

          initCompletePasswordChangeModule();
          return getCustomTransitionPage(
            state: state,
            child: CompletePasswordChangeScreen(args: extra),
          );
        },
      ),
      GoRoute(
        path: MainScreen.mainRoute,
        pageBuilder: (BuildContext context, GoRouterState state) {
          initHomeModule();
          initOrderMenuModule();
          initOrdersModule();
          initProfileModule();
          final extra = state.extra;
          final initialIndex =
              extra is Map<String, dynamic> && extra['initialIndex'] is int
                  ? extra['initialIndex'] as int
                  : extra is int
                  ? extra
                  : MainScreen.homeTabIndex;
          final plansRefreshToken =
              extra is Map<String, dynamic>
                  ? extra['plansRefreshToken'] as String?
                  : null;
          final mainRefreshToken =
              extra is Map<String, dynamic>
                  ? extra['mainRefreshToken'] as String?
                  : null;
          return getCustomTransitionPage(
            state: state,
            child: MainScreen(
              key: ValueKey<String>(
                'main-$initialIndex-${mainRefreshToken ?? plansRefreshToken ?? 'default'}',
              ),
              initialIndex: initialIndex,
              plansRefreshToken: plansRefreshToken,
            ),
          );
        },
      ),
      GoRoute(
        path: SubscriptionScreen.subscriptionRoute,
        pageBuilder: (BuildContext context, GoRouterState state) {
          initSubscriptionModule();
          return getCustomTransitionPage(
            state: state,
            child: SubscriptionScreen(),
          );
        },
      ),
      GoRoute(
        path: PremiumMealsScreen.premiumRoute,
        pageBuilder: (BuildContext context, GoRouterState state) {
          initPremiumMealsModule();
          return getCustomTransitionPage(
            state: state,
            child: BlocProvider.value(
              value: state.extra as SubscriptionBloc,
              child: const PremiumMealsScreen(),
            ),
          );
        },
      ),
      GoRoute(
        path: DeliveryMethodScreen.deliveryMethodRoute,
        pageBuilder: (BuildContext context, GoRouterState state) {
          initDeliveryOptionsModule();
          return getCustomTransitionPage(
            state: state,
            child: BlocProvider.value(
              value: state.extra as SubscriptionBloc,
              child: const DeliveryMethodScreen(),
            ),
          );
        },
      ),
      GoRoute(
        path: AddOnsScreen.addOnsRoute,
        pageBuilder: (BuildContext context, GoRouterState state) {
          initAddOnsModule();
          return getCustomTransitionPage(
            state: state,
            child: BlocProvider.value(
              value: state.extra as SubscriptionBloc,
              child: const AddOnsScreen(),
            ),
          );
        },
      ),
      GoRoute(
        path: SubscriptionDetails.subscriptionDetailsRoute,
        pageBuilder: (BuildContext context, GoRouterState state) {
          final extras = state.extra as Map<String, dynamic>;
          return getCustomTransitionPage(
            state: state,
            child: BlocProvider.value(
              value: extras['bloc'] as SubscriptionBloc,
              child: SubscriptionDetails(
                quote: extras['quote'] as SubscriptionQuoteModel,
                quoteRequest:
                    extras['quoteRequest'] as SubscriptionQuoteRequestModel,
              ),
            ),
          );
        },
      ),
      GoRoute(
        path: CartScreen.routeName,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return getCustomTransitionPage(
            state: state,
            child: const CartScreen(),
          );
        },
      ),
      GoRoute(
        path: CheckoutScreen.routeName,
        pageBuilder: (BuildContext context, GoRouterState state) {
          initCheckoutModule();
          return getCustomTransitionPage(
            state: state,
            child: CheckoutScreen(cartState: state.extra as CartLoaded?),
          );
        },
      ),
      GoRoute(
        path: PaymentWebViewScreen.routeName,
        pageBuilder: (BuildContext context, GoRouterState state) {
          final extra = state.extra;
          late final String paymentUrl;
          late final String successUrl;
          late final String backUrl;

          if (extra is String) {
            paymentUrl = extra;
            successUrl = Constants.paymentSuccessUrl;
            backUrl = Constants.paymentCancelUrl;
          } else if (extra is Map<String, dynamic>) {
            paymentUrl = extra['paymentUrl'] as String;
            successUrl = extra['successUrl'] as String;
            backUrl = extra['backUrl'] as String;
          } else {
            throw ArgumentError(
              'PaymentWebViewScreen expects either a payment url string or a map with payment callbacks.',
            );
          }

          return getCustomTransitionPage(
            state: state,
            child: PaymentWebViewScreen(
              paymentUrl: paymentUrl,
              successUrl: successUrl,
              backUrl: backUrl,
            ),
          );
        },
      ),
      GoRoute(
        path: OrderTrackingScreen.routeName,
        pageBuilder: (BuildContext context, GoRouterState state) {
          initOrderTrackingModule();
          final orderId = state.extra as String;
          return getCustomTransitionPage(
            state: state,
            child: OrderTrackingScreen(orderId: orderId),
          );
        },
      ),
      GoRoute(
        path: SupportScreen.supportRoute,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return getCustomTransitionPage(
            state: state,
            child: const SupportScreen(),
          );
        },
      ),
      GoRoute(
        path: ManageAccountScreen.manageAccountRoute,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return getCustomTransitionPage(
            state: state,
            child: const ManageAccountScreen(),
          );
        },
      ),
    ],
  );

  static CustomTransitionPage getCustomTransitionPage({
    required GoRouterState state,
    required Widget child,
  }) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionDuration: Duration.zero,
      reverseTransitionDuration: Duration.zero,
      transitionsBuilder:
          (context, animation, secondaryAnimation, child) => child,
    );
  }
}
