import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Device {
  static double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;

  static double screenHeightWithoutExtras(BuildContext context) {
    double fullHeight = MediaQuery.of(context).size.height;
    var safeAreaHeight = MediaQuery.of(context).padding;
    return fullHeight - safeAreaHeight.top - safeAreaHeight.bottom - kToolbarHeight;
  }
}
