import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'listing_category.freezed.dart';
part 'listing_category.g.dart';

@freezed
class ListingCategory with _$ListingCategory {
  const factory ListingCategory(
      int id,
      @JsonKey(name: 'parent_id') int parentId,
      int? order,
      String name,
      @JsonKey(name: 'child') ListingCategory? parentCategory,
      ) = _ListingCategory;

  factory ListingCategory.fromJson(Map<String, dynamic> json) =>
      _$ListingCategoryFromJson(json);
}
