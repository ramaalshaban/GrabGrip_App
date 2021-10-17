import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/browsing/browse/widgets/screens/browse_screen/gear_items/grid_gear_item.dart';
import 'package:grab_grip/features/browsing/browse/widgets/screens/browse_screen/gear_items/list_gear_item.dart';
import 'package:grab_grip/features/browsing/browse/widgets/screens/browse_screen/map/gears_map.dart';

class BrowseScreenBody extends ConsumerWidget {
  const BrowseScreenBody();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final browseData = watch(browseDataProvider);
    return browseData!.data.gearsCount == 0
        ? Center(
            child: Text(AppLocalizations.of(context)!.no_results_with_applied_filters),
          )
        : watch(gearsViewMode).when(
            grid: () => GridView.count(
              crossAxisCount: 2,
              children: List.generate(
                browseData.data.gearsCount,
                (index) => GridGearItem(gear: browseData.data.gears[index]),
              ),
            ),
            list: () => ListView.builder(
              itemCount: browseData.data.gearsCount,
              itemBuilder: (BuildContext context, int index) {
                return ListGearItem(gear: browseData.data.gears[index]);
              },
            ),
            map: () => GearsMap(browseData: browseData),
          );
  }
}
