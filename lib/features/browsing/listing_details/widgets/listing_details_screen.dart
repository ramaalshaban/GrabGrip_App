import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/shims/dart_ui_real.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/features/browsing/listing_details/widgets/slider_widget.dart';
import 'package:grab_grip/features/browsing/listing_details/widgets/user_widget.dart';
import 'package:grab_grip/services/network/models/http_request_state/http_request_state.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/functions.dart';
import 'package:grab_grip/utils/sized_box.dart';

class ListingDetailsScreen extends StatelessWidget {
  final Gear gear;
  final Completer<GoogleMapController> mapController = Completer();

  ListingDetailsScreen({Key? key, required this.gear}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ping the server to check the internet connection when user navigates to this screen
    // if there is no internet connection then an error snack bar will be displayed
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      context.read(pingProvider).pingGrabGrip();
    });
    return Material(
      child: ProviderListener(
        provider: httpRequestStateProvider,
        onChange: (context, HttpRequestState httpRequestState) {
          httpRequestState.whenOrNull(
            error: (errorMessage) => showSnackBarForError(
              context,
              errorMessage,
              const Duration(seconds: 5),
            ),
          );
        },
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: AppColors.transparentLightPurple,
              expandedHeight: screenHeightWithoutExtras(context) / 2,
              //region Back button
              leading: InkWell(
                onTap: () => context.router.pop(),
                child: Container(
                  margin: const EdgeInsets.only(top: 8, left: 8),
                  height: 36,
                  width: 36,
                  decoration: const BoxDecoration(
                    color: AppColors.transparentWhite,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: const Icon(
                    Icons.arrow_back_rounded,
                    color: AppColors.purple,
                    size: 30,
                  ),
                ),
              ),
              //endregion
              flexibleSpace: FlexibleSpaceBar(
                //region Listing title
                title: ConstrainedBox(
                  constraints: BoxConstraints(minWidth: screenWidth(context)),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.transparentLightPurple,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    padding: const EdgeInsets.all(4),
                    child: Text(
                      gear.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                //endregion
                //region Photos slider
                background: SliderWidget(photos: gear.photos),
                //endregion
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  height12(),
                  Html(data: gear.description),
                  height12(),
                  Text(gear.currency),
                  height12(),
                  Text(gear.formattedPrice ?? ""),
                  height12(),
                  Text(
                    gear.stockQuantity.toString(),
                  ),
                  height12(),
                  SizedBox(
                    width: screenWidth(context) - 30,
                    height: screenHeightWithoutExtras(context) / 2,
                    child: GoogleMap(
                      initialCameraPosition: _getInitialCameraPosition(
                        gear,
                      ),
                      onMapCreated: (controller) {
                        mapController.complete(controller);
                      },
                      markers: {
                        Marker(
                          icon: BitmapDescriptor.defaultMarkerWithHue(256),
                          markerId: MarkerId("${gear.id}"),
                          position: LatLng(
                            gear.lat,
                            gear.lng,
                          ),
                        ),
                      },
                    ),
                  ),
                  // if user wants to see the details of his own listing then the owner is null so check before showing this widget
                  if (gear.owner != null)
                    UserWidget(
                      user: gear.owner!,
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  CameraPosition _getInitialCameraPosition(Gear gear) {
    final initialLatLng = LatLng(gear.lat, gear.lng);
    return CameraPosition(target: initialLatLng, zoom: 14);
  }
}
