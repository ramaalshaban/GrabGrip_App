import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/features/authentication/models/auth_request/auth_request.dart';
import 'package:grab_grip/features/authentication/utils/text_field_validators.dart';
import 'package:grab_grip/features/authentication/widgets/login_button.dart';
import 'package:grab_grip/features/authentication/widgets/registration_app_bar.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text_fields.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/sized_box.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key? key,
    this.onSuccessLogin,
  }) : super(key: key);

  final VoidCallback? onSuccessLogin;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  late String email = "";
  late String password = "";

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
              //region Login label
              Text(
                AppLocalizations.of(context)!.login,
                style: const TextStyle(
                  color: AppColors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              //endregion
              height48(),
              height48(),
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    //region Email text field
                    TextFormField(
                      onChanged: (text) => email = text,
                      validator: emailFieldValidator,
                      keyboardType: TextInputType.emailAddress,
                      decoration: registrationInputDecoration.copyWith(
                        hintText: AppLocalizations.of(context)!.email,
                      ),
                      cursorColor: AppColors.purple,
                    ),
                    //endregion
                    height36(),
                    //region Password text field
                    TextFormField(
                      onChanged: (text) => password = text,
                      validator: passwordFieldValidator,
                      cursorColor: AppColors.purple,
                      obscureText: true,
                      decoration: registrationInputDecoration.copyWith(
                        hintText: AppLocalizations.of(context)!.password,
                      ),
                    ),
                    //endregion
                    height48(),
                    height48(),
                    //region Login button
                    Container(
                      width: screenWidth(context),
                      height: 48.0,
                      color: AppColors.purple,
                      child: LoginButton(
                        formKey: _formKey,
                        authModel: AuthModel(email, password),
                        onSuccessLogin: widget.onSuccessLogin,
                      ),
                    ),
                    //endregion
                    height24(),
                    //region Forgot password button
                    TextButton(
                      onPressed: () => context.router
                          .push(const ForgotPasswordScreenRoute()),
                      child: Text(
                        AppLocalizations.of(context)!.forget_password,
                        style: const TextStyle(
                          color: AppColors.purple,
                        ),
                      ),
                    ),
                    //endregion
                    height60(),
                    //region Facebook login button
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
                          'Login With Facebook',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    //endregion
                    height24(),
                    //region Sign up button
                    TextButton(
                      onPressed: () => context.router.replace(
                        RegisterScreenRoute(
                          onSuccessRegistration: widget.onSuccessLogin,
                        ),
                      ),
                      child: Text(
                        AppLocalizations.of(context)!.do_not_have_account,
                        style: const TextStyle(
                          color: AppColors.purple,
                        ),
                      ),
                    )
                    //endregion
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
