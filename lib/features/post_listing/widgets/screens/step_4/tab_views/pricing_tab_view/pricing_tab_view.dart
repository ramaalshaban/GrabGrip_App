import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/additional_options/widgets/additional_options_widget.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/shipping_fees/widgets/shipping_fees_widget.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/variations/widgets/variations_widget.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text_fields.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/sized_box.dart';

class PricingTabView extends StatefulWidget {
  const PricingTabView({Key? key}) : super(key: key);

  @override
  State<PricingTabView> createState() => _PricingTabViewState();
}

class _PricingTabViewState extends State<PricingTabView>
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (text) {
                        price = int.parse(text);
                        context.read(postListingProvider.notifier).price =
                            price;
                      },
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: standardInputDecoration.copyWith(
                        labelText: "Price in SAR",
                        contentPadding: const EdgeInsets.fromLTRB(8, 14, 8, 8),
                      ),
                      cursorColor: AppColors.purple,
                    ),
                  ),
                  width24(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextField(
                          onChanged: (text) {
                            stock = int.parse(text);
                            context.read(postListingProvider.notifier).stock =
                                stock;
                          },
                          keyboardType: TextInputType.number,
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
                ],
              ),
            ),
            //endregion
            dividerThickness0_5,
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
            dividerThickness0_5,
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
            dividerThickness0_5,
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