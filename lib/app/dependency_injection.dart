import 'package:basic_diet/app/constants.dart';
import 'package:basic_diet/app/subscription_quote_cache.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:basic_diet/data/data_source/remote_data_source.dart';
import 'package:basic_diet/data/data_source/remote_data_source_impl.dart';
import 'package:basic_diet/data/network/app_api.dart';
import 'package:basic_diet/data/network/dio_factory.dart';
import 'package:basic_diet/data/repository/repository.dart';
import 'package:basic_diet/domain/repository/repository.dart';
import 'package:basic_diet/domain/usecase/login_usecase.dart';
import 'package:basic_diet/domain/usecase/get_client_profile_usecase.dart';
import 'package:basic_diet/domain/usecase/get_current_user_usecase.dart';
import 'package:basic_diet/domain/usecase/refresh_token_usecase.dart';
import 'package:basic_diet/domain/usecase/logout_usecase.dart';
import 'package:basic_diet/domain/usecase/prepare_pickup_usecase.dart';
import 'package:basic_diet/domain/usecase/create_pickup_request_usecase.dart';
import 'package:basic_diet/domain/usecase/append_meals_to_day_usecase.dart';
import 'package:basic_diet/domain/usecase/get_pickup_availability_usecase.dart';
import 'package:basic_diet/domain/usecase/get_pickup_request_status_usecase.dart';
import 'package:basic_diet/domain/usecase/get_pickup_requests_usecase.dart';
import 'package:basic_diet/domain/usecase/verify_otp_usecase.dart';
import 'package:basic_diet/domain/usecase/change_password_usecase.dart';
import 'package:basic_diet/domain/usecase/complete_password_change_usecase.dart';
import 'package:basic_diet/domain/usecase/checkout_subscription_usecase.dart';
import 'package:basic_diet/domain/usecase/get_plans_usecase.dart';
import 'package:basic_diet/domain/usecase/get_delivery_options_usecase.dart';
import 'package:basic_diet/domain/usecase/get_subscription_quote_usecase.dart';
import 'package:basic_diet/domain/usecase/get_subscription_renewal_seed_usecase.dart';
import 'package:basic_diet/domain/usecase/renew_subscription_usecase.dart';
import 'package:basic_diet/presentation/login/login_bloc.dart';
import 'package:basic_diet/presentation/verify/verify_bloc.dart';
import 'package:basic_diet/presentation/change_password/change_password_bloc.dart';
import 'package:basic_diet/presentation/complete_password_change/complete_password_change_bloc.dart';
import 'package:basic_diet/presentation/main/home/subscription/bloc/subscription_bloc.dart';
import 'package:basic_diet/domain/usecase/register_usecase.dart';
import 'package:basic_diet/domain/usecase/get_popular_packages_usecase.dart';
import 'package:basic_diet/domain/usecase/get_premium_meals_usecase.dart';
import 'package:basic_diet/presentation/register/register_bloc.dart';
import 'package:basic_diet/presentation/main/home/bloc/home_bloc.dart';
import 'package:basic_diet/presentation/main/home/premium/bloc/premium_meals_bloc.dart';
import 'package:basic_diet/domain/usecase/get_addon_subscription_options_usecase.dart';
import 'package:basic_diet/presentation/main/home/add-ons/bloc/add_ons_bloc.dart';
import 'package:basic_diet/presentation/main/home/delivery/bloc/delivery_options_bloc.dart';
import 'package:dio/dio.dart';
import 'package:basic_diet/app/app_pref.dart';
import 'package:basic_diet/domain/usecase/get_current_subscription_overview_usecase.dart';
import 'package:basic_diet/presentation/plans/bloc/plans_bloc.dart';
import 'package:basic_diet/domain/usecase/freeze_subscription_usecase.dart';
import 'package:basic_diet/presentation/plans/manage_subscription/freeze/freeze_subscription_bloc.dart';
import 'package:basic_diet/presentation/plans/manage_subscription/skip/skip_days_bloc.dart';
import 'package:basic_diet/domain/usecase/cancel_subscription_usecase.dart';
import 'package:basic_diet/presentation/plans/manage_subscription/cancel/cancel_subscription_bloc.dart';
import 'package:basic_diet/domain/usecase/skip_day_usecase.dart';
import 'package:basic_diet/domain/usecase/skip_date_range_usecase.dart';
import 'package:basic_diet/domain/usecase/get_timeline_usecase.dart';
import 'package:basic_diet/domain/usecase/get_meal_planner_menu_usecase.dart';
import 'package:basic_diet/domain/usecase/get_addon_choices_usecase.dart';
import 'package:basic_diet/domain/usecase/get_subscription_day_usecase.dart';
import 'package:basic_diet/domain/usecase/save_meal_planner_changes_usecase.dart';
import 'package:basic_diet/domain/usecase/validate_day_selection_usecase.dart';
import 'package:basic_diet/domain/usecase/save_day_selection_usecase.dart';
import 'package:basic_diet/domain/usecase/create_unified_day_payment_usecase.dart';
import 'package:basic_diet/domain/usecase/verify_unified_day_payment_usecase.dart';
import 'package:basic_diet/domain/usecase/confirm_day_selection_usecase.dart';
import 'package:basic_diet/presentation/plans/timeline/bloc/timeline_bloc.dart';
import 'package:basic_diet/presentation/plans/timeline/meal_planner/bloc/meal_planner_bloc.dart';
import 'package:basic_diet/domain/usecase/get_checkout_draft_usecase.dart';
import 'package:basic_diet/domain/usecase/get_pickup_status_usecase.dart';
import 'package:basic_diet/presentation/main/home/payment-success/payment_validation_cubit.dart';
import 'package:basic_diet/presentation/plans/pickup_status/pickup_status_cubit.dart';
import 'package:basic_diet/presentation/plans/pickup_requests/pickup_requests_cubit.dart';
import 'package:basic_diet/domain/usecase/get_day_fulfillment_status_usecase.dart';
import 'package:basic_diet/presentation/plans/fulfillment_status/fulfillment_status_cubit.dart';
import 'package:basic_diet/domain/usecase/get_order_menu_usecase.dart';
import 'package:basic_diet/domain/usecase/get_order_quote_usecase.dart';
import 'package:basic_diet/domain/usecase/create_order_usecase.dart';
import 'package:basic_diet/domain/usecase/get_order_detail_usecase.dart';
import 'package:basic_diet/domain/usecase/get_orders_usecase.dart';
import 'package:basic_diet/domain/usecase/cancel_order_usecase.dart';
import 'package:basic_diet/domain/usecase/verify_order_payment_usecase.dart';
import 'package:basic_diet/domain/usecase/get_order_timeline_usecase.dart';
import 'package:basic_diet/presentation/main/menu/bloc/menu_bloc.dart';
import 'package:basic_diet/presentation/main/cart/bloc/checkout_bloc.dart';
import 'package:basic_diet/presentation/main/cart/bloc/order_tracking_bloc.dart';
import 'package:basic_diet/presentation/main/orders/bloc/orders_bloc.dart';
import 'package:basic_diet/presentation/main/profile/bloc/profile_bloc.dart';
import 'package:get_it/get_it.dart';

final instance = GetIt.instance; // Singleton instance of GetIt
Future<void> initAppModule() async {
  final prefs = await SharedPreferences.getInstance();

  instance.registerLazySingleton<AppPreferences>(() => AppPreferences(prefs));

  instance.registerLazySingleton<SubscriptionQuoteCache>(
    () => SubscriptionQuoteCache(prefs),
  );

  instance.registerLazySingleton<String>(
    () => Constants.baseUrl,
    instanceName: "baseUrl",
  );

  instance.registerLazySingleton<DioFactory>(
    () => DioFactory(
      instance<AppPreferences>(),
      instance<String>(instanceName: "baseUrl"),
    ),
  );

  Dio dio = await instance<DioFactory>().createConfiguredDio();
  instance.registerLazySingleton<AppServiceClient>(
    () => AppServiceClient(dio, baseUrl: Constants.baseUrl),
  );

  instance.registerLazySingleton<RemoteDataSource>(
    () => RemoteDataSourceImpl(instance<AppServiceClient>()),
  );

  instance.registerLazySingleton<Repository>(
    () => RepositoryImpl(instance<RemoteDataSource>()),
  );

  instance.registerLazySingleton<GetCurrentUserUseCase>(
    () => GetCurrentUserUseCase(instance<Repository>()),
  );

  instance.registerLazySingleton<RefreshTokenUseCase>(
    () => RefreshTokenUseCase(instance<Repository>()),
  );
}

// This function has all the dependencies that are used in the login module.
void initLoginModule() {
  if (!GetIt.I.isRegistered<LoginUseCase>()) {
    instance.registerFactory<LoginUseCase>(
      () => LoginUseCase(instance<Repository>()),
    );

    instance.registerFactory<LoginBloc>(
      () => LoginBloc(instance<LoginUseCase>(), instance<AppPreferences>()),
    );
  }
}

void initRegisterModule() {
  if (!GetIt.I.isRegistered<RegisterUseCase>()) {
    instance.registerFactory<RegisterUseCase>(
      () => RegisterUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<RegisterBloc>()) {
    instance.registerFactory<RegisterBloc>(
      () =>
          RegisterBloc(instance<RegisterUseCase>(), instance<AppPreferences>()),
    );
  }
}

void initVerifyModule() {
  if (!GetIt.I.isRegistered<VerifyOtpUseCase>()) {
    instance.registerFactory<VerifyOtpUseCase>(
      () => VerifyOtpUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<VerifyBloc>()) {
    instance.registerFactory<VerifyBloc>(
      () =>
          VerifyBloc(instance<VerifyOtpUseCase>(), instance<AppPreferences>()),
    );
  }
}

void initChangePasswordModule() {
  if (!GetIt.I.isRegistered<ChangePasswordUseCase>()) {
    instance.registerFactory<ChangePasswordUseCase>(
      () => ChangePasswordUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<ChangePasswordBloc>()) {
    instance.registerFactory<ChangePasswordBloc>(
      () => ChangePasswordBloc(instance<ChangePasswordUseCase>()),
    );
  }
}

void initCompletePasswordChangeModule() {
  if (!GetIt.I.isRegistered<CompletePasswordChangeUseCase>()) {
    instance.registerFactory<CompletePasswordChangeUseCase>(
      () => CompletePasswordChangeUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<CompletePasswordChangeBloc>()) {
    instance.registerFactoryParam<CompletePasswordChangeBloc, String, void>(
      (passwordChangeToken, _) => CompletePasswordChangeBloc(
        instance<CompletePasswordChangeUseCase>(),
        instance<AppPreferences>(),
        passwordChangeToken,
      ),
    );
  }
}

void initSubscriptionModule() {
  if (!GetIt.I.isRegistered<GetPlansUseCase>()) {
    instance.registerFactory<GetPlansUseCase>(
      () => GetPlansUseCase(instance<Repository>()),
    );

    instance.registerFactory<GetSubscriptionQuoteUseCase>(
      () => GetSubscriptionQuoteUseCase(instance<Repository>()),
    );

    instance.registerFactory<CheckoutSubscriptionUseCase>(
      () => CheckoutSubscriptionUseCase(instance<Repository>()),
    );

    instance.registerFactory<GetSubscriptionRenewalSeedUseCase>(
      () => GetSubscriptionRenewalSeedUseCase(instance<Repository>()),
    );

    instance.registerFactory<RenewSubscriptionUseCase>(
      () => RenewSubscriptionUseCase(instance<Repository>()),
    );

    instance.registerFactory<SubscriptionBloc>(
      () => SubscriptionBloc(
        instance<GetPlansUseCase>(),
        instance<GetSubscriptionQuoteUseCase>(),
        instance<CheckoutSubscriptionUseCase>(),
        instance<SubscriptionQuoteCache>(),
      ),
    );
  }

  initPaymentValidationModule();
}

void initHomeModule() {
  if (!GetIt.I.isRegistered<GetPopularPackagesUseCase>()) {
    instance.registerFactory<GetPopularPackagesUseCase>(
      () => GetPopularPackagesUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<GetCurrentSubscriptionOverviewUseCase>()) {
    instance.registerFactory<GetCurrentSubscriptionOverviewUseCase>(
      () => GetCurrentSubscriptionOverviewUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<GetOrderMenuUseCase>()) {
    instance.registerFactory<GetOrderMenuUseCase>(
      () => GetOrderMenuUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<HomeBloc>()) {
    instance.registerFactory<HomeBloc>(
      () => HomeBloc(
        instance<GetPopularPackagesUseCase>(),
        instance<GetCurrentSubscriptionOverviewUseCase>(),
        instance<GetOrderMenuUseCase>(),
      ),
    );
  }
}

void initProfileModule() {
  if (!GetIt.I.isRegistered<GetClientProfileUseCase>()) {
    instance.registerFactory<GetClientProfileUseCase>(
      () => GetClientProfileUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<LogoutUseCase>()) {
    instance.registerFactory<LogoutUseCase>(
      () => LogoutUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<ProfileBloc>()) {
    instance.registerFactory<ProfileBloc>(
      () => ProfileBloc(
        instance<GetClientProfileUseCase>(),
        instance<LogoutUseCase>(),
        instance<AppPreferences>(),
      ),
    );
  }
}

void initPremiumMealsModule() {
  if (!GetIt.I.isRegistered<GetPremiumMealsUseCase>()) {
    instance.registerFactory<GetPremiumMealsUseCase>(
      () => GetPremiumMealsUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<PremiumMealsBloc>()) {
    instance.registerFactory<PremiumMealsBloc>(
      () => PremiumMealsBloc(instance<GetPremiumMealsUseCase>()),
    );
  }
}

void initAddOnsModule() {
  if (!GetIt.I.isRegistered<GetAddonSubscriptionOptionsUseCase>()) {
    instance.registerFactory<GetAddonSubscriptionOptionsUseCase>(
      () => GetAddonSubscriptionOptionsUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<AddOnsBloc>()) {
    instance.registerFactory<AddOnsBloc>(
      () => AddOnsBloc(instance<GetAddonSubscriptionOptionsUseCase>()),
    );
  }
}

void initDeliveryOptionsModule() {
  if (!GetIt.I.isRegistered<GetDeliveryOptionsUseCase>()) {
    instance.registerFactory<GetDeliveryOptionsUseCase>(
      () => GetDeliveryOptionsUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<DeliveryOptionsBloc>()) {
    instance.registerFactory<DeliveryOptionsBloc>(
      () => DeliveryOptionsBloc(instance<GetDeliveryOptionsUseCase>()),
    );
  }
}

void initPlansModule() {
  initTimelineModule();
  initPickupRequestsModule();
  if (!GetIt.I.isRegistered<GetCurrentSubscriptionOverviewUseCase>()) {
    instance.registerFactory<GetCurrentSubscriptionOverviewUseCase>(
      () => GetCurrentSubscriptionOverviewUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<PreparePickupUseCase>()) {
    instance.registerFactory<PreparePickupUseCase>(
      () => PreparePickupUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<GetDayFulfillmentStatusUseCase>()) {
    instance.registerFactory<GetDayFulfillmentStatusUseCase>(
      () => GetDayFulfillmentStatusUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<FulfillmentStatusCubit>()) {
    instance.registerFactory<FulfillmentStatusCubit>(
      () => FulfillmentStatusCubit(instance<GetDayFulfillmentStatusUseCase>()),
    );
  }

  if (!GetIt.I.isRegistered<PlansBloc>()) {
    instance.registerFactory<PlansBloc>(
      () => PlansBloc(
        instance<GetCurrentSubscriptionOverviewUseCase>(),
        instance<GetTimelineUseCase>(),
        instance<PreparePickupUseCase>(),
      ),
    );
  }
}

void initPickupRequestsModule() {
  if (!GetIt.I.isRegistered<GetPickupAvailabilityUseCase>()) {
    instance.registerFactory<GetPickupAvailabilityUseCase>(
      () => GetPickupAvailabilityUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<GetPickupRequestsUseCase>()) {
    instance.registerFactory<GetPickupRequestsUseCase>(
      () => GetPickupRequestsUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<CreatePickupRequestUseCase>()) {
    instance.registerFactory<CreatePickupRequestUseCase>(
      () => CreatePickupRequestUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<GetPickupRequestStatusUseCase>()) {
    instance.registerFactory<GetPickupRequestStatusUseCase>(
      () => GetPickupRequestStatusUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<AppendMealsToDayUseCase>()) {
    instance.registerFactory<AppendMealsToDayUseCase>(
      () => AppendMealsToDayUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<PickupRequestsCubit>()) {
    instance.registerFactory<PickupRequestsCubit>(
      () => PickupRequestsCubit(
        instance<GetPickupAvailabilityUseCase>(),
        instance<GetPickupRequestsUseCase>(),
        instance<CreatePickupRequestUseCase>(),
        instance<GetPickupRequestStatusUseCase>(),
      ),
    );
  }
}

void initPickupStatusModule() {
  if (!GetIt.I.isRegistered<GetPickupStatusUseCase>()) {
    instance.registerFactory<GetPickupStatusUseCase>(
      () => GetPickupStatusUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<PickupStatusCubit>()) {
    instance.registerFactory<PickupStatusCubit>(
      () => PickupStatusCubit(instance<GetPickupStatusUseCase>()),
    );
  }
}

void initFreezeSubscriptionModule() {
  if (!GetIt.I.isRegistered<FreezeSubscriptionUseCase>()) {
    instance.registerFactory<FreezeSubscriptionUseCase>(
      () => FreezeSubscriptionUseCase(instance<Repository>()),
    );

    instance.registerFactory<FreezeSubscriptionBloc>(
      () => FreezeSubscriptionBloc(instance<FreezeSubscriptionUseCase>()),
    );
  }
}

void initCancelSubscriptionModule() {
  if (!GetIt.I.isRegistered<CancelSubscriptionUseCase>()) {
    instance.registerFactory<CancelSubscriptionUseCase>(
      () => CancelSubscriptionUseCase(instance<Repository>()),
    );

    instance.registerFactory<CancelSubscriptionBloc>(
      () => CancelSubscriptionBloc(instance<CancelSubscriptionUseCase>()),
    );
  }
}

void initSkipDaysModule() {
  if (!GetIt.I.isRegistered<SkipDayUseCase>()) {
    instance.registerFactory<SkipDayUseCase>(() => SkipDayUseCase(instance()));
  }
  if (!GetIt.I.isRegistered<SkipDateRangeUseCase>()) {
    instance.registerFactory<SkipDateRangeUseCase>(
      () => SkipDateRangeUseCase(instance()),
    );
  }
  if (!GetIt.I.isRegistered<SkipDaysBloc>()) {
    instance.registerFactory<SkipDaysBloc>(
      () => SkipDaysBloc(instance(), instance()),
    );
  }
}

void initTimelineModule() {
  if (!GetIt.I.isRegistered<GetTimelineUseCase>()) {
    instance.registerFactory<GetTimelineUseCase>(
      () => GetTimelineUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<TimelineBloc>()) {
    instance.registerFactory<TimelineBloc>(
      () => TimelineBloc(
        instance<GetTimelineUseCase>(),
        instance<GetCurrentSubscriptionOverviewUseCase>(),
      ),
    );
  }
}

void initMealPlannerModule() {
  if (!GetIt.I.isRegistered<GetMealPlannerMenuUseCase>()) {
    instance.registerFactory<GetMealPlannerMenuUseCase>(
      () => GetMealPlannerMenuUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<GetAddonChoicesUseCase>()) {
    instance.registerFactory<GetAddonChoicesUseCase>(
      () => GetAddonChoicesUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<GetSubscriptionDayUseCase>()) {
    instance.registerFactory<GetSubscriptionDayUseCase>(
      () => GetSubscriptionDayUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<SaveMealPlannerChangesUseCase>()) {
    instance.registerFactory<SaveMealPlannerChangesUseCase>(
      () => SaveMealPlannerChangesUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<ValidateDaySelectionUseCase>()) {
    instance.registerFactory<ValidateDaySelectionUseCase>(
      () => ValidateDaySelectionUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<SaveDaySelectionUseCase>()) {
    instance.registerFactory<SaveDaySelectionUseCase>(
      () => SaveDaySelectionUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<AppendMealsToDayUseCase>()) {
    instance.registerFactory<AppendMealsToDayUseCase>(
      () => AppendMealsToDayUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<CreateUnifiedDayPaymentUseCase>()) {
    instance.registerFactory<CreateUnifiedDayPaymentUseCase>(
      () => CreateUnifiedDayPaymentUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<VerifyUnifiedDayPaymentUseCase>()) {
    instance.registerFactory<VerifyUnifiedDayPaymentUseCase>(
      () => VerifyUnifiedDayPaymentUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<ConfirmDaySelectionUseCase>()) {
    instance.registerFactory<ConfirmDaySelectionUseCase>(
      () => ConfirmDaySelectionUseCase(instance<Repository>()),
    );
  }

  // Old BLoC (for backward compatibility)
  if (!GetIt.I.isRegistered<MealPlannerBloc>()) {
    instance.registerFactoryParam<MealPlannerBloc, Map<String, dynamic>, void>(
      (params, _) => MealPlannerBloc(
        instance<GetMealPlannerMenuUseCase>(),
        instance<GetAddonChoicesUseCase>(),
        instance<GetSubscriptionDayUseCase>(),
        instance<ValidateDaySelectionUseCase>(),
        instance<SaveDaySelectionUseCase>(),
        instance<AppendMealsToDayUseCase>(),
        instance<CreateUnifiedDayPaymentUseCase>(),
        instance<VerifyUnifiedDayPaymentUseCase>(),
        instance<ConfirmDaySelectionUseCase>(),
        initialTimelineDays: params['timelineDays'],
        addonEntitlements: params['addonEntitlements'] ?? const [],
        premiumSummaries: params['premiumSummaries'] ?? const [],
        initialDayIndex: params['initialDayIndex'],
        premiumMealsRemaining: params['premiumMealsRemaining'],
        mealBalance: params['mealBalance'],
        subscriptionId: params['subscriptionId'],
      ),
    );
  }
}

void initPaymentValidationModule() {
  if (!GetIt.I.isRegistered<GetCheckoutDraftUseCase>()) {
    instance.registerFactory<GetCheckoutDraftUseCase>(
      () => GetCheckoutDraftUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<PaymentValidationCubit>()) {
    instance.registerFactory<PaymentValidationCubit>(
      () => PaymentValidationCubit(instance<GetCheckoutDraftUseCase>()),
    );
  }
}

void initOrderMenuModule() {
  if (!GetIt.I.isRegistered<GetOrderMenuUseCase>()) {
    instance.registerFactory<GetOrderMenuUseCase>(
      () => GetOrderMenuUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<MenuBloc>()) {
    instance.registerFactory<MenuBloc>(
      () => MenuBloc(instance<GetOrderMenuUseCase>()),
    );
  }
}

void initCheckoutModule() {
  if (!GetIt.I.isRegistered<GetOrderQuoteUseCase>()) {
    instance.registerFactory<GetOrderQuoteUseCase>(
      () => GetOrderQuoteUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<CreateOrderUseCase>()) {
    instance.registerFactory<CreateOrderUseCase>(
      () => CreateOrderUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<VerifyOrderPaymentUseCase>()) {
    instance.registerFactory<VerifyOrderPaymentUseCase>(
      () => VerifyOrderPaymentUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<CheckoutBloc>()) {
    instance.registerFactory<CheckoutBloc>(
      () => CheckoutBloc(
        instance<GetOrderQuoteUseCase>(),
        instance<CreateOrderUseCase>(),
        instance<VerifyOrderPaymentUseCase>(),
      ),
    );
  }
}

void initOrderTrackingModule() {
  if (!GetIt.I.isRegistered<GetOrderDetailUseCase>()) {
    instance.registerFactory<GetOrderDetailUseCase>(
      () => GetOrderDetailUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<VerifyOrderPaymentUseCase>()) {
    instance.registerFactory<VerifyOrderPaymentUseCase>(
      () => VerifyOrderPaymentUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<GetOrderTimelineUseCase>()) {
    instance.registerFactory<GetOrderTimelineUseCase>(
      () => GetOrderTimelineUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<OrderTrackingBloc>()) {
    instance.registerFactory<OrderTrackingBloc>(
      () => OrderTrackingBloc(
        instance<GetOrderDetailUseCase>(),
        instance<VerifyOrderPaymentUseCase>(),
        instance<GetOrderTimelineUseCase>(),
      ),
    );
  }
}

void initOrdersModule() {
  if (!GetIt.I.isRegistered<GetOrdersUseCase>()) {
    instance.registerFactory<GetOrdersUseCase>(
      () => GetOrdersUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<CancelOrderUseCase>()) {
    instance.registerFactory<CancelOrderUseCase>(
      () => CancelOrderUseCase(instance<Repository>()),
    );
  }

  if (!GetIt.I.isRegistered<OrdersBloc>()) {
    instance.registerFactory<OrdersBloc>(
      () => OrdersBloc(
        instance<GetOrdersUseCase>(),
        instance<CancelOrderUseCase>(),
      ),
    );
  }
}
