import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/shipping_fees/models/shipping_fee/shipping_fee.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text_fields.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/sized_box.dart';

class ShippingFeeItem extends StatelessWidget {
  ShippingFeeItem({Key? key, required this.index, required this.shippingFee})
      : super(key: key);

  final int index;
  final ShippingFee shippingFee;
  final nameTextController = TextEditingController();

  final priceTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var shippingFee = ShippingFee(
      name: this.shippingFee.name,
      price: this.shippingFee.price,
    );
    nameTextController.text = shippingFee.name ?? "";
    priceTextController.text =
        shippingFee.price == null ? "" : shippingFee.price.toString();

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
                    shippingFee = shippingFee.copyWith(name: text);
                    ref(postListingProvider.notifier)
                        .editShippingFee(index, shippingFee);
                  },
                  keyboardType: TextInputType.text,
                  decoration: standardInputDecoration.copyWith(
                    labelText: "Name",
                    contentPadding: const EdgeInsets.fromLTRB(8, 14, 8, 8),
                    hintText: "e.g. First Class",
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
                    final price = text.isEmpty ? null : text;
                    shippingFee = shippingFee.copyWith(price: price);
                    ref(postListingProvider.notifier)
                        .editShippingFee(index, shippingFee);
                  },
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  inputFormatters: [doubleNumFilter],
                  decoration: standardInputDecoration.copyWith(
                    labelText: "Price",
                    contentPadding: const EdgeInsets.fromLTRB(8, 14, 8, 8),
                  ),
                  cursorColor: AppColors.purple,
                ),
              ),
              //endregion
              //region Delete button
              InkWell(
                onTap: () {
                  ref(postListingProvider.notifier).removeShippingFee(index);
                  ref(listingPricingProvider.notifier)
                      .changeNumOfCreatedShippingFees(-1);
                  // prevent the previously focused text field from receiving the focus again after removing a shipping fee item
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
              ), //endregion
            ],
          ),
        );
      },
    );
  }
}
