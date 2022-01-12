import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/placing_order/models/price_item/price_item.dart';
import 'package:grab_grip/features/placing_order/models/user_choice/user_choice.dart';

part 'pricing.freezed.dart';
part 'pricing.g.dart';

@freezed
class Pricing with _$Pricing {
  const factory Pricing(
    @JsonKey(name: "user_choice") List<UserChoice> userChoices,
    @JsonKey(name: "price_items") List<PriceItem> priceItems,
    String total,
  ) = _Pricing;

  factory Pricing.fromJson(Map<String, dynamic> json) =>
      _$PricingFromJson(json);
}
