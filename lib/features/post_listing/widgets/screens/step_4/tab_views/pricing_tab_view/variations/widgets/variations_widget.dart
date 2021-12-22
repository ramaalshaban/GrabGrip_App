import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/variations/widgets/variation_item.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/sized_box.dart';

class VariationsWidget extends StatelessWidget {
  const VariationsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        //region Variation items
        Consumer(
          builder: (_, ref, __) {
            final variationsLength =
                ref.watch(listingPricingProvider).variationsLength;
            final variations = ref.watch(postListingProvider.notifier).variations;
            return Wrap(
              children: List.generate(
                variationsLength,
                (index) {
                  return VariationItem(
                    index: index,
                    variation: variations[index],
                  );
                },
              ),
            );
          },
        ),
        //endregion
        height12(),
        //region Add variation button
        Consumer(
          builder: (_, ref, __) {
            return TextButton.icon(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.fromLTRB(6, 6, 16, 6),
                primary: AppColors.white,
                side: const BorderSide(color: AppColors.green),
              ),
              label: const Text(
                "Add Variation",
                style: TextStyle(
                  color: AppColors.green,
                ),
              ),
              onPressed: () {
                ref.watch(postListingProvider.notifier).addEmptyVariation();
                ref.watch(listingPricingProvider.notifier)
                    .changeNumOfCreatedVariations(1);
                // prevent the previously focused text field from receiving the focus again after adding a new variation item
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
