// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'browse_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BrowseModel _$$_BrowseModelFromJson(Map<String, dynamic> json) =>
    _$_BrowseModel(
      Listing.fromJson(json['listings'] as Map<String, dynamic>),
      isFiltered: json['is_filtered'] as bool,
    );

Map<String, dynamic> _$$_BrowseModelToJson(_$_BrowseModel instance) =>
    <String, dynamic>{
      'listings': instance.data,
      'is_filtered': instance.isFiltered,
    };
