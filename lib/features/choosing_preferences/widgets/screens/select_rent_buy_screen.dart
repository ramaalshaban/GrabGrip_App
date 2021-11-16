import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/features/browsing/filter/providers/filter_sort_provider.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/sized_box.dart';

class SelectRentBuyScreen extends StatelessWidget {
  const SelectRentBuyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listingTypeOptions =
        FilterSortProvider.getListingTypeOptions(context);
    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "I want to",
              style: TextStyle(
                fontSize: 18,
                color: AppColors.gray,
              ),
            ),
            height36(),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //region rent inkwell
                Expanded(
                  child: Consumer(
                    builder: (_, ref, __) {
                      final selectedListingType =
                          ref(filterAndSortProvider).listingType;
                      return InkWell(
                        onTap: () {
                          ref(filterAndSortProvider.notifier).listingType =
                              listingTypeOptions[2];
                          context.router.push(
                            SetLocationScreenRoute(),
                          );
                        },
                        child: Container(
                          height: screenHeightWithoutExtras(context) / 10,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: selectedListingType == listingTypeOptions[2]
                                ? AppColors.veryLightPurple
                                : null,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              width: 1.5,
                              color: AppColors.purple,
                            ),
                          ),
                          child: const Text(
                            "Rent",
                            style: TextStyle(
                              color: AppColors.purple,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                //endregion
                width24(),
                //region buy inkwell
                Expanded(
                  child: Consumer(
                    builder: (_, ref, __) {
                      final selectedListingType =
                          ref(filterAndSortProvider).listingType;
                      return InkWell(
                        onTap: () {
                          ref(filterAndSortProvider.notifier).listingType =
                              listingTypeOptions[1];
                          context.router.push(
                            SetLocationScreenRoute(),
                          );
                        },
                        child: Container(
                          height: screenHeightWithoutExtras(context) / 10,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: selectedListingType == listingTypeOptions[1]
                                ? AppColors.veryLightPurple
                                : null,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              width: 1.5,
                              color: AppColors.purple,
                            ),
                          ),
                          child: const Text(
                            "Buy",
                            style: TextStyle(
                              fontSize: 18,
                              color: AppColors.purple,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                //endregion
              ],
            )
          ],
        ),
      ),
    );
  }
}
