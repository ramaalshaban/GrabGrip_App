import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth_request.freezed.dart';
part 'auth_request.g.dart';

@freezed
class AuthModel with _$AuthModel {
  const factory AuthModel(
    String email,
    String password, [
    String? name,
    @JsonKey(name: "password_confirmation") passwordConfirmation,
  ]) = _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);
}
