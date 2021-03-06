import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text_fields.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/functions.dart';
import 'package:grab_grip/utils/sized_box.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DatePicker extends StatelessWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //region Label
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              "Listing ends at",
              style: TextStyle(
                color: AppColors.purple,
              ),
            ),
            width4(),
            const Text(
              "(Leave it empty for no end date)",
              style: TextStyle(
                fontSize: 8,
              ),
            ),
          ],
        ),
        //endregion
        height8(),
        GestureDetector(
          //region Date picker dialog
          onTap: () async {
            await showDialog(
              context: context,
              builder: (context) => Center(
                child: Container(
                  decoration: fieldDecoration,
                  width: screenWidth() - 40,
                  height: screenHeightWithoutExtras() / 1.5,
                  child: Consumer(
                    builder: (_, ref, __) {
                      final selectedEndDate = ref
                          .watch(postListingProvider.notifier)
                          .getSelectedEndDate();
                      final initialDate = selectedEndDate ?? DateTime.now();
                      return SfDateRangePicker(
                        onSubmit: (pickedTime) {
                          ref
                              .watch(postListingProvider.notifier)
                              .listingEndDate = pickedTime.toString();
                          context.router.pop();
                        },
                        onCancel: () => context.router.pop(),
                        todayHighlightColor: AppColors.purple,
                        initialDisplayDate: initialDate,
                        headerStyle: const DateRangePickerHeaderStyle(
                          backgroundColor: AppColors.purple,
                          textStyle: TextStyle(
                            color: AppColors.white,
                            fontSize: 20,
                          ),
                        ),
                        showNavigationArrow: true,
                        enablePastDates: false,
                        headerHeight: 60,
                        initialSelectedDate: initialDate,
                        selectionColor: AppColors.purple,
                        showTodayButton: true,
                        showActionButtons: true,
                        backgroundColor: AppColors.white,
                        cancelText: "Cancel",
                        confirmText: "Confirm",
                      );
                    },
                  ),
                ),
              ),
            ).then((_) {
              // prevent the previously focused text field from receiving the focus again after closing the data picker
              FocusScope.of(context).requestFocus(FocusNode());
            });
          },
          //endregion
          //region Picked date container
          child: Container(
            padding: const EdgeInsets.only(left: 12),
            alignment: Alignment.centerLeft,
            decoration: fieldDecoration,
            constraints: const BoxConstraints.expand(height: 50),
            child: Consumer(
              builder: (_, ref, __) {
                final listingEndDate = ref.watch(
                  postListingProvider.select((state) => state.listingEndDate),
                );
                final formattedDate = formatDateForView(listingEndDate);
                return Row(
                  children: [
                    Expanded(
                      child: IgnorePointer(
                        child: Text(
                          formattedDate,
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    //region Remove end date button
                    IconButton(
                      onPressed: () {
                        ref.watch(postListingProvider.notifier).listingEndDate =
                            null;
                      },
                      icon: const Icon(
                        Icons.remove,
                        color: AppColors.purple,
                        size: 30,
                      ),
                    ),
                    //endregion
                  ],
                );
              },
            ),
          ),
          //endregion
        )
      ],
    );
  }
}
