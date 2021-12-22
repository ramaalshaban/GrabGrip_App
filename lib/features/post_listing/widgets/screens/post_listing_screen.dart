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
import 'package:grab_grip/shared/widgets/are_you_sure_dialog.dart';
import 'package:grab_grip/shared/widgets/custom_app_bar.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/functions.dart';

class PostListingScreen extends ConsumerWidget {
  const PostListingScreen();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stepState = ref.watch(postListingStepProvider);
    //region Listeners
    ref.listen<HttpRequestState>(httpRequestStateProvider,
        (_, httpRequestState) {
      httpRequestState.whenOrNull(
        error: (errorMessage) => showSnackBarForError(
          context,
          errorMessage,
        ),
      );
      if (stepState == const PostListingStepNumber.step3()) {
        httpRequestState.whenOrNull(
          success: (successMessage, _) {
            showSnackBar(
              context,
              successMessage!,
            );
            ref.watch(postListingStepProvider.notifier).setStep4();
          },
          error: (errorMessage) => showSnackBarForError(context, errorMessage),
        );
      }
    });
    //endregion
    return WillPopScope(
      onWillPop: () async {
        stepState.when(
          step1: () => Navigator.pop(context),
          step2: () => ref.watch(postListingStepProvider.notifier).setStep1(),
          step3: () => ref.watch(postListingStepProvider.notifier).setStep2(),
          step4: () {
            showDialog(
              context: context,
              builder: (_) => AreYouSureDialog(
                continueAction: () async {
                  // pop the dialog
                  Navigator.pop(context);
                  // pop this screen
                  Navigator.pop(context);
                  // reset the state saved in the providers
                  Future.delayed(const Duration(seconds: 2), () {
                    // reset them after 2 seconds to ensure that this screen has been popped so we avoid
                    // any consequences that can happen since the providers are listening to their states
                    ref.watch(postListingProvider.notifier).reset();
                    ref.watch(photosProvider.notifier).reset();
                    ref
                        .watch(listingAvailabilityStateProvider.notifier)
                        .reset();
                    ref.watch(postListingStepProvider.notifier).setStep1();
                  });
                },
                cancelAction: () {
                  Navigator.pop(context);
                  // prevent the previously focused text field from receiving the focus again after popping the dialog
                  FocusScope.of(context).requestFocus(FocusNode());
                },
                contentText:
                    "Before leaving, make sure that you have saved your changes by clicking on Save listing button",
                continueActionText: "Leave. I have saved my changes",
                cancelActionText: "Wait. I want to save my changes",
              ),
            );
          },
        );
        return false;
      },
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: CustomAppBar(
          appBarTitle: AppLocalizations.of(context)!.post_listing,
        ),
        body: Padding(
          padding: stepState != const PostListingStepNumber.step4()
              ? const EdgeInsets.symmetric(horizontal: 30)
              : const EdgeInsets.symmetric(horizontal: 15),
          child: ref.watch(httpRequestStateProvider).maybeWhen(
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
    );
  }
}
