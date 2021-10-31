import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_geocoding/google_geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_place/google_place.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/browsing/browse/providers/browse_provider.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class FloatingPlacesSearchBar extends StatefulWidget {
  const FloatingPlacesSearchBar([this.mapController]);

  final Completer<GoogleMapController>? mapController;

  @override
  State<FloatingPlacesSearchBar> createState() =>
      _FloatingPlacesSearchBarState();
}

class _FloatingPlacesSearchBarState extends State<FloatingPlacesSearchBar> {
  final googlePlace = GooglePlace(googleApiKey);
  final googleGeocoding = GoogleGeocoding(googleApiKey);

  final placesSearchBoxController = FloatingSearchBarController();

  List<AutocompletePrediction> placePredictions = [];

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, watch, __) {
        return FloatingSearchBar(
          border: const BorderSide(
            width: 0.5,
            color: AppColors.lightPurple,
          ),
          automaticallyImplyBackButton: false,
          controller: placesSearchBoxController,
          elevation: 0,
          hintStyle: const TextStyle(
            color: AppColors.lightPurple,
          ),
          hint: watch(locationPickerStateProvider).when(
            browsing: () {
              watch(filterAndSortProvider.notifier).place ??
                  AppLocalizations.of(context)!
                      .search_by_gear_location_placeholder;
            },
            posting: () {
              watch(postListingProvider.notifier).place ??
                  "Search for places...";
            },
            editingProfile: () {},
          ),
          scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
          transitionDuration: duration300Milli,
          transitionCurve: Curves.easeInOut,
          physics: const BouncingScrollPhysics(),
          openAxisAlignment: 0.0,
          debounceDelay: duration500Milli,
          onQueryChanged: (enteredText) async {
            if (enteredText.isNotEmpty) {
              getPlacePredictions(enteredText);
            } else {
              if (placePredictions.isNotEmpty && mounted) {
                setState(() {
                  placePredictions = [];
                });
              }
            }
          },
          transition: CircularFloatingSearchBarTransition(),
          title: Text(
            watch(locationPickerStateProvider).when(
              browsing: () {
                return watch(filterAndSortProvider.notifier).place ??
                    AppLocalizations.of(context)!
                        .search_by_gear_location_placeholder;
              },
              posting: () {
                return watch(postListingProvider.notifier).place ??
                    "Search for places...";
              },
              editingProfile: () {
                return "";
              },
            ),
            style: TextStyle(
              color: watch(locationPickerStateProvider).when(
                browsing: () {
                  return watch(filterAndSortProvider.notifier).place == null
                      ? AppColors.lightPurple
                      : AppColors.purple;
                },
                posting: () {
                  return watch(postListingProvider.notifier).place == null
                      ? AppColors.lightPurple
                      : AppColors.purple;
                },
                editingProfile: () {
                  return AppColors.lightPurple;
                },
              ),
            ),
          ),
          actions: [
            AnimatedOpacity(
              opacity: watch(locationPickerStateProvider).when(
                browsing: () =>
                    watch(filterAndSortProvider.notifier).place != null
                        ? 1.0
                        : 0.0,
                posting: () => watch(postListingProvider.notifier).place != null
                    ? 1.0
                    : 0.0,
                editingProfile: () {
                  return 1.0;
                },
              ),
              duration: duration300Milli,
              child: watch(locationPickerStateProvider).whenOrNull(
                browsing: () {
                  return FloatingSearchBarAction(
                    child: CircularButton(
                      icon: const Icon(
                        Icons.highlight_remove,
                        color: AppColors.purple,
                      ),
                      onPressed: () {
                        setState(() {
                          watch(filterAndSortProvider.notifier).resetPlace();
                          BrowseProvider.pagingController.refresh();
                        });
                      },
                    ),
                  );
                },
              ),
            ),
            FloatingSearchBarAction.searchToClear(
              showIfClosed: false,
              color: AppColors.purple,
            ),
          ],
          builder: (context, transition) {
            return Container(
              color: AppColors.white,
              child: Column(
                children: [
                  ...List.generate(
                    placePredictions.length,
                    (index) => ListTile(
                      title: Text(
                        placePredictions[index].description ?? "",
                      ),
                      onTap: () {
                        watch(locationPickerStateProvider).when(
                          browsing: () {
                            watch(filterAndSortProvider.notifier).place =
                                placePredictions[index].description;
                            updateItemsByLocationBounds(
                              placePredictions[index],
                            );
                          },
                          posting: () {
                            watch(postListingProvider.notifier).place =
                                placePredictions[index].description;
                            updateItemsByLocationBounds(
                              placePredictions[index],
                            );
                            // prevent the previously focused text field from receiving the focus again after clicking on the place prediction
                            FocusScope.of(context).requestFocus(FocusNode());
                          },
                          editingProfile: () {},
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Future<void> getPlacePredictions(String place) async {
    final result = await googlePlace.autocomplete.get(place);
    if (result != null && result.predictions != null && mounted) {
      setState(() {
        placePredictions.addAll(result.predictions ?? []);
      });
    }
  }

  void updateItemsByLocationBounds(AutocompletePrediction prediction) {
    context.read(locationPickerStateProvider).when(
          browsing: () async {
            await context
                .read(locationPickerStateProvider.notifier)
                .getLocationBounds(prediction.placeId ?? "");
            BrowseProvider.pagingController.refresh();
            placesSearchBoxController.close();
          },
          posting: () async {
            await context
                .read(locationPickerStateProvider.notifier)
                .getLocationBounds(prediction.placeId ?? "");
            placesSearchBoxController.close();
            final GoogleMapController controller =
                await widget.mapController!.future;
            final searchedLocation =
                context.read(postListingProvider.notifier).latLng;

            final cameraPosition =
                CameraPosition(target: searchedLocation!, zoom: 13);

            controller
                .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
          },
          editingProfile: () {},
        );
  }
}
