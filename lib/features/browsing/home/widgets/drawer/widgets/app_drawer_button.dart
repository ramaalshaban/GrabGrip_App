import 'package:flutter/material.dart';
import 'package:grab_grip/style/colors.dart';

class AppDrawerButton extends StatelessWidget {
  const AppDrawerButton({
    required this.title,
    required this.onTabFunction,
  });

  final String title;
  final VoidCallback onTabFunction;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 34),
      title: Text(
        title,
        style: const TextStyle(
          color: AppColors.gray,
          fontSize: 16,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        color: AppColors.gray,
        size: 16,
      ),
      onTap: () {
        onTabFunction.call();
      },
    );
  }
}
