import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/browsing/browse/models/category/category.dart';
import 'package:grab_grip/style/colors.dart';

class SubcategoriesDropDownList extends StatelessWidget {
  const SubcategoriesDropDownList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, ref, __) {
        final selectedSubcategory = ref(postListingProvider).subcategory;
        final subcategories =
            ref(postListingProvider).category?.subCategories ?? [];
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
              value: selectedSubcategory,
              elevation: 16,
              style: const TextStyle(color: AppColors.purple),
              onChanged: (Category? newValue) {
                ref(postListingProvider.notifier).subcategory = newValue;
              },
              items: subcategories
                  .map<DropdownMenuItem<Category>>((Category category) {
                return DropdownMenuItem<Category>(
                  value: category,
                  child: Text(category.name),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
