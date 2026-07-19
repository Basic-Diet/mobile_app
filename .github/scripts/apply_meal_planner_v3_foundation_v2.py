from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]


def read(path: str) -> str:
    return (ROOT / path).read_text(encoding="utf-8")


def write(path: str, content: str) -> None:
    (ROOT / path).write_text(content, encoding="utf-8")


def replace_once(content: str, old: str, new: str, label: str) -> str:
    count = content.count(old)
    if count != 1:
        raise RuntimeError(f"{label}: expected one match, found {count}")
    return content.replace(old, new, 1)


def class_block(content: str, class_name: str, next_marker: str) -> tuple[int, int, str]:
    start = content.index(f"class {class_name}")
    end = content.index(next_marker, start + 1)
    return start, end, content[start:end]


def replace_class_block(
    content: str,
    class_name: str,
    next_marker: str,
    transform,
) -> str:
    start, end, block = class_block(content, class_name, next_marker)
    updated = transform(block)
    return content[:start] + updated + content[end:]


print("[1/9] network contract")
path = "lib/data/network/app_api.dart"
content = read(path)
content = replace_once(
    content,
    '''  @GET("/api/subscriptions/meal-planner-menu")
  Future<MealPlannerMenuResponse> getMealPlannerMenu();''',
    '''  @GET("/api/subscriptions/meal-planner-menu")
  Future<MealPlannerMenuResponse> getMealPlannerMenu(
    @Query("contractVersion") String contractVersion,
    @Query("lang") String languageCode,
  );''',
    path,
)
write(path, content)

path = "lib/data/data_source/remote_data_source.dart"
content = read(path)
content = replace_once(
    content,
    "  Future<MealPlannerMenuResponse> getMealPlannerMenu();",
    "  Future<MealPlannerMenuResponse> getMealPlannerMenu(String languageCode);",
    path,
)
write(path, content)

path = "lib/data/data_source/remote_data_source_impl.dart"
content = read(path)
content = replace_once(
    content,
    '''  Future<MealPlannerMenuResponse> getMealPlannerMenu() {
    return _appServiceClient.getMealPlannerMenu();
  }''',
    '''  Future<MealPlannerMenuResponse> getMealPlannerMenu(String languageCode) {
    return _appServiceClient.getMealPlannerMenu('v3', languageCode);
  }''',
    path,
)
write(path, content)

path = "lib/domain/repository/repository.dart"
content = read(path)
content = replace_once(
    content,
    "  Future<Either<Failure, MealPlannerMenuModel>> getMealPlannerMenu();",
    "  Future<Either<Failure, MealPlannerMenuModel>> getMealPlannerMenu(String languageCode);",
    path,
)
write(path, content)

path = "lib/data/repository/repository.dart"
content = read(path)
content = replace_once(
    content,
    '''  Future<Either<Failure, MealPlannerMenuModel>> getMealPlannerMenu() async {
    try {
      final response = await _remoteDataSource.getMealPlannerMenu();''',
    '''  Future<Either<Failure, MealPlannerMenuModel>> getMealPlannerMenu(
    String languageCode,
  ) async {
    try {
      final response = await _remoteDataSource.getMealPlannerMenu(languageCode);''',
    path,
)
write(path, content)

path = "lib/domain/usecase/get_meal_planner_menu_usecase.dart"
content = read(path)
content = replace_once(
    content,
    "implements BaseUseCase<void, MealPlannerMenuModel>",
    "implements BaseUseCase<String, MealPlannerMenuModel>",
    path,
)
content = replace_once(
    content,
    '''  Future<Either<Failure, MealPlannerMenuModel>> execute(void input) async {
    return _repository.getMealPlannerMenu();
  }''',
    '''  Future<Either<Failure, MealPlannerMenuModel>> execute(
    String languageCode,
  ) async {
    final normalizedLanguage = languageCode.toLowerCase().startsWith('en')
        ? 'en'
        : 'ar';
    return _repository.getMealPlannerMenu(normalizedLanguage);
  }''',
    path,
)
write(path, content)

print("[2/9] response product identity")
path = "lib/data/response/meal_planner_menu_response.dart"
content = read(path)


def patch_product_response(block: str) -> str:
    block = replace_once(
        block,
        '''  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'key')''',
        '''  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'productId')
  final String? productId;

  @JsonKey(name: 'key')''',
        "product response field",
    )
    block = replace_once(
        block,
        "    this.id,\n    this.key,",
        "    this.id,\n    this.productId,\n    this.key,",
        "product response constructor",
    )
    block = replace_once(
        block,
        "        id: json['id'] as String?,\n        key:",
        "        id: json['id'] as String?,\n        productId: json['productId'] as String?,\n        key:",
        "product response fromJson",
    )
    block = replace_once(
        block,
        "    'id': id,\n    'key':",
        "    'id': id,\n    'productId': productId,\n    'key':",
        "product response toJson",
    )
    return block


content = replace_class_block(
    content,
    "BuilderCatalogV2ProductResponse",
    "@JsonSerializable()\nclass BuilderCatalogV2OptionGroupResponse",
    patch_product_response,
)
write(path, content)

print("[3/9] canonical domain helpers")
path = "lib/domain/model/meal_planner_menu_model.dart"
content = read(path)
content = replace_once(
    content,
    '''  BuilderCatalogV2Model({
    required this.catalogVersion,
    required this.currency,
    required this.sections,
    required this.rules,
  });
}''',
    '''  BuilderCatalogV2Model({
    required this.catalogVersion,
    required this.currency,
    required this.sections,
    required this.rules,
  });

  List<BuilderCatalogV2ProductModel> get products => sections
      .expand((section) => section.products)
      .where((product) => product.resolvedProductId.isNotEmpty)
      .toList(growable: false);

  BuilderCatalogV2ProductModel? productById(String? productId) {
    if (productId == null || productId.isEmpty) return null;
    for (final product in products) {
      if (product.resolvedProductId == productId) return product;
    }
    return null;
  }
}''',
    "catalog helpers",
)
content = replace_once(
    content,
    '''    required this.products,
  });
}

class BuilderCatalogV2ProductModel''',
    '''    required this.products,
  });

  String localizedName(String languageCode) =>
      _localizedValue(nameI18n, languageCode, name, key);

  String localizedDescription(String languageCode) =>
      _localizedValue(descriptionI18n, languageCode, description, '');
}

class BuilderCatalogV2ProductModel''',
    "section helpers",
)


def patch_product_model(block: str) -> str:
    block = replace_once(
        block,
        "  final String id;\n  final String key;",
        "  final String id;\n  final String productId;\n  final String key;",
        "product domain field",
    )
    block = replace_once(
        block,
        "    required this.id,\n    required this.key,",
        "    required this.id,\n    this.productId = '',\n    required this.key,",
        "product domain constructor",
    )
    block = replace_once(
        block,
        '''    this.optionGroups = const [],
  });
}''',
        '''    this.optionGroups = const [],
  });

  String get resolvedProductId => productId.isNotEmpty ? productId : id;

  bool get hasCanonicalIdentity => resolvedProductId.isNotEmpty;

  bool get isDirectMeal {
    if (!action.isDirectAdd) return false;
    return action.treatAsFullMeal ||
        selectionType == 'full_meal_product' ||
        selectionType == 'sandwich';
  }

  bool get opensProductBuilder => action.opensBuilder;

  bool get hasContradictoryAction => !isDirectMeal && !opensProductBuilder;

  String localizedName(String languageCode) =>
      _localizedValue(nameI18n, languageCode, name, key);

  String localizedDescription(String languageCode) =>
      _localizedValue(descriptionI18n, languageCode, description, '');
}''',
        "product domain helpers",
    )
    return block


content = replace_class_block(
    content,
    "BuilderCatalogV2ProductModel",
    "class BuilderItemActionModel",
    patch_product_model,
)
content = replace_once(
    content,
    "  bool get opensBuilder => type == 'open_builder' && requiresBuilder;",
    "  bool get opensBuilder => type == 'open_builder' || requiresBuilder;",
    "action helper",
)


def patch_group_model(block: str) -> str:
    return replace_once(
        block,
        '''    this.options = const [],
  });
}''',
        '''    this.options = const [],
  });

  String get resolvedGroupId => groupId.isNotEmpty ? groupId : id;

  String localizedName(String languageCode) =>
      _localizedValue(nameI18n, languageCode, name, key);

  int get effectiveMinSelections =>
      minSelections ?? (isRequired ? 1 : 0);

  int get effectiveMaxSelections {
    final configured = maxSelections;
    if (configured == null || configured <= 0) return options.length;
    return configured;
  }
}''',
        "group domain helpers",
    )


content = replace_class_block(
    content,
    "BuilderCatalogV2OptionGroupModel",
    "class BuilderCatalogV2OptionSectionModel",
    patch_group_model,
)


def patch_option_model(block: str) -> str:
    return replace_once(
        block,
        '''    this.ui = const BuilderCatalogV2UiModel(),
  });
}''',
        '''    this.ui = const BuilderCatalogV2UiModel(),
  });

  String get resolvedOptionId => optionId.isNotEmpty ? optionId : id;

  String localizedName(String languageCode) =>
      _localizedValue(nameI18n, languageCode, name, key);

  String localizedDescription(String languageCode) =>
      _localizedValue(descriptionI18n, languageCode, description, '');
}''',
        "option domain helpers",
    )


content = replace_class_block(
    content,
    "BuilderCatalogV2OptionModel",
    "class BuilderCatalogV2UiModel",
    patch_option_model,
)
content += '''

String _localizedValue(
  Map<String, String> localized,
  String languageCode,
  String fallback,
  String safeFallback,
) {
  final normalizedLanguage = languageCode.toLowerCase().startsWith('en')
      ? 'en'
      : 'ar';
  final current = localized[normalizedLanguage]?.trim();
  if (current != null && current.isNotEmpty) return current;
  final base = fallback.trim();
  if (base.isNotEmpty) return base;
  final alternate = localized[normalizedLanguage == 'ar' ? 'en' : 'ar']?.trim();
  if (alternate != null && alternate.isNotEmpty) return alternate;
  return safeFallback;
}
'''
write(path, content)

print("[4/9] canonical mapper")
path = "lib/data/mappers/meal_planner_menu_mapper.dart"
content = read(path)
content = replace_once(
    content,
    '''  BuilderCatalogV2ProductModel toDomain() {
    return BuilderCatalogV2ProductModel(
      id: id.orEmpty(),
      key: key.orEmpty(),''',
    '''  BuilderCatalogV2ProductModel toDomain() {
    final resolvedProductId = _firstNotEmpty([productId, id]);
    return BuilderCatalogV2ProductModel(
      id: resolvedProductId,
      productId: resolvedProductId,
      key: key.orEmpty(),''',
    "product mapper",
)
content = replace_once(
    content,
    '''  BuilderCatalogV2OptionGroupModel toDomain() {
    return BuilderCatalogV2OptionGroupModel(
      id: id.orEmpty(),
      groupId: groupId.orEmpty(),''',
    '''  BuilderCatalogV2OptionGroupModel toDomain() {
    final resolvedGroupId = _firstNotEmpty([groupId, id]);
    return BuilderCatalogV2OptionGroupModel(
      id: resolvedGroupId,
      groupId: resolvedGroupId,''',
    "group mapper",
)
content = replace_once(
    content,
    '''  BuilderCatalogV2OptionModel toDomain() {
    return BuilderCatalogV2OptionModel(
      id: id.orEmpty(),
      optionId: optionId.orEmpty(),''',
    '''  BuilderCatalogV2OptionModel toDomain() {
    final resolvedOptionId = _firstNotEmpty([optionId, id]);
    return BuilderCatalogV2OptionModel(
      id: resolvedOptionId,
      optionId: resolvedOptionId,''',
    "option mapper",
)
content = content.replace(
    "id: option.id.orEmpty(),",
    "id: _firstNotEmpty([option.optionId, option.id]),",
)
content = replace_once(
    content,
    "          id: product.id.orEmpty(),",
    "          id: _firstNotEmpty([product.productId, product.id]),",
    "direct product mapper",
)
content += '''

String _firstNotEmpty(List<String?> values) {
  for (final value in values) {
    final normalized = value?.trim() ?? '';
    if (normalized.isNotEmpty) return normalized;
  }
  return '';
}
'''
write(path, content)

print("[5/9] locale-aware event")
path = "lib/presentation/plans/timeline/meal_planner/bloc/meal_planner_event.dart"
content = read(path)
content = replace_once(
    content,
    '''final class GetMealPlannerDataEvent extends MealPlannerEvent {
  const GetMealPlannerDataEvent();
}''',
    '''final class GetMealPlannerDataEvent extends MealPlannerEvent {
  final String languageCode;

  const GetMealPlannerDataEvent({this.languageCode = 'ar'});

  @override
  List<Object?> get props => [languageCode];
}''',
    path,
)
write(path, content)

print("[6/9] locale-aware bloc")
path = "lib/presentation/plans/timeline/meal_planner/bloc/meal_planner_bloc.dart"
content = read(path)
content = replace_once(
    content,
    '''  static const String _dayPaymentRevisionMismatchCode =
      'DAY_PAYMENT_REVISION_MISMATCH';''',
    '''  static const String _dayPaymentRevisionMismatchCode =
      'DAY_PAYMENT_REVISION_MISMATCH';
  String _languageCode = 'ar';''',
    "bloc locale field",
)
content = replace_once(
    content,
    '''    emit(MealPlannerLoading());

    final menuResult = await _getMealPlannerMenuUseCase.execute(null);''',
    '''    emit(MealPlannerLoading());
    _languageCode = event.languageCode;

    final menuResult = await _getMealPlannerMenuUseCase.execute(_languageCode);''',
    "bloc initial menu load",
)
content = content.replace(
    "final menuResult = await _getMealPlannerMenuUseCase.execute(null);",
    "final menuResult = await _getMealPlannerMenuUseCase.execute(_languageCode);",
)
write(path, content)

print("[7/9] screen locale")
path = "lib/presentation/plans/timeline/meal_planner/meal_planner_screen.dart"
content = read(path)
content = replace_once(
    content,
    ")..add(const GetMealPlannerDataEvent());",
    ")..add(GetMealPlannerDataEvent(languageCode: context.locale.languageCode));",
    path,
)
write(path, content)

print("[8/9] request file already staged")
request_path = ROOT / "lib/data/request/day_selection_request.dart"
if "meal_planner_menu.v3" not in request_path.read_text(encoding="utf-8"):
    raise RuntimeError("canonical day selection request is missing")

print("[9/9] foundation complete")
