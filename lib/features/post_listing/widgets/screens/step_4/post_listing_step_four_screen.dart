import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/post_listing/models/post_listing_availability_model/post_listing_availability_state.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/details_tab_view/details_tab_view.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/images_tab_view/images_tab_view.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/pricing_tab_view.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/widgets/change_listing_availability_button.dart';
import 'package:grab_grip/services/network/models/http_request_state/http_request_state.dart';
import 'package:grab_grip/shared/widgets/continue_button.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/functions.dart';
import 'package:grab_grip/utils/sized_box.dart';

class PostListingStepFourScreen extends ConsumerWidget {
  const PostListingStepFourScreen({Key? key}) : super(key: key);
  static final detailsTabFormKey = GlobalKey<FormState>();
  static final pricingTabFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      ref.watch(locationPickerStateProvider.notifier).setPosting();
    });
    //region Listeners
    ref.listen<HttpRequestState>(httpRequestStateProvider,
        (_, httpRequestState) {
      httpRequestState.whenOrNull(
        success: (_, succeededAction) {
          if (succeededAction == saveListingSuccessAction) {
            showSnackBar(
              context,
              "Your listing has been saved successfully",
            );
          }
        },
        error: (key) {
          if (key == saveListingError) {
            showSnackBarForError(
              context,
              "Unable to save Your listing",
            );
          }
        },
      );
    });
    ref.listen<PostListingAvailabilityState>(listingAvailabilityStateProvider,
        (_, availabilityState) {
      availabilityState.when(
        published: (successfullyPublished) => successfullyPublished == true
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
        reEnabled: (successfullyReEnabled) => successfullyReEnabled == true
            ? showSnackBar(
                context,
                "Your listing has been re-enabled successfully",
              )
            : showSnackBarForError(
                context,
                "Unable to re-enable Your listing",
              ),
      );
    });
    //endregion
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
          //region Save listing / Publish / Pending Verification / UnPublish / ReEnable buttons
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Consumer(
                builder: (context, ref, __) {
                  return ref.watch(httpRequestStateProvider).maybeWhen(
                        innerLoading: (_) => Container(
                          constraints:
                              BoxConstraints(minWidth: screenWidth()) / 3,
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
                            //region Save listing button
                            ContinueButton(
                              buttonText: "Save listing",
                              isPurple: false,
                              onClickAction: () {
                                if (listingReadyForSavingOrPublishing(
                                  context,
                                  ref,
                                )) {
                                  ref
                                      .watch(postListingProvider.notifier)
                                      .saveListing();
                                }
                              },
                            ),
                            //endregion
                            //region Listing availability button
                            const ChangeListingAvailabilityButton(),
                            //endregion
                          ],
                        ),
                      );
                },
              ),
            ),
          ),
          //endregion
        ],
      ),
    );
  }

  static bool listingReadyForSavingOrPublishing(
    BuildContext context,
    WidgetRef ref,
  ) {
    final descriptionLength =
        ref.watch(postListingProvider.notifier).description?.length ?? 0;
    if (!detailsTabFormKey.currentState!.validate()) {
      showWarningSnackBar(
        context,
        "Check the information you entered in the details tab please",
      );
      return false;
    } else if (descriptionLength < 5) {
      // since the package that we are using for the html editor doesn't take a validator, we check the length of the description by checking postListingProvider
      showWarningSnackBar(
        context,
        "The description must be at least 5 characters",
      );
      return false;
    } else if (!(pricingTabFormKey.currentState?.validate() ?? false)) {
      // pricingTabFormKey.currentState is null when the post_listing_step_four_screen first gets built and the user has never opened pricing tab view yet
      // so if it's null return false so the user see the below snack bar
      showWarningSnackBar(
        context,
        "Check the information you entered in the pricing tab please",
      );
      return false;
    } else {
      return true;
    }
  }
}
