import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/features/browsing/browse/models/browse_model/browse_model.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/features/browsing/filter/providers/filter_sort_provider.dart';
import 'package:grab_grip/services/network/network_service.dart';
import 'package:grab_grip/utils/functions.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class BrowseProvider extends StateNotifier<BrowseModel> {
  final FilterSortProvider _filterSortProvider;
  static PagingController<int, Gear> pagingController =
      PagingController(firstPageKey: 1);

  BrowseProvider(this._filterSortProvider) : super(BrowseModel.getEmptyModel());

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

  Future<void> getLocationBounds(String placeId) async {
    await NetworkService().getBoundsByPlaceId(placeId: placeId).then(
      (result) {
        result.when(
          (errorMessage) {
            BrowseProvider.pagingController.error = errorMessage;
            _filterSortProvider.bounds = null;
          },
          (response) {
            if (response.status == "OK") {
              final bounds =
                  formatLocationBounds(response.results.first.geometry);
              _filterSortProvider.bounds = bounds;
            } else {
              _filterSortProvider.bounds = null;
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
