import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'variation.freezed.dart';

part 'variation.g.dart';

@freezed
class Variation with _$Variation {
  const factory Variation({
    String? attribute,
    @Default([]) List<String> values,
  }) = _Variation;

  factory Variation.fromJson(Map<String, dynamic> json) =>
      _$VariationFromJson(json);
}
