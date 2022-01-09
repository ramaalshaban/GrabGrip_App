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
  @override
  Widget build(BuildContext context) {
    super.build(context);
    final listingForRent =
        ref.watch(postListingProvider.notifier).isForRent ?? false;
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
            Form(
              key: PostListingStepFourScreen.pricingTabFormKey,
              child: Column(
                children: [
                  //region Price & Stock
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //region Price
                      Expanded(
                        child: TextFormField(
                          initialValue: ref
                              .watch(postListingProvider.notifier)
                              .price
                              ?.toString(),
                          onChanged: (text) {
                            final price = (text.isEmpty) ? 0 : int.parse(text);
                            ref.watch(postListingProvider.notifier).price =
                                price;
                          },
                          keyboardType: TextInputType.number,
                          validator: priceFieldValidator,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration: standardInputDecoration.copyWith(
                            labelText: "Price in SAR",
                            contentPadding:
                                const EdgeInsets.fromLTRB(8, 14, 4, 8),
                            //region Per day label
                            suffixIcon: listingForRent
                                ? Container(
                                    margin: const EdgeInsets.all(2),
                                    color: AppColors.veryLightPurple,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 4,
                                          ),
                                          child: Text("perDay"),
                                        )
                                      ],
                                    ),
                                  )
                                : null,
                            //endregion
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
                              initialValue: ref
                                  .watch(postListingProvider.notifier)
                                  .stock
                                  ?.toString(),
                              onChanged: (text) {
                                final stock =
                                    (text.isEmpty) ? 0 : int.parse(text);
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
                            if (!listingForRent) height4(),
                            if (!listingForRent)
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
                  //endregion
                  if (listingForRent) height36(),
                  //region Minimum & Maximum rent period
                  if (listingForRent)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //region Minimum rent period
                        Expanded(
                          child: TextFormField(
                            initialValue: ref
                                .watch(postListingProvider.notifier)
                                .minRentPeriod
                                ?.toString(),
                            onChanged: (text) {
                              final minPeriod =
                                  (text.isEmpty) ? 0 : int.parse(text);
                              ref
                                  .watch(postListingProvider.notifier)
                                  .minRentPeriod = minPeriod;
                            },
                            keyboardType: TextInputType.number,
                            validator: rentPeriodFieldValidator,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: standardInputDecoration.copyWith(
                              labelText: "Minimum rent period\n(days)",
                              contentPadding:
                                  const EdgeInsets.fromLTRB(8, 14, 8, 8),
                            ),
                            cursorColor: AppColors.purple,
                          ),
                        ),
                        //endregion
                        width24(),
                        //region Maximum rent period
                        Expanded(
                          child: TextFormField(
                            initialValue: ref
                                .watch(postListingProvider.notifier)
                                .maxRentPeriod
                                ?.toString(),
                            onChanged: (text) {
                              final maxPeriod =
                                  (text.isEmpty) ? 0 : int.parse(text);
                              ref
                                  .watch(postListingProvider.notifier)
                                  .maxRentPeriod = maxPeriod;
                            },
                            keyboardType: TextInputType.number,
                            validator: rentPeriodFieldValidator,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: standardInputDecoration.copyWith(
                              labelText: "Maximum rent period\n(days)",
                              contentPadding:
                                  const EdgeInsets.fromLTRB(8, 14, 8, 8),
                            ),
                            cursorColor: AppColors.purple,
                          ),
                        ),
                        //endregion
                      ],
                    ),
                  //endregion
                  height18(),
                ],
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
            if (!listingForRent)
              const Text(
                "Shipping fees",
                style: TextStyle(fontSize: 16),
              ),
            if (!listingForRent) height36(),
            if (!listingForRent) const ShippingFeesWidget(),
            //endregion
            if (!listingForRent) height24(),
            if (!listingForRent) lightPurpleDividerThickness0_5,
            if (!listingForRent) height24(),
            //region Variations
            if (!listingForRent)
              const Text(
                "Variations",
                style: TextStyle(fontSize: 16),
              ),
            if (!listingForRent) height36(),
            if (!listingForRent) const VariationsWidget(),
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
