import 'package:flutter/material.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/sized_box.dart';
import 'package:skeleton_loader/skeleton_loader.dart';

class GearsSkeletonListLoader extends StatelessWidget {
  const GearsSkeletonListLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final skeletonListItem = Card(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                height: 100,
                color: AppColors.purple,
              ),
            ),
            width12(),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: AppColors.purple,
                    height: 24,
                    width: double.infinity,
                  ),
                  height8(),
                  Container(
                    color: AppColors.purple,
                    height: 30,
                    width: double.infinity,
                  ),
                  height6(),
                  Container(
                    color: AppColors.purple,
                    height: 14,
                    width: double.infinity,
                  ),
                  height4(),
                  Container(
                    color: AppColors.purple,
                    height: 14,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    return Wrap(
      children: [
        SkeletonLoader(
          items: 6,
          period: duration1Second,
          builder: skeletonListItem,
          highlightColor: AppColors.veryLightPurple,
        ),
      ],
    );
  }
}
