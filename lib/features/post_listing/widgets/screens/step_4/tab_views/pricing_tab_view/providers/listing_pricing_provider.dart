import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/features/post_listing/providers/post_listing_provider.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_4/tab_views/pricing_tab_view/models/listing_pricing_model/listing_pricing_model.dart';

class ListingPricingProvider extends StateNotifier<ListingPricingModel> {
  ListingPricingProvider(this.postListingProvider)
      : super(ListingPricingModel.initial());
  PostListingProvider postListingProvider;

  int get numOfCreatedAdditionalOptions => state.additionalOptionsLength;

  int get numOfCreatedShippingFees => state.shippingFeesLength;

  int get numOfCreatedVariations => state.variationsLength;

  void changeNumOfCreatedAdditionalOptions(int value) {
    final currentLength = state.additionalOptionsLength;
    state = state.copyWith(additionalOptionsLength: currentLength + value);
  }

  void changeNumOfCreatedShippingFees(int value) {
    final currentLength = state.shippingFeesLength;
    state = state.copyWith(shippingFeesLength: currentLength + value);
  }

  void changeNumOfCreatedVariations(int value) {
    final currentLength = state.variationsLength;
    state = state.copyWith(variationsLength: currentLength + value);
  }
}
