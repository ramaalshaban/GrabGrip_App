import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/browsing/listing_details/models/widget/response_widget.dart';
import 'package:grab_grip/features/browsing/listing_details/widgets/date_range_picker/booking_info_dialog.dart';
import 'package:grab_grip/style/box_decorations.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text.dart';
import 'package:grab_grip/style/text_fields.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/functions.dart';
import 'package:grab_grip/utils/sized_box.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DateRangePicker extends ConsumerWidget {
  const DateRangePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //region Listeners
    ref.listen<ResponseWidget?>(
        listingDetailsProvider.select((value) => value.widget),
        (_, responseWidget) {
      if (responseWidget?.error != null) {
        // when the user picks an invalid booking date, the api returns a successful response (200 OK) with
        // an error field (inside the widget field) that contains the error.
        // so in this case we have to show an error snack bar
        // But, check this first:
        if (ref.watch(listingDetailsProvider.notifier).startDate == null ||
            ref.watch(listingDetailsProvider.notifier).endDate == null) {
          // when user first opens up listing details screen for a listing of type rent, the error message "These dates cannot be booked" shows up since the api
          // returns it when there are no start and end dates passed with the first getListing request (which is the case when the screen first shows up).
          // to avoid showing the snack bar, the above if statement has been added (to check start and end date)
          return;
        }
        showSnackBarForError(
          context,
          responseWidget!.error!,
        );
      }
    });
    //endregion
    // the following commented code might be used later to set a maximum date for the picker
    // final now = DateTime.now();
    // final nextYearLikeToday = DateTime(
    //   now.year + 1,
    //   now.month,
    //   now.day,
    // );
    return Visibility(
      visible: ref.watch(
        listingDetailsProvider
            .select((listingDetails) => listingDetails.isForRent ?? false),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: listingDetailsBoxDecoration,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //region Booking date label
              const Text(
                "Booking date",
                style: AppTextStyles.listingDetailsTitleStyle,
              ),
              //endregion
              height18(),
              Row(
                children: [
                  //region Date range picker
                  Expanded(
                    child: GestureDetector(
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
                                  return SfDateRangePicker(
                                    onSubmit: (pickedTime) {
                                      if ((pickedTime as PickerDateRange?) ==
                                          null) {
                                        showSnackBar(
                                          context,
                                          "Pick your booking date range please",
                                          AppColors.amber,
                                        );
                                        return;
                                      }
                                      // check if user picked a range
                                      if (pickedTime!.endDate == null) {
                                        showSnackBar(
                                          context,
                                          "Pick the booking end date please",
                                          AppColors.amber,
                                        );
                                      } else {
                                        final startDate =
                                            pickedTime.startDate.toString();
                                        final endDate =
                                            pickedTime.endDate.toString();
                                        ref
                                            .watch(
                                              listingDetailsProvider.notifier,
                                            )
                                            .setBookingDate(startDate, endDate);
                                        ref
                                            .watch(
                                              listingDetailsProvider.notifier,
                                            )
                                            .pickerDateRange = pickedTime;
                                        context.router.pop();
                                      }
                                    },
                                    selectionMode:
                                        DateRangePickerSelectionMode.range,
                                    onCancel: () => context.router.pop(),
                                    todayHighlightColor: AppColors.purple,
                                    initialSelectedRange: ref
                                        .watch(listingDetailsProvider.notifier)
                                        .pickerDateRange,
                                    rangeSelectionColor: AppColors.lightPurple,
                                    startRangeSelectionColor: AppColors.purple,
                                    endRangeSelectionColor: AppColors.purple,
                                    headerStyle:
                                        const DateRangePickerHeaderStyle(
                                      backgroundColor: AppColors.purple,
                                      textStyle: TextStyle(
                                        color: AppColors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                    showNavigationArrow: true,
                                    enablePastDates: false,
                                    // the following commented code might be used later to set a maximum date for the picker
                                    // maxDate: ref
                                    //         .watch(
                                    //           listingDetailsProvider.notifier,
                                    //         )
                                    //         .listingEndDate ??
                                    //     nextYearLikeToday,
                                    headerHeight: 60,
                                    initialDisplayDate: ref
                                        .watch(listingDetailsProvider.notifier)
                                        .pickerDateRange
                                        ?.startDate,
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
                        );
                      },
                      //endregion
                      //region Picked booking date container
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(12, 0, 4, 0),
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: AppColors.purple,
                          ),
                        ),
                        constraints: const BoxConstraints.expand(height: 50),
                        child: Consumer(
                          builder: (_, ref, __) {
                            final formattedBookingDate = ref.watch(
                              listingDetailsProvider.select(
                                (state) =>
                                    state.formattedBookingDate ??
                                    "Pick your booking date",
                              ),
                            );
                            return IgnorePointer(
                              child: Text(
                                formattedBookingDate,
                                style: const TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      //endregion
                    ),
                  ),
                  //endregion
                  width8(),
                  //region Booking info button
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (_) => const BookingInfoDialog(),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      elevation: 4,
                      primary: AppColors.purple,
                    ),
                    child: const Text(
                      "Booking Rules",
                      style: TextStyle(
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  //endregion
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
