import 'dart:convert';

import 'package:basic_diet/data/request/day_selection_request.dart';
import 'package:basic_diet/presentation/plans/timeline/meal_planner/premium_large_salad_group_key.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DaySelectionRequest serialization', () {
    test('keeps all one-time addon ids without a local category cap', () {
      final juiceAddonIds = List.generate(8, (index) => 'juice-addon-$index');
      final request = DaySelectionRequest(
        const [],
        addonsOneTime: juiceAddonIds,
      );

      final json = request.toJson();

      expect(json['addonsOneTime'], juiceAddonIds);
      expect(json['addonsOneTime'], hasLength(8));
    });

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

    test('serializes vegetables legumes selections under vegetables', () {
      final vegetableIds = ['carrot_id', 'tomato_id', 'corn_id'];
      final vegetables = selectedPremiumLargeSaladCanonicalGroup(
        {'vegetables_legumes': vegetableIds},
        'vegetables',
      );
      final request = DaySelectionRequest([
        MealSlotRequest(
          slotIndex: 1,
          slotKey: 'slot_1',
          selectionType: 'premium_large_salad',
          proteinId: 'protein-chicken',
          salad: SaladRequest(
            presetKey: 'premium_large_salad',
            groups: SaladGroupsRequest(
              vegetables: vegetables,
              protein: ['protein-chicken'],
              sauce: ['lemon-dressing'],
            ),
          ),
        ),
      ]);

      final json = request.toJson();
      final salad =
          (json['mealSlots'] as List<dynamic>).first['salad']
              as Map<String, dynamic>;
      final groups = salad['groups'] as Map<String, dynamic>;

      expect(vegetables, vegetableIds);
      expect(groups['vegetables'], vegetableIds);
    });
  });
}
