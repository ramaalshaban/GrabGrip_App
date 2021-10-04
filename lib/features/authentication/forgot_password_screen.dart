import 'package:flutter/material.dart';
import 'package:grab_grip/features/authentication/widgets/registration_app_bar.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text_fields.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/sized_box.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const RegistrationAppBar(),
      body: Container(
        color: AppColors.white,
        height: screenHeightWithoutExtras(context),
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(40.0, 40.0, 40.0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Forgot password',
                style: TextStyle(
                  color: AppColors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              height24(),
              const Text(
                'Please enter your email address. You will receive a link to create a new password via email.',
                style: TextStyle(
                  height: 1.4,
                  color: AppColors.purple,
                  fontSize: 14.0,
                ),
              ),
              height60(),
              Form(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: AppTextFields.registrationInputDecoration
                          .copyWith(hintText: "Email"),
                      cursorColor: AppColors.purple,
                    ),
                    height60(),
                    Container(
                      width: screenWidth(context),
                      color: AppColors.purple,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'SEND',
                          style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
