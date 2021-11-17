import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grab_grip/configs/providers/providers.dart';
import 'package:grab_grip/features/authentication/utils/text_field_validators.dart';
import 'package:grab_grip/features/feedback/contact_us/models/contact_us/contact_us_form.dart';
import 'package:grab_grip/services/network/models/http_request_state/http_request_state.dart';
import 'package:grab_grip/style/colors.dart';
import 'package:grab_grip/style/text_fields.dart';
import 'package:grab_grip/utils/device.dart';
import 'package:grab_grip/utils/functions.dart';
import 'package:grab_grip/utils/sized_box.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  final _formKey = GlobalKey<FormState>();
  String name = "";
  String email = "";
  String comments = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: AppColors.purple,
        ),
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: AppColors.white,
        elevation: 0,
        title: Text(
          AppLocalizations.of(context)!.contact_us,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
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
                  TextFormField(
                    onChanged: (text) => name = text,
                    validator: nameFieldValidator,
                    keyboardType: TextInputType.name,
                    decoration: standardInputDecoration.copyWith(
                      labelText: AppLocalizations.of(context)!.name,
                      contentPadding: const EdgeInsets.fromLTRB(8, 14, 8, 8),
                    ),
                    cursorColor: AppColors.purple,
                  ),
                  height24(),
                  TextFormField(
                    onChanged: (text) => email = text,
                    validator: emailFieldValidator,
                    keyboardType: TextInputType.emailAddress,
                    decoration: standardInputDecoration.copyWith(
                      labelText: AppLocalizations.of(context)!.email,
                      contentPadding: const EdgeInsets.fromLTRB(8, 14, 8, 8),
                    ),
                    cursorColor: AppColors.purple,
                  ),
                  height24(),
                  TextFormField(
                    minLines: 10,
                    maxLines: 10,
                    onChanged: (text) => comments = text,
                    validator: commentsFieldValidator,
                    keyboardType: TextInputType.multiline,
                    decoration: standardInputDecoration.copyWith(
                      labelText: "Your comments",
                      contentPadding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
                    ),
                    cursorColor: AppColors.purple,
                  ),
                  height24(),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.purple,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    width: screenWidth(context) / 3,
                    height: 40.0,
                    child: ProviderListener(
                      provider: httpRequestStateProvider,
                      onChange: (context, HttpRequestState httpRequestState) {
                        httpRequestState.whenOrNull(
                          success: (successMessage, _) {
                            showSnackBar(
                              context,
                              successMessage!,
                            );
                            context.router.pop();
                          },
                          error: (errorMessage) =>
                              showSnackBarForError(context, errorMessage),
                        );
                      },
                      child: Consumer(
                        builder: (_, watch, __) {
                          return watch(httpRequestStateProvider).maybeWhen(
                            loading: () => const Center(
                              child: CircularProgressIndicator(),
                            ),
                            orElse: () => SubmitButton(
                              formKey: _formKey,
                              contactUsFormModel: ContactUsForm(
                                name,
                                email,
                                comments,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
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

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key? key,
    required this.formKey,
    required this.contactUsFormModel,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final ContactUsForm contactUsFormModel;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, ref, __) {
        return TextButton(
          onPressed: () async {
            if (formKey.currentState!.validate()) {
              ref(feedbackProvider).sendContactUsForm(
                contactUsFormModel,
              );
            }
          },
          child: const Text(
            "Submit",
            style: TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }
}
