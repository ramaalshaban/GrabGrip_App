import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/browsing/browse/models/category/category.dart';
import 'package:grab_grip/style/colors.dart';

class CategoriesDropDownList extends StatelessWidget {
  const CategoriesDropDownList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Category? selectedCategory;
    return Consumer(
      builder: (_, ref, __) {
        //  WidgetsBinding.instance?.addPostFrameCallback((_) {
        selectedCategory = ref(postListingProvider).category;
        //  });
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              width: 1.5,
              color: AppColors.purple,
            ),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<Category>(
              isExpanded: true,
              value: selectedCategory,
              elevation: 16,
              style: const TextStyle(color: AppColors.purple),
              onChanged: (Category? newlySelectedCategory) {
                ref(postListingProvider.notifier).category =
                    newlySelectedCategory;
                if (newlySelectedCategory?.subCategories.isEmpty ?? false) {
                  ref(postListingProvider.notifier).subcategory = null;
                }
              },
              items: ref(filterAndSortProvider.notifier)
                  .filteringCategories
                  .map<DropdownMenuItem<Category>>(
                (Category category) {
                  return DropdownMenuItem<Category>(
                    value: category,
                    child: Text(category.name),
                  );
                },
              ).toList(),
            ),
          ),
        );
      },
    );
  }
}
