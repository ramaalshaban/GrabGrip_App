import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/features/placing_order/models/address/address.dart';
import 'package:grab_grip/features/placing_order/models/pricing/pricing.dart';
import 'package:grab_grip/features/user_profile/payments/models/payment_method/payment_method.dart';

part 'place_order_state.freezed.dart';

@freezed
class PlaceOrderState with _$PlaceOrderState {
  const factory PlaceOrderState({
    Gear? orderedListing,
    Pricing? pricing,
    @Default(Address()) Address billingAddress,
    @Default(1) int billingAndShippingAddressIsTheSame,
    @Default(Address()) Address shippingAddress,
    @Default([]) List<PaymentMethod> paymentMethods,
    PaymentMethod? selectedPaymentMethod,
  }) = _PlaceOrderState;
}
