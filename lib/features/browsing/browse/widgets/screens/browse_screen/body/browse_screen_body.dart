import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/browsing/browse/providers/browse_provider.dart';
import 'package:grab_grip/features/browsing/browse/widgets/screens/browse_screen/body/grid/paginated_grid_view.dart';
import 'package:grab_grip/features/browsing/browse/widgets/screens/browse_screen/body/list/paginated_list_view.dart';
import 'package:grab_grip/features/browsing/browse/widgets/screens/browse_screen/body/map/gears_map.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/functions.dart';

class BrowseScreenBody extends StatefulWidget {
  @override
  _BrowseScreenBodyState createState() => _BrowseScreenBodyState();
}

class _BrowseScreenBodyState extends State<BrowseScreenBody> {
  @override
  void initState() {
    BrowseProvider.pagingController.addPageRequestListener((pageKey) {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        context.read(browseDataProvider.notifier).browse(pageKey);
      });
    });

    BrowseProvider.pagingController.addStatusListener((status) {

      if (
          BrowseProvider.pagingController.error == noInternetConnection) {
        showSnackBarForError(
          context,
          BrowseProvider.pagingController.error.toString(),
        );
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) {
        final currentViewMode = watch(gearsViewMode);
        return RefreshIndicator(
          onRefresh: () async {
            BrowseProvider.pagingController.refresh();
          },
          child: currentViewMode.when(
            grid: () => const PaginatedGridView(),
            list: () => const PaginatedListView(),
            map: () => Consumer(
              builder: (_, watch, __) {
                final browseData = watch(browseDataProvider);
                return GearsMap(
                  browseData: browseData,
                );
              },
            ),
          ),
        );
      },
    );
  }
}
