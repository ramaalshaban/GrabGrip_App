import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/features/post_listing/models/post_listing_step_number_model/post_listing_step_number.dart';

class PostListingStepNumberProvider
    extends StateNotifier<PostListingStepNumber> {
  PostListingStepNumberProvider() : super(const PostListingStepNumber.step1());

  void setStep1() {
    state = const PostListingStepNumber.step1();
  }

  void setStep2() {
    state = const PostListingStepNumber.step2();
  }

  void setStep3() {
    state = const PostListingStepNumber.step3();
  }

  void setStep4() {
    state = const PostListingStepNumber.step4();
  }
}
