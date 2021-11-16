import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/browsing/browse/providers/browse_provider.dart';
import 'package:grab_grip/features/browsing/filter/models/drop_down_type/drop_down_type.dart';
import 'package:grab_grip/features/browsing/filter/providers/filter_sort_provider.dart';
import 'package:grab_grip/features/browsing/filter/widgets/categories/categories_widget.dart';
import 'package:grab_grip/features/browsing/filter/widgets/drop_down_list/drop_down_list.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/sized_box.dart';

class FilterDialog extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final distanceOptions = FilterSortProvider.getDistanceOptions(context);
    final listingTypeOptions =
        FilterSortProvider.getListingTypeOptions(context);
    final minPriceTextController = TextEditingController(
      text: watch(filterAndSortProvider.notifier).minPrice,
    );
    final maxPriceTextController = TextEditingController(
      text: watch(filterAndSortProvider.notifier).maxPrice,
    );
    return SingleChildScrollView(
      child: AlertDialog(
        backgroundColor: AppColors.white,
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //region Reset button
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red[600],
              ),
              onPressed: () {
                watch(filterAndSortProvider.notifier).reset();
                minPriceTextController.text = "";
                maxPriceTextController.text = "";
                watch(filterAndSortProvider.notifier).resetPlace();
                BrowseProvider.pagingController.refresh();
                Navigator.pop(context);
              },
              child: Text(
                AppLocalizations.of(context)!.reset,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //endregion
            lightPurpleDividerThickness0_5,
            height8(),
            //region Distance dropdown list
            Text(
              AppLocalizations.of(context)!.distance,
            ),
            DropDownList(
              data: distanceOptions,
              dataType: const DropDownType.distanceOptions(),
            ),
            //endregion
            height12(),
            //region Categories widget
            Text(
              AppLocalizations.of(context)!.categories,
            ),
            height8(),
            const CategoriesWidget(),
            //endregion
            height12(),
            lightPurpleDividerThickness0_5,
            height12(),
            //region Price fields
            Text(
              AppLocalizations.of(context)!.price,
            ),
            height12(),
            SizedBox(
              height: 36,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 4,
                    child: TextField(
                      onChanged: (minPrice) {
                        watch(filterAndSortProvider.notifier).minPrice =
                            minPrice;
                      },
                      controller: minPriceTextController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.lightPurple,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.purple,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      AppLocalizations.of(context)!.to,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: TextField(
                      onChanged: (maxPrice) {
                        watch(filterAndSortProvider.notifier).maxPrice =
                            maxPrice;
                      },
                      controller: maxPriceTextController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.lightPurple,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.purple,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //endregion
            height12(),
            lightPurpleDividerThickness0_5,
            height8(),
            //region Listing type dropdown list
            Text(
              AppLocalizations.of(context)!.listing_type,
            ),
            DropDownList(
              data: listingTypeOptions,
              dataType: const DropDownType.listingTypeOptions(),
            ),
            //endregion
          ],
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: <Widget>[
          //region Cancel button
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              AppLocalizations.of(context)!.cancel,
              style: const TextStyle(
                color: AppColors.purple,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          //endregion
          //region Apply button
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: AppColors.purple,
            ),
            onPressed: () {
              Navigator.pop(context);
              BrowseProvider.pagingController.refresh();
            },
            child: Text(
              AppLocalizations.of(context)!.apply,
              style: const TextStyle(
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          //endregion
        ],
      ),
    );
  }
}
