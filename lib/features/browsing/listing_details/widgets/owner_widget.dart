import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/style/box_decorations.dart';
import 'package:grab_grip/style/text.dart';
import 'package:grab_grip/utils/sized_box.dart';

class OwnerWidget extends ConsumerWidget {
  const OwnerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listingOwner =
        ref.watch(listingDetailsProvider.notifier).listingOwner;
    final userRating =
        ref.watch(listingDetailsProvider.notifier).getUserRating();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: listingDetailsBoxDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //region Label
            Text(
              ref.watch(listingDetailsProvider.notifier).getOwnerWidgetLabel(),
              style: AppTextStyles.listingDetailsTitleStyle,
            ),
            //endregion
            height24(),
            Row(
              children: [
                //region Avatar
                Expanded(
                  child: CircleAvatar(
                    radius: 44,
                    child: ClipOval(
                      child: Image.network(
                        listingOwner?.avatar ?? "",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                //endregion
                width8(),
                //region Name, Address, Rate, Num of listings
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        listingOwner?.displayName ?? "",
                      ),
                      height8(),
                      Text(
                        ref
                            .watch(listingDetailsProvider.notifier)
                            .getUserCountryAndCity(),
                      ),
                      height8(),
                      RatingBarIndicator(
                        itemSize: 24,
                        rating: userRating,
                        itemBuilder: (context, index) {
                          return index < userRating
                              ? Icon(
                                  Icons.star_rounded,
                                  color: Colors.amber[600],
                                )
                              : const Icon(
                                  Icons.star_border_rounded,
                                );
                        },
                        unratedColor: Colors.amber[600],
                      ),
                      height8(),
                      Text(
                        "${ref.watch(listingDetailsProvider.notifier).userListingsCount.toString()} Items",
                      ),
                    ],
                  ),
                ),
                //endregion
              ],
            ),
          ],
        ),
      ),
    );
  }
}
