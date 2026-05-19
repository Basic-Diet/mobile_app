import 'package:basic_diet/app/constants.dart';
import 'package:basic_diet/app/extensions.dart';
import 'package:basic_diet/data/response/subscription_pickup_request_response.dart';
import 'package:basic_diet/domain/model/subscription_pickup_request_model.dart';

extension SubscriptionPickupRequestResponseMapper
    on SubscriptionPickupRequestResponse? {
  SubscriptionPickupRequestModel toDomain() {
    return SubscriptionPickupRequestModel(
      requestId: this?.requestId.orEmpty() ?? Constants.empty,
      entityId: this?.entityId.orEmpty() ?? Constants.empty,
      subscriptionId: this?.subscriptionId.orEmpty() ?? Constants.empty,
      subscriptionDayId: this?.subscriptionDayId.orEmpty() ?? Constants.empty,
      date: this?.date.orEmpty() ?? Constants.empty,
      mealCount: this?.mealCount,
      currentStep: this?.currentStep,
      status: this?.status.orEmpty() ?? Constants.empty,
      statusLabel: this?.statusLabel.orEmpty() ?? Constants.empty,
      message: this?.message.orEmpty() ?? Constants.empty,
      isReady: this?.isReady,
      isCompleted: this?.isCompleted,
      pickupCode: this?.pickupCode,
      pickupCodeIssuedAt: this?.pickupCodeIssuedAt,
      fulfilledAt: this?.fulfilledAt,
      createdAt: this?.createdAt,
      creditsReserved: this?.creditsReserved,
      idempotent: this?.idempotent,
      nextAction: this?.nextAction.orEmpty() ?? Constants.empty,
    );
  }
}

extension SubscriptionPickupRequestApiResponseMapper
    on SubscriptionPickupRequestApiResponse? {
  SubscriptionPickupRequestModel toDomain() {
    return this?.data.toDomain() ?? const SubscriptionPickupRequestModel();
  }
}

extension SubscriptionPickupRequestListApiResponseMapper
    on SubscriptionPickupRequestListApiResponse? {
  SubscriptionPickupRequestsModel toDomain() {
    return SubscriptionPickupRequestsModel(
      requests:
          (this?.data?.requests?.map((request) => request.toDomain()) ??
                  const Iterable.empty())
              .cast<SubscriptionPickupRequestModel>()
              .toList(),
    );
  }
}
