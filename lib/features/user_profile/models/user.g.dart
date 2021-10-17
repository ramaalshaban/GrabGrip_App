// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      json['id'] as int,
      json['display_name'] as String,
      json['username'] as String,
      json['bio'] as String?,
      json['phone'] as String?,
      json['avatar'] as String,
      json['city'] as String,
      json['country'] as String,
      json['unread_messages'] as int,
      json['can_accept_payments'] as int,
      verified: json['verified'] as bool,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'display_name': instance.displayName,
      'username': instance.userName,
      'bio': instance.bio,
      'phone': instance.phone,
      'avatar': instance.avatar,
      'city': instance.city,
      'country': instance.country,
      'unread_messages': instance.unreadMessagesCount,
      'can_accept_payments': instance.canAcceptPayments,
      'verified': instance.verified,
    };
