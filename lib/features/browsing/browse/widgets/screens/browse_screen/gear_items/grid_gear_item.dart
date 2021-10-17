import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text.dart';
import 'package:grab_grip/utils/sized_box.dart';

class GridGearItem extends StatelessWidget {
  const GridGearItem({required this.gear});

  final Gear gear;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        moveToDetailsScreen(context, gear);
      },
      child: Card(
        elevation: 4.0,
        shadowColor: AppColors.purple,
        color: AppColors.white,
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 2,
                child: CachedNetworkImage(
                  imageUrl: gear.thumbnail,
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
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(6, 2, 6, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
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
                        gear.formattedPrice,
                        maxLines: 2,
                        style: AppTextStyles.price,
                      ),
                      height4(),
                      Text(
                        "${gear.city ?? ""} ${gear.country ?? ""}",
                        maxLines: 2,
                        style: AppTextStyles.price,
                      ),
                      Text(
                        gear.owner.displayName,
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
    context.router.push(BrowseDetailsScreenRoute(clickedGear: clickedGear));
  }
//endregion
}
