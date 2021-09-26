import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
