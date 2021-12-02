import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grab_grip/style/colors.dart';

const String noInternetConnection = "no internet connection";
const String googleApiKey = "AIzaSyDgRW2kCiet1O-yY2YViStzDVe9ld_DSXo";
const String saveListingSuccess = "saveListingSuccess";
const String saveListingError = "saveListingError";
const String unknown = "Unknown";
const int postListingPhotosLimit = 20;
FilteringTextInputFormatter doubleNumFilter =
    FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'));
const String buy = "buy";
const String bookDate = "book_date";

//region actions name
const String logoutAction = "logoutAction";
//region
//region durations
const Duration duration300Milli = Duration(milliseconds: 300);
const Duration duration500Milli = Duration(milliseconds: 500);
const Duration duration1Second = Duration(seconds: 1);
const Duration duration3Seconds = Duration(seconds: 3);
//endregion

//region dividers
const Divider lightPurpleDividerThickness0_5 = Divider(
  thickness: 0.5,
  color: AppColors.lightPurple,
);

const Divider veryLightPurpleDividerThickness0_5 = Divider(
  thickness: 0.5,
  color: AppColors.veryLightPurple,
);

const Divider lightGrayDividerThickness0_5 = Divider(
  thickness: 0.25,
  color: AppColors.lightGray,
);
//endregion
