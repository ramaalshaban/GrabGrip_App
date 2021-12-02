import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/sized_box.dart';

class UserWidget extends ConsumerWidget {
  const UserWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader ref) {
    final listingOwner = ref(listingDetailsProvider).listingOwner;
    return ref(httpRequestStateProvider).maybeWhen(
      loading: () => const Center(
        child: SizedBox(
          height: 14,
          width: 14,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            color: AppColors.purple,
          ),
        ),
      ),
      error: (_) => Container(),
      orElse: () => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                listingOwner?.avatar ?? "",
              ),
            ),
            height12(),
            Text(
              listingOwner?.userName ?? "",
            ),
            height12(),
            Text(listingOwner?.phone ?? ""),
            height12(),
            Text(listingOwner?.bio ?? ""),
            height12(),
            Text(listingOwner?.city ?? ""),
            height12(),
            Text(listingOwner?.countryName ?? ""),
            height12(),
          ],
        ),
      ),
    );
  }
}
