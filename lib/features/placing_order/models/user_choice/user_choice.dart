import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_choice.freezed.dart';
part 'user_choice.g.dart';

@freezed
class UserChoice with _$UserChoice {
  const factory UserChoice(
    String name,
    String value,
  ) = _UserChoice;

  factory UserChoice.fromJson(Map<String, dynamic> json) =>
      _$UserChoiceFromJson(json);
}
