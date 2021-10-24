import 'package:flutter/material.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/sized_box.dart';
import 'package:skeleton_loader/skeleton_loader.dart';

class GearsSkeletonGridLoader extends StatelessWidget {
  const GearsSkeletonGridLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final skeletonGridItem = Card(
      elevation: 4,
      color: Colors.transparent,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                color: AppColors.purple,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  color: AppColors.purple,
                  height: 20,
                  width: 80,
                ),
                height8(),
                Container(
                  color: AppColors.purple,
                  height: 10,
                  width: 80,
                ),
                Container(
                  color: AppColors.purple,
                  height: 10,
                  width: 80,
                ),
                height4(),
                Container(
                  color: AppColors.purple,
                  height: 10,
                  width: 20,
                ),
                Container(
                  color: AppColors.purple,
                  height: 10,
                  width: 80,
                ),
              ],
            ),
          ),
        ],
      ),
    );
    return Wrap(
      children: [
        SkeletonGridLoader(
          items: 6,
          period: duration1Second,
          builder: skeletonGridItem,
          highlightColor: AppColors.veryLightPurple,
        )
      ],
    );
  }
}
