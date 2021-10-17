import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'drop_down_type.freezed.dart';

@freezed
class DropDownType with _$DropDownType {
  const factory DropDownType.sortOptions() = _SortOptions;
  const factory DropDownType.distanceOptions() = _DistanceOptions;
  const factory DropDownType.listingTypeOptions() = _ListingTypeOptions;
}
