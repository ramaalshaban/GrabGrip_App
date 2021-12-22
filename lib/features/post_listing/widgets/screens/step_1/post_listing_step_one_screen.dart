import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_1/drop_down_lists/categories_drop_down_list.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_1/drop_down_lists/subcategories_drop_down_list.dart';
import 'package:grab_grip/shared/widgets/continue_button.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/sized_box.dart';

class PostListingStepOneScreen extends StatelessWidget {
  const PostListingStepOneScreen({Key? key}) : super(key: key);

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
              AppLocalizations.of(context)!.select_category,
              style: const TextStyle(
                color: AppColors.purple,
              ),
            ),
            height12(),
            const CategoriesDropDownList(),
            height24(),
            Consumer(
              builder: (_, ref, __) {
                return AnimatedOpacity(
                  opacity: ref.watch(postListingProvider)
                              .category
                              ?.subCategories
                              .isNotEmpty ??
                          false
                      ? 1.0
                      : 0.0,
                  duration: duration300Milli,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.select_subcategory,
                        style: const TextStyle(
                          color: AppColors.purple,
                        ),
                      ),
                      height12(),
                      const SubcategoriesDropDownList()
                    ],
                  ),
                );
              },
            ),
            height24(),
          ],
        ),
        Consumer(
          builder: (_, ref, __) {
            final selectedCategory = ref.watch(postListingProvider).category;
            final selectedSubcategory = ref.watch(postListingProvider).subcategory;
            final visibilityConditions = (selectedCategory != null) &&
                (selectedCategory.subCategories.isEmpty ||
                    (selectedCategory.subCategories.isNotEmpty &&
                        selectedSubcategory != null));
            return AnimatedOpacity(
              opacity: visibilityConditions ? 1.0 : 0.0,
              duration: duration300Milli,
              child: ContinueButton(
                buttonText: AppLocalizations.of(context)!.continue_label,
                onClickAction: () {
                  ref.watch(postListingStepProvider.notifier).setStep2();
                  ref.watch(postListingProvider.notifier).getPricingModels();
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
