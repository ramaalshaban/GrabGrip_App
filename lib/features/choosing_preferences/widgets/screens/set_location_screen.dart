import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/features/browsing/browse/widgets/browse_screen/floating_places_search_bar.dart';
import 'package:grab_grip/features/choosing_preferences/widgets/map_placeholder_loader.dart';
import 'package:grab_grip/shared/are_you_sure_dialog.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/functions.dart';
import 'package:location/location.dart';
import 'package:permission_handler/permission_handler.dart'
    as permission_handler;

class SetLocationScreen extends ConsumerWidget {
  SetLocationScreen({Key? key}) : super(key: key);

  final Completer<GoogleMapController> mapController = Completer();

  @override
  Widget build(BuildContext context, ScopedReader ref) {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      context
          .read(locationPickerStateProvider.notifier)
          .setChoosingPreferences();
    });
    if (ref(filterAndSortProvider).place == unknown) {
      // check if google api returns no results or error for the location that user dragged the marker to
      showSnackBar(context, "Pick another location please", Colors.amber[800]);
    }
    if (ref(filterAndSortProvider).latLng == null) {
      getUserCurrentLocation(context);
      return const MapPlaceholderLoader();
    } else {
      return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //region Map and Search bar
            Expanded(
              flex: 14,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  GoogleMap(
                    initialCameraPosition: getCameraPosition(
                      ref(filterAndSortProvider.notifier).latLng!,
                    ),
                    onMapCreated: (controller) {
                      if (!mapController.isCompleted) {
                        mapController.complete(controller);
                      }
                    },
                    markers: {
                      getMarker(
                        context,
                        ref(filterAndSortProvider.notifier).latLng!,
                      ),
                    },
                  ),
                  FloatingPlacesSearchBar(mapController),
                ],
              ),
            ),
            //endregion
            //region Label
            Container(
              height: 48,
              alignment: Alignment.center,
              color: AppColors.purple,
              child: const Text(
                "Long press on the marker to drag it",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.white,
                ),
              ),
            ),
            //endregion
            //region Done button
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.pop(context); // for set location screen
                  Navigator.pop(context); // for select rent buy screen
                  context.router.push(const HomeScreenRoute());
                },
                child: Container(
                  margin: const EdgeInsets.all(
                    3,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: AppColors.purple,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Done",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: AppColors.purple,
                    ),
                  ),
                ),
              ),
            ),
            //endregion
          ],
        ),
      );
    }
  }

  CameraPosition getCameraPosition(LatLng latLng) {
    return CameraPosition(target: latLng, zoom: 13);
  }

  Marker getMarker(
    BuildContext context,
    LatLng latLng,
  ) {
    return Marker(
      icon: BitmapDescriptor.defaultMarkerWithHue(256),
      markerId: MarkerId("${latLng.latitude},${latLng.longitude}"),
      position: latLng,
      draggable: true,
      onDragEnd: (LatLng pickedLatLng) async {
        await getLocationBoundsAndAddress(context, pickedLatLng);
        final cameraPosition = CameraPosition(target: pickedLatLng, zoom: 13);
        (await mapController.future).animateCamera(
          CameraUpdate.newCameraPosition(cameraPosition),
        );
      },
      infoWindow: const InfoWindow(
        title: "I am here",
      ),
    );
  }

  Future<void> getUserCurrentLocation(BuildContext context) async {
    final locationPackage = Location();
// check if the location service is enabled
    final serviceEnabled = await locationPackage.requestService();
    if (!serviceEnabled) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) => AreYouSureDialog(
          contentText: "Enable your location service please",
          cancelAction: () {
            goHomeScreen(context);
          },
          continueAction: () {
            Navigator.pop(context);
            getUserCurrentLocation(context);
          },
          cancelActionText: "Continue without location",
          continueActionText: "Okay",
        ),
      );
    } else {
      permission_handler.Permission.location.request().then((status) {
        if (status == permission_handler.PermissionStatus.granted) {
          // service is enabled and permission is granted so get current user location
          locationPackage.getLocation().then((userLocation) {
            final currentLocation = LatLng(
              userLocation.latitude!,
              userLocation.longitude!,
            );
            getLocationBoundsAndAddress(context, currentLocation);
            print(
                "currentLocation currentLocation currentLocation : $currentLocation");
          });
        } else if (status == permission_handler.PermissionStatus.denied) {
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (_) => AreYouSureDialog(
              contentText:
                  "Location permission is required to get your location and let you see items in your area",
              cancelAction: () {
                goHomeScreen(context);
              },
              continueAction: () {
                Navigator.pop(context);
                getUserCurrentLocation(context);
              },
              cancelActionText: "Continue without location",
              continueActionText: "Okay",
            ),
          );
        } else if (status ==
            permission_handler.PermissionStatus.permanentlyDenied) {
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (_) => AreYouSureDialog(
              contentText:
                  "Location permission is required to get your location and let you see items in your area.\n"
                  "Allow location permission from the app settings please",
              cancelAction: () => goHomeScreen(context),
              continueAction: () {
                Navigator.pop(context);
                permission_handler.openAppSettings();
              },
              cancelActionText: "Continue without location",
              continueActionText: "Open app settings",
            ),
          );
        }
      });
    }
  }

  Future<void> getLocationBoundsAndAddress(
    BuildContext context,
    LatLng latLng,
  ) async {
    await context
        .read(locationPickerStateProvider.notifier)
        .getLocationBoundsAndAddress(latLng);
  }

  void goHomeScreen(BuildContext context) {
    Navigator.pop(context); // for dialog
    Navigator.pop(context); // for set location screen
    Navigator.pop(context); // for select rent buy screen
    context.router.push(const HomeScreenRoute());
  }
}
