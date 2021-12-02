import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/browsing/listing_details/models/listing_photo/listing_photo.dart';
import 'package:grab_grip/features/user_profile/shared/models/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'gear.freezed.dart';

part 'gear.g.dart';

@freezed
class Gear with _$Gear {
  const factory Gear(
    String hash,
    int id,
    @JsonKey(name: 'user_id') int ownerId,
    @JsonKey(name: 'category_id') int categoryId,
    @JsonKey(name: 'pricing_model_id') String pricingModelId,
    String title,
    @JsonKey(name: 'stock') int stockQuantity,
    String description,
    @JsonKey(name: 'short_description') String shortDescription,
    String currency,
    List<String>? tags,
    String slug,
    double lat,
    double lng,
    String? city,
    String? country,
    String? thumbnail,
    @JsonKey(name: 'media') List<ListingPhoto> photos,
    @JsonKey(name: 'price_formatted') String? formattedPrice,
    @JsonKey(name: 'user') User? owner,
    @JsonKey(name: "is_published") int? isPublished,
    @JsonKey(name: "is_draft") int? isDraft,
    @JsonKey(name: "is_admin_verified") String? isVerifiedByAdmin,
    @JsonKey(name: "is_disabled") String? isDisabled,
  ) = _Gear;

  factory Gear.fromJson(Map<String, dynamic> json) => _$GearFromJson(json);
}
