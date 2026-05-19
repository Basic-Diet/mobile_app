import 'package:basic_diet/app/constants.dart';
import 'package:basic_diet/data/response/cancel_order_response.dart';
import 'package:basic_diet/domain/model/order_model.dart';

extension CancelOrderResponseMapper on CancelOrderResponse? {
  OrderModel toDomain() {
    return OrderModel(
      id: this?.data?.id ?? Constants.empty,
      orderNumber: Constants.empty,
      status: this?.data?.status ?? Constants.empty,
      paymentStatus: this?.data?.paymentStatus ?? Constants.empty,
      fulfillmentMethod: Constants.empty,
      pickup: null,
      pricing: null,
      items: const [],
      createdAt: null,
      expiresAt: null,
    );
  }
}
