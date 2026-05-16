import 'package:basic_diet/data/response/fulfillment_status_response.dart';
import 'package:basic_diet/data/response/client_profile_response.dart';
import 'package:basic_diet/data/request/pickup_request_request.dart';
import 'package:basic_diet/data/response/subscription_pickup_request_response.dart';
import 'package:basic_diet/data/response/subscription_menu_response.dart';
import 'package:basic_diet/data/response/addons_response.dart';
import 'package:basic_diet/data/request/bulk_selections_request.dart';
import 'package:basic_diet/data/request/day_selection_request.dart';
import 'package:basic_diet/data/response/checkout_draft_response.dart';
import 'package:basic_diet/data/request/subscription_checkout_request.dart';
import 'package:basic_diet/data/request/subscription_quote_request.dart';
import 'package:basic_diet/data/response/auth_response.dart';
import 'package:basic_diet/data/response/delivery_options_response.dart';
import 'package:basic_diet/data/response/base_response/base_response.dart';
import 'package:basic_diet/data/response/plans_response.dart';
import 'package:basic_diet/data/response/popular_packages_response.dart';
import 'package:basic_diet/data/response/premium_meals_response.dart';
import 'package:basic_diet/data/response/subscription_checkout_response.dart';
import 'package:basic_diet/data/response/subscription_quote_response.dart';
import 'package:basic_diet/data/response/current_subscription_overview_response.dart';
import 'package:basic_diet/data/response/freeze_subscription_response.dart';
import 'package:basic_diet/data/request/freeze_subscription_request.dart';
import 'package:basic_diet/data/request/skip_days_request.dart';
import 'package:basic_diet/data/response/skip_days_response.dart';
import 'package:basic_diet/data/response/timeline_response.dart';
import 'package:basic_diet/data/response/categories_with_meals_response.dart';
import 'package:basic_diet/data/response/pickup_prepare_response.dart';
import 'package:basic_diet/data/response/pickup_status_response.dart';
import 'package:basic_diet/data/response/meal_planner_menu_response.dart';
import 'package:basic_diet/data/response/premium_payment_response.dart';
import 'package:basic_diet/data/response/subscription_day_response.dart';
import 'package:basic_diet/data/response/validation_response.dart';
import 'package:basic_diet/data/response/bulk_selections_response.dart';
import 'package:basic_diet/data/request/cancel_subscription_request.dart';
import 'package:basic_diet/data/response/cancel_subscription_response.dart';
import 'package:basic_diet/data/request/order_quote_request.dart';
import 'package:basic_diet/data/request/create_order_request.dart';
import 'package:basic_diet/data/request/verify_payment_request.dart';
import 'package:basic_diet/data/response/order_menu_response.dart';
import 'package:basic_diet/data/response/order_quote_response.dart';
import 'package:basic_diet/data/response/create_order_response.dart';
import 'package:basic_diet/data/response/verify_payment_response.dart';
import 'package:basic_diet/data/response/order_detail_response.dart';
import 'package:basic_diet/data/response/orders_list_response.dart';
import 'package:basic_diet/data/response/cancel_order_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
part 'app_api.g.dart';

@RestApi()
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String? baseUrl}) = _AppServiceClient;

  @POST("/api/auth/login")
  Future<AuthenticationResponse> login(@Body() Map<String, dynamic> body);

  @POST("/api/auth/register/request-otp")
  Future<BaseResponse> requestRegistrationOtp(
    @Body() Map<String, dynamic> body,
  );

  @POST("/api/auth/register/verify")
  Future<AuthenticationResponse> verifyRegistrationOtp(
    @Body() Map<String, dynamic> body,
  );

  @POST("/api/auth/refresh")
  Future<AuthenticationResponse> refreshToken(@Body() Map<String, dynamic> body);

  @GET("/api/auth/me")
  Future<AuthenticationResponse> getCurrentUser();

  @GET("/api/client/profile")
  Future<ClientProfileResponse> getClientProfile();

  @GET("/api/plans")
  Future<PlansResponse> getPlans();

  @GET("/api/popular_packages")
  Future<PopularPackagesResponse> getPopularPackages();

  @GET("/api/builder/premium-meals")
  Future<PremiumMealsResponse> getPremiumMeals();

  @GET("/api/addons")
  Future<AddOnsResponse> getAddOns();

  @GET("/api/subscriptions/menu")
  Future<SubscriptionMenuResponse> getSubscriptionMenu();

  @GET("/api/subscriptions/delivery-options")
  Future<DeliveryOptionsResponse> getDeliveryOptions();

  @POST("/api/subscriptions/quote")
  Future<SubscriptionQuoteResponse> getSubscriptionQuote(
    @Body() SubscriptionQuoteRequest request,
  );

  @POST("/api/subscriptions/checkout")
  Future<SubscriptionCheckoutResponse> checkoutSubscription(
    @Body() SubscriptionCheckoutRequest request,
  );

  @GET("/api/subscriptions/current/overview")
  Future<CurrentSubscriptionOverviewResponse> getCurrentSubscriptionOverview();

  @POST("/api/subscriptions/{id}/freeze")
  Future<FreezeSubscriptionResponse> freezeSubscription(
    @Path("id") String id,
    @Body() FreezeSubscriptionRequest request,
  );

  @POST("/api/subscriptions/{id}/days/skip")
  Future<SkipDaysResponse> skipDay(
    @Path("id") String id,
    @Body() SkipDayRequest request,
  );

  @POST("/api/subscriptions/{id}/skip-range")
  Future<SkipDaysResponse> skipDateRange(
    @Path("id") String id,
    @Body() SkipDateRangeRequest request,
  );

  @GET("/api/subscriptions/{id}/timeline")
  Future<TimelineResponse> getSubscriptionTimeline(@Path("id") String id);

  @GET("/api/categories-with-meals")
  Future<CategoriesWithMealsResponse> getCategoriesWithMeals();

  @GET("/api/subscriptions/checkout-drafts/{id}")
  Future<CheckoutDraftResponse> getCheckoutDraft(@Path("id") String id);

  @PUT("/api/subscriptions/{id}/days/selections/bulk")
  Future<BulkSelectionsResponse> bulkSelections(
    @Path("id") String id,
    @Body() BulkSelectionsRequest request,
  );

  @GET("/api/subscriptions/{id}/days/{date}")
  Future<SubscriptionDayResponse> getSubscriptionDay(
    @Path("id") String id,
    @Path("date") String date,
  );

  @PUT("/api/subscriptions/{id}/days/{date}/selection")
  Future<SubscriptionDayResponse> saveDaySelection(
    @Path("id") String id,
    @Path("date") String date,
    @Body() DaySelectionRequest request,
  );

  @POST("/api/subscriptions/{id}/days/{date}/selection/validate")
  Future<ValidationResponse> validateDaySelection(
    @Path("id") String id,
    @Path("date") String date,
    @Body() DaySelectionRequest request,
  );

  @POST("/api/subscriptions/{id}/days/{date}/confirm")
  Future<SubscriptionDayResponse> confirmDaySelection(
    @Path("id") String id,
    @Path("date") String date,
  );

  @POST("/api/subscriptions/{id}/days/{date}/pickup/prepare")
  Future<PickupPrepareResponse> preparePickup(
    @Path("id") String id,
    @Path("date") String date,
  );

  @GET("/api/subscriptions/{id}/days/{date}/pickup/status")
  Future<PickupStatusResponse> getPickupStatus(
    @Path("id") String id,
    @Path("date") String date,
  );

  @POST("/api/subscriptions/{id}/pickup-requests")
  Future<SubscriptionPickupRequestApiResponse> createPickupRequest(
    @Path("id") String id,
    @Body() PickupRequestRequest request,
  );

  @GET("/api/subscriptions/{id}/pickup-requests")
  Future<SubscriptionPickupRequestListApiResponse> getPickupRequests(
    @Path("id") String id,
    @Query("date") String? date,
    @Query("status") String status,
  );

  @GET("/api/subscriptions/{id}/pickup-requests/{requestId}/status")
  Future<SubscriptionPickupRequestApiResponse> getPickupRequestStatus(
    @Path("id") String id,
    @Path("requestId") String requestId,
  );

  @GET("/api/subscriptions/{id}/days/{date}/fulfillment/status")
  Future<FulfillmentStatusResponse> getDayFulfillmentStatus(
    @Path("id") String id,
    @Path("date") String date,
  );

  @GET("/api/subscriptions/meal-planner-menu")
  Future<MealPlannerMenuResponse> getMealPlannerMenu();

  @POST("/api/subscriptions/{id}/days/{date}/payments")
  Future<PremiumPaymentResponse> createUnifiedDayPayment(
    @Path("id") String subscriptionId,
    @Path("date") String date,
    @Body() Map<String, dynamic> body,
  );

  @POST("/api/subscriptions/{id}/days/{date}/payments/{paymentId}/verify")
  Future<PremiumPaymentVerificationResponse> verifyUnifiedDayPayment(
    @Path("id") String subscriptionId,
    @Path("date") String date,
    @Path("paymentId") String paymentId,
    @Body() Map<String, dynamic> body,
  );

  @POST("/api/subscriptions/{id}/days/{date}/payments")
  Future<PremiumPaymentResponse> createPremiumPayment(
    @Path("id") String subscriptionId,
    @Path("date") String date,
  );

  @POST("/api/subscriptions/{id}/days/{date}/payments/{paymentId}/verify")
  Future<PremiumPaymentVerificationResponse> verifyPremiumPayment(
    @Path("id") String subscriptionId,
    @Path("date") String date,
    @Path("paymentId") String paymentId,
  );

  @POST("/api/subscriptions/{id}/days/{date}/one-time-addons/payments")
  Future<PremiumPaymentResponse> createOneTimeAddonPayment(
    @Path("id") String subscriptionId,
    @Path("date") String date,
  );

  @POST("/api/subscriptions/{id}/days/{date}/one-time-addons/payments/verify")
  Future<PremiumPaymentVerificationResponse> verifyOneTimeAddonPayment(
    @Path("id") String subscriptionId,
    @Path("date") String date,
    @Body() Map<String, dynamic> body,
  );

  @POST("/api/subscriptions/{id}/cancel")
  Future<CancelSubscriptionResponse> cancelSubscription(
    @Path("id") String id,
    @Body() CancelSubscriptionRequest request,
  );

  @GET("/api/orders/menu")
  Future<OrderMenuResponse> getOrderMenu();

  @POST("/api/orders/quote")
  Future<OrderQuoteResponse> getOrderQuote(@Body() OrderQuoteRequest request);

  @POST("/api/orders")
  Future<CreateOrderResponse> createOrder(
    @Body() CreateOrderRequest request,
    @Header("Idempotency-Key") String idempotencyKey,
  );

  @POST("/api/orders/{orderId}/payments/{paymentId}/verify")
  Future<VerifyPaymentResponse> verifyOrderPayment(
    @Path("orderId") String orderId,
    @Path("paymentId") String paymentId,
    @Body() VerifyPaymentRequest request,
  );

  @GET("/api/orders/{orderId}")
  Future<OrderDetailResponse> getOrderDetail(@Path("orderId") String orderId);

  @GET("/api/orders")
  Future<OrdersListResponse> getOrders(
    @Query("page") int page,
    @Query("limit") int limit,
  );

  @DELETE("/api/orders/{orderId}")
  Future<CancelOrderResponse> cancelOrder(@Path("orderId") String orderId);
}
