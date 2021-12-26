import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/device.dart';

class ContinueButton extends ConsumerWidget {
  const ContinueButton({
    Key? key,
    this.formKey,
    required this.onClickAction,
    required this.buttonText,
    this.isPurple = true,
  }) : super(key: key);

  final GlobalKey<FormState>? formKey;
  final Function onClickAction;
  final String buttonText;
  final bool isPurple;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(httpRequestStateProvider).maybeWhen(
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          orElse: () => Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            constraints: BoxConstraints(minWidth: screenWidth(context) / 3),
            decoration: BoxDecoration(
              color: isPurple ? AppColors.purple : AppColors.white,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                width: 1.5,
                color: AppColors.purple,
              ),
            ),
            height: 48.0,
            child: TextButton(
              onPressed: () async {
                if (formKey != null) {
                  if (formKey!.currentState!.validate()) {
                    onClickAction.call();
                  }
                } else {
                  onClickAction.call();
                }
              },
              child: Text(
                buttonText,
                style: TextStyle(
                  color: isPurple ? AppColors.white : AppColors.purple,
                ),
              ),
            ),
          ),
        );
  }
}
