import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/widgets/pending_verification_widget.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/widgets/publish_button.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/widgets/re_enable_button.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/widgets/unpublish_button.dart';

class ChangeListingAvailabilityButton extends ConsumerWidget {
  const ChangeListingAvailabilityButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listingVerifiedByAdmin =
        ref.watch(postListingProvider.notifier).isListingVerified();
    final availabilityState = ref.watch(listingAvailabilityStateProvider);
    return availabilityState.when(
      published: (successfullyPublished) {
        if (successfullyPublished == true) {
          //region check admin verification
          if (listingVerifiedByAdmin) {
            return const UnpublishButton();
          } else {
            return const PendingVerificationWidget();
          }
          //endregion
        } else {
          return const PublishButton();
        }
      },
      unPublished: (successfullyUnPublished) => successfullyUnPublished == true
          ? const ReEnableButton()
          : const UnpublishButton(),
      reEnabled: (successfullyReEnabled) => successfullyReEnabled == true
          ? const UnpublishButton()
          : const ReEnableButton(),
    );
  }
}
