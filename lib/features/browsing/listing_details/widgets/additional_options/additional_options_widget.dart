import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/browsing/listing_details/widgets/additional_options/additional_option_checkbox.dart';
import 'package:grab_grip/style/box_decorations.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/sized_box.dart';

class AdditionalOptionsWidget extends ConsumerWidget {
  const AdditionalOptionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final additionalOptions = ref.watch(
      listingDetailsProvider.select((state) => state.additionalOptions),
    );
    return Visibility(
      visible: additionalOptions.isNotEmpty,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: listingDetailsBoxDecoration,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //region Additional options label
              const Text(
                "Additional options",
                style: AppTextStyles.listingDetailsTitleStyle,
              ),
              //endregion
              height24(),
              ...List.generate(
                additionalOptions.length,
                (index) => Column(
                  children: [
                    //region Checkbox
                    AdditionalOptionCheckbox(
                      additionalOption: additionalOptions[index],
                    ),
                    //endregion
                    //region DropDown list
                    Consumer(
                      builder: (_, ref, __) {
                        final additionalOption = additionalOptions[index];
                        final isOptionSelected = ref.watch(
                            listingDetailsProvider.select((state) => state
                                .selectedAdditionalOptions
                                .containsKey(additionalOption.id.toString())));
                        return Visibility(
                          visible: isOptionSelected &&
                              additionalOption.maxQuantity != null &&
                              (additionalOption.maxQuantity ?? -1) > 0,
                          child: Column(
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
                                    child: DropdownButton<int>(
                                      isExpanded: true,
                                      style: const TextStyle(
                                        color: AppColors.purple,
                                      ),
                                      elevation: 16,
                                      value: ref
                                                  .watch(listingDetailsProvider)
                                                  .selectedAdditionalOptionsMeta[
                                              additionalOption.id
                                                  .toString()]?["quantity"] ??
                                          1,
                                      onChanged: (int? selectedValue) {
                                        ref
                                            .watch(
                                              listingDetailsProvider.notifier,
                                            )
                                            .changeAdditionalOptionValue(
                                              additionalOption.id.toString(),
                                              selectedValue ?? 0,
                                            );
                                      },
                                      items: [
                                        // generate numbers from 1 to max quantity
                                        for (var i = 1;
                                            i <=
                                                (additionalOption.maxQuantity ??
                                                    0);
                                            i++)
                                          i
                                      ]
                                          .map<DropdownMenuItem<int>>(
                                            (int quantityValue) =>
                                                DropdownMenuItem<int>(
                                              value: quantityValue,
                                              child: Text(
                                                quantityValue.toString(),
                                              ),
                                            ),
                                          )
                                          .toList(),
                                    ),
                                  ),
                                ),
                              ),
                              height8(),
                              veryLightPurpleDividerThickness0_5
                            ],
                          ),
                        );
                      },
                    ),
                    //endregion
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
