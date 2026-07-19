import 'package:basic_diet/app/app_pref.dart';
import 'package:basic_diet/app/dependency_injection.dart';
import 'package:basic_diet/data/mappers/auth_mapper.dart';
import 'package:basic_diet/data/network/failure.dart';
import 'package:basic_diet/data/response/auth_response.dart';
import 'package:basic_diet/domain/model/auth_model.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/register_usecase.dart';
import 'package:basic_diet/presentation/register/register_bloc.dart';
import 'package:basic_diet/presentation/register/register_event.dart';
import 'package:basic_diet/presentation/register/register_screen.dart';
import 'package:basic_diet/presentation/register/register_state.dart';
import 'package:basic_diet/presentation/resources/language_manager.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  const toastChannel = MethodChannel('PonnamKarthik/fluttertoast');

  setUpAll(() async {
    SharedPreferences.setMockInitialValues({});
    await EasyLocalization.ensureInitialized();
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(toastChannel, (_) async => true);
  });

  tearDownAll(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(toastChannel, null);
  });

  tearDown(() async {
    await instance.reset();
  });

  testWidgets('Full Name is visible on the registration screen', (tester) async {
    final repository = _CapturingRepository();
    await _pumpRegisterScreen(tester, repository);

    expect(_textCount('Full Name', 'fullName'), 1);
    expect(_textCount('Enter your full name', 'fullNameHint'), 1);
  });

  testWidgets('submission is blocked when Full Name is empty', (tester) async {
    final repository = _CapturingRepository();
    await _pumpRegisterScreen(tester, repository);

    await tester.enterText(find.byType(TextFormField).at(1), '500000001');
    await tester.enterText(find.byType(TextFormField).at(2), 'Password123');
    await tester.enterText(find.byType(TextFormField).at(3), 'Password123');
    await tester.pump();

    final buttonInkWell = tester.widget<InkWell>(
      find.ancestor(
        of: _textFinder('Create Account', 'createAccount'),
        matching: find.byType(InkWell),
      ),
    );

    expect(buttonInkWell.onTap, isNull);
    expect(repository.registerCallCount, 0);
  });

  test('leading and trailing spaces are removed before registration', () async {
    final repository = _CapturingRepository(
      result: Left(Failure('VALIDATION_ERROR', 'validation error')),
    );
    final bloc = await _buildBloc(repository);

    final expectation = expectLater(
      bloc.stream,
      emitsThrough(isA<RegisterErrorState>()),
    );

    bloc.add(const RegisterSubmitted(
      fullName: '  Ibrahim Mohamed  ',
      phone: '  500000001  ',
      password: 'Password123',
      confirmPassword: 'Password123',
    ));

    await expectation;

    expect(repository.fullName, 'Ibrahim Mohamed');
    expect(repository.phone, '+966500000001');
    await bloc.close();
  });

  test('names longer than 120 characters are rejected', () async {
    final repository = _CapturingRepository();
    final bloc = await _buildBloc(repository);

    final expectation = expectLater(
      bloc.stream,
      emitsThrough(
        isA<RegisterState>().having(
          (state) => state.fullNameError,
          'fullNameError',
          anyOf(
            'Full name must not exceed 120 characters',
            'fullNameTooLong',
          ),
        ),
      ),
    );

    bloc.add(RegisterSubmitted(
      fullName: 'A' * 121,
      phone: '500000001',
      password: 'Password123',
      confirmPassword: 'Password123',
    ));

    await expectation;

    expect(repository.registerCallCount, 0);
    await bloc.close();
  });

  test('a successful response maps user.fullName', () {
    final response = AuthenticationResponse(
      ok: true,
      status: 'registered',
      accessToken: 'ACCESS_TOKEN',
      refreshToken: 'REFRESH_TOKEN',
      expiresIn: 900,
      refreshExpiresIn: 2592000,
      user: const AuthUserResponse(
        id: 'USER_ID',
        fullName: 'Ibrahim Mohamed',
        phoneE164: '+966501234567',
        phoneVerified: true,
        forcePasswordChange: false,
      ),
    );

    expect(response.toDomain().user?.fullName, 'Ibrahim Mohamed');
  });

  test('existing registration error handling remains functional', () async {
    final repository = _CapturingRepository(
      result: Left(Failure('USER_ALREADY_REGISTERED', 'already registered')),
    );
    final bloc = await _buildBloc(repository);

    final expectation = expectLater(
      bloc.stream,
      emitsThrough(
        isA<RegisterErrorState>().having(
          (state) => state.message,
          'message',
          anyOf(
            'This phone number is already registered. You can log in.',
            'phoneAlreadyRegistered',
          ),
        ),
      ),
    );

    bloc.add(const RegisterSubmitted(
      fullName: 'Ibrahim Mohamed',
      phone: '500000001',
      password: 'Password123',
      confirmPassword: 'Password123',
    ));

    await expectation;

    await bloc.close();
  });
}

Future<void> _pumpRegisterScreen(
  WidgetTester tester,
  _CapturingRepository repository,
) async {
  SharedPreferences.setMockInitialValues({});
  final preferences = await SharedPreferences.getInstance();
  instance.registerFactory<RegisterBloc>(
    () => RegisterBloc(RegisterUseCase(repository), AppPreferences(preferences)),
  );

  await tester.pumpWidget(
    EasyLocalization(
      supportedLocales: const [englishLocale, arabicLocale],
      path: assetPathLocalization,
      startLocale: englishLocale,
      fallbackLocale: englishLocale,
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        child: const MaterialApp(home: RegisterScreen()),
      ),
    ),
  );
  await tester.pumpAndSettle();
}

Finder _textFinder(String localizedText, String fallbackKey) {
  final localizedFinder = find.text(localizedText);
  if (localizedFinder.evaluate().isNotEmpty) return localizedFinder;
  return find.text(fallbackKey);
}

int _textCount(String localizedText, String fallbackKey) {
  return find.text(localizedText).evaluate().length +
      find.text(fallbackKey).evaluate().length;
}

Future<RegisterBloc> _buildBloc(_CapturingRepository repository) async {
  SharedPreferences.setMockInitialValues({});
  final preferences = await SharedPreferences.getInstance();
  return RegisterBloc(RegisterUseCase(repository), AppPreferences(preferences));
}

class _CapturingRepository implements Repository {
  final Either<Failure, AuthenticationModel> result;
  int registerCallCount = 0;
  String? fullName;
  String? phone;
  String? password;
  String? confirmPassword;

  _CapturingRepository({
    this.result = const Right(AuthenticationModel()),
  });

  @override
  Future<Either<Failure, AuthenticationModel>> register(
    String fullName,
    String phone,
    String password,
    String confirmPassword, {
    String? email,
  }) async {
    registerCallCount += 1;
    this.fullName = fullName;
    this.phone = phone;
    this.password = password;
    this.confirmPassword = confirmPassword;
    return result;
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
