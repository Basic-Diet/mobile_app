import 'package:basic_diet/app/dependency_injection.dart';
import 'package:basic_diet/presentation/resources/language_manager.dart';
import 'package:basic_diet/presentation/splash/splash_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('splash route renders with app dependencies', (tester) async {
    SharedPreferences.setMockInitialValues({});
    await EasyLocalization.ensureInitialized();
    await instance.reset();
    await initAppModule();

    final router = GoRouter(
      initialLocation: SplashScreen.splashRoute,
      routes: [
        GoRoute(
          path: SplashScreen.splashRoute,
          builder: (context, state) => const SplashScreen(),
        ),
      ],
    );

    addTearDown(instance.reset);

    await tester.pumpWidget(
      EasyLocalization(
        supportedLocales: const [englishLocale, arabicLocale],
        path: assetPathLocalization,
        fallbackLocale: arabicLocale,
        child: MaterialApp.router(routerConfig: router),
      ),
    );
    await tester.pump();

    expect(find.byType(SplashScreen), findsOneWidget);
    expect(find.byType(MaterialApp), findsOneWidget);
    expect(find.text('0'), findsNothing);

    await tester.pumpWidget(const SizedBox.shrink());
  });
}
