import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_1/drop_down_lists/categories_drop_down_list.dart';
import 'package:grab_grip/features/post_listing/widgets/screens/step_1/drop_down_lists/subcategories_drop_down_list.dart';
import 'package:grab_grip/shared_widgets/continue_button.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/sized_box.dart';

class PostListingStepOneScreen extends StatelessWidget {
  const PostListingStepOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read(filterAndSortProvider.notifier).getCategories();
    return Consumer(
      builder: (_, ref, __) {
        return ref(httpRequestStateProvider).maybeWhen(
          success: (_) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                height60(),
                const Text(
                  "Select a category",
                  style: TextStyle(
                    color: AppColors.purple,
                  ),
                ),
                height12(),
                const CategoriesDropDownList(),
                height24(),
                Consumer(
                  builder: (_, ref, __) {
                    return AnimatedOpacity(
                      opacity: ref(postListingProvider)
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
                          const Text(
                            "Select a subcategory",
                            style: TextStyle(
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
                ContinueButton(
                  formKey: null,
                  buttonText: "Continue",
                  onClickAction: ref(postListingStepProvider.notifier).setStep2,
                ),
              ],
            ),
          ),
          orElse: () => const Center(
            child: CircularProgressIndicator(
              color: AppColors.purple,
            ),
          ),
        );
      },
    );
  }
}
