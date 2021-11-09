import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/additional_options/models/additional_option/additional_option.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text_fields.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/sized_box.dart';

class AdditionalOptionItem extends StatelessWidget {
  AdditionalOptionItem({
    Key? key,
    required this.index,
    required this.additionalOption,
  }) : super(key: key);

  final int index;
  final AdditionalOption additionalOption;

  final nameTextController = TextEditingController();

  final priceTextController = TextEditingController();

  final maxQuantityTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var option = AdditionalOption(
      name: additionalOption.name,
      price: additionalOption.price,
      maxQuantity: additionalOption.maxQuantity,
    );
    nameTextController.text = option.name ?? "";
    priceTextController.text =
        option.price == null ? "" : option.price.toString();
    maxQuantityTextController.text =
        option.maxQuantity == null ? "" : option.maxQuantity.toString();
    return Consumer(
      builder: (_, ref, __) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              //region Name
              Expanded(
                flex: 3,
                child: TextField(
                  controller: nameTextController,
                  onChanged: (text) {
                    option = option.copyWith(name: text);
                    ref(postListingProvider.notifier)
                        .editAdditionalOption(index, option);
                  },
                  keyboardType: TextInputType.text,
                  decoration: standardInputDecoration.copyWith(
                    labelText: "Name",
                    contentPadding: const EdgeInsets.fromLTRB(8, 14, 8, 8),
                    hintText: "e.g. Gift wrap",
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      color: AppColors.lightPurple,
                    ),
                  ),
                  cursorColor: AppColors.purple,
                ),
              ),
              //endregion
              width18(),
              //region Price
              Expanded(
                flex: 2,
                child: TextField(
                  controller: priceTextController,
                  onChanged: (text) {
                    final price = (text.isEmpty) ? null : double.parse(text);
                    option = option.copyWith(price: price);
                    ref(postListingProvider.notifier)
                        .editAdditionalOption(index, option);
                  },
                  keyboardType: const TextInputType.numberWithOptions(decimal: true),
                  inputFormatters: [doubleNumFilter],
                  decoration: standardInputDecoration.copyWith(
                    labelText: "Price",
                    contentPadding: const EdgeInsets.fromLTRB(8, 14, 8, 8),
                  ),
                  cursorColor: AppColors.purple,
                ),
              ),
              //endregion
              width18(),
              //region Max quantity
              Expanded(
                flex: 2,
                child: TextField(
                  controller: maxQuantityTextController,
                  onChanged: (text) {
                    final maxQuantity = text.isEmpty ? null : int.parse(text);
                    option = option.copyWith(maxQuantity: maxQuantity);
                    ref(postListingProvider.notifier)
                        .editAdditionalOption(index, option);
                  },
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: standardInputDecoration.copyWith(
                    labelText: "Max Qty",
                    contentPadding: const EdgeInsets.fromLTRB(8, 14, 8, 8),
                  ),
                  cursorColor: AppColors.purple,
                ),
              ),
              //endregion
              //region Delete button
              InkWell(
                onTap: () {
                  ref(postListingProvider.notifier)
                      .removeAdditionalOption(index);
                  ref(listingPricingProvider.notifier)
                      .changeNumOfCreatedAdditionalOptions(-1);
                  // prevent the previously focused text field from receiving the focus again after removing an additional option item
                  FocusScope.of(context).requestFocus(FocusNode());
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 48,
                  child: const Icon(
                    Icons.delete,
                    color: Colors.red,
                    size: 18,
                  ),
                ),
              ),
              //endregion
            ],
          ),
        );
      },
    );
  }
}
