import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/user_profile/payments/models/identifier/identifier.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_method.freezed.dart';

part 'payment_method.g.dart';

@freezed
class PaymentMethod with _$PaymentMethod {
  const factory PaymentMethod(
    int id,
    String key,
    @JsonKey(name: 'display_name') String displayName,
    @JsonKey(name: 'identifier') Identifier? identifier,
    String description,
  ) = _PaymentMethod;

  factory PaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodFromJson(json);
}
