import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'latlng.freezed.dart';

part 'latlng.g.dart';

@freezed
class LatLng with _$LatLng {
  const factory LatLng(
    @JsonKey(name: 'lat') num lat,
    @JsonKey(name: 'lng') num lng,
  ) = _LatLng;

  factory LatLng.fromJson(Map<String, dynamic> json) => _$LatLngFromJson(json);
}
