import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_2/listing_type_widget.dart';
import 'package:grab_grip/shared/widgets/continue_button.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/sized_box.dart';

class PostListingStepTwoScreen extends StatelessWidget {
  const PostListingStepTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        height60(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              AppLocalizations.of(context)!.listing_type,
              style: const TextStyle(
                color: AppColors.purple,
              ),
            ),
            height24(),
            const ListingTypeWidget(),
            height48(),
          ],
        ),
        Consumer(
          builder: (_, ref, __) {
            return AnimatedOpacity(
              opacity: ref.watch(
                        postListingProvider
                            .select((state) => state.listingTypeId),
                      ) ==
                      null
                  ? 0.0
                  : 1.0,
              duration: duration300Milli,
              child: ContinueButton(
                buttonText: AppLocalizations.of(context)!.continue_label,
                onClickAction:
                    ref.watch(postListingStepProvider.notifier).setStep3,
              ),
            );
          },
        ),
      ],
    );
  }
}
