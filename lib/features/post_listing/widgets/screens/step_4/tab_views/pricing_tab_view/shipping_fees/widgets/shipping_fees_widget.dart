import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/shipping_fees/widgets/shipping_fee_item.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/sized_box.dart';

class ShippingFeesWidget extends StatelessWidget {
  const ShippingFeesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        //region Shipping fee items
        Consumer(
          builder: (_, ref, __) {
            final shippingFeesLength =
                ref(listingPricingProvider).shippingFeesLength;
            final shippingFees = ref(postListingProvider.notifier).shippingFees;
            return Wrap(
              children: List.generate(
                shippingFeesLength,
                (index) {
                  return ShippingFeeItem(
                    index: index,
                    shippingFee: shippingFees[index],
                  );
                },
              ),
            );
          },
        ),
        //endregion
        height12(),
        //region Add button
        Consumer(
          builder: (_, ref, __) {
            return TextButton.icon(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.fromLTRB(6, 6, 16, 6),
                primary: AppColors.white,
                side: const BorderSide(color: AppColors.green),
              ),
              label: const Text(
                "ADD",
                style: TextStyle(
                  color: AppColors.green,
                ),
              ),
              onPressed: () {
                ref(postListingProvider.notifier).addEmptyShippingFee();
                ref(listingPricingProvider.notifier)
                    .changeNumOfCreatedShippingFees(1);
                // prevent the previously focused text field from receiving the focus again after adding a new shipping fee item
                FocusScope.of(context).requestFocus(FocusNode());
              },
              icon: const Icon(
                Icons.add,
                color: AppColors.green,
                size: 20,
              ),
            );
          },
        ),
        //endregion
      ],
    );
  }
}
