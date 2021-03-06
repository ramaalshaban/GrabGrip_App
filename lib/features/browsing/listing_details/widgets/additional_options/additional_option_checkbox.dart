import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/additional_options/models/additional_option/additional_option.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/sized_box.dart';

class AdditionalOptionCheckbox extends ConsumerWidget {
  const AdditionalOptionCheckbox({Key? key, required this.additionalOption})
      : super(key: key);

  final AdditionalOption additionalOption;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isOptionSelected = ref.watch(
      listingDetailsProvider.select(
        (state) => state.selectedAdditionalOptions
            .containsKey(additionalOption.id.toString()),
      ),
    );
    return InkWell(
      onTap: () {
        final selectedQuantity = ref
                .watch(listingDetailsProvider.notifier)
                .selectedAdditionalOptions[additionalOption.id] ??
            1;
        ref.watch(listingDetailsProvider.notifier).toggleAdditionalOptionStatus(
          additionalOption: {additionalOption.id.toString(): selectedQuantity},
          isSelected: !isOptionSelected,
        );
      },
      child: Row(
        children: [
          //region Checkbox
          SizedBox(
            width: 30,
            height: 30,
            child: Checkbox(
              activeColor: AppColors.purple,
              value: isOptionSelected,
              onChanged: (_) {
                final selectedQuantity = ref
                        .watch(listingDetailsProvider.notifier)
                        .selectedAdditionalOptions[additionalOption.id] ??
                    1;
                ref
                    .watch(listingDetailsProvider.notifier)
                    .toggleAdditionalOptionStatus(
                  additionalOption: {
                    additionalOption.id.toString(): selectedQuantity
                  },
                  isSelected: !isOptionSelected,
                );
              },
            ),
          ),
          //endregion
          width8(),
          //region Label
          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: additionalOption.name,
                    style: const TextStyle(
                      color: AppColors.gray,
                      fontSize: 18,
                    ),
                  ),
                  /// Currency here should be dynamic. It's static for now
                  TextSpan(
                    text: "  (SAR ${additionalOption.price})",
                    style: const TextStyle(
                      color: AppColors.lightPurple,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          )
          //endregion
        ],
      ),
    );
  }
}
