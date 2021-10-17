import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/features/browsing/browse/models/browse_model/browse_model.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/features/browsing/browse/models/listing/listing.dart';

class GearsMap extends StatefulWidget {
  GearsMap({Key? key, required this.browseData}) : super(key: key);
  final Completer<GoogleMapController> mapController = Completer();
  final BrowseModel browseData;

  @override
  _GearsMapState createState() => _GearsMapState();
}

class _GearsMapState extends State<GearsMap> {
  late CameraPosition initialCameraPosition;

  @override
  void initState() {
    final initLat = double.parse(widget.browseData.data.gears[0].lat);
    final initLng = double.parse(widget.browseData.data.gears[0].lng);
    final initialLatLng = LatLng(initLat, initLng);
    initialCameraPosition = CameraPosition(target: initialLatLng, zoom: 14);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Listing data = widget.browseData.data;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GoogleMap(
        initialCameraPosition: initialCameraPosition,
        onMapCreated: (controller) {
          widget.mapController.complete(controller);
        },
        markers: Set.from(
          _getMarkers(data.gearsCount, data.gears),
        ),
      ),
    );
  }

  List<Marker> _getMarkers(int gearsCount, List<Gear> gears) {
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
