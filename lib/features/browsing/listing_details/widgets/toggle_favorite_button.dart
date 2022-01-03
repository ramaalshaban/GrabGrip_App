import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/utils/functions.dart';

class ToggleFavoriteButton extends ConsumerWidget {
  const ToggleFavoriteButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.only(top: 8, right: 8),
      height: 48,
      width: 48,
      decoration: const BoxDecoration(
        color: AppColors.lightPurple,
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      child: ref.watch(httpRequestStateProvider).maybeWhen(
            innerLoading: (_) => const Center(
              child: SizedBox(
                height: 24,
                width: 24,
                child: CircularProgressIndicator(
                  color: AppColors.green,
                ),
              ),
            ),
            orElse: () => InkWell(
              splashColor: Colors.transparent,
              onTap: () {
                final userIsAuthenticated = ref
                    .watch(
                      userProfileProvider.notifier,
                    )
                    .userIsAuthenticated();
                if (userIsAuthenticated) {
                  final hash = ref.watch(listingDetailsProvider.notifier).hash!;
                  final slug = ref.watch(listingDetailsProvider.notifier).slug!;
                  ref.watch(favoritesProvider.notifier).toggleFavoriteStatus(
                        hash: hash,
                        slug: slug,
                      );
                } else {
                  showSnackBar(
                    context,
                    "Log in please to add this listing to your favorites list",
                    AppColors.amber,
                  );
                }
              },
              child: Icon(
                Icons.favorite,
                size: 30,
                color: ref.watch(
                  listingDetailsProvider.select((state) {
                    // return false to avoid NPE when user opens listing details screen and the state gets reset.
                    return state.isFavorited ?? false;
                  }),
                )
                    ? AppColors.green
                    : AppColors.white,
              ),
            ),
          ),
    );
  }
}
