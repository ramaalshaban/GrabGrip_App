import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/features/registration/widgets/registration_bar.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text_fields.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/sized_box.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: registrationBar(context),
      body: Container(
        color: AppColors.white,
        height: screenHeightWithoutExtras(context),
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(40.0, 40.0, 40.0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Login',
                style: TextStyle(
                  color: AppColors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              height48(),
              height48(),
              Form(
                child: Column(
                  children: <Widget>[
                    TextFormField(
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
                    height48(),
                    height48(),
                    height48(),
                    Container(
                      width: screenWidth(context),
                      color: AppColors.purple,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'LOGIN',
                          style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    height24(),
                    TextButton(
                      onPressed: () => context.router
                          .push(const ForgotPasswordScreenRoute()),
                      child: const Text(
                        'Forgot your password?',
                        style: TextStyle(
                          color: AppColors.purple,
                        ),
                      ),
                    ),
                    height60(),
                    Container(
                      width: screenWidth(context),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue,
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'LOGIN WITH FACEBOOK',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    height24(),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Don't have an account? Sign Up",
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
