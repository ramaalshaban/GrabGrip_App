// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listings_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListingsPage _$$_ListingsPageFromJson(Map<String, dynamic> json) =>
    _$_ListingsPage(
      json['current_page'] as int,
      json['last_page'] as int,
      json['total'] as int,
      (json['data'] as List<dynamic>)
          .map((e) => Gear.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListingsPageToJson(_$_ListingsPage instance) =>
    <String, dynamic>{
      'current_page': instance.pageNumber,
      'last_page': instance.lastPageNumber,
      'total': instance.gearsCount,
      'data': instance.gears,
    };
