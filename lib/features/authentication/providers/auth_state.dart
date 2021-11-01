import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authenticated({bool? isVerified}) =
      _AuthenticatedState;
  const factory AuthState.notAuthenticated() = _NotAuthenticatedState;
}
