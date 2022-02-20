import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_profile_request.freezed.dart';
part 'edit_profile_request.g.dart';

@freezed
class EditProfileRequest with _$EditProfileRequest {
   const factory EditProfileRequest(

       @JsonKey(name: 'display_name') String displayName,
       @JsonKey(name: 'username') String userName,
       String? bio,

       ) = _EditProfileRequest;
  factory EditProfileRequest.fromJson(Map<String, dynamic> json) =>
     _$EditProfileRequestFromJson(json);
}


