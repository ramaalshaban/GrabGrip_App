import 'package:flutter/material.dart';
import 'package:grab_grip/features/browsing/browse/models/gear/gear.dart';

class BrowseDetailsScreen extends StatelessWidget {
  final Gear clickedGear;

  const BrowseDetailsScreen({Key? key, required this.clickedGear})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(clickedGear.title),
    );
  }
}
