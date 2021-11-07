import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_fee.freezed.dart';

@freezed
class ShippingFee with _$ShippingFee {
  const factory ShippingFee({
    String? name,
    double? price,
  }) = _ShippingFee;

  factory ShippingFee.empty() => const ShippingFee();
}
