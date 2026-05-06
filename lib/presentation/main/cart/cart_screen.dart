import 'package:easy_localization/easy_localization.dart';
import 'package:basic_diet/presentation/main/cart/bloc/cart_bloc.dart';
import 'package:basic_diet/presentation/main/cart/bloc/cart_event.dart';
import 'package:basic_diet/presentation/main/cart/bloc/cart_state.dart';
import 'package:basic_diet/presentation/resources/color_manager.dart';
import 'package:basic_diet/presentation/resources/strings_manager.dart';
import 'package:basic_diet/presentation/resources/styles_manager.dart';
import 'package:basic_diet/presentation/resources/font_manager.dart';
import 'package:basic_diet/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = '/cart';

  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backgroundSurface,
      appBar: AppBar(
        backgroundColor: ColorManager.backgroundSurface,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        title: Text(
          'cart'.tr(),
          style: getBoldTextStyle(
            color: ColorManager.textPrimary,
            fontSize: FontSizeManager.s18.sp,
          ),
        ),
      ),
      body: SafeArea(
        child: BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            if (state is! CartLoaded) return const SizedBox.shrink();

            if (state.items.isEmpty) {
              return Center(
                child: Text(
                  'emptyCart'.tr(),
                  style: getRegularTextStyle(color: ColorManager.textSecondary),
                ),
              );
            }

            return Column(
              children: [
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: AppPadding.p16.w),
                    children: [
                      if (state.branchIds.isNotEmpty) ...[
                        SizedBox(height: AppSize.s8.h),
                        _BranchSelector(
                          branches: state.branchIds,
                          selectedBranch: state.selectedBranchId,
                        ),
                      ] else if (state.restaurantHours.isEmpty) ...[
                        SizedBox(height: AppSize.s8.h),
                        _TextBranchInput(),
                      ],
                      if (state.selectedBranchId != null &&
                          state.selectedBranchId!.isNotEmpty) ...[
                        SizedBox(height: AppSize.s12.h),
                        if (state.availableWindows.isNotEmpty)
                          _WindowSelector(
                            windows: state.availableWindows,
                            selectedWindow: state.selectedPickupWindow,
                          )
                        else
                          _TextWindowInput(),
                      ],
                      SizedBox(height: AppSize.s16.h),
                      ...state.items.map((item) => _CartItemTile(item: item)),
                    ],
                  ),
                ),
                if (state.previewTotalHalala != null)
                  Padding(
                    padding: EdgeInsets.all(AppPadding.p16.r),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'previewTotal'.tr(),
                          style: getBoldTextStyle(
                            color: ColorManager.textPrimary,
                            fontSize: FontSizeManager.s16.sp,
                          ),
                        ),
                        Text(
                          '${(state.previewTotalHalala! / 100).toStringAsFixed(2)} ${Strings.sar.tr()}',
                          style: getBoldTextStyle(
                            color: ColorManager.brandPrimary,
                            fontSize: FontSizeManager.s16.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                Padding(
                  padding: EdgeInsets.all(AppPadding.p16.r),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: state.canCheckout
                          ? () => context.push('/checkout')
                          : null,
                      child: Text(Strings.confirmAndPay.tr()),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _BranchSelector extends StatelessWidget {
  final List<String> branches;
  final String? selectedBranch;

  const _BranchSelector({
    required this.branches,
    required this.selectedBranch,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'branch'.tr(),
          style: getBoldTextStyle(
            color: ColorManager.textPrimary,
            fontSize: FontSizeManager.s14.sp,
          ),
        ),
        SizedBox(height: AppSize.s8.h),
        Wrap(
          spacing: AppSize.s8.w,
          runSpacing: AppSize.s8.h,
          children: branches.map((branchId) {
            final isSelected = selectedBranch == branchId;
            return ChoiceChip(
              label: Text(branchId),
              selected: isSelected,
              onSelected: (_) {
                context.read<CartBloc>().add(SelectBranchEvent(branchId));
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}

class _TextBranchInput extends StatefulWidget {
  @override
  State<_TextBranchInput> createState() => _TextBranchInputState();
}

class _TextBranchInputState extends State<_TextBranchInput> {
  static const String _defaultBranch = 'main';
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    final state = context.read<CartBloc>().state;
    final current =
        state is CartLoaded && state.selectedBranchId?.isNotEmpty == true
            ? state.selectedBranchId!
            : _defaultBranch;
    _controller = TextEditingController(text: current);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        context.read<CartBloc>().add(SelectBranchEvent(current));
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'branch'.tr(),
          style: getBoldTextStyle(
            color: ColorManager.textPrimary,
            fontSize: FontSizeManager.s14.sp,
          ),
        ),
        SizedBox(height: AppSize.s8.h),
        TextField(
          controller: _controller,
          decoration: InputDecoration(
            hintText: 'Enter branch ID',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSize.s8.r),
            ),
          ),
          onChanged: (value) {
            context.read<CartBloc>().add(SelectBranchEvent(value.trim()));
          },
        ),
      ],
    );
  }
}

class _WindowSelector extends StatelessWidget {
  final List<String> windows;
  final String? selectedWindow;

  const _WindowSelector({
    required this.windows,
    required this.selectedWindow,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'pickupWindow'.tr(),
          style: getBoldTextStyle(
            color: ColorManager.textPrimary,
            fontSize: FontSizeManager.s14.sp,
          ),
        ),
        SizedBox(height: AppSize.s8.h),
        Wrap(
          spacing: AppSize.s8.w,
          runSpacing: AppSize.s8.h,
          children: windows.map((window) {
            final isSelected = selectedWindow == window;
            return ChoiceChip(
              label: Text(window),
              selected: isSelected,
              onSelected: (_) {
                context.read<CartBloc>().add(
                  SelectPickupWindowEvent(window),
                );
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}

class _TextWindowInput extends StatefulWidget {
  @override
  State<_TextWindowInput> createState() => _TextWindowInputState();
}

class _TextWindowInputState extends State<_TextWindowInput> {
  static const String _defaultWindow = '18:00-20:00';
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    final state = context.read<CartBloc>().state;
    final current =
        state is CartLoaded && state.selectedPickupWindow?.isNotEmpty == true
            ? state.selectedPickupWindow!
            : _defaultWindow;
    _controller = TextEditingController(text: current);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        context.read<CartBloc>().add(SelectPickupWindowEvent(current));
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'pickupWindow'.tr(),
          style: getBoldTextStyle(
            color: ColorManager.textPrimary,
            fontSize: FontSizeManager.s14.sp,
          ),
        ),
        SizedBox(height: AppSize.s8.h),
        TextField(
          controller: _controller,
          decoration: InputDecoration(
            hintText: 'e.g. 18:00-20:00',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSize.s8.r),
            ),
          ),
          onChanged: (value) {
            context.read<CartBloc>().add(
              SelectPickupWindowEvent(value.trim()),
            );
          },
        ),
      ],
    );
  }
}

class _CartItemTile extends StatelessWidget {
  final CartItem item;

  const _CartItemTile({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: AppPadding.p12.h),
      child: Padding(
        padding: EdgeInsets.all(AppPadding.p12.r),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: getBoldTextStyle(
                      color: ColorManager.textPrimary,
                      fontSize: FontSizeManager.s14.sp,
                    ),
                  ),
                  SizedBox(height: AppSize.s4.h),
                  Text(
                    item.itemType,
                    style: getRegularTextStyle(
                      color: ColorManager.textSecondary,
                      fontSize: FontSizeManager.s12.sp,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.remove_circle_outline),
                  onPressed: () {
                    context.read<CartBloc>().add(
                      UpdateQtyEvent(item.id, item.qty - 1),
                    );
                  },
                ),
                Text(
                  '${item.qty}',
                  style: getBoldTextStyle(
                    color: ColorManager.textPrimary,
                    fontSize: FontSizeManager.s14.sp,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add_circle_outline),
                  onPressed: () {
                    context.read<CartBloc>().add(
                      UpdateQtyEvent(item.id, item.qty + 1),
                    );
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.delete_outline, color: Colors.red),
                  onPressed: () {
                    context.read<CartBloc>().add(
                      RemoveItemEvent(item.id),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
