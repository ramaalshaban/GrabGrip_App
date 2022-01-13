import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/placing_order/models/session/session.dart';

part 'place_order_session_response.freezed.dart';
part 'place_order_session_response.g.dart';

@freezed
class PlaceOrderSessionResponse with _$PlaceOrderSessionResponse {
  const factory PlaceOrderSessionResponse(
    Session session,
    @JsonKey(name: "key") String paymentMethodKey,
  ) = _PlaceOrderSessionResponse;

  factory PlaceOrderSessionResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaceOrderSessionResponseFromJson(json);
}
