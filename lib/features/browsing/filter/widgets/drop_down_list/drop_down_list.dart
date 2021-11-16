import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/browsing/browse/providers/browse_provider.dart';
import 'package:grab_grip/features/browsing/filter/models/drop_down_item.dart';
import 'package:grab_grip/features/browsing/filter/models/drop_down_type/drop_down_type.dart';
import 'package:grab_grip/style/colors.dart';

class DropDownList extends StatefulWidget {
  const DropDownList({Key? key, required this.data, required this.dataType})
      : super(key: key);

  final List<DropDownItem> data;
  final DropDownType dataType;

  @override
  _DropDownListState createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Consumer(
        builder: (_, ref, __) {
          final DropDownItem? selectedDropDownItem = widget.dataType.when(
            sortOptions: () {
              return ref(filterAndSortProvider.notifier).sortOption;
            },
            distanceOptions: () {
              return ref(
                filterAndSortProvider,
              ).distance;
            },
            listingTypeOptions: () {
              return ref(
                filterAndSortProvider,
              ).listingType;
            },
          );

          return DropdownButton<DropDownItem>(
            isExpanded: true,
            value: selectedDropDownItem,
            icon: const Icon(Icons.sort, size: 18, color: AppColors.purple),
            elevation: 16,
            style: const TextStyle(color: AppColors.purple),
            onChanged: (DropDownItem? newValue) {
              setState(() {});
              widget.dataType.when(
                sortOptions: () {
                  ref(filterAndSortProvider.notifier).sortOption = newValue;
                  BrowseProvider.pagingController.refresh();
                },
                distanceOptions: () {
                  ref(filterAndSortProvider.notifier).distance = newValue;
                },
                listingTypeOptions: () {
                  ref(filterAndSortProvider.notifier).listingType = newValue;
                },
              );
            },
            items: widget.data.map<DropdownMenuItem<DropDownItem>>(
                (DropDownItem filteringOption) {
              return DropdownMenuItem<DropDownItem>(
                value: filteringOption,
                child: Text(filteringOption.title!),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
