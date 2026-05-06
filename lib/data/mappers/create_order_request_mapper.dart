import 'package:basic_diet/data/request/create_order_request.dart';
import 'package:basic_diet/domain/model/create_order_request_model.dart';

extension CreateOrderRequestModelMapper on CreateOrderRequestModel {
  CreateOrderRequest toRequest() {
    return CreateOrderRequest(
      fulfillmentMethod: fulfillmentMethod,
      pickup: pickup?.toRequest(),
      items: items.map((e) => e.toRequest()).toList(),
      successUrl: successUrl,
      backUrl: backUrl,
    );
  }
}

extension CreateOrderPickupRequestModelMapper on CreateOrderPickupRequestModel {
  CreateOrderPickupRequest toRequest() {
    return CreateOrderPickupRequest(
      branchId: branchId,
      pickupWindow: pickupWindow,
    );
  }
}

extension CreateOrderItemRequestModelMapper on CreateOrderItemRequestModel {
  CreateOrderItemRequest toRequest() {
    return CreateOrderItemRequest(
      itemType: itemType,
      qty: qty,
      selections: selections,
    );
  }
}
