import 'package:flutter/material.dart';
import 'package:grab_grip/style/colors.dart';

class AreYouSureDialog extends StatelessWidget {
  const AreYouSureDialog({
    Key? key,
    required this.contentText,
    required this.continueAction,
    required this.cancelAction,
    required this.continueActionText,
    required this.cancelActionText,
  }) : super(key: key);

  final String contentText;
  final VoidCallback continueAction;
  final VoidCallback cancelAction;
  final String continueActionText;
  final String cancelActionText;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.white,
      content: Text(contentText),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red[900],
              ),
              onPressed: () => cancelAction.call(),
              child: Text(
                cancelActionText,
                style: const TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: AppColors.purple,
              ),
              onPressed: () => continueAction.call(),
              child: Text(
                continueActionText,
                style: const TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
