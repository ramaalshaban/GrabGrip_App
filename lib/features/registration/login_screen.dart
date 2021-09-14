import 'package:flutter/material.dart';
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
        height: Device.screenHeightWithoutExtras(context),
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(40.0, 40.0, 40.0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Login',
                style: TextStyle(
                  color: AppColors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              SizedBoxHeight.h48(),
              SizedBoxHeight.h24(),
              Form(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: AppTextFields.registration_input_decoration
                          .copyWith(hintText: "Email"),
                      cursorColor: AppColors.purple,
                    ),
                    SizedBoxHeight.h36(),
                    TextFormField(
                      cursorColor: AppColors.purple,
                      obscureText: true,
                      decoration: AppTextFields.registration_input_decoration
                          .copyWith(hintText: "Password"),
                    ),
                    SizedBoxHeight.h48(),
                    SizedBoxHeight.h48(),
                    SizedBoxHeight.h48(),
                    Container(
                      width: Device.screenWidth(context),
                      color: AppColors.purple,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBoxHeight.h24(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot your password?',
                        style: TextStyle(
                          color: AppColors.purple,
                        ),
                      ),
                    ),
                    SizedBoxHeight.h60(),
                    Container(
                      width: Device.screenWidth(context),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue,
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'LOGIN WITH FACEBOOK',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBoxHeight.h24(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Don\'t have an account? Sign Up',
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
