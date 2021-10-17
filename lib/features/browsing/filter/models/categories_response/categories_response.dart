import 'package:flutter/foundation.dart' hide Category;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/browsing/browse/models/category/category.dart';
import 'package:json_annotation/json_annotation.dart';

part 'categories_response.freezed.dart';

part 'categories_response.g.dart';

@freezed
class CategoriesResponse with _$CategoriesResponse {
  const factory CategoriesResponse(
    List<Category> categories,
  ) = _CategoriesResponse;

  factory CategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoriesResponseFromJson(json);
}
