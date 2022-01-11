import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/placing_order/models/address/address.dart';
import 'package:grab_grip/features/placing_order/models/pricing/pricing.dart';
import 'package:grab_grip/features/user_profile/payments/models/payment_method/payment_method.dart';

part 'place_order_details_response.freezed.dart';
part 'place_order_details_response.g.dart';

@freezed
class PlaceOrderDetailsResponse with _$PlaceOrderDetailsResponse {
  const factory PlaceOrderDetailsResponse(
    Pricing pricing,
    @JsonKey(name: "billing_address") Address? billingAddress,
    @JsonKey(name: "shipping_address") Address? shippingAddress,
    @JsonKey(name: "payment_providers") List<PaymentMethod>? paymentMethods,
  ) = _PlaceOrderDetailsResponse;

  factory PlaceOrderDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaceOrderDetailsResponseFromJson(json);
}
