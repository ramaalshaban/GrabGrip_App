import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_item.freezed.dart';
part 'price_item.g.dart';

@freezed
class PriceItem with _$PriceItem {
  const factory PriceItem(
    String label,
    int price,
  ) = _PriceItem;

  factory PriceItem.fromJson(Map<String, dynamic> json) =>
      _$PriceItemFromJson(json);
}
