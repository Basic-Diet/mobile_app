import 'package:basic_diet/domain/model/order_menu_model.dart';

class MenuChipData {
  final String key;
  final String label;

  const MenuChipData({required this.key, required this.label});
}

class MenuSectionData {
  final String key;
  final String title;
  final String? subtitle;
  final List<OrderMenuProductModel> products;

  const MenuSectionData({
    required this.key,
    required this.title,
    required this.products,
    this.subtitle,
  });
}

class OptionSectionData {
  final String title;
  final List<OrderMenuOptionModel> options;

  const OptionSectionData({required this.title, required this.options});
}

class BuilderProductsData {
  final List<OrderMenuProductModel> main;
  final List<OrderMenuProductModel> light;

  const BuilderProductsData({required this.main, required this.light});
}
