import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/browsing/browse/widgets/screens/browse_screen/body/browse_screen_body.dart';
import 'package:grab_grip/features/browsing/filter/filter_dialog.dart';
import 'package:grab_grip/features/browsing/filter/models/drop_down_type/drop_down_type.dart';
import 'package:grab_grip/features/browsing/filter/providers/filter_sort_provider.dart';
import 'package:grab_grip/features/browsing/filter/widgets/drop_down_list/drop_down_list.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/functions.dart';
import 'package:grab_grip/utils/sized_box.dart';

class BrowseScreen extends ConsumerWidget {
  const BrowseScreen();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final sortOptions = FilterSortProvider.getSortOptions(context);
    return Material(
      child: ProviderListener(
        provider: httpRequestStateProvider,
        onChange: (BuildContext context, value) {
          watch(httpRequestStateProvider).whenOrNull(
            error: (errorMessage) =>
                showSnackBarForError(context, errorMessage),
          );
        },
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            color: AppColors.purple,
                          ),
                          hintText: AppLocalizations.of(context)!.search,
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 2,
                              color: AppColors.purple,
                            ),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.purple,
                            ),
                          ),
                        ),
                      ),
                    ),
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
                  ],
                ),
                height12(),
                SizedBox(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Consumer(
                          builder: (_, watch, __) {
                            final viewModeSelections = watch(gearsViewMode);
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
                                watch(gearsViewMode.notifier)
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
                      Expanded(
                        flex: 2,
                        child: DropDownList(
                          data: sortOptions,
                          dataType: const DropDownType.sortOptions(),
                        ),
                      ),
                      //  const SortingDropDownList(),
                    ],
                  ),
                ),
                height8(),
                Expanded(
                  child: BrowseScreenBody(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
