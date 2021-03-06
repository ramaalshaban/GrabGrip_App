import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';
import 'package:grab_grip/features/user_profile/favorites/widgets/favorite_item.dart';
import 'package:grab_grip/style/colors.dart';

class FavoriteScreenLikeButton extends StatelessWidget {
  const FavoriteScreenLikeButton({
    Key? key,
    required this.favoriteGear,
    required this.index,
  }) : super(key: key);

  final Gear favoriteGear;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, ref, __) {
        return ref.watch(httpRequestStateProvider).maybeWhen(
              innerLoading: (toggledItemIndex) => toggledItemIndex == index
                  ? const SizedBox(
                      height: 24,
                      width: 24,
                      child: CircularProgressIndicator(
                        color: AppColors.green,
                      ),
                    )
                  : IconButton(
                      padding: const EdgeInsets.only(right: 8),
                      splashColor: AppColors.green,
                      constraints: const BoxConstraints(),
                      onPressed: () => unlikeListing(context, ref),
                      icon: const Icon(
                        Icons.favorite,
                        color: AppColors.green,
                      ),
                    ),
              orElse: () => IconButton(
                padding: const EdgeInsets.only(right: 8),
                splashColor: AppColors.green,
                constraints: const BoxConstraints(),
                onPressed: () => unlikeListing(context, ref),
                icon: const Icon(
                  Icons.favorite,
                  color: AppColors.green,
                ),
              ),
            );
      },
    );
  }

  void unlikeListing(BuildContext context, WidgetRef ref) {
    {
      ref
          .watch(favoritesProvider.notifier)
          .removeFromFavoriteListings(
            hash: favoriteGear.hash,
            slug: favoriteGear.slug,
            index: index,
          )
          .then(
        (_) {
          AnimatedList.of(context).removeItem(
            index,
            (context, animation) => SlideTransition(
              position: animation.drive(
                Tween(
                  begin: const Offset(1, 0),
                  end: Offset.zero,
                ),
              ),
              child: FavoriteItem(
                favoriteGear: favoriteGear,
                index: index,
              ),
            ),
          );
        },
      );
    }
  }
}
