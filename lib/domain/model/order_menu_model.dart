class OrderMenuModel {
  final String source;
  final String fulfillmentMethod;
  final String currency;
  final bool vatIncluded;
  final int vatPercentage;
  final List<String> itemTypes;
  final Map<String, dynamic> restaurantHours;

  // Dynamic catalog
  final List<OrderMenuCategoryModel> categories;

  // Legacy fallback
  final OrderMenuStandardMealsModel? standardMeals;
  final List<OrderMenuSandwichModel> sandwiches;
  final OrderMenuSaladModel? salad;
  final OrderMenuAddonsModel? addons;

  bool get hasDynamicCatalog => categories.isNotEmpty;

  const OrderMenuModel({
    required this.source,
    required this.fulfillmentMethod,
    required this.currency,
    required this.vatIncluded,
    required this.vatPercentage,
    required this.itemTypes,
    this.restaurantHours = const {},
    this.categories = const [],
    this.standardMeals,
    this.sandwiches = const [],
    this.salad,
    this.addons,
  });
}

// ─── Dynamic Catalog ───

class OrderMenuCategoryModel {
  final String id;
  final String key;
  final String name;
  final String? description;
  final String? imageUrl;
  final int sortOrder;
  final List<OrderMenuProductModel> products;

  const OrderMenuCategoryModel({
    required this.id,
    required this.key,
    required this.name,
    this.description,
    this.imageUrl,
    required this.sortOrder,
    required this.products,
  });
}

class OrderMenuProductModel {
  final String id;
  final String key;
  final String categoryId;
  final String name;
  final String itemType;
  final String pricingModel;
  final int priceHalala;
  final int baseUnitGrams;
  final int defaultWeightGrams;
  final int minWeightGrams;
  final int maxWeightGrams;
  final int weightStepGrams;
  final int sortOrder;
  final bool? requiresBuilder;
  final bool? canAddDirectly;
  final List<OrderMenuOptionGroupModel> optionGroups;

  bool get resolvedRequiresBuilder =>
      requiresBuilder ?? optionGroups.isNotEmpty || pricingModel == 'per_100g';

  bool get resolvedCanAddDirectly =>
      canAddDirectly ??
      (pricingModel == 'fixed' &&
          optionGroups.isEmpty &&
          !resolvedRequiresBuilder);

  const OrderMenuProductModel({
    required this.id,
    required this.key,
    required this.categoryId,
    required this.name,
    required this.itemType,
    required this.pricingModel,
    required this.priceHalala,
    required this.baseUnitGrams,
    required this.defaultWeightGrams,
    required this.minWeightGrams,
    required this.maxWeightGrams,
    required this.weightStepGrams,
    required this.sortOrder,
    this.requiresBuilder,
    this.canAddDirectly,
    required this.optionGroups,
  });
}

class OrderMenuOptionGroupModel {
  final String id;
  final String groupId;
  final String key;
  final String name;
  final int minSelections;
  final int maxSelections;
  final bool isRequired;
  final int sortOrder;
  final List<OrderMenuOptionModel> options;

  const OrderMenuOptionGroupModel({
    required this.id,
    required this.groupId,
    required this.key,
    required this.name,
    required this.minSelections,
    required this.maxSelections,
    required this.isRequired,
    required this.sortOrder,
    required this.options,
  });
}

class OrderMenuOptionModel {
  final String id;
  final String optionId;
  final String groupId;
  final String key;
  final String name;
  final int extraPriceHalala;
  final int extraWeightUnitGrams;
  final int extraWeightPriceHalala;
  final int sortOrder;

  const OrderMenuOptionModel({
    required this.id,
    required this.optionId,
    required this.groupId,
    required this.key,
    required this.name,
    required this.extraPriceHalala,
    required this.extraWeightUnitGrams,
    required this.extraWeightPriceHalala,
    required this.sortOrder,
  });
}

// ─── Legacy Fallback ───

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
