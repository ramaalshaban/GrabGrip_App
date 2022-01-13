// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'place_order_session_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceOrderSessionResponse _$PlaceOrderSessionResponseFromJson(
    Map<String, dynamic> json) {
  return _PlaceOrderSessionResponse.fromJson(json);
}

/// @nodoc
class _$PlaceOrderSessionResponseTearOff {
  const _$PlaceOrderSessionResponseTearOff();

  _PlaceOrderSessionResponse call(
      Session session, @JsonKey(name: "key") String paymentMethodKey) {
    return _PlaceOrderSessionResponse(
      session,
      paymentMethodKey,
    );
  }

  PlaceOrderSessionResponse fromJson(Map<String, Object> json) {
    return PlaceOrderSessionResponse.fromJson(json);
  }
}

/// @nodoc
const $PlaceOrderSessionResponse = _$PlaceOrderSessionResponseTearOff();

/// @nodoc
mixin _$PlaceOrderSessionResponse {
  Session get session => throw _privateConstructorUsedError;
  @JsonKey(name: "key")
  String get paymentMethodKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceOrderSessionResponseCopyWith<PlaceOrderSessionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceOrderSessionResponseCopyWith<$Res> {
  factory $PlaceOrderSessionResponseCopyWith(PlaceOrderSessionResponse value,
          $Res Function(PlaceOrderSessionResponse) then) =
      _$PlaceOrderSessionResponseCopyWithImpl<$Res>;
  $Res call({Session session, @JsonKey(name: "key") String paymentMethodKey});

  $SessionCopyWith<$Res> get session;
}

/// @nodoc
class _$PlaceOrderSessionResponseCopyWithImpl<$Res>
    implements $PlaceOrderSessionResponseCopyWith<$Res> {
  _$PlaceOrderSessionResponseCopyWithImpl(this._value, this._then);

  final PlaceOrderSessionResponse _value;
  // ignore: unused_field
  final $Res Function(PlaceOrderSessionResponse) _then;

  @override
  $Res call({
    Object? session = freezed,
    Object? paymentMethodKey = freezed,
  }) {
    return _then(_value.copyWith(
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as Session,
      paymentMethodKey: paymentMethodKey == freezed
          ? _value.paymentMethodKey
          : paymentMethodKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $SessionCopyWith<$Res> get session {
    return $SessionCopyWith<$Res>(_value.session, (value) {
      return _then(_value.copyWith(session: value));
    });
  }
}

/// @nodoc
abstract class _$PlaceOrderSessionResponseCopyWith<$Res>
    implements $PlaceOrderSessionResponseCopyWith<$Res> {
  factory _$PlaceOrderSessionResponseCopyWith(_PlaceOrderSessionResponse value,
          $Res Function(_PlaceOrderSessionResponse) then) =
      __$PlaceOrderSessionResponseCopyWithImpl<$Res>;
  @override
  $Res call({Session session, @JsonKey(name: "key") String paymentMethodKey});

  @override
  $SessionCopyWith<$Res> get session;
}

/// @nodoc
class __$PlaceOrderSessionResponseCopyWithImpl<$Res>
    extends _$PlaceOrderSessionResponseCopyWithImpl<$Res>
    implements _$PlaceOrderSessionResponseCopyWith<$Res> {
  __$PlaceOrderSessionResponseCopyWithImpl(_PlaceOrderSessionResponse _value,
      $Res Function(_PlaceOrderSessionResponse) _then)
      : super(_value, (v) => _then(v as _PlaceOrderSessionResponse));

  @override
  _PlaceOrderSessionResponse get _value =>
      super._value as _PlaceOrderSessionResponse;

  @override
  $Res call({
    Object? session = freezed,
    Object? paymentMethodKey = freezed,
  }) {
    return _then(_PlaceOrderSessionResponse(
      session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as Session,
      paymentMethodKey == freezed
          ? _value.paymentMethodKey
          : paymentMethodKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceOrderSessionResponse
    with DiagnosticableTreeMixin
    implements _PlaceOrderSessionResponse {
  const _$_PlaceOrderSessionResponse(
      this.session, @JsonKey(name: "key") this.paymentMethodKey);

  factory _$_PlaceOrderSessionResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceOrderSessionResponseFromJson(json);

  @override
  final Session session;
  @override
  @JsonKey(name: "key")
  final String paymentMethodKey;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceOrderSessionResponse(session: $session, paymentMethodKey: $paymentMethodKey)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaceOrderSessionResponse'))
      ..add(DiagnosticsProperty('session', session))
      ..add(DiagnosticsProperty('paymentMethodKey', paymentMethodKey));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlaceOrderSessionResponse &&
            (identical(other.session, session) ||
                const DeepCollectionEquality()
                    .equals(other.session, session)) &&
            (identical(other.paymentMethodKey, paymentMethodKey) ||
                const DeepCollectionEquality()
                    .equals(other.paymentMethodKey, paymentMethodKey)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(session) ^
      const DeepCollectionEquality().hash(paymentMethodKey);

  @JsonKey(ignore: true)
  @override
  _$PlaceOrderSessionResponseCopyWith<_PlaceOrderSessionResponse>
      get copyWith =>
          __$PlaceOrderSessionResponseCopyWithImpl<_PlaceOrderSessionResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceOrderSessionResponseToJson(this);
  }
}

abstract class _PlaceOrderSessionResponse implements PlaceOrderSessionResponse {
  const factory _PlaceOrderSessionResponse(
          Session session, @JsonKey(name: "key") String paymentMethodKey) =
      _$_PlaceOrderSessionResponse;

  factory _PlaceOrderSessionResponse.fromJson(Map<String, dynamic> json) =
      _$_PlaceOrderSessionResponse.fromJson;

  @override
  Session get session => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "key")
  String get paymentMethodKey => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlaceOrderSessionResponseCopyWith<_PlaceOrderSessionResponse>
      get copyWith => throw _privateConstructorUsedError;
}
