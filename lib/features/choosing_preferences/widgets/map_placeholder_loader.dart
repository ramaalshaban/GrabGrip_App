import 'package:flutter/material.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:skeleton_loader/skeleton_loader.dart';

class MapPlaceholderLoader extends StatelessWidget {
  const MapPlaceholderLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final skeletonMapItem = Container(
      color: AppColors.purple,
      height: screenHeightWithoutSafeAreaPadding(context),
    );
    return SkeletonLoader(
      period: duration1Second,
      builder: skeletonMapItem,
      highlightColor: AppColors.veryLightPurple,
    );
  }
}
