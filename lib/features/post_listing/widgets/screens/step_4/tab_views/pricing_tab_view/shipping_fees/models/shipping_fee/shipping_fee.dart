import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_fee.freezed.dart';

part 'shipping_fee.g.dart';

@freezed
class ShippingFee with _$ShippingFee {
  const factory ShippingFee({
    String? name,
    double? price,
  }) = _ShippingFee;

  factory ShippingFee.fromJson(Map<String, dynamic> json) =>
      _$ShippingFeeFromJson(json);
}
