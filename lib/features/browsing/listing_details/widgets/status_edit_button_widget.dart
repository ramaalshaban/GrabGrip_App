import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/style/box_decorations.dart';
import 'package:grab_grip/style/colors.dart';

class StatusEditButtonWidget extends StatelessWidget {
  const StatusEditButtonWidget({Key? key, required this.listing})
      : super(key: key);

  final Gear listing;

  @override
  Widget build(BuildContext context) {
    //region Color & Status values initialization
    Color backgroundColor = AppColors.white;
    String status = "";
    late String verificationStatus;
    if (listing.isPublished == 1) {
      if (listing.isDraft == 1) {
        status = "Unpublished";
        backgroundColor = Colors.amber.shade800;
      } else {
        status = "Published";
        backgroundColor = AppColors.green;
      }
    } else if (listing.isDraft == 0 && listing.isPublished == 0) {
      status = "Draft";
      backgroundColor = AppColors.gray;
    }

    if (listing.isDisabled != null) {
      status = "Disabled";
      backgroundColor = Colors.red;
    }

    listing.isVerifiedByAdmin == null
        ? verificationStatus = "(pending admin verification)"
        : verificationStatus = "(verified by admin)";
    //endregion
    return Consumer(
      builder: (_, ref, __) {
        final listingOwner = ref.watch(
          listingDetailsProvider.select((state) => state.listingOwner),
        );
        return Visibility(
          visible: ref
              .watch(userProfileProvider.notifier)
              .isIdOfCurrentUser(listingOwner?.id ?? -1),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 0),
            decoration: listingDetailsBoxDecoration,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //region Status
                Container(
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: status,
                          style: const TextStyle(
                            color: AppColors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const TextSpan(
                          style: TextStyle(fontSize: 4),
                          text: "\n ",
                        ),
                        TextSpan(
                          text: "\n$verificationStatus",
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //endregion
                //region Edit button
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    elevation: 4,
                    shadowColor: AppColors.purple,
                    primary: AppColors.lightPurple,
                  ),
                  onPressed: () async {
                  },
                  icon: const Icon(
                    Icons.edit,
                    color: AppColors.white,
                  ),
                  label: const Text(
                    "Edit listing",
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                //endregion
              ],
            ),
          ),
        );
      },
    );
  }
}
