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
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/details_tab_view/widgets/tag_view.dart';
import 'package:grab_grip/services/network/models/http_request_state/http_request_state.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/functions.dart';
import 'package:grab_grip/utils/sized_box.dart';

class ListingDetailsScreen extends StatelessWidget {
  final Gear gear;
  final Completer<GoogleMapController> mapController = Completer();
  final horizontalPaddingValue = 12.0;

  ListingDetailsScreen({Key? key, required this.gear}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      // get listings' categories and pricing models to display the current listing's category and pricing model
      context
          .read(listingDetailsProvider.notifier)
          .getCategoriesAndPricingModels();
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
                //region Listing title, Category & Pricing model
                title: ConstrainedBox(
                  constraints: BoxConstraints(minWidth: screenWidth(context)),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.transparentLightPurple,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    padding: const EdgeInsets.all(4),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        //region Category & Pricing model
                        Consumer(
                          builder: (_, ref, __) {
                            return ref(httpRequestStateProvider).maybeWhen(
                              loading: () => const Center(
                                child: SizedBox(
                                  height: 14,
                                  width: 14,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    color: AppColors.purple,
                                  ),
                                ),
                              ),
                              error: (_) => Container(),
                              orElse: () => Row(
                                children: [
                                  Text(
                                    ref(listingDetailsProvider.notifier)
                                        .getCategoryName(gear.categoryId),
                                    style: const TextStyle(
                                      fontSize: 8,
                                      color: AppColors.white,
                                    ),
                                  ),
                                  const Text(
                                    " / ",
                                    style: TextStyle(
                                      fontSize: 8,
                                      color: AppColors.white,
                                    ),
                                  ),
                                  Text(
                                    ref(listingDetailsProvider.notifier)
                                        .getPricingModelName(
                                      gear.pricingModelId,
                                    ),
                                    style: const TextStyle(
                                      fontSize: 8,
                                      color: AppColors.white,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                        //endregion
                        height4(),
                        //region Title
                        Text(
                          gear.title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        //endregion
                      ],
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
                  //region Description
                  Html(
                    data: gear.description,
                    style: {
                      // "p" to style text in <p> tags
                      "p": Style(
                        fontSize: FontSize.large,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 4,
                        ),
                      )
                    },
                  ),
                  //endregion
                  //region Tags
                  if (gear.tags != null)
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: horizontalPaddingValue,
                      ),
                      child: Wrap(
                        spacing: 6,
                        children: List.generate(
                          gear.tags!.length,
                          (index) => TagView(
                            tag: gear.tags![index],
                            isEditable: false,
                          ),
                        ),
                      ),
                    ),
                  //endregion
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
