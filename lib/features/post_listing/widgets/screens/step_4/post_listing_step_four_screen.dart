import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/details_tab_view/details_tab_view.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/images_tab_view/images_tab_view.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/pricing_tab_view.dart';
import 'package:grab_grip/shared/continue_button.dart';
import 'package:grab_grip/style/colors.dart';
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
          height24(),
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
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Consumer(
                    builder: (context, ref, __) => ContinueButton(
                      formKey: null,
                      buttonText: "Save listing",
                      isPurple: false,
                      onClickAction: () {
                        switch (DefaultTabController.of(context)!.index) {
                          case 0:
                            {
                              if (detailsTabFormKey.currentState!.validate()) {
                                // reset the state of the previous user actions the might be saved in the providers
                                //   ref(postListingStepProvider.notifier).setStep1();
                                //   ref(postListingProvider.notifier).reset();
                                //    Navigator.pop(context);
                              }
                            }
                            break;
                          case 1:
                            {
                              if (!detailsTabFormKey.currentState!.validate()) {
                                showSnackBar(
                                  context,
                                  "Check the information you entered please",
                                  Colors.amber[800],
                                );
                              }
                            }
                            break;
                          case 2:
                            {}
                            break;
                        }
                        //region debugging print statements
                        debugPrint(
                          "-----------------listing saving button clicked-----------------------",
                        );
                        debugPrint(
                          "category id ${ref(postListingProvider.notifier).category!.id}",
                        );
                        debugPrint(
                          "pricing model id ${ref(postListingProvider.notifier).listingTypeId}",
                        );
                        debugPrint(
                          "title ${ref(postListingProvider.notifier).title}",
                        );
                        debugPrint(
                          "description ${ref(postListingProvider.notifier).description}",
                        );
                        debugPrint(
                          "tags ${ref(postListingProvider.notifier).tags.toString()}",
                        );
                        debugPrint(
                          "listing end date ${ref(postListingProvider.notifier).listingEndDate.toString()}",
                        );
                        debugPrint(
                          "lat ${ref(postListingProvider.notifier).postedListing!.lat.toString()}",
                        );
                        debugPrint(
                          "lng ${ref(postListingProvider.notifier).postedListing!.lng.toString()}",
                        );
                        debugPrint(
                          "country code ${ref(postListingProvider.notifier).country?.code}",
                        );
                        debugPrint(
                          "city ${ref(postListingProvider.notifier).city}",
                        );
                        debugPrint(
                          "region ${ref(postListingProvider.notifier).region}",
                        );
                        debugPrint(
                          "photos : ",
                        );
                        for (int i = 0;
                            i <
                                ref(postListingProvider.notifier)
                                    .photosAsJson
                                    .length;
                            i++) {
                          debugPrint(
                            "       type: ${ref(postListingProvider.notifier).photosAsJson[i].type}",
                          );
                          debugPrint(
                            "       path: ${ref(postListingProvider.notifier).photosAsJson[i].path}",
                          );
                          debugPrint(
                            "       uploaded: ${ref(postListingProvider.notifier).photosAsJson[i].succeeded}",
                          );
                          debugPrint("-------------");
                        }
                        debugPrint(
                          "price in sar ${ref(postListingProvider.notifier).price}",
                        );
                        debugPrint(
                          "stock ${ref(postListingProvider.notifier).stock}",
                        );
                        for (int i = 0;
                        i <
                            ref(postListingProvider.notifier)
                                .additionalOptions
                                .length;
                        i++) {
                          debugPrint(
                            "       name: ${ref(postListingProvider.notifier).additionalOptions[i].name}",
                          );
                          debugPrint(
                            "       price: ${ref(postListingProvider.notifier).additionalOptions[i].price}",
                          );
                          debugPrint(
                            "       Max Qty: ${ref(postListingProvider.notifier).additionalOptions[i].maxQuantity}",
                          );
                          debugPrint("-------------");
                        }
                        for (int i = 0;
                        i <
                            ref(postListingProvider.notifier)
                                .shippingFees
                                .length;
                        i++) {
                          debugPrint(
                            "       name: ${ref(postListingProvider.notifier).shippingFees[i].name}",
                          );
                          debugPrint(
                            "       price: ${ref(postListingProvider.notifier).shippingFees[i].price}",
                          );

                          debugPrint("-------------");
                        }
                        for (int i = 0;
                        i <
                            ref(postListingProvider.notifier)
                                .variations
                                .length;
                        i++) {
                          debugPrint(
                            "       name: ${ref(postListingProvider.notifier).variations[i].attribute}",
                          );
                          debugPrint(
                            "       values: ${ref(postListingProvider.notifier).variations[i].values.toString()}",
                          );

                          debugPrint("-------------");
                        }
                        debugPrint(
                          "---------------------------------------------------------------------",
                        );
                        //endregion
                      },
                    ),
                  ),
                  Consumer(
                    builder: (_, ref, __) => ContinueButton(
                      formKey: null,
                      buttonText: "Publish",
                      onClickAction: () {
                        if (detailsTabFormKey.currentState!.validate()) {
                          context.router.replace(const HomeScreenRoute());
                          ref(postListingProvider.notifier).publishListing();
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
