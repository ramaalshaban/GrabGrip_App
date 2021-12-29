import 'package:flutter/material.dart';
import 'package:grab_grip/style/box_decorations.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/device.dart';

class PendingVerificationWidget extends StatelessWidget {
  const PendingVerificationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      constraints: BoxConstraints(
            minWidth: screenWidth(context),
          ) /
          3,
      decoration: pendingVerification,
      height: 48.0,
      child: const Center(
        child: Text(
          "Pending Verification",
          style: TextStyle(
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
