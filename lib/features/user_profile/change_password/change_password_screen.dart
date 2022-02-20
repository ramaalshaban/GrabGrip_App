import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/authentication/utils/text_field_validators.dart';
import 'package:grab_grip/features/user_profile/change_password/models/change_password_request.dart';
import 'package:grab_grip/services/network/models/http_request_state/http_request_state.dart';
import 'package:grab_grip/shared/widgets/continue_button.dart';
import 'package:grab_grip/shared/widgets/custom_app_bar.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text_fields.dart';
import 'package:grab_grip/utils/functions.dart';
import 'package:grab_grip/utils/sized_box.dart';

class ChangePasswordScreen extends ConsumerStatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ChangePasswordScreen> createState() =>
      _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends ConsumerState<ChangePasswordScreen> {
  final _formKey = GlobalKey<FormState>();
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
    //region Listeners
    ref.listen<HttpRequestState>(httpRequestStateProvider, (_, nextState) {
      nextState.whenOrNull(
        success: (_, __) {
          showSnackBar(
            context,
            "Your password has been changed successfully",
          );
          Navigator.pop(context);
        },
        error: (errorMessage) => showSnackBarForError(
          context,
          errorMessage,
        ),
      );
    });
    //endregion
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CustomAppBar(appBarTitle: "Change Password"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(40.0, 40.0, 40.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  //region Email text field
                  Consumer(
                      builder: (_, ref, __) {
                    return TextFormField(
                      decoration: standardInputDecoration.copyWith(
                        labelText: AppLocalizations.of(context)!.email,
                      ),
                      cursorColor: AppColors.purple,
                      readOnly: true,
                      initialValue: ref
                              .watch(userProfileProvider.notifier)
                              .getUser()
                              ?.email ??
                          "You haven't provided an email",
                    );
                  }),
                  //endregion
                  height48(),
                  //region Password text field
                  TextFormField(
                    onChanged: (text) => password = text,
                    validator: passwordFieldValidator,
                    cursorColor: AppColors.purple,
                    obscureText: true,
                    decoration: standardInputDecoration.copyWith(
                      labelText: AppLocalizations.of(context)!.password,
                    ),
                  ),
                  //endregion
                  height48(),
                  //region Password confirmation text field
                  TextFormField(
                    onChanged: (text) => passwordConfirmation = text,
                    validator: _passwordConfirmationFieldValidator,
                    cursorColor: AppColors.purple,
                    obscureText: true,
                    decoration: standardInputDecoration.copyWith(
                      labelText:
                          AppLocalizations.of(context)!.password_confirmation,
                    ),
                  ),
                  //endregion
                  height36(),
                  Consumer(
                    builder: (_, ref, __) {
                      return ContinueButton(
                        formKey: _formKey,
                        buttonText: "Save password",
                        onClickAction: () {
                          ref.watch(authProvider.notifier).changePassword(
                                ChangePasswordRequest(
                                  password,
                                  passwordConfirmation,
                                ),
                              );
                        },
                      );
                    },
                  ),
                  height24(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
