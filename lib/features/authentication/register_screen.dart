import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/features/authentication/models/auth_request/auth_request.dart';
import 'package:grab_grip/features/authentication/utils/text_field_validators.dart';
import 'package:grab_grip/features/authentication/widgets/register_button.dart';
import 'package:grab_grip/features/authentication/widgets/registration_app_bar.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text_fields.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/sized_box.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({this.onSuccessRegistration, Key? key})
      : super(key: key);

  final VoidCallback? onSuccessRegistration;

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  late String name = "";
  late String email = "";
  late String password = "";
  late String passwordConfirmation = "";

  String? _passwordConfirmationFieldValidator(
    String? passwordConfirmation,
  ) =>
      (passwordConfirmation == null || passwordConfirmation != password)
          ? 'The password confirmation does not match'
          : null;

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
              //region Personal details label
              Text(
                AppLocalizations.of(context)!.personal_details,
                style: const TextStyle(
                  color: AppColors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              //endregion
              height48(),
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    //region Name text field
                    TextFormField(
                      onChanged: (text) => name = text,
                      validator: nameFieldValidator,
                      keyboardType: TextInputType.name,
                      decoration: registrationInputDecoration.copyWith(
                        hintText: AppLocalizations.of(context)!.name,
                      ),
                      cursorColor: AppColors.purple,
                    ),
                    //endregion
                    height36(),
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
                    height36(),
                    //region Password confirmation text field
                    TextFormField(
                      onChanged: (text) => passwordConfirmation = text,
                      validator: _passwordConfirmationFieldValidator,
                      cursorColor: AppColors.purple,
                      obscureText: true,
                      decoration: registrationInputDecoration.copyWith(
                        hintText:
                            AppLocalizations.of(context)!.password_confirmation,
                      ),
                    ),
                    //endregion
                    height48(),
                    height48(),
                    //region Join button
                    Container(
                      width: screenWidth(context),
                      height: 48.0,
                      color: AppColors.purple,
                      child: RegisterButton(
                        formKey: _formKey,
                        authModel: AuthModel(
                          email,
                          password,
                          name,
                          passwordConfirmation,
                        ),
                        onSuccessRegistration: widget.onSuccessRegistration,
                      ),
                    ),
                    //endregion
                    height24(),
                    //region Already have an account button
                    TextButton(
                      onPressed: () => context.router.replace(
                        LoginScreenRoute(
                          onSuccessLogin: widget.onSuccessRegistration,
                        ),
                      ),
                      child: Text(
                        AppLocalizations.of(context)!.already_have_account,
                        style: const TextStyle(
                          color: AppColors.purple,
                        ),
                      ),
                    ),
                    //endregion
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
