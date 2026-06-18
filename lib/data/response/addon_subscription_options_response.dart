import 'package:json_annotation/json_annotation.dart';

part 'addon_subscription_options_response.g.dart';

@JsonSerializable()
class AddonSubscriptionOptionsResponse {
  @JsonKey(name: 'status')
  final dynamic status;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final AddonSubscriptionOptionsDataResponse? data;

  const AddonSubscriptionOptionsResponse({
    this.status,
    this.message,
    this.data,
  });

  factory AddonSubscriptionOptionsResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AddonSubscriptionOptionsResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AddonSubscriptionOptionsResponseToJson(this);
}

@JsonSerializable()
class AddonSubscriptionOptionsDataResponse {
  @JsonKey(name: 'planId')
  final String? planId;
  @JsonKey(name: 'addons', defaultValue: [])
  final List<AddonSubscriptionOptionResponse> addons;

  const AddonSubscriptionOptionsDataResponse({
    this.planId,
    this.addons = const [],
  });

  factory AddonSubscriptionOptionsDataResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AddonSubscriptionOptionsDataResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AddonSubscriptionOptionsDataResponseToJson(this);
}

@JsonSerializable()
class AddonSubscriptionOptionResponse {
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'addonPlanId')
  final String? addonPlanId;
  @JsonKey(name: 'name')
  final LocalizedNameResponse? name;
  @JsonKey(name: 'category')
  final String? category;
  @JsonKey(name: 'maxPerDay')
  final int? maxPerDay;
  @JsonKey(name: 'pricingMode')
  final String? pricingMode;
  @JsonKey(name: 'priceHalala')
  final int? priceHalala;
  @JsonKey(name: 'priceSar')
  final double? priceSar;
  @JsonKey(name: 'priceLabel')
  final String? priceLabel;
  @JsonKey(name: 'currency')
  final String? currency;
  @JsonKey(name: 'isAvailable')
  final bool? isAvailable;
  @JsonKey(name: 'menuProductIds', defaultValue: [])
  final List<String> menuProductIds;
  @JsonKey(name: 'menuProductsCount')
  final int? menuProductsCount;
  @JsonKey(name: 'menuProducts', defaultValue: [])
  final List<AddonMenuProductResponse> menuProducts;

  const AddonSubscriptionOptionResponse({
    this.id,
    this.addonPlanId,
    this.name,
    this.category,
    this.maxPerDay,
    this.pricingMode,
    this.priceHalala,
    this.priceSar,
    this.priceLabel,
    this.currency,
    this.isAvailable,
    this.menuProductIds = const [],
    this.menuProductsCount,
    this.menuProducts = const [],
  });

  factory AddonSubscriptionOptionResponse.fromJson(Map<String, dynamic> json) =>
      _$AddonSubscriptionOptionResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AddonSubscriptionOptionResponseToJson(this);
}

@JsonSerializable()
class AddonMenuProductResponse {
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: '_id')
  final String? mongoId;
  @JsonKey(name: 'name')
  final LocalizedNameResponse? name;
  @JsonKey(name: 'image')
  final String? image;
  @JsonKey(name: 'category')
  final String? category;
  @JsonKey(name: 'isActive')
  final bool? isActive;

  const AddonMenuProductResponse({
    this.id,
    this.mongoId,
    this.name,
    this.image,
    this.category,
    this.isActive,
  });

  factory AddonMenuProductResponse.fromJson(Map<String, dynamic> json) =>
      _$AddonMenuProductResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AddonMenuProductResponseToJson(this);
}

@JsonSerializable()
class LocalizedNameResponse {
  @JsonKey(name: 'ar')
  final String? ar;
  @JsonKey(name: 'en')
  final String? en;

  const LocalizedNameResponse({this.ar, this.en});

  factory LocalizedNameResponse.fromJson(Map<String, dynamic> json) =>
      _$LocalizedNameResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LocalizedNameResponseToJson(this);
}
