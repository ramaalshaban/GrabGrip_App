import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grab_grip/features/browsing/browse/providers/browse_provider.dart';
import 'package:grab_grip/features/browsing/filter/providers/filter_sort_provider.dart';
import 'package:grab_grip/features/post_listing/providers/post_listing_provider.dart';
import 'package:grab_grip/services/network/network_service.dart';
import 'package:grab_grip/shared/location_picker/location_picker_state/location_picker_state.dart';
import 'package:grab_grip/utils/constants.dart';
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

  void setChoosingPreferences() {
    state = const LocationPickerState.choosingPreferences();
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
              choosingPreferences: () {
                filterSortProvider.bounds = null;
              },
              editingProfile: () {},
            );
          },
          (response) {
            state.when(
              browsing: () {
                if (response.status == "OK") {
                  final latLng = getLatLng(response.results.first.geometry);
                  filterSortProvider.latLng = latLng;
                  final bounds =
                      formatLocationBounds(response.results.first.geometry);
                  filterSortProvider.bounds = bounds;
                } else {
                  filterSortProvider.latLng = null;
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
              choosingPreferences: () {
                if (response.status == "OK") {
                  final latLng = getLatLng(response.results.first.geometry);
                  filterSortProvider.latLng = latLng;
                  final bounds =
                      formatLocationBounds(response.results.first.geometry);
                  filterSortProvider.bounds = bounds;
                } else {
                  filterSortProvider.latLng = null;
                  filterSortProvider.bounds = null;
                }
              },
              editingProfile: () {},
            );
          },
        );
      },
    );
  }

  Future<void> getLocationBoundsAndAddress(LatLng latLng) async {
    await NetworkService().getBoundsByLatLng(latLng: latLng).then(
      (result) {
        result.when(
          (errorMessage) {
            state.when(
              browsing: () {},
              posting: () {},
              choosingPreferences: () {
                filterSortProvider.bounds = null;
              },
              editingProfile: () {},
            );
          },
          (response) {
            state.when(
              browsing: () {},
              posting: () {},
              choosingPreferences: () {
                if (response.status == "OK") {
                  final latLng = getLatLng(response.results.first.geometry);
                  filterSortProvider.latLng = latLng;
                  final bounds =
                      formatLocationBounds(response.results.first.geometry);
                  filterSortProvider.bounds = bounds;
                  filterSortProvider.place =
                      response.results.first.formattedAddress;
                } else {
                  //when google api returns no results or error for the location that
                  // user dragged the marker to, then set the place to Unknown to recognize and check this case in the view
                  filterSortProvider.latLng = latLng;
                  filterSortProvider.bounds = null;
                  filterSortProvider.place = unknown;
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
