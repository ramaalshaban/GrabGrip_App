import 'package:flutter/material.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/sized_box.dart';
import 'package:skeleton_loader/skeleton_loader.dart';

class OrderItemSkeletonLoader extends StatelessWidget {
  const OrderItemSkeletonLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final skeletonOrderItem = Card(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: 100,
                color: AppColors.purple,
              ),
            ),
            width12(),
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: AppColors.purple,
                    height: 14,
                    width: screenWidth(context) / 1.5,
                  ),
                  height4(),
                  Container(
                    color: AppColors.purple,
                    height: 14,
                    width: (screenWidth(context) / 1.5) - 80,
                  ),
                  height4(),
                  Container(
                    color: AppColors.purple,
                    height: 14,
                    width: (screenWidth(context) / 1.5) - 60,
                  ),
                  height4(),
                  Container(
                    color: AppColors.purple,
                    height: 14,
                    width: (screenWidth(context) / 1.5) - 100,
                  ),
                  height4(),
                  Container(
                    color: AppColors.purple,
                    height: 14,
                    width: (screenWidth(context) / 1.5) - 60,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

    return SizedBox(
      width: screenWidth(context),
      height: screenHeightWithoutExtras(context),
      child: Column(
        children: [
          Expanded(
            child: Wrap(
              children: [
                SkeletonLoader(
                  items: 6,
                  period: duration1Second,
                  builder: skeletonOrderItem,
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
