import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lat_lng.freezed.dart';

part 'lat_lng.g.dart';

@freezed
class LatLng with _$LatLng {
  const factory LatLng(
    @JsonKey(name: 'lat') double lat,
    @JsonKey(name: 'lng') double lng,
  ) = _LatLng;

  factory LatLng.fromJson(Map<String, dynamic> json) => _$LatLngFromJson(json);
}
