import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/features/registration/widgets/registration_app_bar.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text_fields.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/sized_box.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
                'Personal details',
                style: TextStyle(
                  color: AppColors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              height48(),
              Form(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: AppTextFields.registrationInputDecoration
                          .copyWith(hintText: "Email"),
                      cursorColor: AppColors.purple,
                    ),
                    height36(),
                    TextFormField(
                      cursorColor: AppColors.purple,
                      obscureText: true,
                      decoration: AppTextFields.registrationInputDecoration
                          .copyWith(hintText: "Password"),
                    ),
                    height36(),
                    TextFormField(
                      cursorColor: AppColors.purple,
                      keyboardType: TextInputType.phone,
                      decoration: AppTextFields.registrationInputDecoration
                          .copyWith(hintText: "Phone"),
                    ),
                    height36(),
                    TextFormField(
                      keyboardType: TextInputType.datetime,
                      cursorColor: AppColors.purple,
                      decoration: AppTextFields.registrationInputDecoration
                          .copyWith(hintText: "Date of birth"),
                    ),
                    height36(),
                    TextFormField(
                      maxLines: 2,
                      keyboardType: TextInputType.streetAddress,
                      cursorColor: AppColors.purple,
                      decoration: AppTextFields.registrationInputDecoration
                          .copyWith(hintText: "Address"),
                    ),
                    height48(),
                    height48(),
                    Container(
                      width: screenWidth(context),
                      color: AppColors.purple,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Join',
                          style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    height24(),
                    TextButton(
                      onPressed: () =>
                          context.router.replace(const LoginScreenRoute()),
                      child: const Text(
                        "Already have an account? Sign in",
                        style: TextStyle(
                          color: AppColors.purple,
                        ),
                      ),
                    )
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
