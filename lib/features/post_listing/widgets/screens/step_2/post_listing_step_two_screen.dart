import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';

class PostListingStepTwoScreen extends StatelessWidget {
  const PostListingStepTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Text("I am step two!"),
        ),
        Consumer(
          builder: (_, ref, __) {
            return TextButton(
              onPressed: () {
                ref(postListingStepProvider.notifier).setStep3();
              },
              child: const Text("continue to step 3"),
            );
          },
        ),
      ],
    );
  }
}
