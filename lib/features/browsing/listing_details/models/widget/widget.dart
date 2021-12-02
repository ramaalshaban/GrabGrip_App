import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'widget.freezed.dart';

part 'widget.g.dart';

@freezed
class Widget with _$Widget {
  const factory Widget(
    int total,
    dynamic error,
    @JsonKey(name: "start_date") String? startDate,
    @JsonKey(name: "end_date") String? endDate,
  ) = _Widget;

  factory Widget.fromJson(Map<String, dynamic> json) => _$WidgetFromJson(json);
}
