String normalizePremiumLargeSaladGroupKey(String input) {
  final key =
      input.toLowerCase().trim().replaceAll(' ', '').replaceAll('-', '_');

  if (key == 'leafygreens') return 'leafy_greens';

  if (key == 'cheesenuts' || key == 'nutscheese') {
    return 'cheese_nuts';
  }

  if (key == 'vegetable' ||
      key == 'vegetables_legumes' ||
      key == 'vegetable_legumes' ||
      key == 'vegetablesandlegumes') {
    return 'vegetables';
  }

  if (key == 'fruit') return 'fruits';
  if (key == 'sauces') return 'sauce';

  return key;
}

List<String> selectedPremiumLargeSaladCanonicalGroup(
  Map<String, List<String>> selectedByGroup,
  String target,
) {
  final normalizedTarget = normalizePremiumLargeSaladGroupKey(target);
  final out = <String>[];
  for (final entry in selectedByGroup.entries) {
    if (normalizePremiumLargeSaladGroupKey(entry.key) == normalizedTarget) {
      out.addAll(entry.value);
    }
  }
  return out;
}
