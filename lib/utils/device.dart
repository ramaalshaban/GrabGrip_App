import 'package:flutter/material.dart';

MediaQueryData? _mediaQueryData;

void initAppMediaQuery(BuildContext context) {
  _mediaQueryData ??= MediaQuery.of(context);
}

double screenWidth() => _mediaQueryData!.size.width;

double screenHeightWithoutSafeAreaPadding() {
  final double fullHeight = _mediaQueryData!.size.height;
  final safeAreaHeight = _mediaQueryData!.padding;
  return fullHeight - safeAreaHeight.top - safeAreaHeight.bottom;
}

double screenHeightWithoutExtras() {
  final double fullHeight = _mediaQueryData!.size.height;
  final safeAreaHeight = _mediaQueryData!.padding;
  return fullHeight -
      safeAreaHeight.top -
      safeAreaHeight.bottom -
      kToolbarHeight;
}
