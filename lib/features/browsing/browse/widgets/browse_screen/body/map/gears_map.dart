import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/utils/constants.dart';

class GearsMap extends StatelessWidget {
  GearsMap({Key? key, required this.listings}) : super(key: key);

  final Completer<GoogleMapController> mapControllerCompleter = Completer();
  final List<Gear> listings;
  static GoogleMapController? controller;

  CameraPosition _getInitialCameraPosition(Gear gear) {
    final initialLatLng = LatLng(gear.lat, gear.lng);
    return CameraPosition(target: initialLatLng, zoom: 11);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: listings.isNotEmpty == true
          ? GoogleMap(
              initialCameraPosition: _getInitialCameraPosition(
                listings[0],
              ),
              onMapCreated: (mapController) {
                controller ??= mapController;
                mapControllerCompleter.complete(mapController);
              },
              markers: Set.from(
                _getMarkers(context, listings.length, listings),
              ),
            )
          : Center(
              child: Text(
                AppLocalizations.of(context)!.no_results_with_applied_filters,
              ),
            ),
    );
  }

  List<Marker> _getMarkers(
    BuildContext context,
    int gearsCount,
    List<Gear> gears,
  ) {
    return List.generate(
      gearsCount,
      (index) {
        final latLng = LatLng(
          gears[index].lat,
          gears[index].lng,
        );
        return Marker(
          icon: BitmapDescriptor.defaultMarkerWithHue(256),
          infoWindow: InfoWindow(
            onTap: () => moveToDetailsScreen(
              context,
              gears[index],
            ),
            title: gears[index].title,
            snippet: gears[index].shortDescription,
          ),
          markerId: MarkerId("$index"),
          position: latLng,
        );
      },
    );
  }

//region actions
  void moveToDetailsScreen(BuildContext context, Gear clickedGear) {
    context.router.push(
      ListingDetailsScreenRoute(
        listing: clickedGear,
        sourceScreenId: browseScreenMapViewId,
      ),
    );
  }
//endregion
}
