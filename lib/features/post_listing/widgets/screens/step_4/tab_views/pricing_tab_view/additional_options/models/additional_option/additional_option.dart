import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'additional_option.freezed.dart';

part 'additional_option.g.dart';

@freezed
class AdditionalOption with _$AdditionalOption {
  const factory AdditionalOption({
    String? name,
    double? price,
    @JsonKey(name: "max_quantity") int? maxQuantity,
  }) = _AdditionalOption;

  factory AdditionalOption.fromJson(Map<String, dynamic> json) =>
      _$AdditionalOptionFromJson(json);

// static Map<String, dynamic> additionalOptionsToJson(
//   List<AdditionalOption> additionalOptions,
// ) {
//   final Map<String, dynamic> json = {};
//   for (int i = 0; i < additionalOptions.length; i++) {
//     json['additional[$i][name]'] = additionalOptions[i].name;
//     json['additional[$i][price]'] = additionalOptions[i].price;
//     json['additional[$i][max_quantity]'] = additionalOptions[i].maxQuantity;
//   }
//   return json;
// }
}
