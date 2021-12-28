import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grab_grip/features/feedback/report_listing/models/report_reason/report_reason.dart';

part 'report_reasons_response.freezed.dart';
part 'report_reasons_response.g.dart';

@freezed
class ReportReasonsResponse with _$ReportReasonsResponse {
  const factory ReportReasonsResponse(
    @JsonKey(name: "report_types") List<ReportReason> reportReasons,
  ) = _ReportReasonsResponse;

  factory ReportReasonsResponse.fromJson(Map<String, dynamic> json) =>
      _$ReportReasonsResponseFromJson(json);
}
