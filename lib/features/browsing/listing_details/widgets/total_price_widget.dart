import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/browsing/listing_details/models/listing_details_state/listing_details_state.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/functions.dart';

class TotalPriceWidget extends StatelessWidget {
  const TotalPriceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
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
              final listingOwnerFetched =
                  ref(listingDetailsProvider).listingOwner != null;
              return AnimatedOpacity(
                opacity: listingOwnerFetched &&
                        ref(listingDetailsProvider.notifier)
                            .userOwnsThisListing()
                    ? 0.0
                    : 1.0,
                duration: duration300Milli,
                child: SizedBox(
                  width: screenWidth(context) / 2,
                  height: screenWidth(context) / 7,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 4,
                      primary: AppColors.white,
                    ),
                    child: Text(
                      ref(listingDetailsProvider.notifier).getButtonLabel(),
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
                child: ProviderListener(
                  provider: listingDetailsProvider,
                  onChange: (_, ListingDetailsState state) {
                    if (state.widget?.error is String) {
                      // when an error happens, error's value is the error message string
                      // otherwise, it's the boolean value false
                      if (state.widget?.startDate == null ||
                          state.widget?.endDate == null) {
                        // when user first opens up listing details screen for a listing of type rent, the error message "These dates cannot be booked" shows up
                        // to avoid showing the snack bar, the above if statement has been added (to check start and end date)
                        return;
                      }
                      showSnackBarForError(
                        context,
                        state.widget?.error as String,
                      );
                    }
                  },
                  child: Consumer(
                    builder: (_, ref, __) {
                      return AnimatedOpacity(
                        opacity: ref(httpRequestStateProvider).maybeWhen(
                          loading: () => 0.0,
                          orElse: () => 1.0,
                        ),
                        duration: duration300Milli,
                        child: SizedBox(
                          width: screenWidth(context) / 4,
                          child: Text(
                            "SAR ${ref(listingDetailsProvider).widget?.total}",
                            style: const TextStyle(
                              color: AppColors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      );
                    },
                  ),
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
