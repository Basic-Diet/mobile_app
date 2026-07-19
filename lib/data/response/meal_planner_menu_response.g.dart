// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_planner_menu_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MealPlannerMenuResponse _$MealPlannerMenuResponseFromJson(
  Map<String, dynamic> json,
) => MealPlannerMenuResponse(
  status: MealPlannerMenuResponse._readOkOrStatus(json, 'status') as bool?,
  message: json['message'] as String?,
  data:
      json['data'] == null
          ? null
          : MealPlannerMenuDataResponse.fromJson(
            json['data'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$MealPlannerMenuResponseToJson(
  MealPlannerMenuResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
};

MealPlannerMenuDataResponse _$MealPlannerMenuDataResponseFromJson(
  Map<String, dynamic> json,
) => MealPlannerMenuDataResponse(
  currency: json['currency'] as String?,
  builderCatalog:
      MealPlannerMenuDataResponse._readBuilderOrPlannerCatalog(
                json,
                'builderCatalog',
              ) ==
              null
          ? null
          : BuilderCatalogV2Response.fromJson(
            MealPlannerMenuDataResponse._readBuilderOrPlannerCatalog(
                  json,
                  'builderCatalog',
                )
                as Map<String, dynamic>,
          ),
  addons: MealPlannerMenuDataResponse._addonsFromJson(
    MealPlannerMenuDataResponse._readAddonsOrCatalog(json, 'addons'),
  ),
);

Map<String, dynamic> _$MealPlannerMenuDataResponseToJson(
  MealPlannerMenuDataResponse instance,
) => <String, dynamic>{
  'currency': instance.currency,
  'builderCatalog': instance.builderCatalog,
  'addons': instance.addons,
};

BuilderCatalogV2Response _$BuilderCatalogV2ResponseFromJson(
  Map<String, dynamic> json,
) => BuilderCatalogV2Response(
  catalogVersion: json['contractVersion'] as String?,
  currency: json['currency'] as String?,
  sections:
      (json['sections'] as List<dynamic>?)
          ?.map(
            (e) => BuilderCatalogV2SectionResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
  rules:
      json['rules'] == null
          ? null
          : BuilderRulesResponse.fromJson(
            json['rules'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$BuilderCatalogV2ResponseToJson(
  BuilderCatalogV2Response instance,
) => <String, dynamic>{
  'contractVersion': instance.catalogVersion,
  'currency': instance.currency,
  'sections': instance.sections,
  'rules': instance.rules,
};

BuilderCatalogV2SectionResponse _$BuilderCatalogV2SectionResponseFromJson(
  Map<String, dynamic> json,
) => BuilderCatalogV2SectionResponse(
  id: json['id'] as String?,
  key: json['key'] as String?,
  type: json['type'] as String?,
  selectionType: json['selectionType'] as String?,
  name: json['name'] as String?,
  nameI18n: json['nameI18n'] as Map<String, dynamic>?,
  description: json['description'] as String?,
  ui:
      json['ui'] == null
          ? null
          : MealPlannerMenuUiResponse.fromJson(
            json['ui'] as Map<String, dynamic>,
          ),
  sortOrder: (json['sortOrder'] as num?)?.toInt(),
  products:
      (json['products'] as List<dynamic>?)
          ?.map(
            (e) => BuilderCatalogV2ProductResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
);

Map<String, dynamic> _$BuilderCatalogV2SectionResponseToJson(
  BuilderCatalogV2SectionResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'key': instance.key,
  'type': instance.type,
  'selectionType': instance.selectionType,
  'name': instance.name,
  'nameI18n': instance.nameI18n,
  'description': instance.description,
  'ui': instance.ui,
  'sortOrder': instance.sortOrder,
  'products': instance.products,
};

BuilderCatalogV2ProductResponse _$BuilderCatalogV2ProductResponseFromJson(
  Map<String, dynamic> json,
) => BuilderCatalogV2ProductResponse(
  id: json['id'] as String?,
  productId: json['productId'] as String?,
  key: json['key'] as String?,
  type: json['type'] as String?,
  name: json['name'] as String?,
  nameI18n: json['nameI18n'] as Map<String, dynamic>?,
  description: json['description'] as String?,
  descriptionI18n: json['descriptionI18n'] as Map<String, dynamic>?,
  imageUrl: json['imageUrl'] as String?,
  isVirtual: json['isVirtual'] as bool?,
  selectionType: json['selectionType'] as String?,
  itemType: json['itemType'] as String?,
  pricingModel: json['pricingModel'] as String?,
  priceHalala: (json['priceHalala'] as num?)?.toInt(),
  currency: json['currency'] as String?,
  calories: (json['calories'] as num?)?.toInt(),
  proteinFamilyKey: json['proteinFamilyKey'] as String?,
  ui:
      json['ui'] == null
          ? null
          : MealPlannerMenuUiResponse.fromJson(
            json['ui'] as Map<String, dynamic>,
          ),
  sortOrder: (json['sortOrder'] as num?)?.toInt(),
  optionGroups:
      (json['optionGroups'] as List<dynamic>?)
          ?.map(
            (e) => BuilderCatalogV2OptionGroupResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
  optionSections:
      (json['optionSections'] as List<dynamic>?)
          ?.map(
            (e) => BuilderCatalogV2OptionSectionResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
  action:
      json['action'] == null
          ? null
          : BuilderItemActionResponse.fromJson(
            json['action'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$BuilderCatalogV2ProductResponseToJson(
  BuilderCatalogV2ProductResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'productId': instance.productId,
  'key': instance.key,
  'type': instance.type,
  'name': instance.name,
  'nameI18n': instance.nameI18n,
  'description': instance.description,
  'descriptionI18n': instance.descriptionI18n,
  'imageUrl': instance.imageUrl,
  'isVirtual': instance.isVirtual,
  'selectionType': instance.selectionType,
  'itemType': instance.itemType,
  'pricingModel': instance.pricingModel,
  'priceHalala': instance.priceHalala,
  'currency': instance.currency,
  'calories': instance.calories,
  'proteinFamilyKey': instance.proteinFamilyKey,
  'ui': instance.ui,
  'sortOrder': instance.sortOrder,
  'optionGroups': instance.optionGroups,
  'optionSections': instance.optionSections,
  'action': instance.action,
};

BuilderItemActionResponse _$BuilderItemActionResponseFromJson(
  Map<String, dynamic> json,
) => BuilderItemActionResponse(
  type: json['type'] as String?,
  requiresBuilder: json['requiresBuilder'] as bool?,
  treatAsFullMeal: json['treatAsFullMeal'] as bool?,
);

Map<String, dynamic> _$BuilderItemActionResponseToJson(
  BuilderItemActionResponse instance,
) => <String, dynamic>{
  'type': instance.type,
  'requiresBuilder': instance.requiresBuilder,
  'treatAsFullMeal': instance.treatAsFullMeal,
};

BuilderCatalogV2OptionGroupResponse
_$BuilderCatalogV2OptionGroupResponseFromJson(Map<String, dynamic> json) =>
    BuilderCatalogV2OptionGroupResponse(
      id: json['id'] as String?,
      groupId: json['groupId'] as String?,
      key: json['key'] as String?,
      sourceKey: json['sourceKey'] as String?,
      name: json['name'] as String?,
      nameI18n: json['nameI18n'] as Map<String, dynamic>?,
      minSelections: (json['minSelections'] as num?)?.toInt(),
      maxSelections: (json['maxSelections'] as num?)?.toInt(),
      isRequired: json['isRequired'] as bool?,
      sortOrder: (json['sortOrder'] as num?)?.toInt(),
      ui:
          json['ui'] == null
              ? null
              : MealPlannerMenuUiResponse.fromJson(
                json['ui'] as Map<String, dynamic>,
              ),
      rules: json['rules'] as Map<String, dynamic>?,
      optionSections:
          (json['optionSections'] as List<dynamic>?)
              ?.map(
                (e) => BuilderCatalogV2OptionSectionResponse.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList(),
      options:
          (json['options'] as List<dynamic>?)
              ?.map(
                (e) => BuilderCatalogV2OptionResponse.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList(),
    );

Map<String, dynamic> _$BuilderCatalogV2OptionGroupResponseToJson(
  BuilderCatalogV2OptionGroupResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'groupId': instance.groupId,
  'key': instance.key,
  'sourceKey': instance.sourceKey,
  'name': instance.name,
  'nameI18n': instance.nameI18n,
  'minSelections': instance.minSelections,
  'maxSelections': instance.maxSelections,
  'isRequired': instance.isRequired,
  'sortOrder': instance.sortOrder,
  'ui': instance.ui,
  'rules': instance.rules,
  'optionSections': instance.optionSections,
  'options': instance.options,
};

BuilderCatalogV2OptionResponse _$BuilderCatalogV2OptionResponseFromJson(
  Map<String, dynamic> json,
) => BuilderCatalogV2OptionResponse(
  id: json['id'] as String?,
  optionId: json['optionId'] as String?,
  key: json['key'] as String?,
  name: json['name'] as String?,
  nameI18n: json['nameI18n'] as Map<String, dynamic>?,
  description: json['description'] as String?,
  descriptionI18n: json['descriptionI18n'] as Map<String, dynamic>?,
  imageUrl: json['imageUrl'] as String?,
  displayCategoryKey: json['displayCategoryKey'] as String?,
  proteinFamilyKey: json['proteinFamilyKey'] as String?,
  proteinFamilyNameI18n: json['proteinFamilyNameI18n'] as Map<String, dynamic>?,
  premiumKey: json['premiumKey'] as String?,
  selectionType: json['selectionType'] as String?,
  isPremium: json['isPremium'] as bool?,
  extraFeeHalala: (json['extraFeeHalala'] as num?)?.toInt(),
  extraPriceHalala: (json['extraPriceHalala'] as num?)?.toInt(),
  calories: (json['calories'] as num?)?.toInt(),
  ui:
      json['ui'] == null
          ? null
          : MealPlannerMenuUiResponse.fromJson(
            json['ui'] as Map<String, dynamic>,
          ),
  sortOrder: (json['sortOrder'] as num?)?.toInt(),
);

Map<String, dynamic> _$BuilderCatalogV2OptionResponseToJson(
  BuilderCatalogV2OptionResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'optionId': instance.optionId,
  'key': instance.key,
  'name': instance.name,
  'nameI18n': instance.nameI18n,
  'description': instance.description,
  'descriptionI18n': instance.descriptionI18n,
  'imageUrl': instance.imageUrl,
  'displayCategoryKey': instance.displayCategoryKey,
  'proteinFamilyKey': instance.proteinFamilyKey,
  'proteinFamilyNameI18n': instance.proteinFamilyNameI18n,
  'premiumKey': instance.premiumKey,
  'selectionType': instance.selectionType,
  'isPremium': instance.isPremium,
  'extraFeeHalala': instance.extraFeeHalala,
  'extraPriceHalala': instance.extraPriceHalala,
  'calories': instance.calories,
  'ui': instance.ui,
  'sortOrder': instance.sortOrder,
};

MealPlannerMenuUiResponse _$MealPlannerMenuUiResponseFromJson(
  Map<String, dynamic> json,
) => MealPlannerMenuUiResponse(
  cardVariant: json['cardVariant'] as String?,
  displayStyle: json['displayStyle'] as String?,
  badge: json['badge'] as String?,
  ctaLabel: json['ctaLabel'] as String?,
  imageRatio: json['imageRatio'] as String?,
);

Map<String, dynamic> _$MealPlannerMenuUiResponseToJson(
  MealPlannerMenuUiResponse instance,
) => <String, dynamic>{
  'cardVariant': instance.cardVariant,
  'displayStyle': instance.displayStyle,
  'badge': instance.badge,
  'ctaLabel': instance.ctaLabel,
  'imageRatio': instance.imageRatio,
};

BuilderCatalogV2OptionSectionResponse
_$BuilderCatalogV2OptionSectionResponseFromJson(Map<String, dynamic> json) =>
    BuilderCatalogV2OptionSectionResponse(
      key: json['key'] as String?,
      name: json['name'] as String?,
      nameI18n: json['nameI18n'] as Map<String, dynamic>?,
      proteinFamilyKey: json['proteinFamilyKey'] as String?,
      optionIds:
          (json['optionIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      sortOrder: (json['sortOrder'] as num?)?.toInt(),
    );

Map<String, dynamic> _$BuilderCatalogV2OptionSectionResponseToJson(
  BuilderCatalogV2OptionSectionResponse instance,
) => <String, dynamic>{
  'key': instance.key,
  'name': instance.name,
  'nameI18n': instance.nameI18n,
  'proteinFamilyKey': instance.proteinFamilyKey,
  'optionIds': instance.optionIds,
  'sortOrder': instance.sortOrder,
};

MealPlannerAddonsResponse _$MealPlannerAddonsResponseFromJson(
  Map<String, dynamic> json,
) => MealPlannerAddonsResponse(
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => AddOnResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
  byCategory: json['byCategory'] as Map<String, dynamic>?,
  byType: json['byType'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$MealPlannerAddonsResponseToJson(
  MealPlannerAddonsResponse instance,
) => <String, dynamic>{
  'items': instance.items,
  'byCategory': instance.byCategory,
  'byType': instance.byType,
};

BuilderCatalogResponse _$BuilderCatalogResponseFromJson(
  Map<String, dynamic> json,
) => BuilderCatalogResponse(
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map(
            (e) => BuilderCategoryResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  proteins:
      (json['proteins'] as List<dynamic>?)
          ?.map(
            (e) => BuilderProteinResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  premiumProteins:
      (json['premiumProteins'] as List<dynamic>?)
          ?.map(
            (e) => BuilderProteinResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  carbs:
      (json['carbs'] as List<dynamic>?)
          ?.map((e) => BuilderCarbResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
  sandwiches:
      (json['sandwiches'] as List<dynamic>?)
          ?.map(
            (e) => BuilderSandwichResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  rules:
      json['rules'] == null
          ? null
          : BuilderRulesResponse.fromJson(
            json['rules'] as Map<String, dynamic>,
          ),
  premiumLargeSalad:
      BuilderCatalogResponse._readPremiumLargeSalad(
                json,
                'premiumLargeSalad',
              ) ==
              null
          ? null
          : PremiumLargeSaladResponse.fromJson(
            BuilderCatalogResponse._readPremiumLargeSalad(
                  json,
                  'premiumLargeSalad',
                )
                as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$BuilderCatalogResponseToJson(
  BuilderCatalogResponse instance,
) => <String, dynamic>{
  'categories': instance.categories,
  'proteins': instance.proteins,
  'premiumProteins': instance.premiumProteins,
  'carbs': instance.carbs,
  'sandwiches': instance.sandwiches,
  'rules': instance.rules,
  'premiumLargeSalad': instance.premiumLargeSalad,
};

PremiumLargeSaladResponse _$PremiumLargeSaladResponseFromJson(
  Map<String, dynamic> json,
) => PremiumLargeSaladResponse(
  id: json['id'] as String?,
  selectionType: json['selectionType'] as String?,
  premiumKey: json['premiumKey'] as String?,
  presetKey: json['presetKey'] as String?,
  name: json['name'] as String?,
  extraFeeHalala: (json['extraFeeHalala'] as num?)?.toInt(),
  currency: json['currency'] as String?,
  preset:
      json['preset'] == null
          ? null
          : PremiumLargeSaladPresetResponse.fromJson(
            json['preset'] as Map<String, dynamic>,
          ),
  ingredients:
      (json['ingredients'] as List<dynamic>?)
          ?.map(
            (e) => PremiumLargeSaladIngredientResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
  groups:
      (json['groups'] as List<dynamic>?)
          ?.map(
            (e) => PremiumLargeSaladGroupRuleResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
);

Map<String, dynamic> _$PremiumLargeSaladResponseToJson(
  PremiumLargeSaladResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'selectionType': instance.selectionType,
  'premiumKey': instance.premiumKey,
  'presetKey': instance.presetKey,
  'name': instance.name,
  'extraFeeHalala': instance.extraFeeHalala,
  'currency': instance.currency,
  'preset': instance.preset,
  'ingredients': instance.ingredients,
  'groups': instance.groups,
};

PremiumLargeSaladPresetResponse _$PremiumLargeSaladPresetResponseFromJson(
  Map<String, dynamic> json,
) => PremiumLargeSaladPresetResponse(
  key: json['key'] as String?,
  name: json['name'] as String?,
  selectionType: json['selectionType'] as String?,
  fixedPriceHalala: (json['fixedPriceHalala'] as num?)?.toInt(),
  currency: json['currency'] as String?,
  groups:
      (json['groups'] as List<dynamic>?)
          ?.map(
            (e) => PremiumLargeSaladGroupRuleResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
);

Map<String, dynamic> _$PremiumLargeSaladPresetResponseToJson(
  PremiumLargeSaladPresetResponse instance,
) => <String, dynamic>{
  'key': instance.key,
  'name': instance.name,
  'selectionType': instance.selectionType,
  'fixedPriceHalala': instance.fixedPriceHalala,
  'currency': instance.currency,
  'groups': instance.groups,
};

PremiumLargeSaladGroupRuleResponse _$PremiumLargeSaladGroupRuleResponseFromJson(
  Map<String, dynamic> json,
) => PremiumLargeSaladGroupRuleResponse(
  key: json['key'] as String?,
  minSelect: (json['minSelect'] as num?)?.toInt(),
  maxSelect: (json['maxSelect'] as num?)?.toInt(),
);

Map<String, dynamic> _$PremiumLargeSaladGroupRuleResponseToJson(
  PremiumLargeSaladGroupRuleResponse instance,
) => <String, dynamic>{
  'key': instance.key,
  'minSelect': instance.minSelect,
  'maxSelect': instance.maxSelect,
};

PremiumLargeSaladIngredientResponse
_$PremiumLargeSaladIngredientResponseFromJson(Map<String, dynamic> json) =>
    PremiumLargeSaladIngredientResponse(
      id: json['id'] as String?,
      groupKey: json['groupKey'] as String?,
      name: json['name'] as String?,
      calories: (json['calories'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PremiumLargeSaladIngredientResponseToJson(
  PremiumLargeSaladIngredientResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'groupKey': instance.groupKey,
  'name': instance.name,
  'calories': instance.calories,
};

BuilderCategoryResponse _$BuilderCategoryResponseFromJson(
  Map<String, dynamic> json,
) => BuilderCategoryResponse(
  json['id'] as String?,
  json['key'] as String?,
  json['dimension'] as String?,
  json['name'] as String?,
  json['description'] as String?,
  (json['sortOrder'] as num?)?.toInt(),
  json['rules'],
);

Map<String, dynamic> _$BuilderCategoryResponseToJson(
  BuilderCategoryResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'key': instance.key,
  'dimension': instance.dimension,
  'name': instance.name,
  'description': instance.description,
  'sortOrder': instance.sortOrder,
  'rules': instance.rules,
};

BuilderProteinResponse _$BuilderProteinResponseFromJson(
  Map<String, dynamic> json,
) => BuilderProteinResponse(
  json['id'] as String?,
  json['displayCategoryId'] as String?,
  json['displayCategoryKey'] as String?,
  json['name'] as String?,
  json['description'] as String?,
  json['proteinFamilyKey'] as String?,
  json['premiumKey'] as String?,
  (json['ruleTags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  json['isPremium'] as bool?,
  (json['premiumCreditCost'] as num?)?.toInt(),
  (json['extraFeeHalala'] as num?)?.toInt(),
  json['currency'] as String?,
  (json['sortOrder'] as num?)?.toInt(),
);

Map<String, dynamic> _$BuilderProteinResponseToJson(
  BuilderProteinResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'displayCategoryId': instance.displayCategoryId,
  'displayCategoryKey': instance.displayCategoryKey,
  'name': instance.name,
  'description': instance.description,
  'proteinFamilyKey': instance.proteinFamilyKey,
  'premiumKey': instance.premiumKey,
  'ruleTags': instance.ruleTags,
  'isPremium': instance.isPremium,
  'premiumCreditCost': instance.premiumCreditCost,
  'extraFeeHalala': instance.extraFeeHalala,
  'currency': instance.currency,
  'sortOrder': instance.sortOrder,
};

BuilderCarbResponse _$BuilderCarbResponseFromJson(Map<String, dynamic> json) =>
    BuilderCarbResponse(
      json['id'] as String?,
      json['displayCategoryId'] as String?,
      json['displayCategoryKey'] as String?,
      json['name'] as String?,
      json['description'] as String?,
      (json['sortOrder'] as num?)?.toInt(),
    );

Map<String, dynamic> _$BuilderCarbResponseToJson(
  BuilderCarbResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'displayCategoryId': instance.displayCategoryId,
  'displayCategoryKey': instance.displayCategoryKey,
  'name': instance.name,
  'description': instance.description,
  'sortOrder': instance.sortOrder,
};

BuilderSandwichResponse _$BuilderSandwichResponseFromJson(
  Map<String, dynamic> json,
) => BuilderSandwichResponse(
  id: json['id'] as String?,
  selectionType: json['selectionType'] as String?,
  name: json['name'] as String?,
  description: json['description'] as String?,
  sortOrder: (json['sortOrder'] as num?)?.toInt(),
);

Map<String, dynamic> _$BuilderSandwichResponseToJson(
  BuilderSandwichResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'selectionType': instance.selectionType,
  'name': instance.name,
  'description': instance.description,
  'sortOrder': instance.sortOrder,
};

BuilderRulesResponse _$BuilderRulesResponseFromJson(
  Map<String, dynamic> json,
) => BuilderRulesResponse(
  version: json['version'] as String?,
  beef:
      json['beef'] == null
          ? null
          : BeefRuleResponse.fromJson(json['beef'] as Map<String, dynamic>),
  maxCarbItemsPerMeal: (json['maxCarbItemsPerMeal'] as num?)?.toInt(),
  maxCarbTotalGrams: (json['maxCarbTotalGrams'] as num?)?.toInt(),
);

Map<String, dynamic> _$BuilderRulesResponseToJson(
  BuilderRulesResponse instance,
) => <String, dynamic>{
  'version': instance.version,
  'beef': instance.beef,
  'maxCarbItemsPerMeal': instance.maxCarbItemsPerMeal,
  'maxCarbTotalGrams': instance.maxCarbTotalGrams,
};

BeefRuleResponse _$BeefRuleResponseFromJson(Map<String, dynamic> json) =>
    BeefRuleResponse(
      proteinFamilyKey: json['proteinFamilyKey'] as String?,
      maxSlotsPerDay: (json['maxSlotsPerDay'] as num?)?.toInt(),
    );

Map<String, dynamic> _$BeefRuleResponseToJson(BeefRuleResponse instance) =>
    <String, dynamic>{
      'proteinFamilyKey': instance.proteinFamilyKey,
      'maxSlotsPerDay': instance.maxSlotsPerDay,
    };
