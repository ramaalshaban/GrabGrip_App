import 'package:flutter/material.dart';
import 'package:grab_grip/style/colors.dart';

const bookingRules = [
  "No charge for pick-up and drop-off days",
  "If you rent gear for 5 to 7 days, you only pay for 3 shoot days.",
  "If you rent gear for 23 to 31 days, you only pay for 10 shoot days.",
  "Weekends count as one day (Friday & Saturday)",
];

class BookingInfoDialog extends StatelessWidget {
  const BookingInfoDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.white,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: List.generate(
          bookingRules.length,
          (index) => ListTile(
            leading: const Text(
              "•",
              style: TextStyle(fontSize: 22),
            ),
            contentPadding: EdgeInsets.zero,
            minLeadingWidth: 0,
            title: Text(bookingRules[index]),
          ),
        ),
      ),
    );
  }
}
