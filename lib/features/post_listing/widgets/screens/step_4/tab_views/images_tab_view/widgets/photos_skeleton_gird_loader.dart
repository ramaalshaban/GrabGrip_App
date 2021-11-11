import 'package:flutter/material.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/sized_box.dart';
import 'package:skeleton_loader/skeleton_loader.dart';

class PhotosSkeletonGridLoader extends StatelessWidget {
  const PhotosSkeletonGridLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final skeletonGridItem = Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 4,
      color: Colors.transparent,
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
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
                height4(),
                Container(
                  color: AppColors.purple,
                  height: 20,
                  width: 80,
                ),
                height4(),
                Container(
                  decoration: const BoxDecoration(
                    color: AppColors.purple,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                  ),
                  height: 20,
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
