import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/features/placing_order/models/place_order_step_number/place_order_step_number.dart';

class PlaceOrderStepNumberProvider extends StateNotifier<PlaceOrderStepNumber> {
  PlaceOrderStepNumberProvider() : super(const PlaceOrderStepNumber.step1(0));

  void reset() => state = const PlaceOrderStepNumber.step1(0);

  void next() =>
      state.whenOrNull(step1: (_) => setStep2(), step2: (_) => setStep3());

  void back() =>
      state.whenOrNull(step3: (_) => setStep2(), step2: (_) => setStep1());

  void setStep1() {
    state = const PlaceOrderStepNumber.step1(0);
  }

  void setStep2() {
    state = const PlaceOrderStepNumber.step2(1);
  }

  void setStep3() {
    state = const PlaceOrderStepNumber.step3(2);
  }
}
