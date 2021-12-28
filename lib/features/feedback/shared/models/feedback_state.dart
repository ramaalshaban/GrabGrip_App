import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_state.freezed.dart';

@freezed
class FeedbackState with _$FeedbackState {
  const factory FeedbackState([
    String? reason,
    @Default("") String notes,
    @Default([]) List<String> reportReasons,
  ]) = _FeedbackState;
}
