import 'package:basic_diet/domain/model/pickup_request_model.dart';
import 'package:basic_diet/presentation/plans/pickup_requests/pickup_requests_cubit.dart';
import 'package:basic_diet/presentation/plans/pickup_requests/pickup_requests_state.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class PickupAvailabilitySheet extends StatelessWidget {
  final VoidCallback onAppendMeals;

  const PickupAvailabilitySheet({super.key, required this.onAppendMeals});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          AppPadding.p20.w,
          AppPadding.p12.h,
          AppPadding.p20.w,
          AppPadding.p20.h,
        ),
        child: BlocBuilder<PickupRequestsCubit, PickupRequestsState>(
          builder: (context, state) {
            final availability = state.availability;
            final isArabic = context.locale.languageCode == 'ar';
            final hasPickupItems =
                availability != null && availability.pickupItems.isNotEmpty;
            final canConfirmPickup =
                availability?.canCreatePickupRequest == true &&
                state.selectedPickupItemIds.isNotEmpty &&
                !state.isCreating;
            final sheetTitle =
                availability == null
                    ? Strings.chooseMealsForPickup.tr()
                    : isArabic
                    ? availability.titleAr
                    : availability.titleEn;
            final emptyText =
                availability == null
                    ? ''
                    : isArabic
                    ? availability.emptyTextAr
                    : availability.emptyTextEn;
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: AppSize.s44.w,
                    height: AppSize.s4.h,
                    decoration: BoxDecoration(
                      color: ColorManager.borderDefault,
                      borderRadius: BorderRadius.circular(AppSize.s8.r),
                    ),
                  ),
                ),
                Gap(AppSize.s16.h),
                Text(
                  sheetTitle.isEmpty
                      ? Strings.chooseMealsForPickup.tr()
                      : sheetTitle,
                  style: getBoldTextStyle(
                    color: ColorManager.textPrimary,
                    fontSize: FontSizeManager.s18.sp,
                  ),
                ),
                Gap(AppSize.s12.h),
                if (state.isAvailabilityLoading)
                  const Center(child: CircularProgressIndicator())
                else if (state.createErrorMessage.isNotEmpty)
                  _MessageTile(
                    text: _errorText(state.createErrorMessage),
                    isError: true,
                  ),
                if (!state.isAvailabilityLoading && availability != null) ...[
                  _WalletSummary(wallet: availability.wallet),
                  Gap(AppSize.s12.h),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.sizeOf(context).height * 0.45,
                    ),
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        if (hasPickupItems)
                          ...availability.pickupItems.map(
                            (item) => _PickupItemTile(
                              item: item,
                              isSelected: state.selectedPickupItemIds.contains(
                                item.itemId,
                              ),
                              onTap:
                                  () => context
                                      .read<PickupRequestsCubit>()
                                      .togglePickupItem(item),
                            ),
                          )
                        else ...[
                          ...availability.plannedSlots.map(
                            (slot) => _SlotTile(
                              slot: slot,
                              isSelected: state.selectedPickupItemIds.contains(
                                slot.slotId,
                              ),
                              onTap:
                                  () => context
                                      .read<PickupRequestsCubit>()
                                      .toggleSlot(slot),
                            ),
                          ),
                          ...availability.unavailableSlots.map(
                            (slot) => _SlotTile(
                              slot: slot,
                              isSelected: false,
                              onTap: () {},
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                  if ((hasPickupItems &&
                          availability.selectableItems.isEmpty) ||
                      (!hasPickupItems &&
                          availability.selectableSlots.isEmpty)) ...[
                    Gap(AppSize.s12.h),
                    _MessageTile(
                      text:
                          emptyText.isEmpty
                              ? Strings.noPickupMealsAvailable.tr()
                              : emptyText,
                    ),
                    if (availability.canAppendMeals) ...[
                      Gap(AppSize.s10.h),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton.icon(
                          onPressed: onAppendMeals,
                          icon: const Icon(Icons.add_rounded),
                          label: Text(Strings.addMealsToThisDay.tr()),
                        ),
                      ),
                    ] else ...[
                      Gap(AppSize.s8.h),
                      _MessageTile(text: Strings.noBalanceForAppendMeals.tr()),
                    ],
                  ],
                ],
                Gap(AppSize.s16.h),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed:
                            state.isCreating
                                ? null
                                : () => Navigator.of(context).pop(),
                        child: Text(Strings.cancel.tr()),
                      ),
                    ),
                    Gap(AppSize.s12.w),
                    Expanded(
                      child: ElevatedButton(
                        onPressed:
                            canConfirmPickup
                                ? () async {
                                  final navigator = Navigator.of(context);
                                  final created =
                                      await context
                                          .read<PickupRequestsCubit>()
                                          .confirmSelectedSlots();
                                  if (created && navigator.canPop()) {
                                    navigator.pop();
                                  }
                                }
                                : null,
                        child:
                            state.isCreating
                                ? SizedBox(
                                  width: AppSize.s18.w,
                                  height: AppSize.s18.w,
                                  child: const CircularProgressIndicator(
                                    strokeWidth: 2,
                                  ),
                                )
                                : Text(Strings.confirmPickupRequest.tr()),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  String _errorText(String error) {
    if (error == 'PAYMENT_REQUIRED_BEFORE_PICKUP') {
      return Strings.paymentRequiredBeforePickup.tr();
    }
    return error;
  }
}

class _WalletSummary extends StatelessWidget {
  final PickupWalletModel wallet;

  const _WalletSummary({required this.wallet});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppPadding.p12.w),
      decoration: BoxDecoration(
        color: ColorManager.brandPrimaryTint,
        borderRadius: BorderRadius.circular(AppSize.s12.r),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.account_balance_wallet_outlined,
            color: ColorManager.brandPrimary,
          ),
          Gap(AppSize.s10.w),
          Expanded(
            child: Text(
              '${Strings.availableMealBalance.tr()}: ${wallet.availableMeals}',
              style: getBoldTextStyle(
                color: ColorManager.stateSuccessEmphasis,
                fontSize: FontSizeManager.s13.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SlotTile extends StatelessWidget {
  final PickupAvailabilitySlotModel slot;
  final bool isSelected;
  final VoidCallback onTap;

  const _SlotTile({
    required this.slot,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isArabic = context.locale.languageCode == 'ar';
    final title = isArabic ? slot.titleAr : slot.titleEn;
    final subtitle = isArabic ? slot.subtitleAr : slot.subtitleEn;
    final badges = isArabic ? slot.badgesAr : slot.badgesEn;
    final isEnabled = slot.isSelectable;

    return Padding(
      padding: EdgeInsets.only(bottom: AppPadding.p8.h),
      child: InkWell(
        onTap: isEnabled ? onTap : null,
        borderRadius: BorderRadius.circular(AppSize.s12.r),
        child: Container(
          padding: EdgeInsets.all(AppPadding.p12.w),
          decoration: BoxDecoration(
            color:
                isEnabled
                    ? ColorManager.backgroundSurface
                    : ColorManager.stateDisabledSurface,
            borderRadius: BorderRadius.circular(AppSize.s12.r),
            border: Border.all(
              color:
                  isSelected
                      ? ColorManager.brandPrimary
                      : ColorManager.borderDefault,
            ),
          ),
          child: Row(
            children: [
              Checkbox(
                value: isSelected,
                onChanged: isEnabled ? (_) => onTap() : null,
              ),
              Gap(AppSize.s8.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title.isEmpty
                          ? '${Strings.meal.tr()} ${slot.slotIndex}'
                          : title,
                      style: getBoldTextStyle(
                        color:
                            isEnabled
                                ? ColorManager.textPrimary
                                : ColorManager.textMuted,
                        fontSize: FontSizeManager.s13.sp,
                      ),
                    ),
                    if (subtitle.isNotEmpty) ...[
                      Gap(AppSize.s4.h),
                      Text(
                        subtitle,
                        style: getRegularTextStyle(
                          color: ColorManager.textSecondary,
                          fontSize: FontSizeManager.s11.sp,
                        ),
                      ),
                    ],
                    if (slot.paymentRequired) ...[
                      Gap(AppSize.s4.h),
                      Text(
                        Strings.paymentRequiredBeforePickup.tr(),
                        style: getBoldTextStyle(
                          color: ColorManager.stateWarningEmphasis,
                          fontSize: FontSizeManager.s11.sp,
                        ),
                      ),
                    ],
                    if (badges.isNotEmpty) ...[
                      Gap(AppSize.s6.h),
                      Wrap(
                        spacing: AppSize.s6.w,
                        runSpacing: AppSize.s4.h,
                        children:
                            badges
                                .map((badge) => _Badge(label: badge))
                                .toList(),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PickupItemTile extends StatelessWidget {
  final PickupAvailabilityItemModel item;
  final bool isSelected;
  final VoidCallback onTap;

  const _PickupItemTile({
    required this.item,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isArabic = context.locale.languageCode == 'ar';
    final title = isArabic ? item.titleAr : item.titleEn;
    final subtitle = isArabic ? item.subtitleAr : item.subtitleEn;
    final statusText = isArabic ? item.statusTextAr : item.statusTextEn;
    final enabled = item.isSelectable;

    return Padding(
      padding: EdgeInsets.only(bottom: AppPadding.p8.h),
      child: InkWell(
        onTap: enabled ? onTap : null,
        borderRadius: BorderRadius.circular(AppSize.s12.r),
        child: Container(
          padding: EdgeInsets.all(AppPadding.p12.w),
          decoration: BoxDecoration(
            color:
                enabled
                    ? ColorManager.backgroundSurface
                    : ColorManager.stateDisabledSurface,
            borderRadius: BorderRadius.circular(AppSize.s12.r),
            border: Border.all(
              color:
                  isSelected
                      ? ColorManager.brandPrimary
                      : ColorManager.borderDefault,
            ),
          ),
          child: Row(
            children: [
              Checkbox(
                value: isSelected,
                onChanged: enabled ? (_) => onTap() : null,
              ),
              Gap(AppSize.s8.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title.isEmpty ? Strings.pickupRequest.tr() : title,
                      style: getBoldTextStyle(
                        color:
                            enabled
                                ? ColorManager.textPrimary
                                : ColorManager.textMuted,
                        fontSize: FontSizeManager.s13.sp,
                      ),
                    ),
                    if (subtitle.isNotEmpty) ...[
                      Gap(AppSize.s4.h),
                      Text(
                        subtitle,
                        style: getRegularTextStyle(
                          color: ColorManager.textSecondary,
                          fontSize: FontSizeManager.s11.sp,
                        ),
                      ),
                    ],
                    if (!enabled && statusText.isNotEmpty) ...[
                      Gap(AppSize.s4.h),
                      Text(
                        statusText,
                        style: getRegularTextStyle(
                          color: ColorManager.textMuted,
                          fontSize: FontSizeManager.s11.sp,
                        ),
                      ),
                    ],
                    if (item.paymentRequired) ...[
                      Gap(AppSize.s4.h),
                      Text(
                        Strings.paymentRequiredBeforePickup.tr(),
                        style: getBoldTextStyle(
                          color: ColorManager.stateWarningEmphasis,
                          fontSize: FontSizeManager.s11.sp,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Badge extends StatelessWidget {
  final String label;

  const _Badge({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppPadding.p8.w,
        vertical: AppPadding.p4.h,
      ),
      decoration: BoxDecoration(
        color: ColorManager.backgroundSubtle,
        borderRadius: BorderRadius.circular(AppSize.s8.r),
      ),
      child: Text(
        label,
        style: getRegularTextStyle(
          color: ColorManager.textSecondary,
          fontSize: FontSizeManager.s10.sp,
        ),
      ),
    );
  }
}

class _MessageTile extends StatelessWidget {
  final String text;
  final bool isError;

  const _MessageTile({required this.text, this.isError = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppPadding.p12.w),
      decoration: BoxDecoration(
        color:
            isError
                ? ColorManager.stateErrorSurface
                : ColorManager.backgroundSubtle,
        borderRadius: BorderRadius.circular(AppSize.s12.r),
        border: Border.all(
          color:
              isError
                  ? ColorManager.stateErrorBorder
                  : ColorManager.borderDefault,
        ),
      ),
      child: Text(
        text,
        style: getRegularTextStyle(
          color:
              isError
                  ? ColorManager.stateErrorEmphasis
                  : ColorManager.textSecondary,
          fontSize: FontSizeManager.s12.sp,
        ),
      ),
    );
  }
}
