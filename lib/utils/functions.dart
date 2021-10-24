import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:grab_grip/features/browsing/browse/models/geocode_response/geometry/geometry.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';

//region snack bars
void showSnackBar(BuildContext context, String message) {
  WidgetsBinding.instance?.addPostFrameCallback((_) {
    // showFlash function was put inside this block
    // to avoid this exception : setState() or markNeedsBuild() called during build.
    showFlash(
      context: context,
      duration: duration3Seconds,
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

void showSnackBarForError(BuildContext context, String errorMessage) {
  WidgetsBinding.instance?.addPostFrameCallback((_) {
    String messageToShow = errorMessage;
    // showFlash function was put inside this block
    // to avoid this exception : setState() or markNeedsBuild() called during build.
    if (errorMessage == noInternetConnection) {
      messageToShow = AppLocalizations.of(context)!.check_internet_connection;
    }
    showFlash(
      context: context,
      duration: duration3Seconds,
      builder: (context, controller) {
        return Flash(
          backgroundColor: Colors.red[900],
          controller: controller,
          behavior: FlashBehavior.floating,
          position: FlashPosition.bottom,
          boxShadows: kElevationToShadow[4],
          horizontalDismissDirection: HorizontalDismissDirection.horizontal,
          child: FlashBar(
            content: Text(
              messageToShow,
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
//endregion

//region formatting

String formatLocationBounds(Geometry geometry) {
  final southWestLat = geometry.viewport.southWest.lat;
  final southWestLng = geometry.viewport.southWest.lng;
  final northEastLat = geometry.viewport.northEast.lat;
  final northEastLng = geometry.viewport.northEast.lng;
  return "$southWestLat,$southWestLng,$northEastLat,$northEastLng";
}
//endregion
