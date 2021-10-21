import 'package:email_validator/email_validator.dart';

String? nameFieldValidator(String? enteredName) =>
    (enteredName == null || enteredName.trim().isEmpty)
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

String? mustNotBeEmptyFieldValidator(String? enteredText) =>
    (enteredText == null || enteredText.trim().isEmpty)
        ? 'Fill this field please'
        : null;

String? commentsFieldValidator(String? enteredText) => (enteredText == null ||
        enteredText.trim().isEmpty ||
        enteredText.trim().length < 10)
    ? 'The comment must be at least 10 characters'
    : null;
