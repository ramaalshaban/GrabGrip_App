import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'additional_option.freezed.dart';

part 'additional_option.g.dart';

@freezed
class AdditionalOption with _$AdditionalOption {
  const factory AdditionalOption({
    int? id,
    String? name,
    @Default("0.00") String price,
    @JsonKey(name: "max_quantity") int? maxQuantity,
  }) = _AdditionalOption;

  factory AdditionalOption.fromJson(Map<String, dynamic> json) =>
      _$AdditionalOptionFromJson(json);
}
