import 'package:basic_diet/data/request/order_quote_request.dart';
import 'package:basic_diet/domain/model/order_quote_request_model.dart';

extension OrderQuoteRequestModelMapper on OrderQuoteRequestModel {
  OrderQuoteRequest toRequest() {
    return OrderQuoteRequest(
      fulfillmentMethod: fulfillmentMethod,
      pickup: pickup?.toRequest(),
      items: items.map((e) => e.toRequest()).toList(),
    );
  }
}

extension OrderQuotePickupRequestModelMapper on OrderQuotePickupRequestModel {
  OrderQuotePickupRequest toRequest() {
    return OrderQuotePickupRequest(
      branchId: branchId,
      pickupWindow: pickupWindow,
    );
  }
}

extension OrderQuoteItemRequestModelMapper on OrderQuoteItemRequestModel {
  OrderQuoteItemRequest toRequest() {
    return OrderQuoteItemRequest(
      itemType: itemType,
      qty: qty,
      selections: selections,
    );
  }
}
