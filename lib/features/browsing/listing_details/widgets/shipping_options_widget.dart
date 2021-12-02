import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/style/box_decorations.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text.dart';
import 'package:grab_grip/utils/sized_box.dart';

class ShippingOptionsWidget extends ConsumerWidget {
  const ShippingOptionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader ref) {
    final shippingOptions = ref(listingDetailsProvider).shippingOptions;
    return ref(httpRequestStateProvider).maybeWhen(
      error: (_) => Container(),
      orElse: () => Visibility(
        visible: shippingOptions.isNotEmpty,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: listingDetailsBoxDecoration,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //region Shipping options label
                const Text(
                  "Shipping",
                  style: AppTextStyles.listingDetailsTitleStyle,
                ),
                //endregion
                height8(),
                ...List.generate(
                  shippingOptions.length,
                  (index) => Consumer(
                    builder: (_, ref, __) {
                      final shippingOption = shippingOptions[index];
                      return RadioListTile<int>(
                        title: Text(
                          "${shippingOption.name!} (SAR ${shippingOption.price})",
                        ),
                        contentPadding: EdgeInsets.zero,
                        activeColor: AppColors.purple,
                        value: shippingOption.id!,
                        groupValue: ref(listingDetailsProvider)
                            .selectedShippingOptionId,
                        onChanged: (int? newlySelectedShippingId) {
                          ref(listingDetailsProvider.notifier)
                              .setShippingId(newlySelectedShippingId);
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
