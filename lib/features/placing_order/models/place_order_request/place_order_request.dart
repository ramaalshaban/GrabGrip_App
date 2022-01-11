import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_order_request.freezed.dart';
part 'place_order_request.g.dart';

@freezed
class PlaceOrderRequest with _$PlaceOrderRequest {
  const factory PlaceOrderRequest({
    int? quantity,
    @JsonKey(name: "payment_method") String? paymentMethod,
  }) = _PlaceOrderRequest;

  factory PlaceOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$PlaceOrderRequestFromJson(json);
}
