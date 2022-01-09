import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/browsing/browse/widgets/browse_screen/floating_places_search_bar.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/sized_box.dart';

class LocationPicker extends StatelessWidget {
  LocationPicker({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;
  late final LatLng latLng;
  final Completer<GoogleMapController> mapController = Completer();

  CameraPosition _getCameraPosition(LatLng latLng) {
    return CameraPosition(target: latLng, zoom: 13);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: AppColors.purple,
          ),
        ),
        height8(),
        SizedBox(
          width: screenWidth() - 40,
          height: screenWidth() - 40,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Consumer(
                builder: (_, ref, __) {
                  final inProgressListing =
                      ref.watch(postListingProvider.notifier).inProgressListing!;
                  final lat = inProgressListing.lat;
                  final lng = inProgressListing.lng;
                  final latLngToShow = LatLng(lat, lng);
                  return GoogleMap(
                    initialCameraPosition: _getCameraPosition(latLngToShow),
                    onMapCreated: (controller) {
                      mapController.complete(controller);
                    },
                    markers: {
                      _getMarker(context, latLngToShow),
                    },
                  );
                },
              ),
              FloatingPlacesSearchBar(mapController),
            ],
          ),
        )
      ],
    );
  }

  Marker _getMarker(
    BuildContext context,
    LatLng latLng,
  ) {
    return Marker(
      icon: BitmapDescriptor.defaultMarkerWithHue(256),
      markerId: MarkerId("${latLng.latitude},${latLng.longitude}"),
      position: latLng,
    );
  }
}
