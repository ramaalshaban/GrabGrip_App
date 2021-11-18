import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/features/browsing/browse/models/listing/listings_page.dart';
import 'package:grab_grip/services/network/network_service.dart';
import 'package:grab_grip/services/storage/app_shared_preferences.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class ListingsProvider extends StateNotifier<ListingsPage> {
  static PagingController<int, Gear> pagingController =
      PagingController(firstPageKey: 1);

  ListingsProvider() : super(ListingsPage.empty());

  Future<void> getListings(int pageKey) async {
    final token = await AppSharedPreferences().getToken();
    await NetworkService().getListings(token!, pageNumber: pageKey).then(
      (result) {
        result.when(
          (errorMessage) {
            ListingsProvider.pagingController.error = errorMessage;
          },
          (listingsPage) {
            state = listingsPage;
            final isLastPage = listingsPage.lastPageNumber == pageKey;
            if (isLastPage) {
              pagingController.appendLastPage(listingsPage.gears);
            } else {
              final nextPageKey = pageKey + 1;
              pagingController.appendPage(listingsPage.gears, nextPageKey);
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
