import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/browsing/browse/models/geocode_response/geocode_result/geocode_result.dart';

part 'geocode_response.freezed.dart';
part 'geocode_response.g.dart';

@freezed
class GeocodeResponse with _$GeocodeResponse {
  const factory GeocodeResponse(
    List<GeocodeResult> results,
    @JsonKey(name: 'status') String status,
  ) = _GeocodeResponse;

  factory GeocodeResponse.fromJson(Map<String, dynamic> json) =>
      _$GeocodeResponseFromJson(json);
}
