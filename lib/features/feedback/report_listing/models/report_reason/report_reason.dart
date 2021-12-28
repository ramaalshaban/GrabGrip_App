import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_reason.freezed.dart';
part 'report_reason.g.dart';

@freezed
class ReportReason with _$ReportReason {
  const factory ReportReason(
    String value,
  ) = _ReportReason;

  factory ReportReason.fromJson(Map<String, dynamic> json) =>
      _$ReportReasonFromJson(json);
}
