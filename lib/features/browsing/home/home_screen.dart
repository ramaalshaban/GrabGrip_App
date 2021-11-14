import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/features/browsing/home/widgets/drawer/drawer.dart';
import 'package:grab_grip/features/browsing/home/widgets/home_app_bar.dart';
import 'package:grab_grip/features/browsing/home/widgets/horizontal_list.dart';
import 'package:grab_grip/style/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // let the authProvider be initialized (i.e. let its _initialize() method run)
    context.read(authProvider);
    return SafeArea(
      child: Scaffold(
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
      ),
    );
  }
}
