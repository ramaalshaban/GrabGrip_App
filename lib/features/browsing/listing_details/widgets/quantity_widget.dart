import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/style/box_decorations.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text.dart';
import 'package:grab_grip/utils/sized_box.dart';

class QuantityWidget extends StatelessWidget {
  const QuantityWidget({
    Key? key,
    required this.stock,
  }) : super(key: key);

  final int stock;

  @override
  Widget build(BuildContext context) {
    if (stock > 1) {
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
                          value: ref(listingDetailsProvider).selectedQuantity,
                          onChanged: (int? selectedValue) {
                            ref(listingDetailsProvider.notifier)
                                .selectedQuantity = selectedValue ?? 1;
                          },
                          items: [
                            // generate numbers from 1 to stock value
                            for (var i = 1; i <= stock; i++) i
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
    } else if (stock == 1) {
      // if quantity in stock is 1 then no need to show quantity dropdown list
      return Container();
    } else {
      // stock < 1
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        padding: const EdgeInsets.symmetric(vertical: 8),
        alignment: Alignment.center,
        color: Colors.red[400],
        child: const Text(
          "Out of stock",
          style: TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    }
  }
}
