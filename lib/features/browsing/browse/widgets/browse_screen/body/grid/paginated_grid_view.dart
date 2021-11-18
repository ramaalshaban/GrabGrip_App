import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/features/browsing/browse/providers/browse_provider.dart';
import 'package:grab_grip/shared/widgets/paged_list_error_widget.dart';
import 'package:grab_grip/features/browsing/browse/widgets/browse_screen/body/browse_screen_loading_body.dart';
import 'package:grab_grip/features/browsing/browse/widgets/browse_screen/gear_items/grid_gear_item.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class PaginatedGridView extends StatelessWidget {
  const PaginatedGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PagedGridView<int, Gear>(
      showNewPageProgressIndicatorAsGridChild: false,
      showNewPageErrorIndicatorAsGridChild: false,
      showNoMoreItemsIndicatorAsGridChild: false,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 100 / 150,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
      ),
      pagingController: BrowseProvider.pagingController,
      builderDelegate: PagedChildBuilderDelegate<Gear>(
        itemBuilder: (context, item, index) => GridGearItem(
          gear: item,
        ),
        firstPageErrorIndicatorBuilder: (context) => PagedListErrorWidget(
          pagingController: BrowseProvider.pagingController,
        ),
        firstPageProgressIndicatorBuilder: (context) =>
            const BrowseScreenLoadingBody(),
        newPageProgressIndicatorBuilder: (context) =>
            const BrowseScreenLoadingBody(),
        noItemsFoundIndicatorBuilder: (context) => Center(
          child: Text(
            AppLocalizations.of(context)!.no_results_with_applied_filters,
          ),
        ),
        newPageErrorIndicatorBuilder: (context) => PagedListErrorWidget(
            pagingController: BrowseProvider.pagingController),
      ),
    );
  }
}
