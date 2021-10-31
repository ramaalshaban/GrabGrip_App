import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/browsing/browse/models/geocode_response/latlng/latlng.dart';
import 'package:grab_grip/features/browsing/browse/models/geocode_response/viewport/viewport.dart';

part 'geometry.freezed.dart';

part 'geometry.g.dart';

@freezed
class Geometry with _$Geometry {
  const factory Geometry(
    @JsonKey(name: "location") LatLng latLng,
    Viewport viewport,
  ) = _Geometry;

  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);
}
