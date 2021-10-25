import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/post_listing/models/pricing_model/pricing_model.dart';
import 'package:grab_grip/style/colors.dart';

class ListingTypeItem extends ConsumerWidget {
  const ListingTypeItem({Key? key, required this.listingType})
      : super(key: key);

  final PricingModel listingType;

  @override
  Widget build(BuildContext context, ScopedReader ref) {
    return GestureDetector(
      onTap: () {
        ref(postListingProvider.notifier).listingTypeId = listingType.id;
      },
      child: Container(
        alignment: Alignment.center,
        height: 24.0,
        decoration: BoxDecoration(
          color: ref(postListingProvider).listingTypeId == listingType.id
              ? AppColors.purple
              : AppColors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            width: 0.5,
            color: AppColors.purple,
          ),
        ),
        child: Text(
          listingType.name,
          style: TextStyle(
            fontSize: 12,
            color: ref(postListingProvider).listingTypeId == listingType.id
                ? AppColors.white
                : AppColors.purple,
          ),
        ),
      ),
    );
  }
}
