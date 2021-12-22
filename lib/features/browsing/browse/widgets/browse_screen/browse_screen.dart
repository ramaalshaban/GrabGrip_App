import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/browsing/browse/providers/browse_provider.dart';
import 'package:grab_grip/features/browsing/browse/widgets/browse_screen/body/browse_screen_body.dart';
import 'package:grab_grip/features/browsing/browse/widgets/browse_screen/floating_places_search_bar.dart';
import 'package:grab_grip/features/browsing/filter/filter_dialog.dart';
import 'package:grab_grip/features/browsing/filter/models/drop_down_type/drop_down_type.dart';
import 'package:grab_grip/features/browsing/filter/providers/filter_sort_provider.dart';
import 'package:grab_grip/features/browsing/filter/widgets/drop_down_list/drop_down_list.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/sized_box.dart';

class BrowseScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      ref.watch(locationPickerStateProvider.notifier).setBrowsing();
      // refresh the list so when user changes his preferences and opens up this screen it gets refreshed with respect to the chosen preferences
      BrowseProvider.pagingController.refresh();
    });
    final itemsSearchBoxController = TextEditingController(
      text: ref.watch(filterAndSortProvider.notifier).searchText,
    );
    final sortOptions = FilterSortProvider.getSortOptions(context);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 60, 8, 8),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                    child: Row(
                      children: [
                        //region Search by gear name field
                        Expanded(
                          flex: 6,
                          child: TextField(
                            controller: itemsSearchBoxController,
                            onSubmitted: (enteredText) {
                              ref.watch(filterAndSortProvider.notifier).searchText =
                                  enteredText;
                              BrowseProvider.pagingController.refresh();
                            },
                            textInputAction: TextInputAction.search,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.zero,
                              prefixIcon: const Icon(
                                Icons.search,
                                color: AppColors.purple,
                              ),
                              hintStyle: const TextStyle(
                                fontSize: 14,
                                color: AppColors.lightPurple,
                              ),
                              hintText: AppLocalizations.of(context)!
                                  .search_by_gear_name_placeholder,
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1.5,
                                  color: AppColors.purple,
                                ),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 0.5,
                                  color: AppColors.lightPurple,
                                ),
                              ),
                            ),
                          ),
                        ),
                        //endregion
                        //region Filter button
                        Expanded(
                          child: IconButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => FilterDialog(),
                              );
                            },
                            icon: const Icon(
                              Icons.tune,
                              color: AppColors.purple,
                              size: 18,
                            ),
                          ),
                        ),
                        //endregion
                      ],
                    ),
                  ),
                  height12(),
                  SizedBox(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //region View mode buttons
                        Expanded(
                          flex: 3,
                          child: Consumer(
                            builder: (_, ref, __) {
                              final viewModeSelections = ref.watch(gearsViewMode);
                              return ToggleButtons(
                                selectedColor: AppColors.purple,
                                selectedBorderColor: AppColors.purple,
                                borderWidth: 0,
                                isSelected: viewModeSelections.when(
                                  grid: () => [true, false, false],
                                  list: () => [false, true, false],
                                  map: () => [false, false, true],
                                ),
                                onPressed: (int index) {
                                  ref.watch(gearsViewMode.notifier)
                                      .setViewModeByIndex(index);
                                },
                                children: const [
                                  Icon(
                                    Icons.apps,
                                    color: AppColors.purple,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.list,
                                    color: AppColors.purple,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.map,
                                    color: AppColors.purple,
                                    size: 18,
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                        //endregion
                        //region Sort dropdown list
                        Expanded(
                          flex: 2,
                          child: DropDownList(
                            data: sortOptions,
                            dataType: const DropDownType.sortOptions(),
                          ),
                        ),
                        //endregion
                      ],
                    ),
                  ),
                  height8(),
                  //region BrowseScreen body
                  Expanded(
                    child: BrowseScreenBody(),
                  ),
                  //endregion
                ],
              ),
            ),
            //region Search by location field
            const FloatingPlacesSearchBar(),
            //endregion
          ],
        ),
      ),
    );
  }
}
