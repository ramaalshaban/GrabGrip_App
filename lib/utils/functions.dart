import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grab_grip/features/browsing/browse/models/geocode_response/geometry/geometry.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:intl/intl.dart';

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

LatLng getLatLng(Geometry geometry) {
  return LatLng(geometry.latLng.lat, geometry.latLng.lng);
}

String formatDate(String? dateTime) {
  // the input of this function is a time in this format : 2021-10-27 hh:mm:ss.some_digits
  // the output is a time in this format : 2021-10-27 00:00:00
  if (dateTime == null) {
    return "";
  }
  final dateFormatter = DateFormat("yyyy-MM-dd");
  final dateTimeObj = DateTime.parse(dateTime);
  return "${dateFormatter.format(dateTimeObj)} 00:00:00";
}

String formatDateForView(String? dateTime) {
  // the input of this function is a time in this format : 2021-10-27 00:00:00
  // the output is a time in this format : October 27, 2021
  if (dateTime == null || dateTime.isEmpty) {
    return "";
  }
  final dateFormatter = DateFormat("MMMM dd, yyyy");
  final dateTimeObj = DateTime.parse(dateTime);
  return dateFormatter.format(dateTimeObj);
}
//endregion
