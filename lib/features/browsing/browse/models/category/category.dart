import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category.freezed.dart';

part 'category.g.dart';

@freezed
class Category with _$Category {
  const factory Category(
      int id,
      @JsonKey(name: 'parent_id') int parentId,
      int? order,
      String name,
      @JsonKey(name: 'child') List<Category> subCategories,
      ) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
