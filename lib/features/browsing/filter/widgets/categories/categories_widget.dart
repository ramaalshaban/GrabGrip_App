import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/browsing/browse/models/category/category.dart';
import 'package:grab_grip/features/browsing/filter/widgets/categories/category_filtering_item.dart';
import 'package:grab_grip/utils/sized_box.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, watch, __) {
        final filteringCategories =
            watch(filterAndSortProvider.notifier).filteringCategories;
        final selectedCategory = watch(filterAndSortProvider).category;
        final selectedSubcategory = watch(filterAndSortProvider).subcategory;
        print(" CategoriesWidget's build method just ran!");
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Wrap(
              spacing: 4,
              children: [
                ...List.generate(
                  filteringCategories!.length,
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
            Visibility(
              visible: _shouldSubcategoriesBeVisible(selectedCategory),
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
        );
      },
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
