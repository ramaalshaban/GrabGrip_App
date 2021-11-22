import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'http_request_state.freezed.dart';

@freezed
abstract class HttpRequestState with _$HttpRequestState {
  const factory HttpRequestState.noRequestInProgress() = _Nothing;
  const factory HttpRequestState.success([String? message , String? actionSucceeded]) = _Data;
  const factory HttpRequestState.loading() = _Loading;
  const factory HttpRequestState.innerLoading([int? index ]) = _InnerLoading;
  const factory HttpRequestState.error(String message) = _ErrorDetails;
}
