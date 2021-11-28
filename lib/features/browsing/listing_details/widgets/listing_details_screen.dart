import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/shims/dart_ui_real.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/features/browsing/listing_details/widgets/additional_options/additional_options_widget.dart';
import 'package:grab_grip/features/browsing/listing_details/widgets/listing_description_widget.dart';
import 'package:grab_grip/features/browsing/listing_details/widgets/quantity_widget.dart';
import 'package:grab_grip/features/browsing/listing_details/widgets/shipping_options_widget.dart';
import 'package:grab_grip/features/browsing/listing_details/widgets/slider_widget.dart';
import 'package:grab_grip/features/browsing/listing_details/widgets/user_widget.dart';
import 'package:grab_grip/features/browsing/listing_details/widgets/variant_options_widget.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/details_tab_view/widgets/tag_view.dart';
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
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      // The gear object that is passed to this screen doesn't contain all listing data that has to be displayed
      // so get listing data
      context
          .read(listingDetailsProvider.notifier)
          .getListing(hash: gear.hash, slug: gear.slug);
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
                                        .getCategoryName(),
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
                                        .getPricingModelName(),
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
                  ListingDescriptionWidget(description: gear.description),
                  //endregion
                  //region Tags
                  if (gear.tags != null)
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12.0,
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
                  //region Map
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    height: screenHeightWithoutExtras(context) / 2,
                    child: GoogleMap(
                      initialCameraPosition: _getInitialCameraPosition(
                        gear,
                      ),
                      onMapCreated: (controller) {
                        if (!mapController.isCompleted) {
                          mapController.complete(controller);
                        }
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
                  //endregion
                  height8(),
                  //region Quantity
                  QuantityWidget(stock: gear.stockQuantity),
                  //endregion
                  height8(),
                  //region variant options
                  const VariantOptionsWidget(),
                  //endregion
                  height8(),
                  //region Shipping options
                  const ShippingOptionsWidget(),
                  //endregion
                  height8(),
                  //region Additional options
                  const AdditionalOptionsWidget(),
                  //endregion
                  height12(),
                  Consumer(
                    builder: (_, ref, __) {
                      return TextButton(
                          onPressed: () {
                            if (!ref(listingDetailsProvider.notifier)
                                .areVariantOptionsSelected()) {
                              showSnackBar(
                                context,
                                "Select all variant options please",
                                Colors.amber[800],
                              );
                            } else if (!ref(listingDetailsProvider.notifier)
                                .isShippingIdSelected()) {
                              showSnackBar(
                                context,
                                "Select a shipping method please",
                                Colors.amber[800],
                              );
                            } else {
                              //region Debugging prints
                              print(
                                  "-==-=-=========================================-=-=-=-");
                              print(
                                  "Quantity : ${ref(listingDetailsProvider.notifier).selectedQuantity}");
                              for (int i = 0;
                                  i <
                                      ref(listingDetailsProvider.notifier)
                                          .selectedVariantOptions
                                          .length;
                                  i++) {
                                final variant =
                                    ref(listingDetailsProvider.notifier)
                                        .selectedVariantOptions
                                        .entries
                                        .elementAt(i);
                                print(
                                    "variant #$i : ${variant.key} => ${variant.value}");
                                print("-------");
                              }
                              print(
                                  "Shipping id : ${ref(listingDetailsProvider.notifier).selectedShippingId}");
                              for (int i = 0;
                                  i <
                                      ref(listingDetailsProvider.notifier)
                                          .selectedAdditionalOptions
                                          .length;
                                  i++) {
                                final additionalOption =
                                    ref(listingDetailsProvider.notifier)
                                        .selectedAdditionalOptions
                                        .entries
                                        .elementAt(i);
                                print(
                                    "additional option #$i : ${additionalOption.key} => ${additionalOption.value}");
                                if (ref(listingDetailsProvider.notifier)
                                        .selectedAdditionalOptionsMeta
                                        .entries
                                        .length >
                                    i) {
                                  final additionalOptionMeta =
                                      ref(listingDetailsProvider.notifier)
                                          .selectedAdditionalOptionsMeta
                                          .entries
                                          .elementAt(i);
                                  print(
                                      "additional option meta #$i : ${additionalOptionMeta.key} => ${additionalOptionMeta.value}");
                                }
                                print("-------");
                              }
                              print(
                                  "-==-=-=========================================-=-=-=-");
                              //endregion
                            }
                          },
                          child: const Text("check values"));
                    },
                  ),
                  Text(gear.currency),
                  height12(),
                  Text(gear.formattedPrice ?? ""),
                  height12(),
                  Text(
                    gear.stockQuantity.toString(),
                  ),
                  height12(),
                  //region User widget
                  UserWidget(
                    user: gear.owner!,
                  )
                  //endregion
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
