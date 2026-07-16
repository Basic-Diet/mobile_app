import 'package:json_annotation/json_annotation.dart';
import 'package:basic_diet/domain/model/localized_text_resolver.dart';

part 'premium_meals_response.g.dart';

@JsonSerializable()
class PremiumMealsResponse {
  @JsonKey(name: "status")
  bool? status;
  @JsonKey(name: "data")
  List<PremiumMealResponse>? data;

  PremiumMealsResponse({this.status, this.data});

  factory PremiumMealsResponse.fromJson(Map<String, dynamic> json) =>
      _$PremiumMealsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PremiumMealsResponseToJson(this);
}

@JsonSerializable()
class PremiumMealResponse {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? nameAr;
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? nameEn;
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? descriptionAr;
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? descriptionEn;
  @JsonKey(name: "sourceName")
  String? sourceName;
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? sourceNameAr;
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? sourceNameEn;
  @JsonKey(name: "imageUrl")
  String? imageUrl;
  @JsonKey(name: "currency")
  String? currency;
  @JsonKey(name: "extraFeeHalala")
  int? extraFeeHalala;
  @JsonKey(name: "extraFeeSar")
  double? extraFeeSar;
  @JsonKey(name: "priceHalala")
  int? priceHalala;
  @JsonKey(name: "priceSar")
  double? priceSar;
  @JsonKey(name: "priceLabel")
  String? priceLabel;
  @JsonKey(name: "proteinGrams")
  int? proteinGrams;
  @JsonKey(name: "carbGrams")
  int? carbGrams;
  @JsonKey(name: "fatGrams")
  int? fatGrams;
  @JsonKey(name: "premiumKey")
  String? premiumKey;
  @JsonKey(name: "ui")
  PremiumMealUiResponse? ui;

  PremiumMealResponse({
    this.id,
    this.name,
    this.description,
    this.nameAr,
    this.nameEn,
    this.descriptionAr,
    this.descriptionEn,
    this.sourceName,
    this.sourceNameAr,
    this.sourceNameEn,
    this.imageUrl,
    this.currency,
    this.extraFeeHalala,
    this.extraFeeSar,
    this.priceHalala,
    this.priceSar,
    this.priceLabel,
    this.proteinGrams,
    this.carbGrams,
    this.fatGrams,
    this.premiumKey,
    this.ui,
  });

  factory PremiumMealResponse.fromJson(Map<String, dynamic> json) {
    final name = LocalizedTextResolver.fromJsonValue(json['name'], json);
    final description = LocalizedTextResolver.fromJsonValue(
      json['description'],
      json,
      arFallbackKey: 'descriptionAr',
      enFallbackKey: 'descriptionEn',
    );
    final sourceName = LocalizedTextResolver.fromJsonValue(
      json['sourceName'],
      json,
      arFallbackKey: 'sourceNameAr',
      enFallbackKey: 'sourceNameEn',
    );

    return PremiumMealResponse(
      id: json['id'] as String?,
      name: name.resolve('ar'),
      description: description.resolve('ar'),
      nameAr: name.ar,
      nameEn: name.en,
      descriptionAr: description.ar,
      descriptionEn: description.en,
      sourceName: sourceName.resolve('ar'),
      sourceNameAr: sourceName.ar,
      sourceNameEn: sourceName.en,
      imageUrl: json['imageUrl'] as String?,
      currency: json['currency'] as String?,
      extraFeeHalala: (json['extraFeeHalala'] as num?)?.toInt(),
      extraFeeSar: (json['extraFeeSar'] as num?)?.toDouble(),
      priceHalala: (json['priceHalala'] as num?)?.toInt(),
      priceSar: (json['priceSar'] as num?)?.toDouble(),
      priceLabel: json['priceLabel'] as String?,
      proteinGrams: (json['proteinGrams'] as num?)?.toInt(),
      carbGrams: (json['carbGrams'] as num?)?.toInt(),
      fatGrams: (json['fatGrams'] as num?)?.toInt(),
      premiumKey: json['premiumKey'] as String?,
      ui:
          json['ui'] == null
              ? null
              : PremiumMealUiResponse.fromJson(
                json['ui'] as Map<String, dynamic>,
              ),
    );
  }

  Map<String, dynamic> toJson() => _$PremiumMealResponseToJson(this);
}

@JsonSerializable()
class PremiumMealUiResponse {
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "subtitle")
  String? subtitle;
  @JsonKey(name: "ctaLabel")
  String? ctaLabel;
  @JsonKey(name: "selectionStyle")
  String? selectionStyle;

  PremiumMealUiResponse({
    this.title,
    this.subtitle,
    this.ctaLabel,
    this.selectionStyle,
  });

  factory PremiumMealUiResponse.fromJson(Map<String, dynamic> json) =>
      _$PremiumMealUiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PremiumMealUiResponseToJson(this);
}
