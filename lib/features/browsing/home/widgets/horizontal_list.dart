import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:grab_grip/features/browsing/home/widgets/horizontal_list_item.dart';
import 'package:grab_grip/style/text.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/sized_box.dart';

class HorizontalList extends StatelessWidget {
  final String title;
  final List<String> data;

  const HorizontalList({required this.title, required this.data}) : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 4.0, 4.0, 4.0),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          height24(),
          Text(
            title,
            style: AppTextStyles.bigTitle,
          ),
          height12(),
          SizedBox(
            height: screenHeightWithoutExtras(context) *0.3,
            child: ListView.builder(
              itemCount: data.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return HorizontalListItem(item: data[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
