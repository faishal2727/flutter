// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseDetail _$ResponseDetailFromJson(Map<String, dynamic> json) {
  return _ResponseDetail.fromJson(json);
}

/// @nodoc
mixin _$ResponseDetail {
  bool get error => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  Restaurant get restaurant => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseDetailCopyWith<ResponseDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDetailCopyWith<$Res> {
  factory $ResponseDetailCopyWith(
          ResponseDetail value, $Res Function(ResponseDetail) then) =
      _$ResponseDetailCopyWithImpl<$Res, ResponseDetail>;
  @useResult
  $Res call({bool error, String message, Restaurant restaurant});

  $RestaurantCopyWith<$Res> get restaurant;
}

/// @nodoc
class _$ResponseDetailCopyWithImpl<$Res, $Val extends ResponseDetail>
    implements $ResponseDetailCopyWith<$Res> {
  _$ResponseDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? restaurant = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      restaurant: null == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as Restaurant,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RestaurantCopyWith<$Res> get restaurant {
    return $RestaurantCopyWith<$Res>(_value.restaurant, (value) {
      return _then(_value.copyWith(restaurant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ResponseDetailCopyWith<$Res>
    implements $ResponseDetailCopyWith<$Res> {
  factory _$$_ResponseDetailCopyWith(
          _$_ResponseDetail value, $Res Function(_$_ResponseDetail) then) =
      __$$_ResponseDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool error, String message, Restaurant restaurant});

  @override
  $RestaurantCopyWith<$Res> get restaurant;
}

/// @nodoc
class __$$_ResponseDetailCopyWithImpl<$Res>
    extends _$ResponseDetailCopyWithImpl<$Res, _$_ResponseDetail>
    implements _$$_ResponseDetailCopyWith<$Res> {
  __$$_ResponseDetailCopyWithImpl(
      _$_ResponseDetail _value, $Res Function(_$_ResponseDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? restaurant = null,
  }) {
    return _then(_$_ResponseDetail(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      restaurant: null == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as Restaurant,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseDetail
    with DiagnosticableTreeMixin
    implements _ResponseDetail {
  const _$_ResponseDetail(
      {required this.error, required this.message, required this.restaurant});

  factory _$_ResponseDetail.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseDetailFromJson(json);

  @override
  final bool error;
  @override
  final String message;
  @override
  final Restaurant restaurant;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResponseDetail(error: $error, message: $message, restaurant: $restaurant)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResponseDetail'))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('restaurant', restaurant));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseDetail &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.restaurant, restaurant) ||
                other.restaurant == restaurant));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, message, restaurant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseDetailCopyWith<_$_ResponseDetail> get copyWith =>
      __$$_ResponseDetailCopyWithImpl<_$_ResponseDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseDetailToJson(
      this,
    );
  }
}

abstract class _ResponseDetail implements ResponseDetail {
  const factory _ResponseDetail(
      {required final bool error,
      required final String message,
      required final Restaurant restaurant}) = _$_ResponseDetail;

  factory _ResponseDetail.fromJson(Map<String, dynamic> json) =
      _$_ResponseDetail.fromJson;

  @override
  bool get error;
  @override
  String get message;
  @override
  Restaurant get restaurant;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseDetailCopyWith<_$_ResponseDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
