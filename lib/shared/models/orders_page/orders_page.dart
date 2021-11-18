import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/shared/models/order/order.dart';
import 'package:json_annotation/json_annotation.dart';

part 'orders_page.freezed.dart';

part 'orders_page.g.dart';

@freezed
class OrdersPage with _$OrdersPage {
  const factory OrdersPage(
    @JsonKey(name: 'current_page') int pageNumber,
    @JsonKey(name: 'last_page') int lastPageNumber,
    @JsonKey(name: 'total') int gearsCount,
    @JsonKey(name: 'data') List<Order> orders,
  ) = _OrdersPage;

  factory OrdersPage.fromJson(Map<String, dynamic> json) =>
      _$OrdersPageFromJson(json);

  factory OrdersPage.empty() => const OrdersPage(0, 0, 0, []);
}
