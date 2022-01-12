// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_widget.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseWidget _$$_ResponseWidgetFromJson(Map<String, dynamic> json) =>
    _$_ResponseWidget(
      (json['total'] as num).toDouble(),
      json['error'] as String?,
      json['start_date'] as String?,
      json['end_date'] as String?,
    );

Map<String, dynamic> _$$_ResponseWidgetToJson(_$_ResponseWidget instance) =>
    <String, dynamic>{
      'total': instance.total,
      'error': instance.error,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
    };
