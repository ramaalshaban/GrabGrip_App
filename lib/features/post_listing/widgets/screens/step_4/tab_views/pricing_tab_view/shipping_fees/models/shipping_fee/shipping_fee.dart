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

// static Map<String, dynamic> shippingFeesToJson(
//   List<ShippingFee> shippingFees,
// ) {
//   final Map<String, dynamic> json = {};
//   for (int i = 0; i < shippingFees.length; i++) {
//     json['shipping[$i][name]'] = shippingFees[i].name;
//     json['shipping[$i][price]'] = shippingFees[i].price;
//   }
//   return json;
// }
}
