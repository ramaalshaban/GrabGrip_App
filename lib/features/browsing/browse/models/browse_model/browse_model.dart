import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/browsing/browse/models/listing/listing.dart';
import 'package:json_annotation/json_annotation.dart';

part 'browse_model.freezed.dart';

part 'browse_model.g.dart';

@freezed
class BrowseModel with _$BrowseModel {
  const factory BrowseModel(
    @JsonKey(name: 'listings') Listing data,
  ) = _BrowseModel;

  factory BrowseModel.fromJson(Map<String, dynamic> json) =>
      _$BrowseModelFromJson(json);

  factory BrowseModel.empty() => const BrowseModel(Listing(-1, -1, -1, []));
}
