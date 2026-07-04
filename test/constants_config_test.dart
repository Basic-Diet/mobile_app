import 'package:basic_diet/app/constants.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('base URL has a non-env default for local test runs', () {
    expect(Constants.baseUrl, 'https://basicdiet145.onrender.com');
  });
}
