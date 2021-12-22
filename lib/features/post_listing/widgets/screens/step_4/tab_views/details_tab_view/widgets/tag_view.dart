import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/style/colors.dart';

class TagView extends StatelessWidget {
  const TagView({
    Key? key,
    required this.tag,
    required this.isEditable,
  }) : super(key: key);

  final String tag;
  final bool isEditable;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, ref, __) => isEditable
          ? Chip(
              deleteIcon: const Icon(
                Icons.close,
                size: 20,
              ),
              onDeleted: () {
                ref.watch(postListingProvider.notifier).removeTag(tag);
              },
              label: Text(
                tag,
                style: const TextStyle(color: AppColors.purple),
              ),
            )
          : Chip(
              label: Text(
                tag,
                style: const TextStyle(color: AppColors.purple),
              ),
            ),
    );
  }
}
