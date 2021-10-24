import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/post_listing/models/post_listing_step_number_model/post_listing_step_number.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_1/post_listing_step_one_screen.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_2/post_listing_step_two_screen.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_3/post_listing_step_three_screen.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/post_listing_step_four_screen.dart';
import 'package:grab_grip/shared_widgets/custom_app_bar.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';

class PostListingScreen extends StatelessWidget {
  const PostListingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, ref, __) {
        final stepState = ref(postListingStepProvider);
        return WillPopScope(
          onWillPop: () async {
            stepState.when(
              step1: () => Navigator.pop(context),
              step2: () => ref(postListingStepProvider.notifier).setStep1(),
              step3: () => ref(postListingStepProvider.notifier).setStep2(),
              step4: () {},
            );
            return false;
          },
          child: Scaffold(
            backgroundColor: AppColors.white,
            appBar: CustomAppBar(
              appBarTitle: AppLocalizations.of(context)!.post_listing,
            ),
            body: Stack(
              children: [
                IgnorePointer(
                  ignoring: stepState != const PostListingStepNumber.step1(),
                  child: AnimatedOpacity(
                    opacity: stepState == const PostListingStepNumber.step1()
                        ? 1.0
                        : 0.0,
                    duration: duration300Milli,
                    child: const PostListingStepOneScreen(),
                  ),
                ),
                IgnorePointer(
                  ignoring: stepState != const PostListingStepNumber.step2(),
                  child: AnimatedOpacity(
                    opacity: stepState == const PostListingStepNumber.step2()
                        ? 1.0
                        : 0.0,
                    duration: duration300Milli,
                    child: const PostListingStepTwoScreen(),
                  ),
                ),
                IgnorePointer(
                  ignoring: stepState != const PostListingStepNumber.step3(),
                  child: AnimatedOpacity(
                    opacity: stepState == const PostListingStepNumber.step3()
                        ? 1.0
                        : 0.0,
                    duration: duration300Milli,
                    child: const PostListingStepThreeScreen(),
                  ),
                ),
                IgnorePointer(
                  ignoring: stepState != const PostListingStepNumber.step4(),
                  child: AnimatedOpacity(
                    opacity: stepState == const PostListingStepNumber.step4()
                        ? 1.0
                        : 0.0,
                    duration: duration300Milli,
                    child: const PostListingStepFourScreen(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
