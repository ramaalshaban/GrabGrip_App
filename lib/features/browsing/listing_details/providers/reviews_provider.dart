import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/features/browsing/listing_details/models/review/review.dart';
import 'package:grab_grip/features/browsing/listing_details/models/reviews_page/reviews_page.dart';
import 'package:grab_grip/features/browsing/listing_details/providers/listing_details_provider.dart';
import 'package:grab_grip/services/network/network_service.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class ReviewsProvider extends StateNotifier<ReviewsPage> {
  ReviewsProvider(
    this.listingDetailsProvider,
  ) : super(ReviewsPage.empty());

  static PagingController<int, Review> pagingController =
      PagingController(firstPageKey: 1);
  ListingDetailsProvider listingDetailsProvider;

  Future<void> getReviews(int pageKey) async {
    await NetworkService()
        .getReviews(
      hash: listingDetailsProvider.hash!,
      slug: listingDetailsProvider.slug!,
      pageNumber: pageKey,
    )
        .then(
      (result) {
        result.when(
          (errorMessage) {
            pagingController.error = errorMessage;
          },
          (reviewsPage) {
            state = reviewsPage;
            final isLastPage = reviewsPage.lastPageNumber == pageKey;
            if (isLastPage) {
              pagingController.appendLastPage(reviewsPage.reviews);
            } else {
              final nextPageKey = pageKey + 1;
              pagingController.appendPage(reviewsPage.reviews, nextPageKey);
            }
          },
        );
      },
    );
  }

  @override
  void dispose() {
    pagingController.dispose();
    super.dispose();
  }
}
