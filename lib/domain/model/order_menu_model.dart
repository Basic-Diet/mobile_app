class OrderMenuModel {
  final String currency;
  final List<String> itemTypes;
  final OrderMenuStandardMealsModel? standardMeals;
  final List<OrderMenuSandwichModel> sandwiches;
  final OrderMenuSaladModel? salad;
  final OrderMenuAddonsModel? addons;
  final Map<String, dynamic> restaurantHours;

  const OrderMenuModel({
    required this.currency,
    required this.itemTypes,
    this.standardMeals,
    required this.sandwiches,
    this.salad,
    this.addons,
    required this.restaurantHours,
  });
}

class OrderMenuStandardMealsModel {
  final List<OrderMenuProteinModel> proteins;
  final List<OrderMenuCarbModel> carbs;

  const OrderMenuStandardMealsModel({
    required this.proteins,
    required this.carbs,
  });
}

class OrderMenuProteinModel {
  final String id;
  final String name;

  const OrderMenuProteinModel({required this.id, required this.name});
}

class OrderMenuCarbModel {
  final String id;
  final String name;
  final int defaultGrams;

  const OrderMenuCarbModel({
    required this.id,
    required this.name,
    required this.defaultGrams,
  });
}

class OrderMenuSandwichModel {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final int priceHalala;
  final List<OrderMenuAddonItemModel> availableAddons;

  const OrderMenuSandwichModel({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.priceHalala,
    required this.availableAddons,
  });
}

class OrderMenuSaladModel {
  final List<OrderMenuIngredientModel> ingredients;
  final Map<String, dynamic> rules;

  const OrderMenuSaladModel({required this.ingredients, required this.rules});
}

class OrderMenuIngredientModel {
  final String id;
  final String name;
  final int priceHalala;

  const OrderMenuIngredientModel({
    required this.id,
    required this.name,
    required this.priceHalala,
  });
}

class OrderMenuAddonsModel {
  final List<OrderMenuAddonItemModel> items;
  final Map<String, dynamic> byCategory;

  const OrderMenuAddonsModel({required this.items, required this.byCategory});
}

class OrderMenuAddonItemModel {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final int priceHalala;
  final String category;

  const OrderMenuAddonItemModel({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.priceHalala,
    required this.category,
  });
}
