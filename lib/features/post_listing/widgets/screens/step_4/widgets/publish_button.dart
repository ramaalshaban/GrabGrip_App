import 'package:flutter/material.dart';
import 'package:grab_grip/features/post_listing/models/post_listing_availability_model/post_listing_availability_state.dart';
import 'package:grab_grip/style/box_decorations.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/device.dart';

class PublishButton extends StatelessWidget {
  const PublishButton({
    Key? key,
    required this.listingAvailabilityState,
    required this.onClickAction,
  }) : super(key: key);

  final PostListingAvailabilityState listingAvailabilityState;
  final Function onClickAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      constraints: BoxConstraints(minWidth: screenWidth(context)) / 3,
      decoration: listingAvailabilityState.when(
        published: (successfullyPublished) =>
            successfullyPublished == true ? unPublishButton : publishButton,
        unPublished: (successfullyUnPublished) =>
            successfullyUnPublished == true ? reEnableButton : unPublishButton,
        reEnabled: (successfullyReEnabled) =>
            successfullyReEnabled == true ? unPublishButton : reEnableButton,
      ),
      height: 48.0,
      child: TextButton(
        onPressed: () async {
          onClickAction.call();
        },
        child: Text(
          listingAvailabilityState.when(
            published: (successfullyPublished) =>
                successfullyPublished == true ? "UnPublish" : "Publish",
            unPublished: (successfullyUnPublished) =>
                successfullyUnPublished == true ? "Re-enable" : "UnPublish",
            reEnabled: (successfullyReEnabled) =>
                successfullyReEnabled == true ? "UnPublish" : "Re-enable",
          ),
          style: TextStyle(
            color: listingAvailabilityState.when(
              published: (_) => AppColors.white,
              unPublished: (successfullyUnPublished) =>
                  successfullyUnPublished == true
                      ? Colors.red
                      : AppColors.white,
              reEnabled: (successfullyReEnabled) =>
                  successfullyReEnabled == true ? AppColors.white : Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
