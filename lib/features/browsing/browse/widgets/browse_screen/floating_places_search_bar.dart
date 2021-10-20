import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_geocoding/google_geocoding.dart';
import 'package:google_place/google_place.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/browsing/browse/providers/browse_provider.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class FloatingPlacesSearchBar extends StatefulWidget {
  const FloatingPlacesSearchBar({Key? key}) : super(key: key);

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
          hint: watch(filterAndSortProvider.notifier).place ??
              AppLocalizations.of(context)!.search_by_gear_location_placeholder,
          scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
          transitionDuration: const Duration(milliseconds: 300),
          transitionCurve: Curves.easeInOut,
          physics: const BouncingScrollPhysics(),
          openAxisAlignment: 0.0,
          debounceDelay: const Duration(milliseconds: 500),
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
            watch(filterAndSortProvider.notifier).place ??
                AppLocalizations.of(context)!
                    .search_by_gear_location_placeholder,
            style: TextStyle(
              color: watch(filterAndSortProvider.notifier).place == null
                  ? AppColors.lightPurple
                  : AppColors.purple,
            ),
          ),
          actions: [
            AnimatedOpacity(
              opacity: watch(filterAndSortProvider.notifier).place != null
                  ? 1.0
                  : 0.0,
              duration: const Duration(milliseconds: 300),
              child: FloatingSearchBarAction(
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
                      title: Text(placePredictions[index].description ?? ""),
                      onTap: () {
                        watch(filterAndSortProvider.notifier).place =
                            placePredictions[index].description;
                        updateItemsByLocationBounds(placePredictions[index]);
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

  Future<void> updateItemsByLocationBounds(AutocompletePrediction prediction) async {
    await context
        .read(browseDataProvider.notifier)
        .getLocationBounds(prediction.placeId ?? "");
    BrowseProvider.pagingController.refresh();
    placesSearchBoxController.close();
  }
}
