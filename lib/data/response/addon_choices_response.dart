import 'package:json_annotation/json_annotation.dart';

part 'addon_choices_response.g.dart';

@JsonSerializable(createFactory: false)
class AddonChoicesResponse {
  @JsonKey(name: 'status')
  final dynamic status;

  @JsonKey(name: 'message')
  final String? message;

  @JsonKey(name: 'data')
  final Map<String, AddonChoiceCategoryResponse>? data;

  const AddonChoicesResponse(this.status, this.message, this.data);

  factory AddonChoicesResponse.fromJson(Map<String, dynamic> json) {
    dynamic topStatus;
    if (json['status'] is bool) {
      topStatus = json['status'];
    } else if (json['ok'] is bool) {
      topStatus = json['ok'];
    } else if (json['status'] is int) {
      final code = json['status'] as int;
      topStatus = code >= 200 && code < 300;
    }

    final rawData = json['data'];
    final parsedData =
        rawData is Map<String, dynamic>
            ? rawData.map(
              (key, value) => MapEntry(
                key,
                AddonChoiceCategoryResponse.fromJson(
                  Map<String, dynamic>.from(value as Map),
                ),
              ),
            )
            : null;

    return AddonChoicesResponse(
      topStatus ?? false,
      json['message'] as String?,
      parsedData,
    );
  }

  Map<String, dynamic> toJson() => _$AddonChoicesResponseToJson(this);
}

@JsonSerializable()
class AddonChoiceCategoryResponse {
  @JsonKey(name: 'category')
  final String? category;

  @JsonKey(name: 'sourceCategories', defaultValue: [])
  final List<String> sourceCategories;

  @JsonKey(name: 'choices', defaultValue: [])
  final List<AddonChoiceResponse> choices;

  const AddonChoiceCategoryResponse({
    this.category,
    this.sourceCategories = const [],
    this.choices = const [],
  });

  factory AddonChoiceCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$AddonChoiceCategoryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AddonChoiceCategoryResponseToJson(this);
}

@JsonSerializable()
class AddonChoiceResponse {
  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'key')
  final String? key;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'nameAr')
  final String? nameAr;

  @JsonKey(name: 'nameI18n')
  final Map<String, dynamic>? nameI18n;

  @JsonKey(name: 'priceHalala')
  final int? priceHalala;

  @JsonKey(name: 'priceSar')
  final double? priceSar;

  @JsonKey(name: 'currency')
  final String? currency;

  @JsonKey(name: 'calories')
  final int? calories;

  @JsonKey(name: 'prepTimeMinutes')
  final int? prepTimeMinutes;

  @JsonKey(name: 'categoryKey')
  final String? categoryKey;

  @JsonKey(name: 'itemType')
  final String? itemType;

  @JsonKey(name: 'type')
  final String? type;

  @JsonKey(name: 'available')
  final bool? available;

  @JsonKey(name: 'active')
  final bool? active;

  @JsonKey(name: 'ui')
  final Map<String, dynamic>? ui;

  const AddonChoiceResponse({
    this.id,
    this.key,
    this.name,
    this.nameAr,
    this.nameI18n,
    this.priceHalala,
    this.priceSar,
    this.currency,
    this.calories,
    this.prepTimeMinutes,
    this.categoryKey,
    this.itemType,
    this.type,
    this.available,
    this.active,
    this.ui,
  });

  factory AddonChoiceResponse.fromJson(Map<String, dynamic> json) =>
      _$AddonChoiceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AddonChoiceResponseToJson(this);
}
