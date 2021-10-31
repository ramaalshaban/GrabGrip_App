import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_picker_state.freezed.dart';

@freezed
class LocationPickerState with _$LocationPickerState {
  const factory LocationPickerState.browsing() = _Browsing;
  const factory LocationPickerState.posting() = _Posting;
  const factory LocationPickerState.editingProfile() = _EditingProfile;
}
