import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/browsing/listing_details/models/review/review.dart';
import 'package:grab_grip/features/browsing/listing_details/providers/reviews_provider.dart';
import 'package:grab_grip/features/browsing/listing_details/widgets/reviews/review_item.dart';
import 'package:grab_grip/features/browsing/listing_details/widgets/reviews/review_item_skeleton_loader.dart';
import 'package:grab_grip/shared/widgets/paged_list_error_widget.dart';
import 'package:grab_grip/style/box_decorations.dart';
import 'package:grab_grip/style/text.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/functions.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class ReviewsWidget extends ConsumerStatefulWidget {
  const ReviewsWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<ReviewsWidget> createState() => _ReviewsWidgetState();
}

class _ReviewsWidgetState extends ConsumerState<ReviewsWidget> {
  @override
  void initState() {
    ReviewsProvider.pagingController.addPageRequestListener((pageKey) {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        if (mounted) {
          ref.watch(reviewsProvider.notifier).getReviews(pageKey);
        }
      });
    });

    ReviewsProvider.pagingController.addStatusListener((status) {
      if (ReviewsProvider.pagingController.error == noInternetConnection) {
        if (mounted) {
          showSnackBarForError(
            context,
            ReviewsProvider.pagingController.error.toString(),
          );
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      // refresh the (cached review) items when user browses another listing
      ReviewsProvider.pagingController.refresh();
    });
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        decoration: listingDetailsBoxDecoration,
        child: RefreshIndicator(
          onRefresh: () async {
            ReviewsProvider.pagingController.refresh();
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //region Customer reviews label
              const Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  "Customer reviews",
                  style: AppTextStyles.listingDetailsTitleStyle,
                ),
              ),
              //endregion
              //region Average rating
              // const Text("Average customer rating"),
              // height12(),
              // Row(
              //   children: [
              //     RatingBarIndicator(
              //       itemSize: 24,
              //       rating: averageRating,
              //       itemBuilder: (context, index) {
              //         return index < averageRating
              //             ? Icon(
              //                 Icons.star_rounded,
              //                 color: Colors.amber[600],
              //               )
              //             : const Icon(
              //                 Icons.star_border_rounded,
              //               );
              //       },
              //       unratedColor: Colors.amber[600],
              //     ),
              //     width12(),
              //     Text(
              //       "${ReviewsProvider.pagingController.itemList?.length ?? 0} reviews",
              //     ),
              //   ],
              // ),
              //endregion
              SizedBox(
                width: screenWidth(context),
                height: screenHeightWithoutExtras(context) / 3,
                child: PagedListView<int, Review>(
                  pagingController: ReviewsProvider.pagingController,
                  builderDelegate: PagedChildBuilderDelegate<Review>(
                    itemBuilder: (context, item, index) =>
                        ReviewItem(review: item),
                    firstPageErrorIndicatorBuilder: (context) =>
                        PagedListErrorWidget(
                      pagingController: ReviewsProvider.pagingController,
                    ),
                    firstPageProgressIndicatorBuilder: (context) =>
                        const ReviewItemSkeletonLoader(),
                    newPageProgressIndicatorBuilder: (context) =>
                        const ReviewItemSkeletonLoader(),
                    noItemsFoundIndicatorBuilder: (context) => const Center(
                      child: Text(
                        "There are no customer reviews yet.",
                      ),
                    ),
                    newPageErrorIndicatorBuilder: (context) =>
                        PagedListErrorWidget(
                      pagingController: ReviewsProvider.pagingController,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  double _getAverageRating(List<Review>? reviews) {
    if (reviews == null) {
      return 0;
    }
    int total = 0;
    for (int i = 0; i < reviews.length; i++) {
      total += reviews[i].rate;
    }
    return total / reviews.length;
  }
}
