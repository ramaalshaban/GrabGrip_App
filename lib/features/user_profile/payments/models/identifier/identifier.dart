import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'identifier.freezed.dart';

part 'identifier.g.dart';

// since we care only if identifier is null or not (to check if this payment
// method is linked with the user or not) then the following class is just
// a placeholder and we don't care about its data
@freezed
class Identifier with _$Identifier {
  const factory Identifier() = _Identifier;

  factory Identifier.fromJson(Map<String, dynamic> json) =>
      _$IdentifierFromJson(json);
}
