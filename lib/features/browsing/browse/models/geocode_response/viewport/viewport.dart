import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/browsing/browse/models/geocode_response/lat_lng/lat_lng.dart';

part 'viewport.freezed.dart';

part 'viewport.g.dart';

@freezed
class Viewport with _$Viewport {
  const factory Viewport(
    @JsonKey(name: 'northeast') LatLng northEast,
    @JsonKey(name: 'southwest') LatLng southWest,
  ) = _Viewport;

  factory Viewport.fromJson(Map<String, dynamic> json) =>
      _$ViewportFromJson(json);
}
