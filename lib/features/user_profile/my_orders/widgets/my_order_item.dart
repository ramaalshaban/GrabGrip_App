import 'package:flutter/material.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/shared/models/order/order.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/sized_box.dart';

class MyOrderItem extends StatelessWidget {
  final Order order;

  const MyOrderItem({required this.order});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // moveToOrderDetailsScreen(context, order);
      },
      child: SizedBox(
        height: screenHeightWithoutExtras(context) / 5,
        child: Card(
          elevation: 4.0,
          shadowColor: AppColors.purple,
          color: AppColors.white,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 8, 6, 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ordered Item: ${order.orderedGear.title}",
                      style: AppTextStyles.title,
                    ),
                    height8(),
                    Text(
                      "Posted by: ${order.orderedGear.owner!.displayName}",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.subtitle,
                    ),
                    height4(),
                    Text(
                      "Order number: ${order.hash}",
                      maxLines: 2,
                      style: AppTextStyles.price,
                    ),
                    height4(),
                    Text(
                      "Amount: ${order.amount}",
                      maxLines: 2,
                      style: AppTextStyles.price,
                    ),
                    height4(),
                    Text(
                      "Ordering Date: ${order.orderingDate}",
                      maxLines: 2,
                      style: AppTextStyles.price,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

//region actions
  void moveToOrderDetailsScreen(BuildContext context, Gear clickedGear) {
    // context.router.push(BrowseDetailsScreenRoute(listing: clickedGear));
  }
//endregion
}
