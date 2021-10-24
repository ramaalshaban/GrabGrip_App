import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_listing_step_number.freezed.dart';

@freezed
class PostListingStepNumber with _$PostListingStepNumber {
  const factory PostListingStepNumber.step1() = _Step1;
  const factory PostListingStepNumber.step2() = _Step2;
  const factory PostListingStepNumber.step3() = _Step3;
  const factory PostListingStepNumber.step4() = _Step4;
}
