import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:json_annotation/json_annotation.dart';

part 'listing.freezed.dart';

part 'listing.g.dart';

@freezed
class Listing with _$Listing {
  const factory Listing(
    @JsonKey(name: 'current_page') int pageNumber,
    @JsonKey(name: 'last_page') int lastPageNumber,
    @JsonKey(name: 'total') int gearsCount,
    @JsonKey(name: 'data') List<Gear> gears,
  ) = _Listing;

  factory Listing.fromJson(Map<String, dynamic> json) =>
      _$ListingFromJson(json);
}
