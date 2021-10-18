import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/features/browsing/browse/providers/browse_provider.dart';
import 'package:grab_grip/features/browsing/browse/widgets/screens/browse_screen/body/browse_screen_error_body.dart';
import 'package:grab_grip/features/browsing/browse/widgets/screens/browse_screen/body/browse_screen_loading_body.dart';
import 'package:grab_grip/features/browsing/browse/widgets/screens/browse_screen/gear_items/list_gear_item.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class PaginatedListView extends StatelessWidget {
  const PaginatedListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PagedListView<int, Gear>(
      pagingController: BrowseProvider.pagingController,
      builderDelegate: PagedChildBuilderDelegate<Gear>(
        itemBuilder: (context, item, index) => ListGearItem(
          gear: item,
        ),
        firstPageErrorIndicatorBuilder: (context) =>
            const BrowseScreenErrorBody(),
        firstPageProgressIndicatorBuilder: (context) =>
            const BrowseScreenLoadingBody(),
        newPageProgressIndicatorBuilder: (context) =>
            const BrowseScreenLoadingBody(),
        noItemsFoundIndicatorBuilder: (context) => Center(
          child: Text(
            AppLocalizations.of(context)!.no_results_with_applied_filters,
          ),
        ),
        newPageErrorIndicatorBuilder: (context) =>
            const BrowseScreenErrorBody(),
      ),
    );
  }
}
