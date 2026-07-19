import 'package:basic_diet/data/mappers/premium_meals_mapper.dart';
import 'package:basic_diet/data/response/premium_meals_response.dart';
import 'package:basic_diet/domain/model/premium_meals_model.dart';
import 'package:basic_diet/presentation/main/home/premium/widgets/premium_meal_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PremiumMealsResponse parsing', () {
    test('parses bilingual map name and sourceName safely', () {
      final response = PremiumMealResponse.fromJson({
        'id': 'meal-1',
        'name': {'ar': 'ستيك لحم', 'en': 'Beef Steak'},
        'description': {'ar': '', 'en': 'Grilled beef steak'},
        'sourceName': {'ar': 'الشيف', 'en': 'Chef'},
        'priceLabel': '+25 SAR',
        'premiumKey': 'beef-steak',
        'ui': {
          'title': 'Compatibility title',
          'subtitle': 'Compatibility subtitle',
        },
      });

      expect(response.nameAr, 'ستيك لحم');
      expect(response.nameEn, 'Beef Steak');
      expect(response.descriptionAr, 'Grilled beef steak');
      expect(response.descriptionEn, 'Grilled beef steak');
      expect(response.sourceNameAr, 'الشيف');
      expect(response.sourceNameEn, 'Chef');
      expect(response.ui?.title, 'Compatibility title');
    });

    test('parses legacy string name', () {
      final response = PremiumMealResponse.fromJson({
        'name': 'Legacy Steak',
        'description': 'Legacy description',
      });

      expect(response.nameAr, 'Legacy Steak');
      expect(response.nameEn, 'Legacy Steak');
      expect(response.descriptionAr, 'Legacy description');
      expect(response.descriptionEn, 'Legacy description');
    });

    test('parses null description as empty values', () {
      final response = PremiumMealResponse.fromJson({
        'name': {'ar': 'وجبة', 'en': 'Meal'},
        'description': null,
      });

      expect(response.description, isEmpty);
      expect(response.descriptionAr, isEmpty);
      expect(response.descriptionEn, isEmpty);
    });
  });

  group('PremiumMealModel localization', () {
    test('resolves Arabic locale from preserved Arabic name', () {
      final model =
          PremiumMealResponse.fromJson({
            'name': {'ar': 'ستيك لحم', 'en': 'Beef Steak'},
          }).toDomain();

      expect(model.displayName('ar'), 'ستيك لحم');
    });

    test('resolves English locale from preserved English name', () {
      final model =
          PremiumMealResponse.fromJson({
            'name': {'ar': 'ستيك لحم', 'en': 'Beef Steak'},
          }).toDomain();

      expect(model.displayName('en'), 'Beef Steak');
    });
  });

  testWidgets('PremiumMealCard handles long Arabic title without overflow', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(320, 640);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    final errors = <FlutterErrorDetails>[];
    final previousOnError = FlutterError.onError;
    FlutterError.onError = errors.add;
    addTearDown(() => FlutterError.onError = previousOnError);

    await tester.pumpWidget(
      ScreenUtilInit(
        designSize: const Size(390, 844),
        builder: (context, child) {
          return MaterialApp(
            locale: const Locale('ar', 'SA'),
            home: Scaffold(
              body: Directionality(
                textDirection: TextDirection.rtl,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: PremiumMealCard(
                      meal: _premiumMealWithLongArabicTitle(),
                      quantity: 1,
                      onIncrement: () {},
                      onDecrement: () {},
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );

    await tester.pumpAndSettle();

    final overflowErrors = errors.where(
      (error) => error.exceptionAsString().contains('RenderFlex overflowed'),
    );
    expect(overflowErrors, isEmpty);
    expect(tester.takeException(), isNull);
  });
}

PremiumMealModel _premiumMealWithLongArabicTitle() {
  return PremiumMealModel(
    id: 'meal-1',
    name: 'وجبة عربية طويلة جدا',
    nameAr:
        'وجبة عربية طويلة جدا باسم كبير لا ينبغي أن يكسر بطاقة الوجبات المميزة في شاشة صغيرة',
    nameEn: 'Very long Arabic meal',
    description: '',
    descriptionAr: '',
    descriptionEn: '',
    sourceName: '',
    sourceNameAr: '',
    sourceNameEn: '',
    imageUrl: '',
    currency: 'SAR',
    extraFeeHalala: 0,
    extraFeeSar: 0,
    priceHalala: 2500,
    priceSar: 25,
    priceLabel: '+25 SAR',
    proteinGrams: 30,
    carbGrams: 10,
    fatGrams: 8,
    premiumKey: 'premium-1',
    ui: PremiumMealUiModel(
      title: 'Compatibility title',
      subtitle: '',
      ctaLabel: '',
      selectionStyle: '',
    ),
  );
}
