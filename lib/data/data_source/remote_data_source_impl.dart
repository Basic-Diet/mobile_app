import 'dart:convert';

import 'package:basic_diet/data/request/bulk_selections_request.dart';
import 'package:basic_diet/data/request/day_selection_request.dart';
import 'package:basic_diet/data/request/pickup_request.dart';
import 'package:basic_diet/data/network/app_api.dart';
import 'package:basic_diet/data/response/checkout_draft_response.dart';
import 'package:basic_diet/data/data_source/remote_data_source.dart';
import 'package:basic_diet/data/response/addon_choices_response.dart';
import 'package:basic_diet/data/request/subscription_checkout_request.dart';
import 'package:basic_diet/data/request/subscription_quote_request.dart';
import 'package:basic_diet/data/response/addons_response.dart';
import 'package:basic_diet/data/response/subscription_menu_response.dart';
import 'package:basic_diet/data/response/auth_response.dart';
import 'package:basic_diet/data/response/base_response/base_response.dart';
import 'package:basic_diet/data/response/categories_with_meals_response.dart';
import 'package:basic_diet/data/response/client_profile_response.dart';
import 'package:basic_diet/data/response/validation_response.dart';
import 'package:basic_diet/data/response/subscription_day_response.dart';
import 'package:basic_diet/data/response/delivery_options_response.dart';
import 'package:basic_diet/data/response/plans_response.dart';
import 'package:basic_diet/data/response/popular_packages_response.dart';
import 'package:basic_diet/data/response/premium_meals_response.dart';
import 'package:basic_diet/data/response/subscription_checkout_response.dart';
import 'package:basic_diet/data/response/subscription_quote_response.dart';
import 'package:basic_diet/data/response/subscription_renewal_seed_response.dart';
import 'package:basic_diet/data/response/addon_subscription_options_response.dart';
import 'package:basic_diet/data/response/current_subscription_overview_response.dart';
import 'package:basic_diet/data/request/freeze_subscription_request.dart';
import 'package:basic_diet/data/response/freeze_subscription_response.dart';
import 'package:basic_diet/data/request/skip_days_request.dart';
import 'package:basic_diet/data/response/skip_days_response.dart';
import 'package:basic_diet/data/response/timeline_response.dart';
import 'package:basic_diet/data/response/meal_planner_menu_response.dart';
import 'package:basic_diet/data/response/premium_payment_response.dart';

import 'package:basic_diet/data/response/pickup_prepare_response.dart';
import 'package:basic_diet/data/response/pickup_status_response.dart';
import 'package:basic_diet/data/response/pickup_request_response.dart';
import 'package:basic_diet/data/response/fulfillment_status_response.dart';
import 'package:basic_diet/data/response/cancel_subscription_response.dart';
import 'package:basic_diet/data/request/cancel_subscription_request.dart';
import 'package:flutter/foundation.dart';

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
import 'package:basic_diet/data/response/order_timeline_response.dart';

import '../response/bulk_selections_response.dart';

class RemoteDataSourceImpl implements RemoteDataSource {
  final AppServiceClient _appServiceClient;

  RemoteDataSourceImpl(this._appServiceClient);

  @override
  Future<AuthenticationResponse> login(
    String phone,
    String password,
    String? deviceId,
    String? deviceName,
  ) async {
    return await _appServiceClient.login({
      'phone': phone,
      'password': password,
      if (deviceId != null) 'deviceId': deviceId,
      if (deviceName != null) 'deviceName': deviceName,
    });
  }

  @override
  Future<AuthenticationResponse> register(
    String fullName,
    String phone,
    String password,
    String confirmPassword, {
    String? email,
  }) async {
    return await _appServiceClient.register({
      'fullName': fullName.trim(),
      'phone': phone.trim(),
      'password': password,
      'confirmPassword': confirmPassword,
      if (email != null && email.isNotEmpty) 'email': email,
    });
  }

  @override
  Future<BaseResponse> requestRegistrationOtp(String phone) async {
    return await _appServiceClient.requestRegistrationOtp({'phoneE164': phone});
  }

  @override
  Future<AuthenticationResponse> verifyRegistrationOtp(
    String phone,
    String otp,
    String password,
    String? deviceId,
    String? deviceName,
  ) async {
    return await _appServiceClient.verifyRegistrationOtp({
      'phoneE164': phone,
      if (otp.isNotEmpty) 'otp': otp,
      'password': password,
      if (deviceId != null) 'deviceId': deviceId,
      if (deviceName != null) 'deviceName': deviceName,
    });
  }

  @override
  Future<AuthenticationResponse> refreshToken(String refreshToken) {
    return _appServiceClient.refreshToken({'refreshToken': refreshToken});
  }

  @override
  Future<BaseResponse> logout(String refreshToken) {
    return _appServiceClient.logout({'refreshToken': refreshToken});
  }

  @override
  Future<BaseResponse> requestPasswordResetOtp(String phone) {
    return _appServiceClient.requestPasswordResetOtp({'phoneE164': phone});
  }

  @override
  Future<BaseResponse> resetPassword(
    String phone,
    String otp,
    String newPassword,
  ) {
    return _appServiceClient.resetPassword({
      'phoneE164': phone,
      'otp': otp,
      'newPassword': newPassword,
    });
  }

  @override
  Future<BaseResponse> changePassword(
    String currentPassword,
    String newPassword,
    String confirmPassword,
  ) {
    return _appServiceClient.changePassword({
      'currentPassword': currentPassword,
      'newPassword': newPassword,
      'confirmPassword': confirmPassword,
    });
  }

  @override
  Future<AuthenticationResponse> completePasswordChange(
    String passwordChangeToken,
    String newPassword,
    String confirmPassword,
    String? deviceId,
    String? deviceName,
  ) {
    return _appServiceClient.completePasswordChange(
      'Bearer $passwordChangeToken',
      {
        'newPassword': newPassword,
        'confirmPassword': confirmPassword,
        if (deviceId != null) 'deviceId': deviceId,
        if (deviceName != null) 'deviceName': deviceName,
      },
    );
  }

  @override
  Future<AuthenticationResponse> getCurrentUser() {
    return _appServiceClient.getCurrentUser();
  }

  @override
  Future<ClientProfileResponse> getClientProfile() {
    return _appServiceClient.getClientProfile();
  }

  @override
  Future<PlansResponse> getPlans() {
    return _appServiceClient.getPlans();
  }

  @override
  Future<PopularPackagesResponse> getPopularPackages() {
    return _appServiceClient.getPopularPackages();
  }

  @override
  Future<PremiumMealsResponse> getPremiumMeals() {
    return _appServiceClient.getPremiumMeals();
  }

  @override
  Future<AddOnsResponse> getAddOns({String? type}) {
    return _appServiceClient.getAddOns(type);
  }

  @override
  Future<AddonSubscriptionOptionsResponse> getAddonSubscriptionOptions(
    String planId,
  ) {
    return _appServiceClient.getAddonSubscriptionOptions(planId);
  }

  @override
  Future<AddonChoicesResponse> getAddonChoices({String? category}) {
    return _appServiceClient.getAddonChoices(category: category);
  }

  @override
  Future<SubscriptionMenuResponse> getSubscriptionMenu() {
    return _appServiceClient.getSubscriptionMenu();
  }

  @override
  Future<DeliveryOptionsResponse> getDeliveryOptions() {
    return _appServiceClient.getDeliveryOptions();
  }

  @override
  Future<SubscriptionQuoteResponse> getSubscriptionQuote(
    SubscriptionQuoteRequest request,
  ) {
    return _appServiceClient.getSubscriptionQuote(request);
  }

  @override
  Future<SubscriptionCheckoutResponse> checkoutSubscription(
    SubscriptionCheckoutRequest request,
  ) {
    return _appServiceClient.checkoutSubscription(request);
  }

  @override
  Future<SubscriptionRenewalSeedResponse> getSubscriptionRenewalSeed(
    String id,
  ) {
    return _appServiceClient.getSubscriptionRenewalSeed(id);
  }

  @override
  Future<SubscriptionCheckoutResponse> renewSubscription(
    String id,
    SubscriptionCheckoutRequest request,
  ) {
    return _appServiceClient.renewSubscription(id, request);
  }

  @override
  Future<CurrentSubscriptionOverviewResponse> getCurrentSubscriptionOverview() {
    return _appServiceClient.getCurrentSubscriptionOverview();
  }

  @override
  Future<FreezeSubscriptionResponse> freezeSubscription(
    String id,
    FreezeSubscriptionRequest request,
  ) {
    return _appServiceClient.freezeSubscription(id, request);
  }

  @override
  Future<SkipDaysResponse> skipDay(String id, SkipDayRequest request) {
    return _appServiceClient.skipDay(id, request);
  }

  @override
  Future<SkipDaysResponse> skipDateRange(
    String id,
    SkipDateRangeRequest request,
  ) {
    return _appServiceClient.skipDateRange(id, request);
  }

  @override
  Future<TimelineResponse> getSubscriptionTimeline(String id) {
    return _appServiceClient.getSubscriptionTimeline(id);
  }

  @override
  Future<CategoriesWithMealsResponse> getCategoriesWithMeals() {
    return _appServiceClient.getCategoriesWithMeals();
  }

  @override
  Future<CheckoutDraftResponse> getCheckoutDraft(String id) {
    return _appServiceClient.getCheckoutDraft(id);
  }

  @override
  Future<BulkSelectionsResponse> bulkSelections(
    String id,
    BulkSelectionsRequest request,
  ) {
    return _appServiceClient.bulkSelections(id, request);
  }

  @override
  Future<ValidationResponse> validateDaySelection(
    String id,
    String date,
    DaySelectionRequest request,
  ) {
    final body = request.toJson();
    debugPrint(const JsonEncoder.withIndent('  ').convert(body));
    return _appServiceClient.validateDaySelection(id, date, body);
  }

  @override
  Future<SubscriptionDayResponse> saveDaySelection(
    String id,
    String date,
    DaySelectionRequest request,
  ) {
    final body = request.toJson();
    debugPrint(const JsonEncoder.withIndent('  ').convert(body));
    return _appServiceClient.saveDaySelection(id, date, body);
  }

  @override
  Future<SubscriptionDayResponse> getSubscriptionDay(String id, String date) {
    return _appServiceClient.getSubscriptionDay(id, date);
  }

  @override
  Future<SubscriptionDayResponse> confirmDaySelection(String id, String date) {
    return _appServiceClient.confirmDaySelection(id, date);
  }

  @override
  Future<PickupPrepareResponse> preparePickup(String id, String date) {
    return _appServiceClient.preparePickup(id, date);
  }

  @override
  Future<PickupAvailabilityResponse> getPickupAvailability(
    String id,
    String date, {
    bool? includeUnavailable,
    bool? includeHistory,
  }) {
    return _appServiceClient.getPickupAvailability(
      id,
      date,
      includeUnavailable,
      includeHistory,
    );
  }

  @override
  Future<PickupRequestResponse> createPickupRequest(
    String id,
    CreatePickupRequest request,
  ) {
    return _appServiceClient.createPickupRequest(id, request);
  }

  @override
  Future<PickupRequestsResponse> getPickupRequests(
    String id, {
    String? date,
    String? status,
  }) {
    return _appServiceClient.getPickupRequests(id, date, status);
  }

  @override
  Future<PickupRequestResponse> getPickupRequestStatus(
    String id,
    String requestId,
  ) {
    return _appServiceClient.getPickupRequestStatus(id, requestId);
  }

  @override
  Future<PickupAvailabilityResponse> appendMealsToDay(
    String id,
    String date,
    AppendMealsRequest request,
  ) {
    return _appServiceClient.appendMealsToDay(id, date, request);
  }

  @override
  Future<PickupStatusResponse> getPickupStatus(String id, String date) {
    return _appServiceClient.getPickupStatus(id, date);
  }

  @override
  Future<FulfillmentStatusResponse> getDayFulfillmentStatus(
    String id,
    String date,
  ) {
    return _appServiceClient.getDayFulfillmentStatus(id, date);
  }

  @override
  Future<MealPlannerMenuResponse> getMealPlannerMenu() {
    return _appServiceClient.getMealPlannerMenu();
  }

  @override
  Future<PremiumPaymentResponse> createPremiumPayment(
    String subscriptionId,
    String date,
  ) {
    return _appServiceClient.createPremiumPayment(subscriptionId, date);
  }

  @override
  Future<PremiumPaymentResponse> createUnifiedDayPayment(
    String subscriptionId,
    String date,
    Map<String, dynamic> body,
  ) {
    return _appServiceClient.createUnifiedDayPayment(
      subscriptionId,
      date,
      body,
    );
  }

  @override
  Future<PremiumPaymentVerificationResponse> verifyPremiumPayment(
    String subscriptionId,
    String date,
    String paymentId,
  ) {
    return _appServiceClient.verifyPremiumPayment(
      subscriptionId,
      date,
      paymentId,
    );
  }

  @override
  Future<PremiumPaymentVerificationResponse> verifyUnifiedDayPayment(
    String subscriptionId,
    String date,
    String paymentId,
    Map<String, dynamic> body,
  ) {
    return _appServiceClient.verifyUnifiedDayPayment(
      subscriptionId,
      date,
      paymentId,
      body,
    );
  }

  @override
  Future<PremiumPaymentResponse> createOneTimeAddonPayment(
    String subscriptionId,
    String date,
  ) {
    return _appServiceClient.createOneTimeAddonPayment(subscriptionId, date);
  }

  @override
  Future<PremiumPaymentVerificationResponse> verifyOneTimeAddonPayment(
    String subscriptionId,
    String date,
    String paymentId,
  ) {
    return _appServiceClient.verifyOneTimeAddonPayment(subscriptionId, date, {
      'paymentId': paymentId,
    });
  }

  @override
  Future<CancelSubscriptionResponse> cancelSubscription(
    String id,
    CancelSubscriptionRequest request,
  ) {
    return _appServiceClient.cancelSubscription(id, request);
  }

  @override
  Future<OrderMenuResponse> getOrderMenu() {
    return _appServiceClient.getOrderMenu();
  }

  @override
  Future<OrderQuoteResponse> getOrderQuote(OrderQuoteRequest request) {
    return _appServiceClient.getOrderQuote(request);
  }

  @override
  Future<CreateOrderResponse> createOrder(
    CreateOrderRequest request,
    String idempotencyKey,
  ) {
    return _appServiceClient.createOrder(request, idempotencyKey);
  }

  @override
  Future<VerifyPaymentResponse> verifyOrderPayment(
    String orderId,
    String paymentId,
    VerifyPaymentRequest request,
  ) {
    return _appServiceClient.verifyOrderPayment(orderId, paymentId, request);
  }

  @override
  Future<OrderDetailResponse> getOrderDetail(String orderId) {
    return _appServiceClient.getOrderDetail(orderId);
  }

  @override
  Future<OrdersListResponse> getOrders(int page, int limit) {
    return _appServiceClient.getOrders(page, limit);
  }

  @override
  Future<CancelOrderResponse> cancelOrder(String orderId) {
    return _appServiceClient.cancelOrder(orderId);
  }

  @override
  Future<OrderTimelineResponse> getOrderTimeline(String orderId) {
    return _appServiceClient.getOrderTimeline(orderId);
  }
}
