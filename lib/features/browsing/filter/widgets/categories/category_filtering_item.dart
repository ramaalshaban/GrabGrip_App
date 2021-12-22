import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/browsing/browse/models/category/category.dart';
import 'package:grab_grip/style/colors.dart';

class CategoryFilteringItem extends ConsumerWidget {
  const CategoryFilteringItem(
      {required this.category, required this.isSelected});

  final Category? category;
  final bool isSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ChoiceChip(
      selectedColor: AppColors.purple,
      elevation: 1,
      selected: isSelected,
      onSelected: (selected) {
        if (category!.parentId != 0) {
          // i.e. if the clicked category is a subcategory
          ref.watch(filterAndSortProvider.notifier).subcategory = category;
        } else {
          ref.watch(filterAndSortProvider.notifier).category = category;
          ref.watch(filterAndSortProvider.notifier).subcategory = null;
        }
      },
      label: Text(
        category!.name,
        style: TextStyle(color: isSelected ? AppColors.white : Colors.black),
      ),
    );
  }
}
