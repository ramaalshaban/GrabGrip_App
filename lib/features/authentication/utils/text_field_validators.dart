import 'package:email_validator/email_validator.dart';

String? nameFieldValidator(String? enteredName) =>
    (enteredName == null || enteredName.isEmpty)
        ? 'Enter your name please'
        : null;

String? emailFieldValidator(String? enteredEmail) =>
    (enteredEmail == null || !EmailValidator.validate(enteredEmail))
        ? 'Enter a valid email please'
        : null;

String? passwordFieldValidator(String? enteredPassword) =>
    (enteredPassword == null || enteredPassword.length < 6)
        ? 'The password must be at least 6 characters'
        : null;
