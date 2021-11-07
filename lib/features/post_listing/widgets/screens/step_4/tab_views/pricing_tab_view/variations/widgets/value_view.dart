import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/style/colors.dart';

class ValueView extends StatelessWidget {
  const ValueView({
    Key? key,
    required this.variationIndex,
    required this.value,
  }) : super(key: key);

  final int variationIndex;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, ref, __) => Chip(
        deleteIcon: const Icon(
          Icons.close,
          size: 20,
        ),
        onDeleted: () {
          ref(postListingProvider.notifier)
              .removeValueFromVariation(variationIndex, value);
        },
        label: Text(
          value,
          style: const TextStyle(color: AppColors.purple),
        ),
      ),
    );
  }
}
