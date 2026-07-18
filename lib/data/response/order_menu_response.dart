import 'package:json_annotation/json_annotation.dart';

part 'order_menu_response.g.dart';

@JsonSerializable(explicitToJson: true)
class OrderMenuResponse {
  @JsonKey(name: 'status')
  final bool? status;

  @JsonKey(name: 'message')
  final String? message;

  @JsonKey(name: 'data')
  final OrderMenuDataResponse? data;

  OrderMenuResponse({this.status, this.message, this.data});

  factory OrderMenuResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderMenuResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderMenuResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderMenuDataResponse {
  @JsonKey(name: 'source')
  final String? source;

  @JsonKey(name: 'fulfillmentMethod')
  final String? fulfillmentMethod;

  @JsonKey(name: 'currency')
  final String? currency;

  @JsonKey(name: 'vatIncluded')
  final bool? vatIncluded;

  @JsonKey(name: 'vatPercentage')
  final int? vatPercentage;

  @JsonKey(name: 'itemTypes')
  final List<String>? itemTypes;

  // Dynamic catalog
  @JsonKey(name: 'categories')
  final List<OrderMenuCategoryResponse>? categories;

  // Legacy fallback
  @JsonKey(name: 'standardMeals')
  final OrderMenuStandardMealsDataResponse? standardMeals;

  @JsonKey(name: 'sandwiches')
  final List<OrderMenuSandwichResponse>? sandwiches;

  @JsonKey(name: 'salad')
  final OrderMenuSaladResponse? salad;

  @JsonKey(name: 'addons')
  final OrderMenuAddonsResponse? addons;

  @JsonKey(name: 'restaurantHours')
  final Map<String, dynamic>? restaurantHours;

  OrderMenuDataResponse({
    this.source,
    this.fulfillmentMethod,
    this.currency,
    this.vatIncluded,
    this.vatPercentage,
    this.itemTypes,
    this.categories,
    this.standardMeals,
    this.sandwiches,
    this.salad,
    this.addons,
    this.restaurantHours,
  });

  factory OrderMenuDataResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderMenuDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderMenuDataResponseToJson(this);
}

// ─── Dynamic Catalog ───

@JsonSerializable(explicitToJson: true)
class OrderMenuCategoryResponse {
  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'key')
  final String? key;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'nameI18n')
  final Map<String, dynamic>? nameI18n;

  @JsonKey(name: 'description')
  final String? description;

  @JsonKey(name: 'imageUrl')
  final String? imageUrl;

  @JsonKey(name: 'ui')
  final OrderMenuUiResponse? ui;

  @JsonKey(name: 'sortOrder')
  final int? sortOrder;

  @JsonKey(name: 'products')
  final List<OrderMenuProductResponse>? products;

  OrderMenuCategoryResponse({
    this.id,
    this.key,
    this.name,
    this.nameI18n,
    this.description,
    this.imageUrl,
    this.ui,
    this.sortOrder,
    this.products,
  });

  factory OrderMenuCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderMenuCategoryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderMenuCategoryResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderMenuProductResponse {
  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'key')
  final String? key;

  @JsonKey(name: 'categoryId')
  final String? categoryId;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'description')
  final String? description;

  @JsonKey(name: 'descriptionI18n')
  final Map<String, dynamic>? descriptionI18n;

  @JsonKey(name: 'imageUrl')
  final String? imageUrl;

  @JsonKey(name: 'nameI18n')
  final Map<String, dynamic>? nameI18n;

  @JsonKey(name: 'itemType')
  final String? itemType;

  @JsonKey(name: 'pricingModel')
  final String? pricingModel;

  @JsonKey(name: 'priceHalala')
  final int? priceHalala;

  @JsonKey(name: 'calories')
  final int? calories;

  @JsonKey(name: 'proteinFamilyKey')
  final String? proteinFamilyKey;

  @JsonKey(name: 'baseUnitGrams')
  final int? baseUnitGrams;

  @JsonKey(name: 'defaultWeightGrams')
  final int? defaultWeightGrams;

  @JsonKey(name: 'minWeightGrams')
  final int? minWeightGrams;

  @JsonKey(name: 'maxWeightGrams')
  final int? maxWeightGrams;

  @JsonKey(name: 'weightStepGrams')
  final int? weightStepGrams;

  @JsonKey(name: 'weightStepPriceHalala')
  final int? weightStepPriceHalala;

  @JsonKey(name: 'weightPricing')
  final OrderMenuWeightPricingResponse? weightPricing;

  @JsonKey(name: 'sortOrder')
  final int? sortOrder;

  @JsonKey(name: 'requiresBuilder')
  final bool? requiresBuilder;

  @JsonKey(name: 'canAddDirectly')
  final bool? canAddDirectly;

  @JsonKey(name: 'ui')
  final OrderMenuUiResponse? ui;

  @JsonKey(name: 'optionSections')
  final List<OrderMenuOptionSectionResponse>? optionSections;

  @JsonKey(name: 'optionGroups')
  final List<OrderMenuOptionGroupResponse>? optionGroups;

  OrderMenuProductResponse({
    this.id,
    this.key,
    this.categoryId,
    this.name,
    this.description,
    this.descriptionI18n,
    this.imageUrl,
    this.nameI18n,
    this.itemType,
    this.pricingModel,
    this.priceHalala,
    this.calories,
    this.proteinFamilyKey,
    this.baseUnitGrams,
    this.defaultWeightGrams,
    this.minWeightGrams,
    this.maxWeightGrams,
    this.weightStepGrams,
    this.weightStepPriceHalala,
    this.weightPricing,
    this.sortOrder,
    this.requiresBuilder,
    this.canAddDirectly,
    this.ui,
    this.optionSections,
    this.optionGroups,
  });

  factory OrderMenuProductResponse.fromJson(Map<String, dynamic> json) =>
      OrderMenuProductResponse(
        id: json['id'] as String?,
        key: json['key'] as String?,
        categoryId: json['categoryId'] as String?,
        name: json['name'] as String?,
        description: json['description'] as String?,
        descriptionI18n: _stringDynamicMap(json['descriptionI18n']),
        imageUrl: json['imageUrl'] as String?,
        nameI18n: _stringDynamicMap(json['nameI18n']),
        itemType: json['itemType'] as String?,
        pricingModel: json['pricingModel'] as String?,
        priceHalala: (json['priceHalala'] as num?)?.toInt(),
        calories: (json['calories'] as num?)?.toInt(),
        proteinFamilyKey: json['proteinFamilyKey'] as String?,
        baseUnitGrams: (json['baseUnitGrams'] as num?)?.toInt(),
        defaultWeightGrams: (json['defaultWeightGrams'] as num?)?.toInt(),
        minWeightGrams: (json['minWeightGrams'] as num?)?.toInt(),
        maxWeightGrams: (json['maxWeightGrams'] as num?)?.toInt(),
        weightStepGrams: (json['weightStepGrams'] as num?)?.toInt(),
        weightStepPriceHalala:
            (json['weightStepPriceHalala'] as num?)?.toInt(),
        weightPricing:
            json['weightPricing'] is Map<String, dynamic>
                ? OrderMenuWeightPricingResponse.fromJson(
                  json['weightPricing'] as Map<String, dynamic>,
                )
                : null,
        sortOrder: (json['sortOrder'] as num?)?.toInt(),
        requiresBuilder: json['requiresBuilder'] as bool?,
        canAddDirectly: json['canAddDirectly'] as bool?,
        ui:
            json['ui'] is Map<String, dynamic>
                ? OrderMenuUiResponse.fromJson(
                  json['ui'] as Map<String, dynamic>,
                )
                : null,
        optionSections:
            (json['optionSections'] as List<dynamic>?)
                ?.whereType<Map<String, dynamic>>()
                .map(OrderMenuOptionSectionResponse.fromJson)
                .toList(),
        optionGroups:
            (json['optionGroups'] as List<dynamic>?)
                ?.whereType<Map<String, dynamic>>()
                .map(OrderMenuOptionGroupResponse.fromJson)
                .toList(),
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'key': key,
    'categoryId': categoryId,
    'name': name,
    'description': description,
    'descriptionI18n': descriptionI18n,
    'imageUrl': imageUrl,
    'nameI18n': nameI18n,
    'itemType': itemType,
    'pricingModel': pricingModel,
    'priceHalala': priceHalala,
    'calories': calories,
    'proteinFamilyKey': proteinFamilyKey,
    'baseUnitGrams': baseUnitGrams,
    'defaultWeightGrams': defaultWeightGrams,
    'minWeightGrams': minWeightGrams,
    'maxWeightGrams': maxWeightGrams,
    'weightStepGrams': weightStepGrams,
    'weightStepPriceHalala': weightStepPriceHalala,
    'weightPricing': weightPricing?.toJson(),
    'sortOrder': sortOrder,
    'requiresBuilder': requiresBuilder,
    'canAddDirectly': canAddDirectly,
    'ui': ui?.toJson(),
    'optionSections':
        optionSections?.map((section) => section.toJson()).toList(),
    'optionGroups': optionGroups?.map((group) => group.toJson()).toList(),
  };
}

class OrderMenuWeightPricingResponse {
  final String? contractVersion;
  final String? strategy;
  final bool? requiresWeightSelection;
  final int? basePriceHalala;
  final int? baseWeightGrams;
  final int? defaultWeightGrams;
  final int? minWeightGrams;
  final int? maxWeightGrams;
  final int? stepGrams;
  final int? stepPriceHalala;
  final List<OrderMenuWeightPricingChoiceResponse>? choices;

  const OrderMenuWeightPricingResponse({
    this.contractVersion,
    this.strategy,
    this.requiresWeightSelection,
    this.basePriceHalala,
    this.baseWeightGrams,
    this.defaultWeightGrams,
    this.minWeightGrams,
    this.maxWeightGrams,
    this.stepGrams,
    this.stepPriceHalala,
    this.choices,
  });

  factory OrderMenuWeightPricingResponse.fromJson(Map<String, dynamic> json) {
    final rawChoices = json['choices'] ?? json['weightChoices'];
    return OrderMenuWeightPricingResponse(
      contractVersion:
          json['contractVersion'] as String? ??
          json['weightPricingContractVersion'] as String?,
      strategy: json['strategy'] as String?,
      requiresWeightSelection: json['requiresWeightSelection'] as bool?,
      basePriceHalala:
          (json['basePriceHalala'] as num?)?.toInt() ??
          (json['priceHalala'] as num?)?.toInt(),
      baseWeightGrams:
          (json['baseWeightGrams'] as num?)?.toInt() ??
          (json['baseUnitGrams'] as num?)?.toInt(),
      defaultWeightGrams: (json['defaultWeightGrams'] as num?)?.toInt(),
      minWeightGrams: (json['minWeightGrams'] as num?)?.toInt(),
      maxWeightGrams: (json['maxWeightGrams'] as num?)?.toInt(),
      stepGrams:
          (json['stepGrams'] as num?)?.toInt() ??
          (json['weightStepGrams'] as num?)?.toInt(),
      stepPriceHalala:
          (json['stepPriceHalala'] as num?)?.toInt() ??
          (json['weightStepPriceHalala'] as num?)?.toInt(),
      choices:
          rawChoices is List
              ? rawChoices
                  .whereType<Map<String, dynamic>>()
                  .map(OrderMenuWeightPricingChoiceResponse.fromJson)
                  .toList()
              : null,
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
    'contractVersion': contractVersion,
    'strategy': strategy,
    'requiresWeightSelection': requiresWeightSelection,
    'basePriceHalala': basePriceHalala,
    'baseWeightGrams': baseWeightGrams,
    'defaultWeightGrams': defaultWeightGrams,
    'minWeightGrams': minWeightGrams,
    'maxWeightGrams': maxWeightGrams,
    'stepGrams': stepGrams,
    'stepPriceHalala': stepPriceHalala,
    'choices': choices?.map((choice) => choice.toJson()).toList(),
  };
}

class OrderMenuWeightPricingChoiceResponse {
  final int? weightGrams;
  final int? priceHalala;

  const OrderMenuWeightPricingChoiceResponse({
    this.weightGrams,
    this.priceHalala,
  });

  factory OrderMenuWeightPricingChoiceResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    return OrderMenuWeightPricingChoiceResponse(
      weightGrams: (json['weightGrams'] as num?)?.toInt(),
      priceHalala: (json['priceHalala'] as num?)?.toInt(),
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
    'weightGrams': weightGrams,
    'priceHalala': priceHalala,
  };
}

@JsonSerializable(explicitToJson: true)
class OrderMenuOptionGroupResponse {
  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'groupId')
  final String? groupId;

  @JsonKey(name: 'key')
  final String? key;

  @JsonKey(name: 'sourceKey')
  final String? sourceKey;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'nameI18n')
  final Map<String, dynamic>? nameI18n;

  @JsonKey(name: 'rules')
  final Map<String, dynamic>? rules;

  @JsonKey(name: 'minSelections')
  final int? minSelections;

  @JsonKey(name: 'maxSelections')
  final int? maxSelections;

  @JsonKey(name: 'isRequired')
  final bool? isRequired;

  @JsonKey(name: 'ui')
  final OrderMenuUiResponse? ui;

  @JsonKey(name: 'optionSections')
  final List<OrderMenuOptionSectionResponse>? optionSections;

  @JsonKey(name: 'sortOrder')
  final int? sortOrder;

  @JsonKey(name: 'options')
  final List<OrderMenuOptionResponse>? options;

  OrderMenuOptionGroupResponse({
    this.id,
    this.groupId,
    this.key,
    this.sourceKey,
    this.name,
    this.nameI18n,
    this.rules,
    this.minSelections,
    this.maxSelections,
    this.isRequired,
    this.ui,
    this.optionSections,
    this.sortOrder,
    this.options,
  });

  factory OrderMenuOptionGroupResponse.fromJson(Map<String, dynamic> json) =>
      OrderMenuOptionGroupResponse(
        id: json['id'] as String?,
        groupId: json['groupId'] as String?,
        key: json['key'] as String?,
        sourceKey: json['sourceKey'] as String?,
        name: json['name'] as String?,
        nameI18n: _stringDynamicMap(json['nameI18n']),
        rules: _dynamicMap(json['rules']),
        minSelections: (json['minSelections'] as num?)?.toInt(),
        maxSelections: (json['maxSelections'] as num?)?.toInt(),
        isRequired: json['isRequired'] as bool?,
        ui:
            json['ui'] is Map<String, dynamic>
                ? OrderMenuUiResponse.fromJson(
                  json['ui'] as Map<String, dynamic>,
                )
                : null,
        optionSections:
            (json['optionSections'] as List<dynamic>?)
                ?.whereType<Map<String, dynamic>>()
                .map(OrderMenuOptionSectionResponse.fromJson)
                .toList(),
        sortOrder: (json['sortOrder'] as num?)?.toInt(),
        options:
            (json['options'] as List<dynamic>?)
                ?.whereType<Map<String, dynamic>>()
                .map(OrderMenuOptionResponse.fromJson)
                .toList(),
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'groupId': groupId,
    'key': key,
    'sourceKey': sourceKey,
    'name': name,
    'nameI18n': nameI18n,
    'rules': rules,
    'minSelections': minSelections,
    'maxSelections': maxSelections,
    'isRequired': isRequired,
    'ui': ui?.toJson(),
    'optionSections':
        optionSections?.map((section) => section.toJson()).toList(),
    'sortOrder': sortOrder,
    'options': options?.map((option) => option.toJson()).toList(),
  };
}

@JsonSerializable(explicitToJson: true)
class OrderMenuOptionSectionResponse {
  @JsonKey(name: 'key')
  final String? key;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'proteinFamilyKey')
  final String? proteinFamilyKey;

  @JsonKey(name: 'optionIds')
  final List<String>? optionIds;

  @JsonKey(name: 'sortOrder')
  final int? sortOrder;

  const OrderMenuOptionSectionResponse({
    this.key,
    this.name,
    this.proteinFamilyKey,
    this.optionIds,
    this.sortOrder,
  });

  factory OrderMenuOptionSectionResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderMenuOptionSectionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderMenuOptionSectionResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderMenuOptionResponse {
  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'optionId')
  final String? optionId;

  @JsonKey(name: 'groupId')
  final String? groupId;

  @JsonKey(name: 'key')
  final String? key;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'nameI18n')
  final Map<String, dynamic>? nameI18n;

  @JsonKey(name: 'description')
  final String? description;

  @JsonKey(name: 'descriptionI18n')
  final Map<String, dynamic>? descriptionI18n;

  @JsonKey(name: 'imageUrl')
  final String? imageUrl;

  @JsonKey(name: 'extraPriceHalala')
  final int? extraPriceHalala;

  @JsonKey(name: 'extraFeeHalala')
  final int? extraFeeHalala;

  @JsonKey(name: 'displayCategoryKey')
  final String? displayCategoryKey;

  @JsonKey(name: 'proteinFamilyKey')
  final String? proteinFamilyKey;

  @JsonKey(name: 'proteinFamilyNameI18n')
  final Map<String, dynamic>? proteinFamilyNameI18n;

  @JsonKey(name: 'premiumKey')
  final String? premiumKey;

  @JsonKey(name: 'selectionType')
  final String? selectionType;

  @JsonKey(name: 'isPremium')
  final bool? isPremium;

  @JsonKey(name: 'extraWeightUnitGrams')
  final int? extraWeightUnitGrams;

  @JsonKey(name: 'extraWeightPriceHalala')
  final int? extraWeightPriceHalala;

  @JsonKey(name: 'calories')
  final int? calories;

  @JsonKey(name: 'ui')
  final OrderMenuUiResponse? ui;

  @JsonKey(name: 'sortOrder')
  final int? sortOrder;

  OrderMenuOptionResponse({
    this.id,
    this.optionId,
    this.groupId,
    this.key,
    this.name,
    this.nameI18n,
    this.description,
    this.descriptionI18n,
    this.imageUrl,
    this.extraPriceHalala,
    this.extraFeeHalala,
    this.displayCategoryKey,
    this.proteinFamilyKey,
    this.proteinFamilyNameI18n,
    this.premiumKey,
    this.selectionType,
    this.isPremium,
    this.extraWeightUnitGrams,
    this.extraWeightPriceHalala,
    this.calories,
    this.ui,
    this.sortOrder,
  });

  factory OrderMenuOptionResponse.fromJson(Map<String, dynamic> json) =>
      OrderMenuOptionResponse(
        id: json['id'] as String?,
        optionId: json['optionId'] as String?,
        groupId: json['groupId'] as String?,
        key: json['key'] as String?,
        name: json['name'] as String?,
        nameI18n: _stringDynamicMap(json['nameI18n']),
        description: json['description'] as String?,
        descriptionI18n: _stringDynamicMap(json['descriptionI18n']),
        imageUrl: json['imageUrl'] as String?,
        extraPriceHalala: (json['extraPriceHalala'] as num?)?.toInt(),
        extraFeeHalala: (json['extraFeeHalala'] as num?)?.toInt(),
        displayCategoryKey: json['displayCategoryKey'] as String?,
        proteinFamilyKey: json['proteinFamilyKey'] as String?,
        proteinFamilyNameI18n: _stringDynamicMap(json['proteinFamilyNameI18n']),
        premiumKey: json['premiumKey'] as String?,
        selectionType: json['selectionType'] as String?,
        isPremium: json['isPremium'] as bool?,
        extraWeightUnitGrams: (json['extraWeightUnitGrams'] as num?)?.toInt(),
        extraWeightPriceHalala:
            (json['extraWeightPriceHalala'] as num?)?.toInt(),
        calories: (json['calories'] as num?)?.toInt(),
        ui:
            json['ui'] is Map<String, dynamic>
                ? OrderMenuUiResponse.fromJson(
                  json['ui'] as Map<String, dynamic>,
                )
                : null,
        sortOrder: (json['sortOrder'] as num?)?.toInt(),
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'optionId': optionId,
    'groupId': groupId,
    'key': key,
    'name': name,
    'nameI18n': nameI18n,
    'description': description,
    'descriptionI18n': descriptionI18n,
    'imageUrl': imageUrl,
    'extraPriceHalala': extraPriceHalala,
    'extraFeeHalala': extraFeeHalala,
    'displayCategoryKey': displayCategoryKey,
    'proteinFamilyKey': proteinFamilyKey,
    'proteinFamilyNameI18n': proteinFamilyNameI18n,
    'premiumKey': premiumKey,
    'selectionType': selectionType,
    'isPremium': isPremium,
    'extraWeightUnitGrams': extraWeightUnitGrams,
    'extraWeightPriceHalala': extraWeightPriceHalala,
    'calories': calories,
    'ui': ui?.toJson(),
    'sortOrder': sortOrder,
  };
}

@JsonSerializable()
class OrderMenuUiResponse {
  @JsonKey(name: 'cardSize')
  final String? cardSize;

  @JsonKey(name: 'cardVariant')
  final String? cardVariant;

  @JsonKey(name: 'displayStyle')
  final String? displayStyle;

  @JsonKey(name: 'badge')
  final String? badge;

  @JsonKey(name: 'ctaLabel')
  final String? ctaLabel;

  @JsonKey(name: 'imageRatio')
  final String? imageRatio;

  const OrderMenuUiResponse({
    this.cardSize,
    this.cardVariant,
    this.displayStyle,
    this.badge,
    this.ctaLabel,
    this.imageRatio,
  });

  factory OrderMenuUiResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderMenuUiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderMenuUiResponseToJson(this);
}

// ─── Legacy Fallback ───

@JsonSerializable(explicitToJson: true)
class OrderMenuStandardMealsDataResponse {
  @JsonKey(name: 'proteins')
  final List<OrderMenuProteinResponse>? proteins;

  @JsonKey(name: 'carbs')
  final List<OrderMenuCarbResponse>? carbs;

  OrderMenuStandardMealsDataResponse({this.proteins, this.carbs});

  factory OrderMenuStandardMealsDataResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$OrderMenuStandardMealsDataResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$OrderMenuStandardMealsDataResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderMenuProteinResponse {
  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'name')
  final String? name;

  OrderMenuProteinResponse({this.id, this.name});

  factory OrderMenuProteinResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderMenuProteinResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderMenuProteinResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderMenuCarbResponse {
  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'defaultGrams')
  final int? defaultGrams;

  OrderMenuCarbResponse({this.id, this.name, this.defaultGrams});

  factory OrderMenuCarbResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderMenuCarbResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderMenuCarbResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderMenuSandwichResponse {
  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'description')
  final String? description;

  @JsonKey(name: 'imageUrl')
  final String? imageUrl;

  @JsonKey(name: 'priceHalala')
  final int? priceHalala;

  @JsonKey(name: 'availableAddons')
  final List<OrderMenuAddonItemResponse>? availableAddons;

  OrderMenuSandwichResponse({
    this.id,
    this.name,
    this.description,
    this.imageUrl,
    this.priceHalala,
    this.availableAddons,
  });

  factory OrderMenuSandwichResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderMenuSandwichResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderMenuSandwichResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderMenuSaladResponse {
  @JsonKey(name: 'ingredients')
  final List<OrderMenuIngredientResponse>? ingredients;

  @JsonKey(name: 'rules')
  final Map<String, dynamic>? rules;

  OrderMenuSaladResponse({this.ingredients, this.rules});

  factory OrderMenuSaladResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderMenuSaladResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderMenuSaladResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderMenuIngredientResponse {
  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'priceHalala')
  final int? priceHalala;

  OrderMenuIngredientResponse({this.id, this.name, this.priceHalala});

  factory OrderMenuIngredientResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderMenuIngredientResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderMenuIngredientResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderMenuAddonsResponse {
  @JsonKey(name: 'items')
  final List<OrderMenuAddonItemResponse>? items;

  @JsonKey(name: 'byCategory')
  final Map<String, dynamic>? byCategory;

  OrderMenuAddonsResponse({this.items, this.byCategory});

  factory OrderMenuAddonsResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderMenuAddonsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderMenuAddonsResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderMenuAddonItemResponse {
  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'description')
  final String? description;

  @JsonKey(name: 'imageUrl')
  final String? imageUrl;

  @JsonKey(name: 'priceHalala')
  final int? priceHalala;

  @JsonKey(name: 'category')
  final String? category;

  OrderMenuAddonItemResponse({
    this.id,
    this.name,
    this.description,
    this.imageUrl,
    this.priceHalala,
    this.category,
  });

  factory OrderMenuAddonItemResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderMenuAddonItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderMenuAddonItemResponseToJson(this);
}

Map<String, dynamic>? _dynamicMap(Object? json) {
  if (json is Map<String, dynamic>) return json;
  if (json is Map) return Map<String, dynamic>.from(json);
  return null;
}

Map<String, String>? _stringDynamicMap(Object? json) {
  final map = _dynamicMap(json);
  if (map == null) return null;
  return map.map((key, value) => MapEntry(key, value?.toString() ?? ''));
}
