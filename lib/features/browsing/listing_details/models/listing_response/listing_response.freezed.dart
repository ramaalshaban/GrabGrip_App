// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'listing_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListingResponse _$ListingResponseFromJson(Map<String, dynamic> json) {
  return _ListingResponse.fromJson(json);
}

/// @nodoc
class _$ListingResponseTearOff {
  const _$ListingResponseTearOff();

  _ListingResponse call(Listing listing, ResponseWidget widget) {
    return _ListingResponse(
      listing,
      widget,
    );
  }

  ListingResponse fromJson(Map<String, Object> json) {
    return ListingResponse.fromJson(json);
  }
}

/// @nodoc
const $ListingResponse = _$ListingResponseTearOff();

/// @nodoc
mixin _$ListingResponse {
  Listing get listing => throw _privateConstructorUsedError;
  ResponseWidget get widget => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListingResponseCopyWith<ListingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListingResponseCopyWith<$Res> {
  factory $ListingResponseCopyWith(
          ListingResponse value, $Res Function(ListingResponse) then) =
      _$ListingResponseCopyWithImpl<$Res>;
  $Res call({Listing listing, ResponseWidget widget});

  $ListingCopyWith<$Res> get listing;
  $ResponseWidgetCopyWith<$Res> get widget;
}

/// @nodoc
class _$ListingResponseCopyWithImpl<$Res>
    implements $ListingResponseCopyWith<$Res> {
  _$ListingResponseCopyWithImpl(this._value, this._then);

  final ListingResponse _value;
  // ignore: unused_field
  final $Res Function(ListingResponse) _then;

  @override
  $Res call({
    Object? listing = freezed,
    Object? widget = freezed,
  }) {
    return _then(_value.copyWith(
      listing: listing == freezed
          ? _value.listing
          : listing // ignore: cast_nullable_to_non_nullable
              as Listing,
      widget: widget == freezed
          ? _value.widget
          : widget // ignore: cast_nullable_to_non_nullable
              as ResponseWidget,
    ));
  }

  @override
  $ListingCopyWith<$Res> get listing {
    return $ListingCopyWith<$Res>(_value.listing, (value) {
      return _then(_value.copyWith(listing: value));
    });
  }

  @override
  $ResponseWidgetCopyWith<$Res> get widget {
    return $ResponseWidgetCopyWith<$Res>(_value.widget, (value) {
      return _then(_value.copyWith(widget: value));
    });
  }
}

/// @nodoc
abstract class _$ListingResponseCopyWith<$Res>
    implements $ListingResponseCopyWith<$Res> {
  factory _$ListingResponseCopyWith(
          _ListingResponse value, $Res Function(_ListingResponse) then) =
      __$ListingResponseCopyWithImpl<$Res>;
  @override
  $Res call({Listing listing, ResponseWidget widget});

  @override
  $ListingCopyWith<$Res> get listing;
  @override
  $ResponseWidgetCopyWith<$Res> get widget;
}

/// @nodoc
class __$ListingResponseCopyWithImpl<$Res>
    extends _$ListingResponseCopyWithImpl<$Res>
    implements _$ListingResponseCopyWith<$Res> {
  __$ListingResponseCopyWithImpl(
      _ListingResponse _value, $Res Function(_ListingResponse) _then)
      : super(_value, (v) => _then(v as _ListingResponse));

  @override
  _ListingResponse get _value => super._value as _ListingResponse;

  @override
  $Res call({
    Object? listing = freezed,
    Object? widget = freezed,
  }) {
    return _then(_ListingResponse(
      listing == freezed
          ? _value.listing
          : listing // ignore: cast_nullable_to_non_nullable
              as Listing,
      widget == freezed
          ? _value.widget
          : widget // ignore: cast_nullable_to_non_nullable
              as ResponseWidget,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListingResponse
    with DiagnosticableTreeMixin
    implements _ListingResponse {
  const _$_ListingResponse(this.listing, this.widget);

  factory _$_ListingResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ListingResponseFromJson(json);

  @override
  final Listing listing;
  @override
  final ResponseWidget widget;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ListingResponse(listing: $listing, widget: $widget)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ListingResponse'))
      ..add(DiagnosticsProperty('listing', listing))
      ..add(DiagnosticsProperty('widget', widget));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListingResponse &&
            (identical(other.listing, listing) ||
                const DeepCollectionEquality()
                    .equals(other.listing, listing)) &&
            (identical(other.widget, widget) ||
                const DeepCollectionEquality().equals(other.widget, widget)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(listing) ^
      const DeepCollectionEquality().hash(widget);

  @JsonKey(ignore: true)
  @override
  _$ListingResponseCopyWith<_ListingResponse> get copyWith =>
      __$ListingResponseCopyWithImpl<_ListingResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListingResponseToJson(this);
  }
}

abstract class _ListingResponse implements ListingResponse {
  const factory _ListingResponse(Listing listing, ResponseWidget widget) =
      _$_ListingResponse;

  factory _ListingResponse.fromJson(Map<String, dynamic> json) =
      _$_ListingResponse.fromJson;

  @override
  Listing get listing => throw _privateConstructorUsedError;
  @override
  ResponseWidget get widget => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ListingResponseCopyWith<_ListingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
