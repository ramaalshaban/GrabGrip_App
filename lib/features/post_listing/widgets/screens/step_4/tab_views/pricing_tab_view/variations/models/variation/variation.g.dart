// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Variation _$$_VariationFromJson(Map<String, dynamic> json) => _$_Variation(
      attribute: json['attribute'] as String?,
      values: (json['values'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_VariationToJson(_$_Variation instance) =>
    <String, dynamic>{
      'attribute': instance.attribute,
      'values': instance.values,
    };
