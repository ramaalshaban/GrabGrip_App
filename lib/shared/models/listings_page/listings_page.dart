import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:json_annotation/json_annotation.dart';

part 'listings_page.freezed.dart';

part 'listings_page.g.dart';

@freezed
class ListingsPage with _$ListingsPage {
  const factory ListingsPage(
    @JsonKey(name: 'current_page') int pageNumber,
    @JsonKey(name: 'last_page') int lastPageNumber,
    @JsonKey(name: 'total') int gearsCount,
    @JsonKey(name: 'data') List<Gear> gears,
  ) = _ListingsPage;

  factory ListingsPage.fromJson(Map<String, dynamic> json) =>
      _$ListingsPageFromJson(json);

  factory ListingsPage.empty() => const ListingsPage(0, 0, 0, []);
}
