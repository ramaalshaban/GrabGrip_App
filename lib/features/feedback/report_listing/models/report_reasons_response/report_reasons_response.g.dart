// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_reasons_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReportReasonsResponse _$$_ReportReasonsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ReportReasonsResponse(
      (json['report_types'] as List<dynamic>)
          .map((e) => ReportReason.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ReportReasonsResponseToJson(
        _$_ReportReasonsResponse instance) =>
    <String, dynamic>{
      'report_types': instance.reportReasons,
    };
