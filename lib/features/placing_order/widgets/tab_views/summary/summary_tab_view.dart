import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/placing_order/widgets/tab_views/summary/price_summary_item.dart';
import 'package:grab_grip/features/placing_order/widgets/tab_views/summary/user_choice_summary_item.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/sized_box.dart';

class SummaryTabView extends ConsumerWidget {
  const SummaryTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final orderedListing =
        ref.watch(placeOrderProvider.notifier).orderedListing!;
    final userChoices =
        ref.watch(placeOrderProvider.notifier).pricing!.userChoices;
    final pricing = ref.watch(placeOrderProvider.notifier).pricing;
    final priceItems = pricing!.priceItems;
    return SingleChildScrollView(
      child: Column(
        children: [
          //region Image, Listing title and owner name
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: CachedNetworkImage(
                  imageUrl: orderedListing.thumbnail!,
                  placeholder: (context, url) => const Center(
                    child: SizedBox(
                      height: 28,
                      width: 28,
                      child: CircularProgressIndicator(
                        color: AppColors.purple,
                      ),
                    ),
                  ),
                  errorWidget: (context, url, error) => const Icon(
                    Icons.error,
                    color: Colors.red,
                  ),
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              width12(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    height8(),
                    Text(
                      orderedListing.title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    height8(),
                    Text(orderedListing.owner!.displayName),
                  ],
                ),
              )
            ],
          ),
          //endregion
          height20(),
          lightGrayDividerThickness0_5,
          height20(),
          //region User choices
          ...List.generate(
            userChoices.length,
            (index) => UserChoiceSummaryItem(userChoice: userChoices[index]),
          ),
          //endregion
          height20(),
          lightGrayDividerThickness0_5,
          height20(),
          //region Pricing items
          ...List.generate(
            priceItems.length,
            (index) => PriceSummaryItem(
              priceItem: priceItems[index],
              currency: orderedListing.currency,
            ),
          ),
          //endregion
          height20(),
          lightGrayDividerThickness0_5,
          height20(),
          //region Total
          Padding(
            padding: summaryTabViewPadding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Total",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      orderedListing.currency,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    width4(),
                    Text(
                      pricing.total,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          //endregion
          height20(),
          //region Information text
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.0),
            child: Text(
              'By clicking "Place Order" I approve the User Terms and confirm I have read the Privacy Notice. I agree to the terms & conditions of this Merchant.',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ),
          //endregion
          height20(),
        ],
      ),
    );
  }
}
