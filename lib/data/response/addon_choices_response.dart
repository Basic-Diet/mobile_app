import 'package:json_annotation/json_annotation.dart';

part 'addon_choices_response.g.dart';

const Set<String> _addonChoicesMetadataKeys = {
  'addonSubscriptionAllowances',
  'addonCategoryAllowances',
  'paymentRequirement',
  'commercialState',
  'contractVersion',
  'currency',
  'meta',
};

@JsonSerializable(createFactory: false)
class AddonChoicesResponse {
  @JsonKey(name: 'status')
  final dynamic status;

  @JsonKey(name: 'message')
  final String? message;

  @JsonKey(name: 'data')
  final Map<String, AddonChoiceCategoryResponse>? data;

  @JsonKey(name: 'addonChoiceGroups', defaultValue: [])
  final List<AddonChoiceCategoryResponse> addonChoiceGroups;

  const AddonChoicesResponse(
    this.status,
    this.message,
    this.data, [
    this.addonChoiceGroups = const [],
  ]);

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
    final parsedData = <String, AddonChoiceCategoryResponse>{};
    if (rawData is Map<String, dynamic>) {
      for (final entry in rawData.entries) {
        final value = entry.value;
        if (_addonChoicesMetadataKeys.contains(entry.key) || value is! Map) {
          continue;
        }
        parsedData[entry.key] = AddonChoiceCategoryResponse.fromJson(
          Map<String, dynamic>.from(value),
        );
      }
    }

    final rawGroups = json['addonChoiceGroups'];
    final parsedGroups = <AddonChoiceCategoryResponse>[];
    if (rawGroups is List) {
      for (final item in rawGroups) {
        if (item is Map<String, dynamic>) {
          parsedGroups.add(AddonChoiceCategoryResponse.fromJson(item));
        } else if (item is Map) {
          parsedGroups.add(
            AddonChoiceCategoryResponse.fromJson(
              Map<String, dynamic>.from(item),
            ),
          );
        }
      }
    }

    return AddonChoicesResponse(
      topStatus ?? false,
      json['message'] as String?,
      parsedData.isEmpty ? null : parsedData,
      parsedGroups,
    );
  }

  Map<String, dynamic> toJson() => _$AddonChoicesResponseToJson(this);
}

@JsonSerializable()
class AddonChoiceCategoryResponse {
  @JsonKey(name: 'groupId')
  final String? groupId;

  @JsonKey(name: 'addonPlanId')
  final String? addonPlanId;

  @JsonKey(name: 'label')
  final String? label;

  @JsonKey(name: 'labelText')
  final String? labelText;

  @JsonKey(name: 'addonPlanName')
  final String? addonPlanName;

  @JsonKey(name: 'displayKey')
  final String? displayKey;

  @JsonKey(name: 'displayCategory')
  final String? displayCategory;

  @JsonKey(name: 'category')
  final String? category;

  @JsonKey(name: 'allowanceCategory')
  final String? allowanceCategory;

  @JsonKey(name: 'entitlementCategory')
  final String? entitlementCategory;

  @JsonKey(name: 'source')
  final String? source;

  @JsonKey(name: 'isPurchased')
  final bool? isPurchased;

  @JsonKey(name: 'includedTotalQty')
  final int? includedTotalQty;

  @JsonKey(name: 'remainingIncludedQty')
  final int? remainingIncludedQty;

  @JsonKey(name: 'balanceBucketId')
  final String? balanceBucketId;

  @JsonKey(name: 'sortOrder')
  final int? sortOrder;

  @JsonKey(name: 'sourceCategories', defaultValue: [])
  final List<String> sourceCategories;

  @JsonKey(name: 'choices', defaultValue: [])
  final List<AddonChoiceResponse> choices;

  const AddonChoiceCategoryResponse({
    this.groupId,
    this.addonPlanId,
    this.label,
    this.labelText,
    this.addonPlanName,
    this.displayKey,
    this.displayCategory,
    this.category,
    this.allowanceCategory,
    this.entitlementCategory,
    this.source,
    this.isPurchased,
    this.includedTotalQty,
    this.remainingIncludedQty,
    this.balanceBucketId,
    this.sortOrder,
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

  @JsonKey(name: 'productId')
  final String? productId;

  @JsonKey(name: 'menuProductId')
  final String? menuProductId;

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

  @JsonKey(name: 'category')
  final String? category;

  @JsonKey(name: 'allowanceCategory')
  final String? allowanceCategory;

  @JsonKey(name: 'itemType')
  final String? itemType;

  @JsonKey(name: 'type')
  final String? type;

  @JsonKey(name: 'available')
  final bool? available;

  @JsonKey(name: 'active')
  final bool? active;

  @JsonKey(name: 'source')
  final String? source;

  @JsonKey(name: 'isEligibleForAllowance')
  final bool? isEligibleForAllowance;

  @JsonKey(name: 'includedTotalQty')
  final int? includedTotalQty;

  @JsonKey(name: 'remainingQty')
  final int? remainingQty;

  @JsonKey(name: 'freeQtyAvailable')
  final int? freeQtyAvailable;

  @JsonKey(name: 'requestedQty')
  final int? requestedQty;

  @JsonKey(name: 'coveredQty')
  final int? coveredQty;

  @JsonKey(name: 'paidQty')
  final int? paidQty;

  @JsonKey(name: 'remainingBefore')
  final int? remainingBefore;

  @JsonKey(name: 'remainingAfter')
  final int? remainingAfter;

  @JsonKey(name: 'payableTotalHalala')
  final int? payableTotalHalala;

  @JsonKey(name: 'unitPriceHalala')
  final int? unitPriceHalala;

  @JsonKey(name: 'pricingMode')
  final String? pricingMode;

  @JsonKey(name: 'availableForNewSale')
  final bool? availableForNewSale;

  @JsonKey(name: 'legacyRecovered')
  final bool? legacyRecovered;

  @JsonKey(name: 'entitlementKey')
  final String? entitlementKey;

  @JsonKey(name: 'balanceBucketId')
  final String? balanceBucketId;

  @JsonKey(name: 'addonPlanId')
  final String? addonPlanId;

  @JsonKey(name: 'maxPerDay')
  final int? maxPerDay;

  @JsonKey(name: 'ui')
  final Map<String, dynamic>? ui;

  const AddonChoiceResponse({
    this.id,
    this.productId,
    this.menuProductId,
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
    this.category,
    this.allowanceCategory,
    this.itemType,
    this.type,
    this.available,
    this.active,
    this.source,
    this.isEligibleForAllowance,
    this.includedTotalQty,
    this.remainingQty,
    this.freeQtyAvailable,
    this.requestedQty,
    this.coveredQty,
    this.paidQty,
    this.remainingBefore,
    this.remainingAfter,
    this.payableTotalHalala,
    this.unitPriceHalala,
    this.pricingMode,
    this.availableForNewSale,
    this.legacyRecovered,
    this.entitlementKey,
    this.balanceBucketId,
    this.addonPlanId,
    this.maxPerDay,
    this.ui,
  });

  factory AddonChoiceResponse.fromJson(Map<String, dynamic> json) =>
      _$AddonChoiceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AddonChoiceResponseToJson(this);
}
