import 'package:basic_diet/app/constants.dart';
import 'package:basic_diet/data/response/orders_list_response.dart';
import 'package:basic_diet/domain/model/order_model.dart';

extension OrdersListResponseMapper on OrdersListResponse? {
  OrdersListModel toDomain() {
    return OrdersListModel(
      items:
          this?.data?.items?.map((e) => e.toDomain()).toList() ?? const [],
      pagination: this?.data?.pagination.toDomain() ??
          const OrdersPaginationModel(
            page: 1,
            limit: 20,
            total: 0,
            pages: 0,
          ),
    );
  }
}

extension OrdersListItemResponseMapper on OrdersListItemResponse? {
  OrderModel toDomain() {
    return OrderModel(
      id: this?.id ?? Constants.empty,
      orderNumber: this?.orderNumber ?? Constants.empty,
      status: this?.status ?? Constants.empty,
      paymentStatus: this?.paymentStatus ?? Constants.empty,
      fulfillmentMethod: this?.fulfillmentMethod ?? Constants.empty,
      pickup: null,
      pricing: null,
      items: const [],
      createdAt: this?.createdAt,
      expiresAt: null,
    );
  }
}

extension OrdersListPaginationResponseMapper
    on OrdersListPaginationResponse? {
  OrdersPaginationModel toDomain() {
    return OrdersPaginationModel(
      page: this?.page ?? 1,
      limit: this?.limit ?? 20,
      total: this?.total ?? Constants.zero,
      pages: this?.pages ?? Constants.zero,
    );
  }
}
