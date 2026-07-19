import 'package:basic_diet/app/dependency_injection.dart';
import 'package:basic_diet/domain/model/current_subscription_overview_model.dart';
import 'package:basic_diet/domain/model/timeline_model.dart';
import 'package:basic_diet/presentation/plans/bloc/plans_bloc.dart';
import 'package:basic_diet/presentation/plans/bloc/plans_event.dart';
import 'package:basic_diet/presentation/plans/widgets/fulfillment/delivery_fulfillment_card.dart';
import 'package:basic_diet/presentation/plans/pickup_requests/pickup_requests_cubit.dart';
import 'package:basic_diet/presentation/plans/pickup_requests/pickup_requests_state.dart';
import 'package:basic_diet/presentation/plans/widgets/fulfillment/pickup_availability_sheet.dart';
import 'package:basic_diet/presentation/plans/widgets/fulfillment/pickup_fulfillment_card.dart';
import 'package:basic_diet/presentation/plans/widgets/fulfillment/pickup_request_card.dart';
import 'package:basic_diet/presentation/plans/fulfillment_status/fulfillment_status_cubit.dart';
import 'package:basic_diet/presentation/plans/fulfillment_status/fulfillment_status_state.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class FulfillmentStatusSection extends StatelessWidget {
  final CurrentSubscriptionOverviewDataModel data;
  final TimelineDayModel? fulfillmentDay;

  const FulfillmentStatusSection({
    super.key,
    required this.data,
    required this.fulfillmentDay,
  });

  @override
  Widget build(BuildContext context) {
    if (data.deliveryMode == 'pickup') {
      final businessDate = _pickupBusinessDate;
      if (businessDate.isNotEmpty) {
        context.read<FulfillmentStatusCubit>().startPolling(
          data.id,
          businessDate,
        );
      }

      if (businessDate.isEmpty) {
        return Column(
          children: [
            Gap(AppSize.s16.h),
            BlocBuilder<FulfillmentStatusCubit, FulfillmentStatusState>(
              builder: (context, pollingState) {
                return PickupFulfillmentCard(
                  overview: data,
                  pickupStatus: null,
                  fulfillmentStatus: pollingState.data,
                  onOpenPlanner: () => _openPlanner(context),
                  onCreatePickupRequest: () {},
                );
              },
            ),
          ],
        );
      }

      return Column(
        children: [
          Gap(AppSize.s16.h),
          BlocProvider(
            key: ValueKey('pickup-requests-${data.id}-$businessDate'),
            create: (_) {
              initPickupRequestsModule();
              return instance<PickupRequestsCubit>()
                ..startPolling(subscriptionId: data.id, date: businessDate);
            },
            child: BlocBuilder<PickupRequestsCubit, PickupRequestsState>(
              builder: (pickupContext, pickupState) {
                return BlocBuilder<
                  FulfillmentStatusCubit,
                  FulfillmentStatusState
                >(
                  builder: (context, pollingState) {
                    return Column(
                      children: [
                        PickupFulfillmentCard(
                          overview: data,
                          pickupStatus: null,
                          fulfillmentStatus: pollingState.data,
                          onOpenPlanner: () => _openPlanner(context),
                          onCreatePickupRequest:
                              () => _openPickupAvailabilitySheet(
                                pickupContext,
                                context,
                              ),
                        ),
                        if (pickupState.isLoading) ...[
                          Gap(AppSize.s12.h),
                          const Center(child: CircularProgressIndicator()),
                        ] else if (pickupState.requests.isNotEmpty) ...[
                          Gap(AppSize.s12.h),
                          Align(
                            alignment: AlignmentDirectional.centerStart,
                            child: Text(Strings.pickupRequestsForDay.tr()),
                          ),
                          Gap(AppSize.s8.h),
                          ...pickupState.requests.asMap().entries.map(
                            (entry) => Padding(
                              padding: EdgeInsets.only(bottom: AppSize.s8.h),
                              child: PickupRequestCard(
                                request: entry.value,
                                index: entry.key,
                              ),
                            ),
                          ),
                        ],
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ],
      );
    }

    if (data.deliveryMode == 'delivery') {
      final businessDate = fulfillmentDay?.date ?? data.businessDate;
      if (businessDate.isNotEmpty) {
        context.read<FulfillmentStatusCubit>().startPolling(
          data.id,
          businessDate,
        );
      }

      return Column(
        children: [
          Gap(AppSize.s16.h),
          BlocBuilder<FulfillmentStatusCubit, FulfillmentStatusState>(
            builder: (context, pollingState) {
              return DeliveryFulfillmentCard(
                overview: data,
                fulfillmentDay: fulfillmentDay,
                fulfillmentStatus: pollingState.data,
                onOpenPlanner: () => _openPlanner(context),
              );
            },
          ),
        ],
      );
    }

    return const SizedBox.shrink();
  }

  String get _pickupBusinessDate {
    if (data.pickupPreparation?.businessDate.isNotEmpty == true) {
      return data.pickupPreparation!.businessDate;
    }
    return data.businessDate;
  }

  void _openPlanner(BuildContext context, {bool openCurrentDay = false}) {
    context.read<PlansBloc>().add(
      FetchTimelineAndOpenPlannerEvent(
        data.id,
        openCurrentDay: openCurrentDay,
        preferredDate: _pickupBusinessDate,
      ),
    );
  }

  void _openPickupAvailabilitySheet(
    BuildContext pickupContext,
    BuildContext parentContext,
  ) {
    final cubit = pickupContext.read<PickupRequestsCubit>();
    cubit.openAvailability();
    showModalBottomSheet<void>(
      context: parentContext,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (_) {
        return BlocProvider.value(
          value: cubit,
          child: PickupAvailabilitySheet(
            onAppendMeals: () {
              Navigator.of(parentContext).pop();
              _openPlanner(parentContext, openCurrentDay: true);
            },
          ),
        );
      },
    );
  }
}
