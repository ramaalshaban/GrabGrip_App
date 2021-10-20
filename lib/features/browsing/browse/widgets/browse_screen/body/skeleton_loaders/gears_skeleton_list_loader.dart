import 'package:flutter/material.dart';
import 'package:grab_grip/style/colors.dart';
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
          children: [
            Expanded(
              child: Container(
                height: 60,
                color: AppColors.purple,
              ),
            ),
            width12(),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: AppColors.purple,
                        height: 10,
                        width: double.infinity,
                      ),
                      height8(),
                      Container(
                        color: AppColors.purple,
                        height: 10,
                        width: double.infinity,
                      ),
                      Container(
                        color: AppColors.purple,
                        height: 10,
                        width: double.infinity,
                      ),
                      height4(),
                      Container(
                        color: AppColors.purple,
                        height: 10,
                        width: double.infinity,
                      ),
                      height4(),
                      Container(
                        color: AppColors.purple,
                        height: 10,
                        width: double.infinity,
                      ),
                    ],
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
          period: const Duration(seconds: 1),
          builder: skeletonListItem,
          highlightColor: AppColors.veryLightPurple,
        ),
      ],
    );
  }
}
