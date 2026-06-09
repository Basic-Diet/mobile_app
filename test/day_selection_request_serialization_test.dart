import 'dart:convert';

import 'package:basic_diet/data/request/day_selection_request.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DaySelectionRequest serialization', () {
    test('encodes premium large salad groups as JSON map', () {
      final request = DaySelectionRequest([
        MealSlotRequest(
          slotIndex: 1,
          slotKey: 'slot_1',
          selectionType: 'premium_large_salad',
          proteinId: 'protein-chicken',
          salad: SaladRequest(
            presetKey: 'premium_large_salad',
            groups: SaladGroupsRequest(
              protein: ['grilled-chicken'],
              sauce: ['lemon-dressing'],
            ),
          ),
        ),
      ]);

      final json = request.toJson();
      final encoded = jsonEncode(json);
      final salad =
          (json['mealSlots'] as List<dynamic>).first['salad']
              as Map<String, dynamic>;
      final groups = salad['groups'];

      expect(encoded, isNot(contains('Instance of')));
      expect(groups, isA<Map<String, dynamic>>());
      expect(groups, isNot(isA<String>()));
      expect(encoded, contains('premium_large_salad'));
    });
  });
}
