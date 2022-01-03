import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/post_listing_step_four_screen.dart';
import 'package:grab_grip/style/box_decorations.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/device.dart';

class PublishButton extends ConsumerWidget {
  const PublishButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      constraints: BoxConstraints(minWidth: screenWidth()) / 3,
      decoration: publishButton,
      height: 48.0,
      child: TextButton(
        onPressed: () {
          if (PostListingStepFourScreen.listingReadyForSavingOrPublishing(
            context,
          )) {
            ref
                .watch(postListingProvider.notifier)
                .saveListing(publishListing: true);
          }
        },
        child: const Text(
          "Publish",
          style: TextStyle(
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
