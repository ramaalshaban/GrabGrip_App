import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/features/browsing/browse/models/browse_model/browse_model.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/features/browsing/filter/providers/filter_sort_provider.dart';
import 'package:grab_grip/services/network/network_service.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class BrowseProvider extends StateNotifier<BrowseModel> {
  final FilterSortProvider _filterSortProvider;
  static PagingController<int, Gear> pagingController =
      PagingController(firstPageKey: 1);

  BrowseProvider(this._filterSortProvider) : super(BrowseModel.empty());

  int updateListingAndGetIndex(Gear newListing) {
    final List<Gear> availableListings = [];
    int updatedListingIndex = -1;
    for (int i = 0; i < state.data.gears.length; i++) {
      if (state.data.gears[i].id == newListing.id) {
        availableListings.add(newListing);
        updatedListingIndex = i;
      } else {
        availableListings.add(state.data.gears[i]);
      }
    }
    final listingsPage = state.data.copyWith(gears: availableListings);
    state = state.copyWith(data: listingsPage);
    return updatedListingIndex;
  }

  Future<void> browse(int pageKey) async {
    final filterAndSortParams = _filterSortProvider.state;
    await NetworkService()
        .browse(filterAndSortParams, pageNumber: pageKey)
        .then(
      (result) {
        result.when(
          (errorMessage) {
            BrowseProvider.pagingController.error = errorMessage;
          },
          (response) {
            state = response;
            final isLastPage = response.data.lastPageNumber == pageKey;
            if (isLastPage) {
              pagingController.appendLastPage(response.data.gears);
            } else {
              final nextPageKey = pageKey + 1;
              pagingController.appendPage(response.data.gears, nextPageKey);
            }
          },
        );
      },
    );
  }

  @override
  void dispose() {
    pagingController.dispose();
    super.dispose();
  }
}
