import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_us_form.freezed.dart';
part 'contact_us_form.g.dart';

@freezed
class ContactUsForm with _$ContactUsForm {
  const factory ContactUsForm(
    String name,
    @JsonKey(name: "email_address") String email,
    @JsonKey(name: "comment") String comments,
  ) = _ContactUsForm;

  factory ContactUsForm.fromJson(Map<String, dynamic> json) =>
      _$ContactUsFormFromJson(json);
}
