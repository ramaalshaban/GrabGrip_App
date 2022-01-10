import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/device.dart';

class TotalPriceWidget extends StatelessWidget {
  const TotalPriceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              return AnimatedOpacity(
                opacity: listingOwnerFetched &&
                        ref
                            .watch(listingDetailsProvider.notifier)
                            .userOwnsThisListing()
                    ? 0.0
                    : 1.0,
                duration: duration300Milli,
                child: Container(
                  constraints: BoxConstraints(minWidth: screenWidth() / 2.7),
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      context.router.push(const PlaceOrderScreenRoute());
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
              //region Price
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
                        "SAR ${ref.watch(listingDetailsProvider).widget?.total}",
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

/// The following widgets can be used later to customize the listings that are for rent:
/// Column(
///                     children: [
///                     Text(
///                     isThisListingForRent ? " per day" : "",
///                       style: const TextStyle(
///                         color: AppColors.green,
///                       ),
///                       textAlign: TextAlign.center,
///                     ),
///                     Text(
///                     isThisListingForRent ? " VAT included" : "",
///                     style: const TextStyle(
///                     color: AppColors.green,
///                     ),
///                     textAlign: TextAlign.center,
///                     )
///                     ]
///                     ,
///                     )
