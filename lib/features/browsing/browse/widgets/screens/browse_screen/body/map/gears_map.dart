import 'dart:async';
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/features/browsing/browse/models/browse_model/browse_model.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/features/browsing/browse/models/listing/listing.dart';

class GearsMap extends StatelessWidget {
  GearsMap({Key? key, required this.browseData}) : super(key: key);

  final Completer<GoogleMapController> mapController = Completer();
  final BrowseModel browseData;

  CameraPosition _getInitialCameraPosition(Gear gear) {
    final initLat = double.parse(gear.lat);
    final initLng = double.parse(gear.lng);
    final initialLatLng = LatLng(initLat, initLng);
    return CameraPosition(target: initialLatLng, zoom: 14);
  }

  @override
  Widget build(BuildContext context) {
    final Listing data = browseData.data;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: data.gears.isNotEmpty == true
          ? GoogleMap(
              initialCameraPosition: _getInitialCameraPosition(
                data.gears[0],
              ),
              onMapCreated: (controller) {
                mapController.complete(controller);
              },
              markers: Set.from(
                _getMarkers(context, data.gears.length, data.gears),
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
        final doubleLat = double.parse(gears[index].lat);
        final doubleLng = double.parse(gears[index].lng);
        final latLng = LatLng(
          doubleLat,
          doubleLng,
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
    context.router.push(BrowseDetailsScreenRoute(clickedGear: clickedGear));
  }
//endregion
}
