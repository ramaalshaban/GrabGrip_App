import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  const factory Address(
    @JsonKey(name: "full_name") String fullName,
    String address,
    String city,
    String state,
    @JsonKey(name: "zip") String postCode,
    String country,
  ) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
