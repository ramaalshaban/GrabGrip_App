import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/features/browsing/listing_details/widgets/additional_options/additional_options_widget.dart';
import 'package:grab_grip/features/browsing/listing_details/widgets/date_range_picker/date_range_picker.dart';
import 'package:grab_grip/features/browsing/listing_details/widgets/listing_description_widget.dart';
import 'package:grab_grip/features/browsing/listing_details/widgets/owner_widget.dart';
import 'package:grab_grip/features/browsing/listing_details/widgets/quantity_widget.dart';
import 'package:grab_grip/features/browsing/listing_details/widgets/reviews/reviews_widget.dart';
import 'package:grab_grip/features/browsing/listing_details/widgets/shipping_options_widget.dart';
import 'package:grab_grip/features/browsing/listing_details/widgets/slider_widget.dart';
import 'package:grab_grip/features/browsing/listing_details/widgets/status_edit_button_widget.dart';
import 'package:grab_grip/features/browsing/listing_details/widgets/toggle_favorite_button.dart';
import 'package:grab_grip/features/browsing/listing_details/widgets/total_price_widget.dart';
import 'package:grab_grip/features/browsing/listing_details/widgets/variant_options_widget.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/details_tab_view/widgets/tag_view.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/sized_box.dart';

class ListingDetailsScreen extends ConsumerWidget {
  ListingDetailsScreen({
    Key? key,
    required this.listing,
    required this.sourceScreenId,
  }) : super(key: key);

  final Completer<GoogleMapController> mapController = Completer();
  final Gear listing;
  final int sourceScreenId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      // reset the state so old values get deleted (old values that where fetched for the previously browsed listing)
      ref.watch(listingDetailsProvider.notifier).reset();
      // The gear object that is passed to this screen doesn't contain all listing data that has to be displayed
      // so get listing data
      ref.watch(listingDetailsProvider.notifier).getListing(
            passedHash: listing.hash,
            passedSlug: listing.slug,
          );
    });
    return Material(
      child: Column(
        children: [
          //region Details & Options
          Expanded(
            flex: 16,
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: AppColors.transparentLightPurple,
                  expandedHeight: screenHeightWithoutExtras() / 2,
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
                  //region Favorite button
                  actions: const [ToggleFavoriteButton()],
                  //endregion
                  flexibleSpace: FlexibleSpaceBar(
                    //region Listing title, Category & Pricing model
                    title: ConstrainedBox(
                      constraints: BoxConstraints(minWidth: screenWidth()),
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
                                return ref
                                    .watch(httpRequestStateProvider)
                                    .maybeWhen(
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
                                      orElse: () => Row(
                                        children: [
                                          Text(
                                            ref
                                                .watch(
                                                  listingDetailsProvider
                                                      .notifier,
                                                )
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
                                            ref
                                                .watch(
                                                  listingDetailsProvider
                                                      .notifier,
                                                )
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
                              listing.title,
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
                    background: SliderWidget(photos: listing.photos),
                    //endregion
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      //region Status & Edit button
                      StatusEditButtonWidget(
                        listing: listing,
                        sourceScreenId: sourceScreenId,
                      ),
                      //endregion
                      //region Description
                      ListingDescriptionWidget(
                        description: listing.description,
                      ),
                      //endregion
                      //region Tags
                      if (listing.tags != null)
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12.0,
                          ),
                          child: Wrap(
                            spacing: 6,
                            children: List.generate(
                              listing.tags!.length,
                              (index) => TagView(
                                tag: listing.tags![index],
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
                        height: screenHeightWithoutExtras() / 2,
                        child: GoogleMap(
                          initialCameraPosition: _getInitialCameraPosition(
                            listing,
                          ),
                          onMapCreated: (controller) {
                            if (!mapController.isCompleted) {
                              mapController.complete(controller);
                            }
                          },
                          markers: {
                            Marker(
                              icon: BitmapDescriptor.defaultMarkerWithHue(
                                256,
                              ),
                              markerId: MarkerId("${listing.id}"),
                              position: LatLng(
                                listing.lat,
                                listing.lng,
                              ),
                            ),
                          },
                        ),
                      ),
                      //endregion
                      height8(),
                      //region Listing Options
                      Consumer(
                        builder: (_, ref, __) {
                          bool isLoading = false;
                          ref.watch(httpRequestStateProvider).maybeWhen(
                                loading: () => isLoading = true,
                                orElse: () => isLoading = false,
                              );
                          return Stack(
                            children: [
                              Column(
                                children: [
                                  //region Quantity
                                  const QuantityWidget(),
                                  //endregion
                                  height8(),
                                  //region Date range picker
                                  const DateRangePicker(),
                                  //endregion
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
                                ],
                              ),
                              //region Loading indicator
                              Visibility(
                                visible: isLoading,
                                child: Positioned(
                                  right: 0,
                                  top: 0,
                                  left: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color:
                                          AppColors.transparentVeryLightPurple,
                                    ),
                                    margin: const EdgeInsets.symmetric(
                                      horizontal: 12.0,
                                    ),
                                    child: const Center(
                                      child: CircularProgressIndicator(
                                        color: AppColors.purple,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              //endregion
                            ],
                          );
                        },
                      ),
                      //endregion
                      height8(),
                      //region Owner/Seller widget
                      const OwnerWidget(),
                      //endregion
                      height8(),
                      //region Reviews
                      const ReviewsWidget(),
                      //endregion
                      height18(),
                      //region Report listing button
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Wrap(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                border: Border.all(
                                  color: Colors.red[800]!,
                                ),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  context.router.push(
                                    ReportListingScreenRoute(
                                      listingToReport: listing,
                                    ),
                                  );
                                },
                                child: Text(
                                  "Report listing",
                                  style: TextStyle(
                                    color: Colors.red[800],
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //endregion
                      height12(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //endregion
          //region Total price widget
          Expanded(
            flex: listing.pricingModel?.widget == bookDate ? 3 : 2,
            child: TotalPriceWidget(listing: listing),
          ),
          //endregion
        ],
      ),
    );
  }

  CameraPosition _getInitialCameraPosition(Gear gear) {
    final initialLatLng = LatLng(gear.lat, gear.lng);
    return CameraPosition(target: initialLatLng, zoom: 14);
  }
}
