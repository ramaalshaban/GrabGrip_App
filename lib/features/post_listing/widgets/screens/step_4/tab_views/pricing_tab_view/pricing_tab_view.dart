import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/authentication/utils/text_field_validators.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/post_listing_step_four_screen.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/additional_options/widgets/additional_options_widget.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/shipping_fees/widgets/shipping_fees_widget.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/variations/widgets/variations_widget.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text_fields.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/sized_box.dart';

class PricingTabView extends ConsumerStatefulWidget {
  const PricingTabView({Key? key}) : super(key: key);

  @override
  ConsumerState<PricingTabView> createState() => _PricingTabViewState();
}

class _PricingTabViewState extends ConsumerState<PricingTabView>
    with AutomaticKeepAliveClientMixin {
  int price = 0;
  int stock = 0;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //region Pricing information
            const Text(
              "Pricing information",
              style: TextStyle(fontSize: 16),
            ),
            height36(),
            SizedBox(
              height: 100,
              child: Form(
                key: PostListingStepFourScreen.pricingTabFormKey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    //region Price
                    Expanded(
                      child: TextFormField(
                        onChanged: (text) {
                          price = (text.isEmpty) ? 0 : int.parse(text);
                          ref.watch(postListingProvider.notifier).price = price;
                        },
                        keyboardType: TextInputType.number,
                        validator: priceFieldValidator,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: standardInputDecoration.copyWith(
                          labelText: "Price in SAR",
                          contentPadding:
                              const EdgeInsets.fromLTRB(8, 14, 8, 8),
                        ),
                        cursorColor: AppColors.purple,
                      ),
                    ),
                    //endregion
                    width24(),
                    //region Stock
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFormField(
                            onChanged: (text) {
                              stock = (text.isEmpty) ? 0 : int.parse(text);
                              ref.watch(postListingProvider.notifier).stock =
                                  stock;
                            },
                            keyboardType: TextInputType.number,
                            validator: mustNotBeEmptyFieldValidator,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: standardInputDecoration.copyWith(
                              labelText: "Stock",
                              contentPadding:
                                  const EdgeInsets.fromLTRB(8, 14, 8, 8),
                            ),
                            cursorColor: AppColors.purple,
                          ),
                          height4(),
                          const Text(
                            "Only applicable if the item does not have variants",
                            style: TextStyle(fontSize: 8),
                          )
                        ],
                      ),
                    ),
                    //endregion
                  ],
                ),
              ),
            ),
            //endregion
            lightPurpleDividerThickness0_5,
            height24(),
            //region Additional options & services
            const Text(
              "Additional options & services",
              style: TextStyle(fontSize: 16),
            ),
            height36(),
            const AdditionalOptionsWidget(),
            //endregion
            height24(),
            lightPurpleDividerThickness0_5,
            height24(),
            //region Shipping fees
            const Text(
              "Shipping fees",
              style: TextStyle(fontSize: 16),
            ),
            height36(),
            const ShippingFeesWidget(),
            //endregion
            height24(),
            lightPurpleDividerThickness0_5,
            height24(),
            //region Variations
            const Text(
              "Variations",
              style: TextStyle(fontSize: 16),
            ),
            height36(),
            const VariationsWidget(),
            height12(),
            //endregion
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
