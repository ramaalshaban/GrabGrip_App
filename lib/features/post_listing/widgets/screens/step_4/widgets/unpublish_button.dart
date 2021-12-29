import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/style/box_decorations.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/device.dart';

class UnpublishButton extends ConsumerWidget {
  const UnpublishButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      constraints: BoxConstraints(minWidth: screenWidth(context)) / 3,
      decoration: unPublishButton,
      height: 48.0,
      child: TextButton(
        onPressed: () async {
          ref
              .watch(postListingProvider.notifier)
              .changeListingAvailability(isUnPublish: true);
        },
        child: const Text(
          "UnPublish",
          style: TextStyle(
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
