import 'package:flutter/material.dart';
import 'package:grab_grip/features/user_profile/shared/models/user.dart';
import 'package:grab_grip/utils/sized_box.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
            user.avatar,
          ),
        ),
        height12(),
        Text(
          user.userName,
        ),
        height12(),
        Text(user.phone ?? ""),
        height12(),
        Text(user.bio ?? ""),
        height12(),
        Text(user.city ?? ""),
        height12(),
        Text(user.countryName ?? ""),
        height12(),
      ],
    );
  }
}
