import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/functions.dart';

class TotalPriceWidget extends StatelessWidget {
  const TotalPriceWidget({Key? key, required this.listing}) : super(key: key);
  final Gear listing;

  @override
  Widget build(BuildContext context) {
    final isListingForRent = listing.pricingModel?.widget == bookDate;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: const BoxDecoration(
        color: AppColors.purple,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //region Book/Buy/Ask for availability button
          Consumer(
            builder: (_, ref, __) {
              final listingOwnerFetched = ref.watch(
                    listingDetailsProvider
                        .select((state) => state.listingOwner),
                  ) !=
                  null;
              return Visibility(
                visible: listingOwnerFetched &&
                    !ref
                        .watch(listingDetailsProvider.notifier)
                        .userOwnsThisListing(),
                child: Container(
                  constraints: BoxConstraints(minWidth: screenWidth() / 2.7),
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      final userIssuesForPlacingAnOrder = ref
                          .watch(listingDetailsProvider.notifier)
                          .userIssuesPlacingAnOrder();
                      if (userIssuesForPlacingAnOrder == null) {
                        context.router.push(const PlaceOrderScreenRoute());
                      } else {
                        showWarningSnackBar(
                          context,
                          userIssuesForPlacingAnOrder,
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 4,
                      primary: AppColors.white,
                    ),
                    child: Text(
                      ref
                          .watch(listingDetailsProvider.notifier)
                          .getButtonLabel(),
                      style: const TextStyle(
                        color: AppColors.purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          //endregion
          //region Total & Price
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //region Per day price & Vat included label
              Visibility(
                visible: isListingForRent,
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        // some dummy and old listings data has no formatted price so I put here this (?? "") to avoid the exception
                        listing.formattedPrice ?? "",
                        style: const TextStyle(
                          color: AppColors.white,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const Text(
                        "VAT included",
                        style: TextStyle(
                          color: AppColors.green,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
              //endregion
              //region Total label
              const Expanded(
                child: Center(
                  child: Text(
                    "Total",
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              //endregion
              //region Total Price
              Expanded(
                child: Consumer(
                  builder: (_, ref, __) {
                    return AnimatedOpacity(
                      opacity: ref.watch(httpRequestStateProvider).maybeWhen(
                            loading: () => 0.0,
                            orElse: () => 1.0,
                          ),
                      duration: duration300Milli,
                      child: Text(
                        "${listing.currency} ${ref.watch(listingDetailsProvider.select((value) => value.widget?.total ?? ""))}",
                        style: const TextStyle(
                          color: AppColors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    );
                  },
                ),
              ),
              //endregion
            ],
          ),
          //endregion
        ],
      ),
    );
  }
}
