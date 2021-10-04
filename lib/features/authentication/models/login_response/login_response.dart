import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_response.freezed.dart';

part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  factory LoginResponse(
      @JsonKey(name: "access_token") String? accessToken,
      @JsonKey(name: "expires_in") int? expirationDuration,
      String? error) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
