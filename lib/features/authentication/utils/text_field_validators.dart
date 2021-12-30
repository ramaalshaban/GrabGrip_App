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

String? descriptionFieldValidator(String? enteredText) =>
    (enteredText == null || enteredText.trim().isEmpty)
        ? 'The description must not be empty'
        : null;

String? listingTitleFieldValidator(String? enteredTitle) =>
    (enteredTitle == null ||
            enteredTitle.trim().isEmpty ||
            enteredTitle.trim().length < 5)
        ? 'The title must be at least 5 characters'
        : null;

String? listingDescriptionFieldValidator(String? enteredTitle) =>
    (enteredTitle == null ||
            enteredTitle.trim().isEmpty ||
            enteredTitle.trim().length < 5)
        ? 'The description must be at least 5 characters'
        : null;

String? priceFieldValidator(String? enteredText) => (enteredText == null ||
        enteredText.trim().isEmpty ||
        int.parse(enteredText.trim()) < 1)
    ? 'The price must not be\nempty and must be\ngreater than 0'
    : null;

String? rentPeriodFieldValidator(String? enteredText) {
  if (enteredText == null || enteredText.trim().isEmpty) {
    return 'Fill this field please';
  } else {
    final enteredNumber = int.parse(enteredText.trim());
    if (enteredNumber < 1) {
      return 'The period must be\ngreater than\nor equal to 1';
    } else if (enteredNumber > 30) {
      return 'The period must be\nless than\nor equal to 30';
    } else {
      return null;
    }
  }
}
