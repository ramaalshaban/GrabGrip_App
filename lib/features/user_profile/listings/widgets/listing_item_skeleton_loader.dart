import 'package:flutter/material.dart';
import 'package:grab_grip/features/browsing/browse/widgets/browse_screen/body/skeleton_loaders/gears_skeleton_list_loader.dart';
import 'package:grab_grip/utils/device.dart';

class ListingItemSkeletonLoader extends StatelessWidget {
  const ListingItemSkeletonLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth(context),
      height: screenHeightWithoutExtras(context),
      child: Column(
        children: const [
          Expanded(
            child: GearsSkeletonListLoader(),
          ),
        ],
      ),
    );
  }
}
