import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/features/browsing/browse/providers/browse_provider.dart';
import 'package:grab_grip/features/browsing/filter/providers/filter_sort_provider.dart';
import 'package:grab_grip/features/post_listing/providers/post_listing_provider.dart';
import 'package:grab_grip/services/network/network_service.dart';
import 'package:grab_grip/shared/location_picker/location_picker_state/location_picker_state.dart';
import 'package:grab_grip/utils/functions.dart';

class LocationPickerStateProvider extends StateNotifier<LocationPickerState> {
  LocationPickerStateProvider(this.filterSortProvider, this.postListingProvider)
      : super(const LocationPickerState.browsing());

  FilterSortProvider filterSortProvider;
  PostListingProvider postListingProvider;

  void setBrowsing() {
    state = const LocationPickerState.browsing();
  }

  void setPosting() {
    state = const LocationPickerState.posting();
  }

  void setEditingProfile() {
    state = const LocationPickerState.editingProfile();
  }

  Future<void> getLocationBounds(String placeId) async {
    await NetworkService().getBoundsByPlaceId(placeId: placeId).then(
      (result) {
        result.when(
          (errorMessage) {
            state.when(
              browsing: () {
                BrowseProvider.pagingController.error = errorMessage;
                filterSortProvider.bounds = null;
              },
              posting: () {
                postListingProvider.latLng = null;
              },
              editingProfile: () {},
            );
          },
          (response) {
            state.when(
              browsing: () {
                if (response.status == "OK") {
                  final bounds =
                      formatLocationBounds(response.results.first.geometry);
                  filterSortProvider.bounds = bounds;
                } else {
                  filterSortProvider.bounds = null;
                }
              },
              posting: () {
                if (response.status == "OK") {
                  final latLng = getLatLng(response.results.first.geometry);
                  postListingProvider.latLng = latLng;
                } else {
                  postListingProvider.latLng = null;
                }
              },
              editingProfile: () {},
            );
          },
        );
      },
    );
  }
}
