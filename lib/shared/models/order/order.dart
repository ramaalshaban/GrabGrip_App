import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/features/user_profile/shared/models/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order.freezed.dart';

part 'order.g.dart';

@freezed
class Order with _$Order {
  const factory Order(
    String hash,
    int id,
    String status,
    @JsonKey(name: 'created_at') String orderingDate,
    String amount,
    String currency,
    @JsonKey(name: 'stock') int? stockQuantity,
    @JsonKey(name: 'listing') Gear orderedGear,
    @JsonKey(name: 'user') User orderOwner,
  ) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}
