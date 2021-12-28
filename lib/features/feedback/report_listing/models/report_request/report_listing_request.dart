import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_listing_request.freezed.dart';
part 'report_listing_request.g.dart';

@freezed
class ReportListingRequest with _$ReportListingRequest {
  const factory ReportListingRequest(
    String reason,
    String notes,
  ) = _ReportListingRequest;

  factory ReportListingRequest.fromJson(Map<String, dynamic> json) =>
      _$ReportListingRequestFromJson(json);
}
