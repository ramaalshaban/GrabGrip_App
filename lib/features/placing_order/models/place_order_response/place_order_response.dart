import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';

part 'place_order_response.freezed.dart';
part 'place_order_response.g.dart';

@freezed
class PlaceOrderResponse with _$PlaceOrderResponse {
  const factory PlaceOrderResponse(
      Gear listing,
      ) = _PlaceOrderResponse;

  factory PlaceOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaceOrderResponseFromJson(json);
}
