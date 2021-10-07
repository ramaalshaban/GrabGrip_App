import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_mode.freezed.dart';

@freezed
class ViewMode with _$ViewMode {
  const factory ViewMode.list() = _ListViewMode;
  const factory ViewMode.grid() = _GridViewMode;
  const factory ViewMode.map() = _MapViewMode;
}
