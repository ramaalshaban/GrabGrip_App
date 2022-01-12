import 'package:flutter/material.dart';
import 'package:grab_grip/features/placing_order/models/price_item/price_item.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/sized_box.dart';

class PriceSummaryItem extends StatelessWidget {
  const PriceSummaryItem({
    Key? key,
    required this.priceItem,
    required this.currency,
  }) : super(key: key);

  final PriceItem priceItem;
  final String currency;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: summaryTabViewPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Text(priceItem.label)),
          Row(
            children: [Text(currency), width4(), Text(priceItem.price)],
          ),
        ],
      ),
    );
  }
}
