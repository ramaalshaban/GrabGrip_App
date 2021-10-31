import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/details_tab_view/details_tab_view.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/images_tab_view.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view.dart';
import 'package:grab_grip/shared/continue_button.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/sized_box.dart';

class PostListingStepFourScreen extends StatelessWidget {
  const PostListingStepFourScreen({Key? key}) : super(key: key);

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
                    builder: (_, ref, __) => ContinueButton(
                      formKey: null,
                      buttonText: "Save listing",
                      isPurple: false,
                      onClickAction: () {
                        if (DetailsTabView.formKey.currentState!.validate()) {
                          // reset the state of the previous user actions the might be saved in the providers
                          //   ref(postListingStepProvider.notifier).setStep1();
                          //   ref(postListingProvider.notifier).reset();
                          //    Navigator.pop(context);
                        }

                        print(
                            "-----------------listing saving button clicked-----------------------");
                        print(
                            "category id ${ref(postListingProvider.notifier).category!.id}");
                        print(
                            "pricing model id ${ref(postListingProvider.notifier).listingTypeId}");
                        print(
                            "title ${ref(postListingProvider.notifier).title}");
                        print(
                            "description ${ref(postListingProvider.notifier).description}");
                        print(
                            "tags ${ref(postListingProvider.notifier).tags.toString()}");
                        print(
                            "listing end date ${ref(postListingProvider.notifier).listingEndDate.toString()}");
                        print(
                            "lat ${ref(postListingProvider.notifier).postedListing!.lat.toString()}");
                        print(
                            "lng ${ref(postListingProvider.notifier).postedListing!.lng.toString()}");
                        print(
                            "country code ${ref(postListingProvider.notifier).country?.code}");
                        print("city ${ref(postListingProvider.notifier).city}");
                        print(
                            "region ${ref(postListingProvider.notifier).region}");
                        print(
                            "---------------------------------------------------------------------");
                      },
                    ),
                  ),
                  Consumer(
                    builder: (_, ref, __) => ContinueButton(
                      formKey: null,
                      buttonText: "Publish",
                      onClickAction: () {
                        if (DetailsTabView.formKey.currentState!.validate()) {
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
