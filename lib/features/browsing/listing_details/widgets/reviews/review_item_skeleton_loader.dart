import 'package:flutter/material.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/sized_box.dart';
import 'package:skeleton_loader/skeleton_loader.dart';

class ReviewItemSkeletonLoader extends StatelessWidget {
  const ReviewItemSkeletonLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final skeletonReviewItem = Card(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: AppColors.purple,
              height: 14,
              width: (screenWidth() / 1.5) - 150,
            ),
            height8(),
            Container(
              color: AppColors.purple,
              height: 14,
              width: (screenWidth() / 1.5) - 130,
            ),
            height8(),
            Container(
              color: AppColors.purple,
              height: 36,
              width: (screenWidth() / 1.25) - 5,
            ),
            height4(),
            Container(
              color: AppColors.purple,
              height: 14,
              width: (screenWidth() / 1.5) - 100,
            ),
          ],
        ),
      ),
    );

    return SizedBox(
      width: screenWidth(),
      height: screenHeightWithoutExtras(),
      child: Column(
        children: [
          Expanded(
            child: Wrap(
              children: [
                SkeletonLoader(
                  items: 6,
                  period: duration1Second,
                  builder: skeletonReviewItem,
                  highlightColor: AppColors.veryLightPurple,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
