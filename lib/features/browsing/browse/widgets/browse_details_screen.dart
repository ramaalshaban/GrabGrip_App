import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/shims/dart_ui_real.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/features/user_profile/models/user.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/sized_box.dart';

class BrowseDetailsScreen extends StatelessWidget {
  final Gear gear;
  final Completer<GoogleMapController> mapController = Completer();

  BrowseDetailsScreen({Key? key, required this.gear}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColors.lightPurple,
            expandedHeight: screenHeightWithoutExtras(context) / 2,
            flexibleSpace: FlexibleSpaceBar(
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
              background: CachedNetworkImage(
                imageUrl: gear.thumbnail,
                placeholder: (context, url) => const Center(
                  child: SizedBox(
                    height: 28,
                    width: 28,
                    child: CircularProgressIndicator(
                      color: AppColors.purple,
                    ),
                  ),
                ),
                errorWidget: (context, url, error) => const Icon(
                  Icons.error,
                  color: Colors.red,
                ),
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
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
                Text(gear.formattedPrice),
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
                          double.parse(gear.lat),
                          double.parse(gear.lng),
                        ),
                      ),
                    },
                  ),
                ),
                OwnerWidget(
                  owner: gear.owner!,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  CameraPosition _getInitialCameraPosition(Gear gear) {
    final initLat = double.parse(gear.lat);
    final initLng = double.parse(gear.lng);
    final initialLatLng = LatLng(initLat, initLng);
    return CameraPosition(target: initialLatLng, zoom: 14);
  }
}

class OwnerWidget extends StatelessWidget {
  const OwnerWidget({Key? key, required this.owner}) : super(key: key);

  final User owner;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
            owner.avatar,
          ),
        ),
        height12(),
        Text(
          owner.userName,
        ),
        height12(),
        Text(owner.phone ?? ""),
        height12(),
        Text(owner.bio ?? ""),
        height12(),
        Text(owner.city),
        height12(),
        Text(owner.country),
        height12(),
      ],
    );
  }
}
