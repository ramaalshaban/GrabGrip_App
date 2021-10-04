import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/features/authentication/models/auth_request/auth_request.dart';
import 'package:grab_grip/features/authentication/utils/text_field_validators.dart';
import 'package:grab_grip/features/authentication/widgets/registration_app_bar.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text_fields.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/functions.dart';
import 'package:grab_grip/utils/sized_box.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
              Text(
                AppLocalizations.of(context)!.personal_details,
                style: const TextStyle(
                  color: AppColors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              height48(),
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      onChanged: (text) => name = text,
                      validator: nameFieldValidator,
                      keyboardType: TextInputType.name,
                      decoration:
                          AppTextFields.registrationInputDecoration.copyWith(
                        hintText: AppLocalizations.of(context)!.name,
                      ),
                      cursorColor: AppColors.purple,
                    ),
                    height36(),
                    TextFormField(
                      onChanged: (text) => email = text,
                      validator: emailFieldValidator,
                      keyboardType: TextInputType.emailAddress,
                      decoration:
                          AppTextFields.registrationInputDecoration.copyWith(
                        hintText: AppLocalizations.of(context)!.email,
                      ),
                      cursorColor: AppColors.purple,
                    ),
                    height36(),
                    TextFormField(
                      onChanged: (text) => password = text,
                      validator: passwordFieldValidator,
                      cursorColor: AppColors.purple,
                      obscureText: true,
                      decoration:
                          AppTextFields.registrationInputDecoration.copyWith(
                        hintText: AppLocalizations.of(context)!.password,
                      ),
                    ),
                    height36(),
                    TextFormField(
                      onChanged: (text) => passwordConfirmation = text,
                      validator: _passwordConfirmationFieldValidator,
                      cursorColor: AppColors.purple,
                      obscureText: true,
                      decoration:
                          AppTextFields.registrationInputDecoration.copyWith(
                        hintText:
                            AppLocalizations.of(context)!.password_confirmation,
                      ),
                    ),
                    height48(),
                    height48(),
                    Container(
                      width: screenWidth(context),
                      height: 48.0,
                      color: AppColors.purple,
                      child: Consumer(
                        builder: (_, watch, __) {
                          final httpRequestState =
                              watch(httpRequestStateProvider);
                          return httpRequestState.when(
                            noRequestInProgress: () {
                              return RegisterButton(
                                formKey: _formKey,
                                authModel: AuthModel(
                                  email,
                                  password,
                                  name,
                                  passwordConfirmation,
                                ),
                                watch: watch,
                              );
                            },
                            success: () {
                              final authenticationState = watch(authProvider);
                              return authenticationState.when(
                                authenticated: () {
                                  context.router.pop();
                                  watch(httpRequestStateProvider.notifier)
                                      .reset();
                                  showSnackBar(
                                    context,
                                    AppLocalizations.of(context)!
                                        .you_registered_successfully,
                                  );
                                  // this return statement is just to satisfy the Consumer widget's builder
                                  // and the returned container will not show up anywhere
                                  return Container();
                                },
                                notAuthenticated: () {
                                  return RegisterButton(
                                    formKey: _formKey,
                                    authModel: AuthModel(
                                      email,
                                      password,
                                      name,
                                      passwordConfirmation,
                                    ),
                                    watch: watch,
                                  );
                                },
                              );
                            },
                            loading: () {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            },
                            error: (errorMessage) {
                              watch(httpRequestStateProvider.notifier).reset();
                              showSnackBar(context, errorMessage);
                              return RegisterButton(
                                formKey: _formKey,
                                authModel: AuthModel(
                                  email,
                                  password,
                                  name,
                                  passwordConfirmation,
                                ),
                                watch: watch,
                              );
                            },
                          );
                        },
                      ),
                    ),
                    height24(),
                    TextButton(
                      onPressed: () =>
                          context.router.replace(const LoginScreenRoute()),
                      child: Text(
                        AppLocalizations.of(context)!.already_have_account,
                        style: const TextStyle(
                          color: AppColors.purple,
                        ),
                      ),
                    )
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

class RegisterButton extends StatelessWidget {
  const RegisterButton(
      {Key? key,
      required this.formKey,
      required this.watch,
      required this.authModel})
      : super(key: key);
  final GlobalKey<FormState> formKey;
  final AuthModel authModel;
  final ScopedReader watch;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        if (formKey.currentState!.validate()) {
          watch(authProvider.notifier).register(authModel, context);
        }
      },
      child: Text(
        AppLocalizations.of(context)!.join,
        style: const TextStyle(
          color: AppColors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
