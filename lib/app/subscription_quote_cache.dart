import 'dart:convert';

import 'package:basic_diet/data/mappers/subscription_quote_mapper.dart';
import 'package:basic_diet/data/response/subscription_quote_response.dart';
import 'package:basic_diet/domain/model/subscription_quote_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Persists the last successful subscription quote and its request to
/// SharedPreferences so the details screen can survive a process kill.
class SubscriptionQuoteCache {
  static const String _quoteKey = 'cached_subscription_quote';
  static const String _requestKey = 'cached_subscription_quote_request';

  final SharedPreferences _prefs;

  SubscriptionQuoteCache(this._prefs);

  // ---------------------------------------------------------------------------
  // Save
  // ---------------------------------------------------------------------------

  Future<void> saveQuote(SubscriptionQuoteModel quote) async {
    try {
      final json = _quoteToJson(quote);
      await _prefs.setString(_quoteKey, jsonEncode(json));
    } catch (_) {
      // Non-fatal — cache is best-effort
    }
  }

  Future<void> saveRequest(SubscriptionQuoteRequestModel request) async {
    try {
      final json = _requestToJson(request);
      await _prefs.setString(_requestKey, jsonEncode(json));
    } catch (_) {}
  }

  // ---------------------------------------------------------------------------
  // Load
  // ---------------------------------------------------------------------------

  SubscriptionQuoteModel? loadQuote() {
    try {
      final raw = _prefs.getString(_quoteKey);
      if (raw == null) return null;
      final map = jsonDecode(raw) as Map<String, dynamic>;
      return SubscriptionQuoteResponse.fromJson({
        'status': 'ok',
        'data': map,
      }).toDomain();
    } catch (_) {
      return null;
    }
  }

  SubscriptionQuoteRequestModel? loadRequest() {
    try {
      final raw = _prefs.getString(_requestKey);
      if (raw == null) return null;
      final map = jsonDecode(raw) as Map<String, dynamic>;
      return _requestFromJson(map);
    } catch (_) {
      return null;
    }
  }

  // ---------------------------------------------------------------------------
  // Clear
  // ---------------------------------------------------------------------------

  Future<void> clear() async {
    await _prefs.remove(_quoteKey);
    await _prefs.remove(_requestKey);
  }

  // ---------------------------------------------------------------------------
  // Serialisation helpers — quote (reuse the existing response DTO toJson)
  // ---------------------------------------------------------------------------

  Map<String, dynamic> _quoteToJson(SubscriptionQuoteModel q) {
    return {
      'breakdown': {
        'basePlanPriceHalala': q.breakdown.basePlanPriceHalala,
        'premiumTotalHalala': q.breakdown.premiumTotalHalala,
        'addonsTotalHalala': q.breakdown.addonsTotalHalala,
        'deliveryFeeHalala': q.breakdown.deliveryFeeHalala,
        'vatHalala': q.breakdown.vatHalala,
        'totalHalala': q.breakdown.totalHalala,
        'currency': q.breakdown.currency,
      },
      'totalSar': q.totalSar,
      'pricingSummary': {
        'basePlanGrossSar': q.pricingSummary.basePlanGrossSar,
        'basePlanNetSar': q.pricingSummary.basePlanNetSar,
        'subtotalSar': q.pricingSummary.subtotalSar,
        'vatPercentage': q.pricingSummary.vatPercentage,
        'vatSar': q.pricingSummary.vatSar,
        'totalPriceSar': q.pricingSummary.totalPriceSar,
        'currency': q.pricingSummary.currency,
      },
      'summary': {
        'plan': {
          'id': q.summary.plan.id,
          'name': q.summary.plan.name,
          'daysCount': q.summary.plan.daysCount,
          'daysLabel': q.summary.plan.daysLabel,
          'grams': q.summary.plan.grams,
          'gramsLabel': q.summary.plan.gramsLabel,
          'mealsPerDay': q.summary.plan.mealsPerDay,
          'mealsLabel': q.summary.plan.mealsLabel,
          'startDate': q.summary.plan.startDate,
        },
        'delivery': {
          'type': q.summary.delivery.type,
          'label': q.summary.delivery.label,
          'zoneId': q.summary.delivery.zoneId,
          'zoneName': q.summary.delivery.zoneName,
          'feeHalala': q.summary.delivery.feeHalala,
          'feeSar': q.summary.delivery.feeSar,
          'feeLabel': q.summary.delivery.feeLabel,
          if (q.summary.delivery.address != null)
            'address': {
              'street': q.summary.delivery.address!.street,
              'building': q.summary.delivery.address!.building,
              'apartment': q.summary.delivery.address!.apartment,
              'notes': q.summary.delivery.address!.notes,
              'district': q.summary.delivery.address!.district,
              'city': q.summary.delivery.address!.city,
            },
          if (q.summary.delivery.slot != null)
            'slot': {
              'type': q.summary.delivery.slot!.type,
              'slotId': q.summary.delivery.slot!.slotId,
              'window': q.summary.delivery.slot!.window,
              'label': q.summary.delivery.slot!.label,
            },
        },
        'premiumItems': q.summary.premiumItems
            .map(
              (p) => {
                'id': p.id,
                'name': p.name,
                'qty': p.qty,
                'unitPriceHalala': p.unitPriceHalala,
                'unitPriceSar': p.unitPriceSar,
                'totalHalala': p.totalHalala,
                'totalSar': p.totalSar,
                'totalLabel': p.totalLabel,
              },
            )
            .toList(),
        'addons': q.summary.addons
            .map(
              (a) => {
                'id': a.id,
                'name': a.name,
                'qty': a.qty,
                'type': a.type,
                'pricingModel': a.pricingModel,
                'billingUnit': a.billingUnit,
                'durationDays': a.durationDays,
                'unitPriceHalala': a.unitPriceHalala,
                'unitPriceSar': a.unitPriceSar,
                'unitPriceLabel': a.unitPriceLabel,
                'formulaLabel': a.formulaLabel,
                'totalHalala': a.totalHalala,
                'totalSar': a.totalSar,
                'totalLabel': a.totalLabel,
              },
            )
            .toList(),
        'lineItems': q.summary.lineItems
            .map(
              (l) => {
                'kind': l.kind,
                'label': l.label,
                'amountHalala': l.amountHalala,
                'amountSar': l.amountSar,
                'amountLabel': l.amountLabel,
              },
            )
            .toList(),
      },
      if (q.appliedPromo != null)
        'promoCode': {
          'code': q.appliedPromo!.code,
          'discountType': q.appliedPromo!.discountType,
          'discountValue': q.appliedPromo!.discountValue,
          'discountAmountHalala': q.appliedPromo!.discountAmountHalala,
          'discountAmountSar': q.appliedPromo!.discountAmountSar,
          'label': q.appliedPromo!.label,
          'message': q.appliedPromo!.message,
          'validityState': q.appliedPromo!.validityState,
        },
    };
  }

  // ---------------------------------------------------------------------------
  // Serialisation helpers — request
  // ---------------------------------------------------------------------------

  Map<String, dynamic> _requestToJson(SubscriptionQuoteRequestModel r) {
    return {
      'planId': r.planId,
      'grams': r.grams,
      'mealsPerDay': r.mealsPerDay,
      'startDate': r.startDate,
      if (r.promoCode != null) 'promoCode': r.promoCode,
      'premiumItems': r.premiumItems
          .map((p) => {'premiumKey': p.premiumKey, 'qty': p.qty})
          .toList(),
      'addons': r.addons,
      'delivery': {
        'type': r.delivery.type,
        if (r.delivery.zoneId != null) 'zoneId': r.delivery.zoneId,
        if (r.delivery.pickupLocationId != null)
          'pickupLocationId': r.delivery.pickupLocationId,
        if (r.delivery.slotId != null) 'slotId': r.delivery.slotId,
        if (r.delivery.slotWindow != null) 'slotWindow': r.delivery.slotWindow,
        if (r.delivery.slotLabel != null) 'slotLabel': r.delivery.slotLabel,
        if (r.delivery.firstDayFulfillmentOverride != null)
          'firstDayFulfillmentOverride': {
            'type': r.delivery.firstDayFulfillmentOverride!.type,
            'pickupLocationId':
                r.delivery.firstDayFulfillmentOverride!.pickupLocationId,
          },
        if (r.delivery.address != null)
          'address': {
            'street': r.delivery.address!.street,
            'building': r.delivery.address!.building,
            'apartment': r.delivery.address!.apartment,
            'notes': r.delivery.address!.notes,
            'district': r.delivery.address!.district,
            'city': r.delivery.address!.city,
          },
      },
    };
  }

  SubscriptionQuoteRequestModel _requestFromJson(Map<String, dynamic> map) {
    final deliveryMap = map['delivery'] as Map<String, dynamic>? ?? {};
    final addressMap = deliveryMap['address'] as Map<String, dynamic>?;
    final overrideMap =
        deliveryMap['firstDayFulfillmentOverride'] as Map<String, dynamic>?;

    return SubscriptionQuoteRequestModel(
      planId: map['planId'] as String,
      grams: map['grams'] as int,
      mealsPerDay: map['mealsPerDay'] as int,
      startDate: map['startDate'] as String,
      promoCode: map['promoCode'] as String?,
      premiumItems: (map['premiumItems'] as List<dynamic>? ?? [])
          .map(
            (e) => SubscriptionQuotePremiumItemRequestModel(
              premiumKey: e['premiumKey'] as String,
              qty: e['qty'] as int,
            ),
          )
          .toList(),
      addons: (map['addons'] as List<dynamic>? ?? [])
          .map((e) => e as String)
          .toList(),
      delivery: SubscriptionQuoteDeliveryRequestModel(
        type: deliveryMap['type'] as String,
        zoneId: deliveryMap['zoneId'] as String?,
        pickupLocationId: deliveryMap['pickupLocationId'] as String?,
        slotId: deliveryMap['slotId'] as String?,
        slotWindow: deliveryMap['slotWindow'] as String?,
        slotLabel: deliveryMap['slotLabel'] as String?,
        firstDayFulfillmentOverride: overrideMap == null
            ? null
            : SubscriptionFirstDayFulfillmentOverrideModel(
                type: overrideMap['type'] as String,
                pickupLocationId: overrideMap['pickupLocationId'] as String,
              ),
        address: addressMap == null
            ? null
            : SubscriptionAddressModel(
                street: addressMap['street'] as String,
                building: addressMap['building'] as String,
                apartment: addressMap['apartment'] as String,
                notes: addressMap['notes'] as String,
                district: addressMap['district'] as String,
                city: addressMap['city'] as String,
              ),
      ),
    );
  }
}
