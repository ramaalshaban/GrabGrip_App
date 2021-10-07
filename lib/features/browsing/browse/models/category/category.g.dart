// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Category _$$_CategoryFromJson(Map<String, dynamic> json) => _$_Category(
      json['id'] as int,
      json['parent_id'] as int,
      json['order'] as int?,
      json['name'] as String,
      (json['child'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent_id': instance.parentId,
      'order': instance.order,
      'name': instance.name,
      'child': instance.subCategories,
    };
