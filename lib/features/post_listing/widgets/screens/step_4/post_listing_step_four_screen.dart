import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';

class PostListingStepFourScreen extends StatelessWidget {
  const PostListingStepFourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Text("I am step four!"),
        ),
        Consumer(
          builder: (_, ref, __) {
            return TextButton(
              onPressed: () {
                // reset the state of the previous user actions the might be saved in the providers
                ref(postListingStepProvider.notifier).setStep1();
                ref(postListingProvider.notifier).reset();
                Navigator.pop(context);
              },
              child: const Text("continue to step 1 again"),
            );
          },
        ),
      ],
    );
  }
}
