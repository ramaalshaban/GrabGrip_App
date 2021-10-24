import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';

class PostListingStepThreeScreen extends StatelessWidget {
  const PostListingStepThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Text("I am step three!"),
        ),
        Consumer(
          builder: (_, ref, __) {
            return TextButton(
              onPressed: () {
                ref(postListingStepProvider.notifier).setStep4();
              },
              child: const Text("continue to step 4"),
            );
          },
        ),
      ],
    );
  }
}
