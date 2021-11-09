import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/post_listing/models/post_listing_availability_model/post_listing_availability_state.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/details_tab_view/details_tab_view.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/images_tab_view/images_tab_view.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/pricing_tab_view.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/widgets/publish_button.dart';
import 'package:grab_grip/services/network/models/http_request_state/http_request_state.dart';
import 'package:grab_grip/shared/continue_button.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/functions.dart';
import 'package:grab_grip/utils/sized_box.dart';

class PostListingStepFourScreen extends StatelessWidget {
  const PostListingStepFourScreen({Key? key}) : super(key: key);
  static final detailsTabFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      context.read(locationPickerStateProvider.notifier).setPosting();
    });
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          //region Tab bar
          Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(50),
            ),
            height: 30,
            child: TabBar(
              unselectedLabelColor: Colors.black,
              labelColor: AppColors.purple,
              indicator: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              labelStyle: const TextStyle(
                color: Colors.black,
              ),
              labelPadding: EdgeInsets.zero,
              tabs: const [
                Tab(text: "Details"),
                Tab(text: "Images"),
                Tab(text: "Pricing"),
              ],
            ),
          ),
          //endregion
          height24(),
          //region Tab views
          const Expanded(
            flex: 14,
            child: TabBarView(
              children: [
                DetailsTabView(),
                ImagesTabView(),
                PricingTabView(),
              ],
            ),
          ),
          //endregion
          //region Save listing / Publish / UnPublish / ReEnable buttons
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: ProviderListener(
                provider: listingAvailabilityStateProvider,
                onChange:
                    (context, PostListingAvailabilityState availabilityState) {
                  print(
                      "the PostListingAvailabilityState has been changed to $availabilityState");
                  //region snack bars
                  availabilityState.when(
                    published: (successfullyPublished) =>
                        successfullyPublished == true
                            ? showSnackBar(
                                context,
                                "Your listing has been published successfully",
                              )
                            : showSnackBarForError(
                                context,
                                "Unable to publish Your listing",
                              ),
                    unPublished: (successfullyUnPublished) =>
                        successfullyUnPublished == true
                            ? showSnackBar(
                                context,
                                "Your listing has been unpublished successfully",
                              )
                            : showSnackBarForError(
                                context,
                                "Unable to unpublish Your listing",
                              ),
                    reEnabled: (successfullyReEnabled) =>
                        successfullyReEnabled == true
                            ? showSnackBar(
                                context,
                                "Your listing has been re-enabled successfully",
                              )
                            : showSnackBarForError(
                                context,
                                "Unable to re-enable Your listing",
                              ),
                  );
                  //endregion
                },
                child: ProviderListener(
                  provider: httpRequestStateProvider,
                  onChange: (context, HttpRequestState httpRequestState) {
                    httpRequestState.whenOrNull(
                      success: (string) {
                        if (string == saveListingSuccess) {
                          showSnackBar(
                            context,
                            "Your listing has been saved successfully",
                          );
                        }
                      },
                      error: (string) {
                        if (string == saveListingError) {
                          showSnackBarForError(
                            context,
                            "Unable to save Your listing",
                          );
                        }
                      },
                    );
                  },
                  child: Consumer(
                    builder: (context, ref, __) {
                      final listingAvailabilityState =
                          ref(listingAvailabilityStateProvider);
                      return ref(httpRequestStateProvider).maybeWhen(
                        innerLoading: () => Container(
                          constraints:
                              BoxConstraints(minWidth: screenWidth(context)) /
                                  3,
                          child: const Center(
                            child: CircularProgressIndicator(
                              color: AppColors.purple,
                            ),
                          ),
                        ),
                        orElse: () => Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ContinueButton(
                              buttonText: "Save listing",
                              isPurple: false,
                              onClickAction: () {
                                switch (
                                    DefaultTabController.of(context)!.index) {
                                  case 0:
                                    {
                                      if (detailsTabFormKey.currentState!
                                          .validate()) {
                                        ref(postListingProvider.notifier)
                                            .saveListing();
                                      }
                                    }
                                    break;
                                  case 1:
                                  case 2:
                                    {
                                      if (!detailsTabFormKey.currentState!
                                          .validate()) {
                                        showSnackBar(
                                          context,
                                          "Check the information you entered please",
                                          Colors.amber[800],
                                        );
                                      } else {
                                        ref(postListingProvider.notifier)
                                            .saveListing();
                                      }
                                    }
                                    break;
                                }
                              },
                            ),
                            listingAvailabilityState.when(
                              published: (successfullyPublished) =>
                                  successfullyPublished == true
                                      ? PublishButton(
                                          listingAvailabilityState:
                                              listingAvailabilityState,
                                          onClickAction: () {
                                              ref(postListingProvider.notifier)
                                                  .changeListingAvailability(
                                                isUnPublish: true,
                                              );
                                          },
                                        )
                                      : PublishButton(
                                          listingAvailabilityState:
                                              listingAvailabilityState,
                                          onClickAction: () {
                                              ref(postListingProvider.notifier)
                                                  .changeListingAvailability(
                                                isPublish: true,
                                              );
                                          },
                                        ),
                              unPublished: (successfullyUnPublished) =>
                                  successfullyUnPublished == true
                                      ? PublishButton(
                                          listingAvailabilityState:
                                              listingAvailabilityState,
                                          onClickAction: () {
                                              ref(postListingProvider.notifier)
                                                  .changeListingAvailability(
                                                isReEnable: true,
                                              );
                                          },
                                        )
                                      : PublishButton(
                                          listingAvailabilityState:
                                              listingAvailabilityState,
                                          onClickAction: () {
                                              ref(postListingProvider.notifier)
                                                  .changeListingAvailability(
                                                isUnPublish: true,
                                              );
                                          },
                                        ),
                              reEnabled: (successfullyReEnabled) =>
                                  successfullyReEnabled == true
                                      ? PublishButton(
                                          listingAvailabilityState:
                                              listingAvailabilityState,
                                          onClickAction: () {
                                              ref(postListingProvider.notifier)
                                                  .changeListingAvailability(
                                                isUnPublish: true,
                                              );
                                          },
                                        )
                                      : PublishButton(
                                          listingAvailabilityState:
                                              listingAvailabilityState,
                                          onClickAction: () {
                                              ref(postListingProvider.notifier)
                                                  .changeListingAvailability(
                                                isReEnable: true,
                                              );
                                          },
                                        ),
                            ),
                          ],
                        ),
                      );
                    },
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
