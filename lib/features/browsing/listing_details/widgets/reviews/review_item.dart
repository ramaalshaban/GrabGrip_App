import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:grab_grip/features/browsing/listing_details/models/review/review.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/functions.dart';
import 'package:grab_grip/utils/sized_box.dart';

class ReviewItem extends StatelessWidget {
  const ReviewItem({Key? key, required this.review}) : super(key: key);

  final Review review;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //region Commenter name
            Text(review.commenter.userName),
            //endregion
            height12(),
            //region Rating
            RatingBarIndicator(
              itemSize: 24,
              rating: review.rate.toDouble(),
              itemBuilder: (context, index) {
                return index < review.rate
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
            //endregion
            height12(),
            //region Comment
            Text(
              review.comment,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            //endregion
            height18(),
            //region Review date
            Text(
              "Published ${formatDateForReview(review.reviewDate)}",
              style: const TextStyle(
                color: AppColors.gray,
                fontSize: 14,
              ),
            ),
            //endregion
          ],
        ),
      ),
    );
  }
}
