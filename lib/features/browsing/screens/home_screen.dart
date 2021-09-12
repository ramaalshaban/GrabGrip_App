import 'package:flutter/material.dart';
import 'package:grab_grip/features/browsing/widgets/application_bar.dart';
import 'package:grab_grip/features/browsing/widgets/drawer.dart';
import 'package:grab_grip/features/browsing/widgets/horizontal_list.dart';
import 'package:grab_grip/style/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: applicationBar,
      drawer: drawer(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: HorizontalList(
                title: "Explore",
                data: ["", "", "", "", "", "", "", "", "", ""],
              ),
            ),
            Container(
              child: HorizontalList(
                title: "Best Sellers",
                data: ["", "", "", "", "", ""],
              ),
            ),
            Container(
              child: HorizontalList(
                title: "Top Trends",
                data: ["", "", "", "", "", "", "", "", "", ""],
              ),
            )
          ],
        ),
      ),
    );
  }
}
