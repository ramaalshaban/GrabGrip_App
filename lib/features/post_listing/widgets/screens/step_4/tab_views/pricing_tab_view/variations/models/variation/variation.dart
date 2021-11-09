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

// static Map<String, dynamic> variationsToJson(
//     List<Variation> variations,
//     ) {
//   final Map<String, dynamic> json = {};
//   for (int i = 0; i < variations.length; i++) {
//     json['variations[$i][name]'] = variations[i].attribute;
//     json['variations[$i][options]'] = variations[i].values.join(',');
//   }
//   return json;
// }
}
