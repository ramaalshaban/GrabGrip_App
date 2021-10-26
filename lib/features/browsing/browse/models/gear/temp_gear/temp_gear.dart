import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/user_profile/models/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'temp_gear.freezed.dart';

part 'temp_gear.g.dart';

@freezed
class TempGear with _$TempGear {
  const factory TempGear(
      String hash,
      int id,
      @JsonKey(name: 'category_id') int categoryId,
      String title,
      @JsonKey(name: 'stock') int? stockQuantity,
      String description,
      @JsonKey(name: 'short_description') String shortDescription,
      String currency,
      double lat, // double instead of String
      double lng, // double instead of String
      String? city,
      String? country,
      String thumbnail,
      @JsonKey(name: 'price_formatted') String? formattedPrice,
      @JsonKey(name: 'user') User? owner,
      ) = _TempGear;

  factory TempGear.fromJson(Map<String, dynamic> json) => _$TempGearFromJson(json);
}
