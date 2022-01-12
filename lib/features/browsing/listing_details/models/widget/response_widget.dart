import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_widget.freezed.dart';
part 'response_widget.g.dart';

@freezed
class ResponseWidget with _$ResponseWidget {
  const factory ResponseWidget(
    double total,
    String? error,
    @JsonKey(name: "start_date") String? startDate,
    @JsonKey(name: "end_date") String? endDate,
  ) = _ResponseWidget;

  factory ResponseWidget.fromJson(Map<String, dynamic> json) =>
      _$ResponseWidgetFromJson(json);
}
