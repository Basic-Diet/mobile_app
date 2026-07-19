import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('global router redirect does not call the current-user backend', () {
    final routesManager =
        File(
          'lib/presentation/resources/routes_manager.dart',
        ).readAsStringSync();

    expect(routesManager, isNot(contains('GetCurrentUserUseCase')));
    expect(routesManager, isNot(contains('getCurrentUser')));
    expect(routesManager, isNot(contains('redirect:')));
  });
}
