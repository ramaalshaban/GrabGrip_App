import 'dart:io';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grab_grip/features/browsing/browse/models/geocode_response/geometry/geometry.dart';
import 'package:grab_grip/features/post_listing/models/post_listing_as_draft_request/post_listing_as_draft_request.dart';
import 'package:grab_grip/features/post_listing/models/save_listing_request/save_listing_request.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/images_tab_view/models/photo/photo.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/images_tab_view/models/upload_photo_response/upload_photo_response.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/additional_options/models/additional_option/additional_option.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/shipping_fees/models/shipping_fee/shipping_fee.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/variations/models/variation/variation.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:intl/intl.dart';

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
//endregion

//region mapping
// Map<String, dynamic> getFullSaveListingRequestAsJson(
//   SaveListingRequest saveListingRequest,
//   List<UploadPhotoResponse> photosAsJson,
//   List<AdditionalOption> additionalOptions,
//   List<ShippingFee> shippingFees,
//   List<Variation> variations,
// ) {
//   final Map<String, dynamic> json = {};
//   json['title'] = saveListingRequest.title;
//   json['description'] = saveListingRequest.description;
//   json['tags_string'] = saveListingRequest.tags;
//   json['ends_at'] = saveListingRequest.listingEndDate;
//   json['lat'] = saveListingRequest.lat;
//   json['lng'] = saveListingRequest.lng;
//   json['country'] = saveListingRequest.country;
//   json['city'] = saveListingRequest.city;
//   json['region'] = saveListingRequest.region;
//   json['price'] = saveListingRequest.price;
//   json['stock'] = saveListingRequest.stock;
//   json['photos'] = photosAsJson;
//
//  // final jsonPhotos =
//  //     UploadPhotoResponse.uploadPhotoResponsesToJson(photosAsJson);
//  // final jsonAdditionalOptions =
//  //     AdditionalOption.additionalOptionsToJson(additionalOptions);
//  // final jsonShippingFees = ShippingFee.shippingFeesToJson(shippingFees);
//  // final jsonVariations = Variation.variationsToJson(variations);
//
//   // for (int i = 0; i < jsonPhotos.length; i++) {
//   //   json[jsonPhotos.keys.elementAt(i)] = jsonPhotos.values.elementAt(i);
//   // }
//   // for (int i = 0; i < jsonAdditionalOptions.length; i++) {
//   //   json[jsonAdditionalOptions.keys.elementAt(i)] =
//   //       jsonAdditionalOptions.values.elementAt(i);
//   // }
//   // for (int i = 0; i < jsonShippingFees.length; i++) {
//   //   json[jsonShippingFees.keys.elementAt(i)] =
//   //       jsonShippingFees.values.elementAt(i);
//   // }
//   // for (int i = 0; i < jsonVariations.length; i++) {
//   //   json[jsonVariations.keys.elementAt(i)] = jsonVariations.values.elementAt(i);
//   // }
//   return json;
// }

//endregion
