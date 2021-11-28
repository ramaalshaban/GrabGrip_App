import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/style/box_decorations.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/sized_box.dart';

class VariantOptionsWidget extends ConsumerWidget {
  const VariantOptionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context , ScopedReader ref) {
    final variantOptions = ref(listingDetailsProvider).variantOptions;
    return ref(httpRequestStateProvider).maybeWhen(
          loading: () => const Center(
            child: SizedBox(
              height: 14,
              width: 14,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: AppColors.purple,
              ),
            ),
          ),
          error: (_) => Container(),
          orElse: () => Visibility(
            visible: variantOptions.isNotEmpty,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: listingDetailsBoxDecoration,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...List.generate(
                      variantOptions.length,
                      (index) {
                        final variantOption =
                            variantOptions.entries.elementAt(index);
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //region Variant attribute
                            Text(
                              variantOption.key,
                              style: AppTextStyles.listingDetailsTitleStyle,
                            ),
                            //endregion
                            height8(),
                            //region Variant values (DropDown list)
                            Column(
                              children: [
                                height8(),
                                Container(
                                  height: 40,
                                  margin: const EdgeInsets.only(left: 38),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(
                                      color: AppColors.purple,
                                    ),
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child: ButtonTheme(
                                      // align the dropdown (the popup that will show up) to the width of the dropdown button
                                      alignedDropdown: true,
                                      child: Consumer(
                                        builder: (_, ref, __) {
                                          return DropdownButton<String>(
                                            isExpanded: true,
                                            style: const TextStyle(
                                              color: AppColors.purple,
                                            ),
                                            elevation: 16,
                                            value: ref(listingDetailsProvider)
                                                    .selectedVariantOptions[
                                                variantOption.key],
                                            onChanged: (String? selectedValue) {
                                              ref(listingDetailsProvider
                                                      .notifier)
                                                  .setVariantOptionValue(
                                                variantOption.key,
                                                selectedValue ?? "",
                                              );
                                            },
                                            items: variantOption.value
                                                .map<DropdownMenuItem<String>>(
                                                  (String variantValue) =>
                                                      DropdownMenuItem<String>(
                                                    value: variantValue,
                                                    child: Text(variantValue),
                                                  ),
                                                )
                                                .toList(),
                                            hint: Text(
                                              "Select ${variantOption.key}",
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                height8(),
                                veryLightPurpleDividerThickness0_5
                              ],
                            ),
                            //endregion
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
  }
}
