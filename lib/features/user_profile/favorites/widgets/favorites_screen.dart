import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/user_profile/favorites/widgets/favorite_item.dart';
import 'package:grab_grip/features/user_profile/favorites/widgets/favorite_item_skeleton_loader.dart';
import 'package:grab_grip/shared/widgets/custom_app_bar.dart';
import 'package:grab_grip/style/colors.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      context.read(favoritesProvider.notifier).getFavorites();
    });
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CustomAppBar(appBarTitle: "Favorites"),
      body: Consumer(
        builder: (context, ref, __) {
          final favorites = ref(favoritesProvider);
          return ref(httpRequestStateProvider).maybeWhen(
            loading: () => const FavoriteItemSkeletonLoader(),
            error: (errorMessage) => Center(
              child: Text(
                errorMessage,
                style: const TextStyle(
                  fontSize: 18,
                  color: AppColors.purple,
                ),
              ),
            ),
            orElse: () => favorites.isNotEmpty
                ? AnimatedList(
                    initialItemCount: favorites.length,
                    itemBuilder: (_, index, __) {
                      return FavoriteItem(
                        favoriteGear: favorites[index],
                        index: index,
                      );
                    },
                  )
                : const Center(
                    child: Text("Your favorites list is empty. "),
                  ),
          );
        },
      ),
    );
  }
}
