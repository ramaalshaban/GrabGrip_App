import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/features/browsing/browse/providers/browse_provider.dart';
import 'package:grab_grip/features/browsing/browse/widgets/browse_screen/body/map/gears_map.dart';
import 'package:grab_grip/features/user_profile/listings/providers/listings_provider.dart';
import 'package:grab_grip/style/box_decorations.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';

class StatusEditButtonWidget extends StatelessWidget {
  const StatusEditButtonWidget({
    Key? key,
    required this.listing,
    required this.sourceScreenId,
  }) : super(key: key);

  final Gear listing;
  final int sourceScreenId;

  @override
  Widget build(BuildContext context) {
    //region Color & Status values initialization
    Color backgroundColor = AppColors.white;
    String status = "";
    late String verificationStatus;
    if (listing.isPublished == 1) {
      if (listing.isDraft == 1) {
        status = "Unpublished";
        backgroundColor = Colors.amber.shade800;
      } else {
        status = "Published";
        backgroundColor = AppColors.green;
      }
    } else if (listing.isDraft == 0 && listing.isPublished == 0) {
      status = "Draft";
      backgroundColor = AppColors.gray;
    }

    if (listing.isDisabled != null) {
      status = "Disabled";
      backgroundColor = Colors.red;
    }

    listing.isVerifiedByAdmin == null
        ? verificationStatus = "(pending admin verification)"
        : verificationStatus = "(verified by admin)";
    //endregion
    return Consumer(
      builder: (_, ref, __) {
        final listingOwner = ref.watch(
          listingDetailsProvider.select((state) => state.listingOwner),
        );
        return Visibility(
          visible: ref
              .watch(userProfileProvider.notifier)
              .isIdOfCurrentUser(listingOwner?.id ?? -1),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 0),
            decoration: listingDetailsBoxDecoration,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //region Status
                Container(
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: status,
                          style: const TextStyle(
                            color: AppColors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const TextSpan(
                          style: TextStyle(fontSize: 4),
                          text: "\n ",
                        ),
                        TextSpan(
                          text: "\n$verificationStatus",
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //endregion
                //region Edit button
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    elevation: 4,
                    shadowColor: AppColors.purple,
                    primary: AppColors.lightPurple,
                  ),
                  onPressed: () async {
                    ref.watch(postListingProvider.notifier).isEditingMode =
                        true;
                    await ref
                        .watch(postListingProvider.notifier)
                        .getListingForEditing(listingHash: listing.hash);
                    // save a copy of the listing before editing
                    final oldListing = ref
                        .watch(postListingProvider.notifier)
                        .inProgressListing;
                    await context.router.push(const PostListingScreenRoute())
                        //region Callbacks for navigating back from editing to listing details screen AND from listing details screen to the previous screen
                        .then((_) async {
                      /* when the user navigates back from editing a listing to listing details screen:
                         get the listing again so we have the latest version of it.
                         since the user is navigating back to listing details screen (he is done editing) then no need to prepare for editing. So we pass false and
                         reduce the work that will be done in getListingForEditing().
                       */
                      await ref
                          .watch(postListingProvider.notifier)
                          .getListingForEditing(
                            listingHash: oldListing!.hash,
                            prepareForEditing: false,
                          );
                      final newListing = ref
                          .watch(postListingProvider.notifier)
                          .inProgressListing;
                      // compare the listing object that we saved before navigating the user to edit the listing with the new one

                      ///IMPORTANT NOTE:
                      // we should also compare the listing passed by constructor to this widget with the new listing. This will let
                      // listing details screen gets updated (because listing != newListing becomes true) when a change to the listing
                      // is made from the website (by the user himself or by the website administrator).
                      // this comparison is commented out right now because it needs to be handled properly.
                      if (oldListing !=
                          newListing /* || listing != newListing */) {
                        // only if the listing has changed then we need to update listing details screen
                        // so remove the old listing details screen and push it again with the new listing object
                        await context.router.pop();
                        await context.router
                            .push(
                          ListingDetailsScreenRoute(
                            listing: newListing!,
                            sourceScreenId: sourceScreenId,
                          ),
                        )

                            /// NOTE: This approach of updating listing details screen (by popping and pushing again) might not be the best approach
                            /// but it's working with the current situation of listing details screen which is populated by data
                            /// from two resources (the data that gets passed to it AND the data that is fetched by getListing)

                            .then((_) async {
                          /* when the user navigates back from listing details screen to the previous screen, then update the previous screen so it displays the latest data
                            (the user can navigate to listing details screen from many screens, so check which one was the previous screen)
                           */
                          if (sourceScreenId == browseScreenId) {
                            BrowseProvider.pagingController.refresh();
                          } else if (sourceScreenId == browseScreenMapViewId) {
                            // update the listing that the user has edited
                            final updatedListingIndex = ref
                                .watch(browseDataProvider.notifier)
                                .updateListingAndGetIndex(newListing);
                            // to update the info window (that the user clicked) of the listing that has been updated, just hide it. So when the user clicks again on
                            // the same listing's marker he sees the new data in the appearing info window.
                            /// NOTE: a better way of updating the map can be implemented later.
                            final markerId = MarkerId("$updatedListingIndex");

                            /// NOTE: the following exception is thrown by google_maps_flutter package sometimes because of the below hideMarkerInfoWindow call
                            /// "Unhandled Exception: MissingPluginException(No implementation found for method markers#hideInfoWindow on channel plugins.flutter.io/google_maps_65)"
                            await GearsMap.controller!
                                .hideMarkerInfoWindow(markerId);
                            // refresh the paging controller to let the grid and the normal lists get updated when the user navigates to them after updating a listing from map screen.
                            BrowseProvider.pagingController.refresh();
                          } else if (sourceScreenId == listingsScreenId) {
                            ListingsProvider.pagingController.refresh();
                          } else if (sourceScreenId == favoritesScreenId) {
                            ref
                                .watch(favoritesProvider.notifier)
                                .getFavorites();
                          }
                        });
                      }
                    });
                    //endregion
                  },
                  icon: const Icon(
                    Icons.edit,
                    color: AppColors.white,
                  ),
                  label: const Text(
                    "Edit listing",
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                //endregion
              ],
            ),
          ),
        );
      },
    );
  }
}
