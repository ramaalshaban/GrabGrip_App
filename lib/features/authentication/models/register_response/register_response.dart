import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/authentication/models/error/error.dart';
import 'package:json_annotation/json_annotation.dart';

part 'register_response.freezed.dart';

part 'register_response.g.dart';

@freezed
class RegisterResponse with _$RegisterResponse {
  factory RegisterResponse(
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "errors") Error? errors,
  ) = _RegisterResponse;

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
}
