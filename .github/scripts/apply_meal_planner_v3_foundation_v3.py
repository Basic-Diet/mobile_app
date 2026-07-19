from pathlib import Path

source_path = Path(__file__).with_name('apply_meal_planner_v3_foundation_v2.py')
source = source_path.read_text(encoding='utf-8')
source = source.replace(
    "'''  BuilderCatalogV2ProductModel toDomain() {\n    return BuilderCatalogV2ProductModel(\n      id: id.orEmpty(),\n      key: key.orEmpty(),''',",
    "'''  BuilderCatalogV2ProductModel toRawDomain() {\n    return BuilderCatalogV2ProductModel(\n      id: id.orEmpty(),\n      key: key.orEmpty(),''',",
)
source = source.replace(
    "'''  BuilderCatalogV2ProductModel toDomain() {\n    final resolvedProductId = _firstNotEmpty([productId, id]);\n    return BuilderCatalogV2ProductModel(\n      id: resolvedProductId,\n      productId: resolvedProductId,\n      key: key.orEmpty(),''',",
    "'''  BuilderCatalogV2ProductModel toRawDomain() {\n    final resolvedProductId = _firstNotEmpty([productId, id]);\n    return BuilderCatalogV2ProductModel(\n      id: resolvedProductId,\n      productId: resolvedProductId,\n      key: key.orEmpty(),''',",
)
source = source.replace(
    "'''  BuilderCatalogV2OptionGroupModel toDomain() {\n    return BuilderCatalogV2OptionGroupModel(\n      id: id.orEmpty(),\n      groupId: groupId.orEmpty(),''',",
    "'''  BuilderCatalogV2OptionGroupModel toRawDomain() {\n    return BuilderCatalogV2OptionGroupModel(\n      id: id.orEmpty(),\n      groupId: groupId.orEmpty(),''',",
)
source = source.replace(
    "'''  BuilderCatalogV2OptionGroupModel toDomain() {\n    final resolvedGroupId = _firstNotEmpty([groupId, id]);\n    return BuilderCatalogV2OptionGroupModel(\n      id: resolvedGroupId,\n      groupId: resolvedGroupId,''',",
    "'''  BuilderCatalogV2OptionGroupModel toRawDomain() {\n    final resolvedGroupId = _firstNotEmpty([groupId, id]);\n    return BuilderCatalogV2OptionGroupModel(\n      id: resolvedGroupId,\n      groupId: resolvedGroupId,''',",
)
source = source.replace(
    "'''  BuilderCatalogV2OptionModel toDomain() {\n    return BuilderCatalogV2OptionModel(\n      id: id.orEmpty(),\n      optionId: optionId.orEmpty(),''',",
    "'''  BuilderCatalogV2OptionModel toRawDomain() {\n    return BuilderCatalogV2OptionModel(\n      id: id.orEmpty(),\n      optionId: optionId.orEmpty(),''',",
)
source = source.replace(
    "'''  BuilderCatalogV2OptionModel toDomain() {\n    final resolvedOptionId = _firstNotEmpty([optionId, id]);\n    return BuilderCatalogV2OptionModel(\n      id: resolvedOptionId,\n      optionId: resolvedOptionId,''',",
    "'''  BuilderCatalogV2OptionModel toRawDomain() {\n    final resolvedOptionId = _firstNotEmpty([optionId, id]);\n    return BuilderCatalogV2OptionModel(\n      id: resolvedOptionId,\n      optionId: resolvedOptionId,''',",
)
exec(compile(source, str(source_path), 'exec'))
