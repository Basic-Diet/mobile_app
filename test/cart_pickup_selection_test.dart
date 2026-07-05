import 'package:basic_diet/data/mappers/create_order_request_mapper.dart';
import 'package:basic_diet/data/mappers/order_quote_request_mapper.dart';
import 'package:basic_diet/app/constants.dart';
import 'package:basic_diet/domain/model/create_order_request_model.dart';
import 'package:basic_diet/domain/model/order_quote_request_model.dart';
import 'package:basic_diet/presentation/main/cart/bloc/cart_bloc.dart';
import 'package:basic_diet/presentation/main/cart/bloc/cart_event.dart';
import 'package:basic_diet/presentation/main/cart/bloc/cart_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Cart pickup selection', () {
    test('does not resolve branch or pickup window without user selection', () {
      final state = CartLoaded(
        items: const [_cartItem],
        restaurantHours: _restaurantHours,
      );

      expect(state.resolvedBranchId, isNull);
      expect(state.resolvedPickupWindow, isNull);
      expect(state.canCheckout, isFalse);
    });

    test('allows checkout only after branch and pickup window are selected', () {
      final state = CartLoaded(
        items: const [_cartItem],
        selectedBranchId: 'north',
        selectedPickupWindow: '12:00-14:00',
        restaurantHours: _restaurantHours,
      );

      expect(state.resolvedBranchId, 'north');
      expect(state.resolvedPickupWindow, '12:00-14:00');
      expect(state.canCheckout, isTrue);
    });

    test('clears selected pickup window when branch changes without that window', () async {
      final bloc = CartBloc();
      bloc.add(const AddItemEvent(_cartItem));
      bloc.add(const SetRestaurantHoursEvent(_restaurantHours));
      bloc.add(const SelectBranchEvent('north'));
      final selectedWindow = bloc.stream.firstWhere(
        (state) =>
            state is CartLoaded && state.selectedPickupWindow == '12:00-14:00',
      );
      bloc.add(const SelectPickupWindowEvent('12:00-14:00'));
      await selectedWindow;

      final clearedWindow = bloc.stream.firstWhere(
        (state) =>
            state is CartLoaded &&
            state.selectedBranchId == 'south' &&
            state.selectedPickupWindow == null,
      );
      bloc.add(const SelectBranchEvent('south'));
      await clearedWindow;
      await bloc.close();
    });

    test('serializes selected pickup branch and window into order requests', () {
      const quoteRequest = OrderQuoteRequestModel(
        fulfillmentMethod: 'pickup',
        pickup: OrderQuotePickupRequestModel(
          branchId: 'north',
          pickupWindow: '12:00-14:00',
        ),
        items: [],
      );

      const createRequest = CreateOrderRequestModel(
        fulfillmentMethod: 'pickup',
        pickup: CreateOrderPickupRequestModel(
          branchId: 'north',
          pickupWindow: '12:00-14:00',
        ),
        items: [],
        successUrl: Constants.paymentSuccessUrl,
        backUrl: Constants.paymentCancelUrl,
      );

      expect(quoteRequest.toRequest().toJson()['pickup'], {
        'branchId': 'north',
        'pickupWindow': '12:00-14:00',
      });
      expect(createRequest.toRequest().toJson()['pickup'], {
        'branchId': 'north',
        'pickupWindow': '12:00-14:00',
      });
    });
  });
}

const _cartItem = CartItem(
  productId: 'meal-1',
  name: 'Chicken Meal',
  qty: 1,
);

const _restaurantHours = {
  'north': {
    'name': 'North Branch',
    'windows': ['12:00-14:00'],
  },
  'south': {
    'name': 'South Branch',
    'windows': ['18:00-20:00'],
  },
};
