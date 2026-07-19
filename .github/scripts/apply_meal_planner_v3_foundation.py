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


# ---------------------------------------------------------------------------
# Network + repository contract
# ---------------------------------------------------------------------------
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
    '''class GetMealPlannerMenuUseCase
    implements BaseUseCase<void, MealPlannerMenuModel> {''',
    '''class GetMealPlannerMenuUseCase
    implements BaseUseCase<String, MealPlannerMenuModel> {''',
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

# ---------------------------------------------------------------------------
# Public response identity aliases
# ---------------------------------------------------------------------------
path = "lib/data/response/meal_planner_menu_response.dart"
content = read(path)
content = replace_once(
    content,
    '''  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'key')
  final String? key;''',
    '''  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'productId')
  final String? productId;

  @JsonKey(name: 'key')
  final String? key;''',
    f"{path}: product field",
)
content = replace_once(
    content,
    '''  const BuilderCatalogV2ProductResponse({
    this.id,
    this.key,''',
    '''  const BuilderCatalogV2ProductResponse({
    this.id,
    this.productId,
    this.key,''',
    f"{path}: constructor",
)
content = replace_once(
    content,
    '''      BuilderCatalogV2ProductResponse(
        id: json['id'] as String?,
        key: json['key'] as String?,''',
    '''      BuilderCatalogV2ProductResponse(
        id: json['id'] as String?,
        productId: json['productId'] as String?,
        key: json['key'] as String?,''',
    f"{path}: fromJson",
)
content = replace_once(
    content,
    '''  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'key': key,''',
    '''  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'productId': productId,
    'key': key,''',
    f"{path}: toJson",
)
write(path, content)

# ---------------------------------------------------------------------------
# Canonical domain helpers
# ---------------------------------------------------------------------------
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
    f"{path}: catalog helpers",
)
content = replace_once(
    content,
    '''  BuilderCatalogV2SectionModel({
    required this.id,
    required this.key,
    required this.type,
    required this.selectionType,
    required this.name,
    this.nameI18n = const {},
    this.description = '',
    this.descriptionI18n = const {},
    required this.sortOrder,
    required this.ui,
    required this.products,
  });
}''',
    '''  BuilderCatalogV2SectionModel({
    required this.id,
    required this.key,
    required this.type,
    required this.selectionType,
    required this.name,
    this.nameI18n = const {},
    this.description = '',
    this.descriptionI18n = const {},
    required this.sortOrder,
    required this.ui,
    required this.products,
  });

  String localizedName(String languageCode) =>
      _localizedValue(nameI18n, languageCode, name, key);

  String localizedDescription(String languageCode) =>
      _localizedValue(descriptionI18n, languageCode, description, '');
}''',
    f"{path}: section helpers",
)
content = replace_once(
    content,
    '''class BuilderCatalogV2ProductModel {
  final String id;
  final String key;''',
    '''class BuilderCatalogV2ProductModel {
  final String id;
  final String productId;
  final String key;''',
    f"{path}: product field",
)
content = replace_once(
    content,
    '''  BuilderCatalogV2ProductModel({
    required this.id,
    required this.key,''',
    '''  BuilderCatalogV2ProductModel({
    required this.id,
    this.productId = '',
    required this.key,''',
    f"{path}: product constructor",
)
content = replace_once(
    content,
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
    f"{path}: product helpers",
)
content = replace_once(
    content,
    '''  bool get isDirectAdd => type == 'direct_add' && !requiresBuilder;

  bool get opensBuilder => type == 'open_builder' && requiresBuilder;''',
    '''  bool get isDirectAdd => type == 'direct_add' && !requiresBuilder;

  bool get opensBuilder => type == 'open_builder' || requiresBuilder;''',
    f"{path}: action helpers",
)
content = replace_once(
    content,
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
    if (configured == null || configured <= 0) {
      return options.length;
    }
    return configured;
  }
}''',
    f"{path}: group helpers",
)
content = replace_once(
    content,
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
    f"{path}: option helpers",
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

# ---------------------------------------------------------------------------
# Mapper uses resolved canonical aliases
# ---------------------------------------------------------------------------
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
    f"{path}: product mapping",
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
    f"{path}: group mapping",
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
    f"{path}: option mapping",
)
content = content.replace("id: option.id.orEmpty(),", "id: _firstNotEmpty([option.optionId, option.id]),")
content = replace_once(
    content,
    "          id: product.id.orEmpty(),",
    "          id: _firstNotEmpty([product.productId, product.id]),",
    f"{path}: direct identity",
)
if "String _firstNotEmpty(" not in content:
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

# ---------------------------------------------------------------------------
# BLoC requests menu in the active locale and reuses it for refreshes
# ---------------------------------------------------------------------------
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

path = "lib/presentation/plans/timeline/meal_planner/bloc/meal_planner_bloc.dart"
content = read(path)
content = replace_once(
    content,
    '''  static const String _dayPaymentRevisionMismatchCode =
      'DAY_PAYMENT_REVISION_MISMATCH';''',
    '''  static const String _dayPaymentRevisionMismatchCode =
      'DAY_PAYMENT_REVISION_MISMATCH';
  String _languageCode = 'ar';''',
    f"{path}: locale field",
)
content = replace_once(
    content,
    '''    emit(MealPlannerLoading());

    final menuResult = await _getMealPlannerMenuUseCase.execute(null);''',
    '''    emit(MealPlannerLoading());
    _languageCode = event.languageCode;

    final menuResult = await _getMealPlannerMenuUseCase.execute(_languageCode);''',
    f"{path}: initial load",
)
content = content.replace(
    "final menuResult = await _getMealPlannerMenuUseCase.execute(null);",
    "final menuResult = await _getMealPlannerMenuUseCase.execute(_languageCode);",
)
write(path, content)

path = "lib/presentation/plans/timeline/meal_planner/meal_planner_screen.dart"
content = read(path)
content = content.replace(
    ")..add(const GetMealPlannerDataEvent());",
    ")..add(GetMealPlannerDataEvent(languageCode: context.locale.languageCode));",
)
write(path, content)

print("Meal Planner V3 foundation applied")
