import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/browsing/browse/widgets/browse_screen/body/skeleton_loaders/gears_skeleton_grid_loader.dart';
import 'package:grab_grip/features/browsing/browse/widgets/browse_screen/body/skeleton_loaders/gears_skeleton_list_loader.dart';
import 'package:grab_grip/features/browsing/browse/widgets/browse_screen/body/skeleton_loaders/gears_skeleton_map_loader.dart';
import 'package:grab_grip/utils/device.dart';

class BrowseScreenLoadingBody extends StatelessWidget {
  const BrowseScreenLoadingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: screenWidth(context),
        height: screenHeightWithoutExtras(context),
        child: Column(
          children: [
            Expanded(
              child: Consumer(
                builder: (_, ref, __) {
                  final currentViewMode = ref.watch(gearsViewMode);
                  return currentViewMode.when(
                    grid: () => const GearsSkeletonGridLoader(),
                    list: () => const GearsSkeletonListLoader(),
                    map: () => const GearsSkeletonMapLoader(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
