import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/style/box_decorations.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text.dart';
import 'package:grab_grip/utils/sized_box.dart';

class QuantityWidget extends ConsumerWidget {
  const QuantityWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quantityInStock = ref
        .watch(listingDetailsProvider.select((state) => state.stockQuantity));
    if (quantityInStock != null) {
      if (quantityInStock >= 1) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: listingDetailsBoxDecoration,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //region Quantity label
                const Text(
                  "Quantity",
                  style: AppTextStyles.listingDetailsTitleStyle,
                ),
                //endregion
                height18(),
                //region Quantity values (DropDown list)
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
                          return DropdownButton<int>(
                            isExpanded: true,
                            style: const TextStyle(
                              color: AppColors.purple,
                            ),
                            elevation: 16,
                            value: ref.watch(
                              listingDetailsProvider.select(
                                (state) => state.selectedQuantity,
                              ),
                            ),
                            onChanged: (int? selectedValue) {
                              ref
                                  .watch(listingDetailsProvider.notifier)
                                  .setQuantity(selectedValue ?? 1);
                            },
                            items: [
                              // generate numbers from 1 to stock value
                              for (var i = 1; i <= quantityInStock; i++) i
                            ]
                                .map<DropdownMenuItem<int>>(
                                  (int quantityValue) => DropdownMenuItem<int>(
                                    value: quantityValue,
                                    child: Text(quantityValue.toString()),
                                  ),
                                )
                                .toList(),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                //endregion
                height8(),
              ],
            ),
          ),
        );
      } else {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 12),
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            color: Colors.red[400],
            borderRadius: BorderRadius.circular(8),
          ),
          alignment: Alignment.center,
          child: const Text(
            "Out of stock",
            style: TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      }
    } else {
      // if quantityInStock is not available yet (the http request is in progress) then return an empty container
      return Container();
    }
  }
}
