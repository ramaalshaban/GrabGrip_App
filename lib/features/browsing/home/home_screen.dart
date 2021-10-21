import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/features/browsing/home/widgets/drawer.dart';
import 'package:grab_grip/features/browsing/home/widgets/home_app_bar.dart';
import 'package:grab_grip/features/browsing/home/widgets/horizontal_list.dart';
import 'package:grab_grip/style/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const HomeAppBar(),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Consumer(
              builder: (_, watch, __) {
                return TextButton(
                  onPressed: () {
                    context.router.push(
                      const BrowseScreenRoute(),
                    );
                  },
                  child: const Text("Browse Gears"),
                );
              },
            ),
            Consumer(
              builder: (_, watch, __) {
                return TextButton(
                  onPressed: () {
                    context.router.push(
                      const PostListingScreenRoute(),
                    );
                  },
                  child: const Text("Post a Listing"),
                );
              },
            ),
            HorizontalList(
              title: AppLocalizations.of(context)!.explore,
              data: const ["", "", "", "", "", "", "", "", "", ""],
            ),
            HorizontalList(
              title: AppLocalizations.of(context)!.best_sellers,
              data: const ["", "", "", "", "", ""],
            ),
            HorizontalList(
              title: AppLocalizations.of(context)!.top_trends,
              data: const ["", "", "", "", "", "", "", "", "", ""],
            )
          ],
        ),
      ),
    );
  }
}
