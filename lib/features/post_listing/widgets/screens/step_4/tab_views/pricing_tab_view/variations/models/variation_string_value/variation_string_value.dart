import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'variation_string_value.freezed.dart';

part 'variation_string_value.g.dart';

@freezed
class VariationStringValue with _$VariationStringValue {
  const factory VariationStringValue({
    @JsonKey(name: "name") String? attribute,
    @JsonKey(name: "options") String? values,
  }) = _VariationStringValue;

  factory VariationStringValue.fromJson(Map<String, dynamic> json) =>
      _$VariationStringValueFromJson(json);
}
