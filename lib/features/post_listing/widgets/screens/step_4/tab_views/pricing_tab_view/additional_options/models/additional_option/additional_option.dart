import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'additional_option.freezed.dart';

@freezed
class AdditionalOption with _$AdditionalOption {
  const factory AdditionalOption({
    String? name,
    double? price,
    int? maxQuantity,
  } ) = _AdditionalOption;

  factory AdditionalOption.empty() => const AdditionalOption();
}
