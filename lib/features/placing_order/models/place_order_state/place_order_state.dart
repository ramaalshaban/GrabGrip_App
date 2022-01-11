import 'package:country_code_picker/country_code_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_order_state.freezed.dart';

@freezed
class PlaceOrderState with _$PlaceOrderState {
  const factory PlaceOrderState({
    String? fullName,
    String? address,
    String? city,
    //I call it stateName instead of state because state is a reserved word in the provider
    String? stateName,
    String? postCode,
    CountryCode? country,
    @Default(1) int billingAndShippingAddressIsTheSame,
    String? fullNameShipping,
    String? addressShipping,
    String? cityShipping,
    String? stateNameShipping,
    String? postCodeShipping,
    CountryCode? countryShipping,
  }) = _PlaceOrderState;
}
