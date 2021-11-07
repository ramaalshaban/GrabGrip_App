import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/additional_options/widgets/additional_option_item.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/sized_box.dart';

class AdditionalOptionsWidget extends StatelessWidget {
  const AdditionalOptionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        //region Additional option items
        Consumer(
          builder: (_, ref, __) {
            final additionalOptionsLength =
                ref(listingPricingProvider).additionalOptionsLength;
            final additionalOptions =
                ref(postListingProvider.notifier).additionalOptions;
            return Wrap(
              children: List.generate(
                additionalOptionsLength,
                (index) {
                  return AdditionalOptionItem(
                    index: index,
                    additionalOption: additionalOptions[index],
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
                ref(postListingProvider.notifier).addEmptyAdditionalOption();
                ref(listingPricingProvider.notifier)
                    .changeNumOfCreatedAdditionalOptions(1);
                // prevent the previously focused text field from receiving the focus again after adding a new additional option item
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
