import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/browsing/browse/models/listing/listings_page.dart';
import 'package:json_annotation/json_annotation.dart';

part 'browse_model.freezed.dart';

part 'browse_model.g.dart';

@freezed
class BrowseModel with _$BrowseModel {
  const factory BrowseModel(
    @JsonKey(name: 'listings') ListingsPage data,
  ) = _BrowseModel;

  factory BrowseModel.fromJson(Map<String, dynamic> json) =>
      _$BrowseModelFromJson(json);

  factory BrowseModel.empty() => const BrowseModel(ListingsPage(-1, -1, -1, []));
}
