import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/placing_order/models/address/address.dart';

part 'place_order_session_request.freezed.dart';
part 'place_order_session_request.g.dart';

@freezed
class PlaceOrderSessionRequest with _$PlaceOrderSessionRequest {
  const factory PlaceOrderSessionRequest({
    String? hash,
    @JsonKey(name: "payment_method") String? paymentMethodKey,
    int? quantity,
    @JsonKey(name: "shipping_option") int? shippingOptionId,
    @JsonKey(name: "variant") Map<String, String>? variants,
    @JsonKey(name: "additional_option") Map<String, int>? additionalOptions,
    @JsonKey(name: "additional_options_meta")
        Map<String, Map<String, int>>? additionalOptionsMeta,
    @JsonKey(name: "start_date") String? startDate,
    @JsonKey(name: "end_date") String? endDate,
    @JsonKey(name: "range") String? range,
    @JsonKey(name: "billing_address") Address? billingAddress,
    @JsonKey(name: "shipping_address") Address? shippingAddress,
    @JsonKey(name: "same_address") int? sameAddress,
  }) = _PlaceOrderSessionRequest;

  factory PlaceOrderSessionRequest.fromJson(Map<String, dynamic> json) =>
      _$PlaceOrderSessionRequestFromJson(json);
}
