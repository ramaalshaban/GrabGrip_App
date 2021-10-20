import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/browsing/browse/models/geocode_response/geometry/geometry.dart';

part 'geocode_result.freezed.dart';

part 'geocode_result.g.dart';

@freezed
class GeocodeResult with _$GeocodeResult {
  const factory GeocodeResult(
    Geometry geometry,
  ) = _GeocodeResult;

  factory GeocodeResult.fromJson(Map<String, dynamic> json) =>
      _$GeocodeResultFromJson(json);
}
