import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_picker_reason.freezed.dart';

@freezed
class CountryPickerReason with _$CountryPickerReason {
  const factory CountryPickerReason.forPostingOrEditing() = _forPostingOrEditing;
  const factory CountryPickerReason.forPlacingOrder({required bool isShippingAddress}) = _forPlacingOrder;
}
