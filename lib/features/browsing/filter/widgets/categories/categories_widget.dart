import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/browsing/browse/models/category/category.dart';
import 'package:grab_grip/features/browsing/filter/widgets/categories/category_filtering_item.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/constants.dart';
import 'package:grab_grip/utils/sized_box.dart';

class CategoriesWidget extends ConsumerWidget {
  const CategoriesWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filteringCategories =
        ref.watch(filterAndSortProvider).filteringCategories;
    final selectedCategory = ref.watch(filterAndSortProvider).category;
    final selectedSubcategory = ref.watch(filterAndSortProvider).subcategory;

    return ref.watch(httpRequestStateProvider).maybeWhen(
          loading: () => const Center(
            child: CircularProgressIndicator(
              color: AppColors.purple,
            ),
          ),
          orElse: () => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AnimatedOpacity(
                // filteringCategories can be empty when an error happens while fetching the categories
                // (like when the user opens the filter dialog and there is no internet connection)
                opacity: filteringCategories.isNotEmpty ? 1.0 : 0.0,
                duration: duration300Milli,
                child: Wrap(
                  spacing: 4,
                  children: [
                    ...List.generate(
                      filteringCategories.length,
                      (index) {
                        final category = filteringCategories[index];
                        return CategoryFilteringItem(
                          category: category,
                          isSelected: selectedCategory == category,
                        );
                      },
                    ),
                  ],
                ),
              ),
              AnimatedOpacity(
                opacity: _shouldSubcategoriesBeVisible(selectedCategory) &&
                        filteringCategories.isNotEmpty
                    ? 1.0
                    : 0.0,
                duration: duration300Milli,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    height8(),
                    const Text("subcategories"),
                    height4(),
                    Wrap(
                      spacing: 4,
                      children: [
                        ...List.generate(
                          selectedCategory?.subCategories.length ?? 0,
                          (index) {
                            final subCategory =
                                selectedCategory?.subCategories[index];
                            return CategoryFilteringItem(
                              category: subCategory,
                              isSelected: selectedSubcategory == subCategory,
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        );
  }

  bool _shouldSubcategoriesBeVisible(Category? selectedCategory) {
    // show subcategories if the currently selected category has subcategories
    if (selectedCategory != null) {
      return selectedCategory.subCategories.isNotEmpty;
    } else {
      return false;
    }
  }
}
