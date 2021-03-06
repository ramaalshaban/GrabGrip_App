import 'package:flutter/material.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:skeleton_loader/skeleton_loader.dart';

class GearsSkeletonMapLoader extends StatelessWidget {
  const GearsSkeletonMapLoader({Key? key}) : super(key: key);
  static const _overflowedPixels = 116;

  @override
  Widget build(BuildContext context) {
    final skeletonMapItem = Card(
      color: Colors.transparent,
      child: Container(
        color: AppColors.purple,
        height: screenHeightWithoutExtras() - _overflowedPixels,
      ),
    );
    return SkeletonLoader(
      period: duration1Second,
      builder: skeletonMapItem,
      highlightColor: AppColors.veryLightPurple,
    );
  }
}
