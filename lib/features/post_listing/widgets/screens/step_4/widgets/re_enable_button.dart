import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/style/box_decorations.dart';
import 'package:grab_grip/utils/device.dart';

class ReEnableButton extends ConsumerWidget {
  const ReEnableButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      constraints: BoxConstraints(minWidth: screenWidth()) / 3,
      decoration: reEnableButton,
      height: 48.0,
      child: TextButton(
        onPressed: () async {
          ref
              .watch(postListingProvider.notifier)
              .changeListingAvailability(isReEnable: true);
        },
        child: const Text(
          "Re-enable",
          style: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
