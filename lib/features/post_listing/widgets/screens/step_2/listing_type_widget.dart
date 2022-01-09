import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_2/listing_type_item.dart';

class ListingTypeWidget extends ConsumerWidget {
  const ListingTypeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listingTypes = ref.watch(postListingProvider.notifier).pricingModels;
    return GridView.count(
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      childAspectRatio: 5.5,
      shrinkWrap: true,
      crossAxisCount: 2,
      children: List.generate(
        listingTypes.length,
        (index) => ListingTypeItem(
          listingType: listingTypes[index],
        ),
      ),
    );
  }
}
