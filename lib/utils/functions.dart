import 'dart:io';

import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grab_grip/features/browsing/browse/models/geocode_response/geometry/geometry.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/images_tab_view/models/photo/photo.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/additional_options/models/additional_option/additional_option.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/shipping_fees/models/shipping_fee/shipping_fee.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/variations/models/variation/variation.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

//region snack bars
void showSnackBar(
  BuildContext context,
  String message, [
  Color? backgroundColor,
  Duration? customDuration,
]) {
  WidgetsBinding.instance?.addPostFrameCallback((_) {
    // showFlash function was put inside this block
    // to avoid this exception : setState() or markNeedsBuild() called during build.
    showFlash(
      context: context,
      duration: customDuration ?? duration3Seconds,
      builder: (context, controller) {
        return Flash(
          backgroundColor: backgroundColor ?? AppColors.purple,
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

void showWarningSnackBar(
  BuildContext context,
  String message, [
  Duration? customDuration,
]) {
  WidgetsBinding.instance?.addPostFrameCallback((_) {
    // showFlash function was put inside this block
    // to avoid this exception : setState() or markNeedsBuild() called during build.
    showFlash(
      context: context,
      duration: customDuration ?? duration3Seconds,
      builder: (context, controller) {
        return Flash(
          backgroundColor: AppColors.amber,
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

void showSnackBarForError(
  BuildContext context,
  String errorMessage, [
  Duration? customDuration,
]) {
  WidgetsBinding.instance?.addPostFrameCallback((_) {
    String messageToShow = errorMessage;
    // showFlash function was put inside this block
    // to avoid this exception : setState() or markNeedsBuild() called during build.
    if (errorMessage == noInternetConnection) {
      messageToShow = AppLocalizations.of(context)!.check_internet_connection;
    }
    showFlash(
      context: context,
      duration: customDuration ?? duration3Seconds,
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

String? formatDate(String? dateTime) {
  // the input of this function is a time in this format : 2021-10-27 hh:mm:ss.some_digits
  // the output is a time in this format : 2021-10-27
  if (dateTime == null) {
    return null;
  }
  final dateFormatter = DateFormat("yyyy-MM-dd");
  final dateTimeObj = DateTime.parse(dateTime);
  return dateFormatter.format(dateTimeObj);
}

String? formatDateForRequest(String? dateTime) {
  // the input of this function is a time in this format : 2021-10-27 hh:mm:ss.some_digits
  // the output is a time in this format : 27-10-2021
  if (dateTime == null) {
    return null;
  }
  final dateFormatter = DateFormat("dd-MM-yyyy");
  final dateTimeObj = DateTime.parse(dateTime);
  return dateFormatter.format(dateTimeObj);
}

String formatDateForView(String? dateTime) {
  // the input of this function is a time in this format : 2021-10-27
  // the output is a time in this format : October 27, 2021
  if (dateTime == null || dateTime.isEmpty) {
    return "";
  }
  final dateFormatter = DateFormat("MMMM dd, yyyy");
  final dateTimeObj = DateTime.parse(dateTime);
  return dateFormatter.format(dateTimeObj);
}

String formatDateForReview(String? dateTime) {
  // the input of this function is a time in this format : 2021-10-27
  // the output is a time in this format : Dec 19, 2021
  if (dateTime == null || dateTime.isEmpty) {
    return "";
  }
  final dateFormatter = DateFormat("MMM dd, yyyy");
  final dateTimeObj = DateTime.parse(dateTime);
  return dateFormatter.format(dateTimeObj);
}

String? formatBookingDate(String? startDate, String? endDate) {
  if (startDate == null || endDate == null) {
    return null;
  } else {
    return "$startDate to $endDate";
  }
}

DateTime stringToDateTime(String dateTime) => DateTime.parse(dateTime);
//endregion

//region files
Future<Photo> makePhotoFromFile(
  File file,
  String index,
  String photoName,
) async {
  final fileSize = await file.length();
  return Photo(
    index: index,
    name: photoName,
    size: "${fileSize / 1000} KB",
    path: file.path,
  );
}

Future<File> makeFileFromUrl(String url) async {
  // download the image
  final downloadedImage = await http.get(Uri.parse(url));
  final appDocDirectory = await getApplicationDocumentsDirectory();
  // take the last section of the url as the file name
  // (if the url is like this : http://grabgrips.com/storage/org-images/2021/11/24/hello.jpeg
  // then the file name is hello.jpeg)
  final fileName = url.substring(
    url.lastIndexOf("/") + 1,
    url.length,
  );
  final filePath = join(appDocDirectory.path, fileName);
  final imageFile = File(filePath);
  imageFile.writeAsBytesSync(downloadedImage.bodyBytes);
  return imageFile;
}
//endregion

//region mappers
// if the additional options, shipping fees or variations are empty or null, then add an empty object to the list so the user sees an empty field instead of nothing when editing the listing
List<AdditionalOption> mapAdditionalOptions(
  List<AdditionalOption> additionalOptions,
) =>
    additionalOptions.isNotEmpty
        ? additionalOptions
        : [const AdditionalOption()];

List<ShippingFee> mapShippingFees(
  List<ShippingFee> shippingFees,
) =>
    shippingFees.isNotEmpty ? shippingFees : [const ShippingFee()];

List<Variation> mapVariations(Map<String, List<String>>? variationsMap) =>
    variationsMap?.entries
        .map(
          (entry) => Variation(attribute: entry.key, values: entry.value),
        )
        .toList() ??
    [const Variation()];

//endregion
