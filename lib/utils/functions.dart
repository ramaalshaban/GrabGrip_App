import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:grab_grip/style/colors.dart';

void showSnackBar(BuildContext passedContext, String message) {
  WidgetsBinding.instance?.addPostFrameCallback((_) {
    // showFlash function was put inside this block
    // to avoid this exception : setState() or markNeedsBuild() called during build.
    showFlash(
      context: passedContext,
      duration: const Duration(seconds: 3),
      builder: (context, controller) {
        return Flash(
          backgroundColor: AppColors.purple,
          controller: controller,
          behavior: FlashBehavior.floating,
          position: FlashPosition.bottom,
          boxShadows: kElevationToShadow[4],
          horizontalDismissDirection: HorizontalDismissDirection.horizontal,
          child: FlashBar(
            content: Text(
              message,
              style: const TextStyle(
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      },
    );
  });
}
