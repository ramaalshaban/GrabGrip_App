import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'error.freezed.dart';

part 'error.g.dart';

@freezed
abstract class Error with _$Error {
  factory Error(
    @JsonKey(name: "email") Map<String, List<String>>? emailError,
    @JsonKey(name: "password") Map<String, List<String>>? passwordError,
  ) = _Error;

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);
}
