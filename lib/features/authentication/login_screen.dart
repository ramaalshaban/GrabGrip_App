import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/configs/routes/app_router.gr.dart';
import 'package:grab_grip/features/authentication/models/auth_request/auth_request.dart';
import 'package:grab_grip/features/authentication/utils/text_field_validators.dart';
import 'package:grab_grip/features/authentication/widgets/registration_app_bar.dart';
import 'package:grab_grip/services/network/models/http_request_state/http_request_state.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text_fields.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/functions.dart';
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
              Text(
                AppLocalizations.of(context)!.login,
                style: const TextStyle(
                  color: AppColors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              height48(),
              height48(),
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
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
                    height48(),
                    height48(),
                    Container(
                      width: screenWidth(context),
                      height: 48.0,
                      color: AppColors.purple,
                      child: ProviderListener(
                        provider: httpRequestStateProvider,
                        onChange: (context, HttpRequestState httpRequestState) {
                          httpRequestState.whenOrNull(
                            success: (_) => showSnackBar(
                              context,
                              AppLocalizations.of(context)!
                                  .you_logged_in_successfully,
                            ),
                            error: (errorMessage) =>
                                showSnackBarForError(context, errorMessage),
                          );
                        },
                        child: Consumer(
                          builder: (_, watch, __) {
                            final httpRequestState =
                                watch(httpRequestStateProvider);
                            return httpRequestState.when(
                              noRequestInProgress: () {
                                return LoginButton(
                                  formKey: _formKey,
                                  watch: watch,
                                  authModel: AuthModel(email, password),
                                );
                              },
                              success: (_) {
                                final authenticationState = watch(authProvider);
                                return authenticationState.when(
                                  authenticated: () {
                                    context.router.pop();
                                    if (widget.onSuccessLogin != null) {
                                      widget.onSuccessLogin!.call();
                                    }
                                    // this return statement is just to satisfy the Consumer widget's builder
                                    // and the returned container will not show up anywhere
                                    return Container();
                                  },
                                  notAuthenticated: () {
                                    return LoginButton(
                                      formKey: _formKey,
                                      watch: watch,
                                      authModel: AuthModel(email, password),
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
                                return LoginButton(
                                  formKey: _formKey,
                                  watch: watch,
                                  authModel: AuthModel(email, password),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                    height24(),
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
                          'Login With Facebook',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    height24(),
                    TextButton(
                      onPressed: () => context.router.replace(
                        RegisterScreenRoute(
                          onSuccessLogin: widget.onSuccessLogin,
                        ),
                      ),
                      child: Text(
                        AppLocalizations.of(context)!.do_not_have_account,
                        style: const TextStyle(
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

class LoginButton extends StatelessWidget {
  const LoginButton(
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
          watch(authProvider.notifier).login(authModel);
        }
      },
      child: Text(
        AppLocalizations.of(context)!.login,
        style: const TextStyle(
          color: AppColors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
