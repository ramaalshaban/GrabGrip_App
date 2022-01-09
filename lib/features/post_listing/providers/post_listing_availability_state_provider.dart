import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/features/post_listing/models/post_listing_availability_model/post_listing_availability_state.dart';

class PostListingAvailabilityStateProvider
    extends StateNotifier<PostListingAvailabilityState> {
  PostListingAvailabilityStateProvider()
      : super(
          const PostListingAvailabilityState.published(
            successfullyPublished: false,
          ),
        );

  void reset() {
    state = const PostListingAvailabilityState.published(
      successfullyPublished: false,
    );
  }

  void setPublished({required bool succeeded}) {
    state = PostListingAvailabilityState.published(
      successfullyPublished: succeeded,
    );
  }

  void setUnpublished({required bool succeeded}) {
    state = PostListingAvailabilityState.unPublished(
      successfullyUnPublished: succeeded,
    );
  }

  void setReEnabled({required bool succeeded}) {
    state = PostListingAvailabilityState.reEnabled(
      successfullyReEnabled: succeeded,
    );
  }

  void setAvailabilityState(Gear listing) {
    if (listing.isPublished == 1) {
      if (listing.isDraft == 1) {
        setUnpublished(succeeded: true);
      } else {
        setPublished(succeeded: true);
      }
    } else if (listing.isDraft == 0 && listing.isPublished == 0) {
      setPublished(succeeded: false);
    }
  }
}
