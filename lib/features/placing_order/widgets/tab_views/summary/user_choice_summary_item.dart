import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grab_grip/features/placing_order/models/user_choice/user_choice.dart';
import 'package:grab_grip/utils/constants.dart';

class UserChoiceSummaryItem extends StatelessWidget {
  const UserChoiceSummaryItem({
    Key? key,
    required this.userChoice,
  }) : super(key: key);

  final UserChoice userChoice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: summaryTabViewPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(userChoice.name),
          if (userChoice.group == "shipping")
            Expanded(
              child: Text(
                "${userChoice.value} (${userChoice.price!})",
                textAlign: TextAlign.end,
              ),
            )
          else if (userChoice.group == "additional_options")
            Expanded(
              child: Text(
                "${userChoice.value} (${userChoice.price!}X${userChoice.quantity})",
                textAlign: TextAlign.end,
              ),
            )
          else
            Text(userChoice.value),
        ],
      ),
    );
  }
}
