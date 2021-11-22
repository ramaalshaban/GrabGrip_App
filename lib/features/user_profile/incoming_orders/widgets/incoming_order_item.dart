import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/shared/models/order/order.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/sized_box.dart';

class IncomingOrderItem extends StatelessWidget {
  final Order order;

  const IncomingOrderItem({required this.order});

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
              //region Gear Image
              Expanded(
                flex: 2,
                child: CachedNetworkImage(
                  imageUrl: order.orderedGear.thumbnail ?? "",
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
                    margin: const EdgeInsets.all(1),
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
              //endregion
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 8, 6, 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Ordered Item: ${order.orderedGear.title}",
                            style: AppTextStyles.title,
                          ),
                          Text(
                            "Status: ${order.status}",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyles.subtitle,
                          ),
                        ],
                      ),
                      height8(),
                      Text(
                        "Ordered by: ${order.orderOwner!.displayName}",
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
              ),
            ],
          ),
        ),
      ),
    );
  }

//region actions
  void moveToOrderDetailsScreen(BuildContext context, Gear clickedGear) {
    // context.router.push(ListingDetailsScreenRoute(gear: clickedGear));
  }
//endregion
}
