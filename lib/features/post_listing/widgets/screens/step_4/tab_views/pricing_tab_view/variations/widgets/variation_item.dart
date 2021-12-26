import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/variations/models/variation/variation.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/variations/widgets/value_view.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text_fields.dart';
import 'package:grab_grip/utils/functions.dart';
import 'package:grab_grip/utils/sized_box.dart';

class VariationItem extends StatelessWidget {
  VariationItem({
    Key? key,
    required this.index,
    required this.variation,
  }) : super(key: key);

  final int index;
  final Variation variation;
  final attributeTextController = TextEditingController();
  final valueTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<String> values = [];
    var variation = Variation(
      attribute: this.variation.attribute,
      values: this.variation.values,
    );
    attributeTextController.text = variation.attribute ?? "";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        //region Values
        Consumer(
          builder: (_, ref, __) {
            values = ref.watch(postListingProvider).variations[index].values;
            return Wrap(
              spacing: 4,
              children: List.generate(
                values.length,
                (index) =>
                    ValueView(variationIndex: this.index, value: values[index]),
              ),
            );
          },
        ),
        //endregion
        height4(),
        //region Text fields and delete button
        Consumer(
          builder: (_, ref, __) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  //region Attribute text field
                  Expanded(
                    flex: 2,
                    child: TextField(
                      controller: attributeTextController,
                      onChanged: (text) {
                        variation =
                            variation.copyWith(attribute: text, values: values);
                        ref.watch(postListingProvider.notifier)
                            .editVariationAttribute(index, variation);
                      },
                      keyboardType: TextInputType.text,
                      decoration: standardInputDecoration.copyWith(
                        labelText: "Attribute",
                        contentPadding: const EdgeInsets.fromLTRB(8, 14, 8, 8),
                        hintText: "e.g. Color",
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
                  //region Values text field
                  Expanded(
                    flex: 2,
                    child: TextField(
                      controller: valueTextController,
                      keyboardType: TextInputType.text,
                      decoration: standardInputDecoration.copyWith(
                        labelText: "Values",
                        hintText: "(e.g. small, medium, large)",
                        hintStyle: const TextStyle(
                          fontSize: 14,
                          color: AppColors.lightPurple,
                        ),
                        contentPadding: const EdgeInsets.fromLTRB(8, 14, 8, 8),
                        suffixIcon: Consumer(
                          builder: (_, ref, __) {
                            return IconButton(
                              onPressed: () {
                                final enteredValue =
                                    valueTextController.text.trim();
                                if (enteredValue.isNotEmpty) {
                                  final valueAdded =
                                  ref.watch(postListingProvider.notifier)
                                          .addValueToVariation(
                                    index,
                                    enteredValue,
                                  );
                                  if (valueAdded) {
                                    valueTextController.text = "";
                                  } else {
                                    showSnackBar(
                                      context,
                                      "There is another variation that has the same attribute. Add this value to that variation or change the attribute of this variation please.",
                                      AppColors.amber,
                                      const Duration(seconds: 9),
                                    );
                                  }
                                }
                              },
                              icon: const Icon(
                                Icons.add,
                                color: AppColors.purple,
                                size: 30,
                              ),
                            );
                          },
                        ),
                      ),
                      cursorColor: AppColors.purple,
                    ),
                  ),
                  //endregion
                  //region Delete button
                  InkWell(
                    onTap: () {
                      ref.watch(postListingProvider.notifier).removeVariation(index);
                      ref.watch(listingPricingProvider.notifier)
                          .changeNumOfCreatedVariations(-1);
                      // prevent the previously focused text field from receiving the focus again after removing a variation item
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
        ),
        //endregion
        const Divider(
          color: AppColors.lightPurple,
          thickness: 0.25,
          indent: 10,
        ),
        height12(),
      ],
    );
  }
}
