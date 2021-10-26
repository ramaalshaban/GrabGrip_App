import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/post_listing/models/post_listing_step_number_model/post_listing_step_number.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_1/post_listing_step_one_screen.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_2/post_listing_step_two_screen.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_3/post_listing_step_three_screen.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/post_listing_step_four_screen.dart';
import 'package:grab_grip/services/network/models/http_request_state/http_request_state.dart';
import 'package:grab_grip/shared_widgets/custom_app_bar.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/functions.dart';

class PostListingScreen extends StatelessWidget {
  const PostListingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read(filterAndSortProvider.notifier).getCategories();
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
            body: ProviderListener(
              provider: httpRequestStateProvider,
              onChange: (context, HttpRequestState httpRequestState) {
                if (stepState == const PostListingStepNumber.step3()) {
                  httpRequestState.whenOrNull(
                    success: (successMessage) {
                      showSnackBar(
                        context,
                        successMessage!,
                      );
                      ref(postListingStepProvider.notifier).setStep4();
                    },
                    error: (errorMessage) =>
                        showSnackBarForError(context, errorMessage),
                  );
                }
              },
              child: Padding(
                padding: stepState != const PostListingStepNumber.step4()
                    ? const EdgeInsets.symmetric(horizontal: 30)
                    : const EdgeInsets.symmetric(horizontal: 15),
                child: ref(httpRequestStateProvider).maybeWhen(
                  loading: () => const Center(
                    child: CircularProgressIndicator(
                      color: AppColors.purple,
                    ),
                  ),
                  orElse: () => AnimatedSwitcher(
                    duration: duration300Milli,
                    child: stepState.when(
                      step1: () => const PostListingStepOneScreen(),
                      step2: () => const PostListingStepTwoScreen(),
                      step3: () => const PostListingStepThreeScreen(),
                      step4: () => const PostListingStepFourScreen(),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
