import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;

double screenHeightWithoutSafeAreaPadding(BuildContext context) {
  final double fullHeight = MediaQuery.of(context).size.height;
  final safeAreaHeight = MediaQuery.of(context).padding;
  return fullHeight - safeAreaHeight.top - safeAreaHeight.bottom;
}

double screenHeightWithoutExtras(BuildContext context) {
  final double fullHeight = MediaQuery.of(context).size.height;
  final safeAreaHeight = MediaQuery.of(context).padding;
  return fullHeight -
      safeAreaHeight.top -
      safeAreaHeight.bottom -
      kToolbarHeight;
}
