// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Review _$$_ReviewFromJson(Map<String, dynamic> json) => _$_Review(
      json['id'] as int,
      json['comment'] as String,
      json['rate'] as int,
      json['created_at'] as String,
      User.fromJson(json['commenter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ReviewToJson(_$_Review instance) => <String, dynamic>{
      'id': instance.id,
      'comment': instance.comment,
      'rate': instance.rate,
      'created_at': instance.reviewDate,
      'commenter': instance.commenter,
    };
