import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/sized_box.dart';

class ListingItem extends StatelessWidget {
  final Gear gear;

  const ListingItem({required this.gear});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        moveToDetailsScreen(context, gear);
      },
      child: SizedBox(
        height: screenHeightWithoutExtras(context) / 5,
        child: Card(
          elevation: 4.0,
          shadowColor: AppColors.purple,
          color: AppColors.white,
          child: Row(
            children: [
              //region Listing image
              Expanded(
                flex: 2,
                child: CachedNetworkImage(
                  imageUrl: gear.thumbnail ?? "",
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
                      Text(
                        gear.title,
                        style: AppTextStyles.title,
                      ),
                      height8(),
                      Text(
                        gear.shortDescription,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.subtitle,
                      ),
                      Text(
                        gear.formattedPrice ?? "",
                        maxLines: 2,
                        style: AppTextStyles.price,
                      ),
                      height4(),
                      Text(
                        "${gear.city ?? ""} ${gear.country ?? ""}",
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
  void moveToDetailsScreen(BuildContext context, Gear clickedGear) {
    context.router.push(BrowseDetailsScreenRoute(gear: clickedGear));
  }
//endregion
}
