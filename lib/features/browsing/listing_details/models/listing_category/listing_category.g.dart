// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListingCategory _$$_ListingCategoryFromJson(Map<String, dynamic> json) =>
    _$_ListingCategory(
      json['id'] as int,
      json['parent_id'] as int,
      json['order'] as int?,
      json['name'] as String,
      json['child'] == null
          ? null
          : ListingCategory.fromJson(json['child'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ListingCategoryToJson(_$_ListingCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent_id': instance.parentId,
      'order': instance.order,
      'name': instance.name,
      'child': instance.parentCategory,
    };
