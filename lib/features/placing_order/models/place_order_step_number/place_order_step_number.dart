import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_order_step_number.freezed.dart';

@freezed
class PlaceOrderStepNumber with _$PlaceOrderStepNumber {
  const factory PlaceOrderStepNumber.step1(int index) = _Step1;
  const factory PlaceOrderStepNumber.step2(int index) = _Step2;
  const factory PlaceOrderStepNumber.step3(int index) = _Step3;
}
