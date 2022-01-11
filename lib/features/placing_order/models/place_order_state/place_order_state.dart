import 'package:country_code_picker/country_code_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/placing_order/models/address/address.dart';
import 'package:grab_grip/features/user_profile/payments/models/payment_method/payment_method.dart';

part 'place_order_state.freezed.dart';

@freezed
class PlaceOrderState with _$PlaceOrderState {
  const factory PlaceOrderState({
    Address? billingAddress,
    CountryCode? billingCountry,
    @Default(1) int billingAndShippingAddressIsTheSame,
    Address? shippingAddress,
    CountryCode? shippingCountry,
    @Default([]) List<PaymentMethod> paymentMethods,
    int? selectedPaymentMethodId,
  }) = _PlaceOrderState;
}
