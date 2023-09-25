// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseRestaurants _$ResponseRestaurantsFromJson(Map<String, dynamic> json) {
  return _ResponseRestaurants.fromJson(json);
}

/// @nodoc
mixin _$ResponseRestaurants {
  bool get error => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  List<Restaurants> get restaurants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseRestaurantsCopyWith<ResponseRestaurants> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseRestaurantsCopyWith<$Res> {
  factory $ResponseRestaurantsCopyWith(
          ResponseRestaurants value, $Res Function(ResponseRestaurants) then) =
      _$ResponseRestaurantsCopyWithImpl<$Res, ResponseRestaurants>;
  @useResult
  $Res call(
      {bool error, String message, int count, List<Restaurants> restaurants});
}

/// @nodoc
class _$ResponseRestaurantsCopyWithImpl<$Res, $Val extends ResponseRestaurants>
    implements $ResponseRestaurantsCopyWith<$Res> {
  _$ResponseRestaurantsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? count = null,
    Object? restaurants = null,
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
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      restaurants: null == restaurants
          ? _value.restaurants
          : restaurants // ignore: cast_nullable_to_non_nullable
              as List<Restaurants>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseRestaurantsCopyWith<$Res>
    implements $ResponseRestaurantsCopyWith<$Res> {
  factory _$$_ResponseRestaurantsCopyWith(_$_ResponseRestaurants value,
          $Res Function(_$_ResponseRestaurants) then) =
      __$$_ResponseRestaurantsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool error, String message, int count, List<Restaurants> restaurants});
}

/// @nodoc
class __$$_ResponseRestaurantsCopyWithImpl<$Res>
    extends _$ResponseRestaurantsCopyWithImpl<$Res, _$_ResponseRestaurants>
    implements _$$_ResponseRestaurantsCopyWith<$Res> {
  __$$_ResponseRestaurantsCopyWithImpl(_$_ResponseRestaurants _value,
      $Res Function(_$_ResponseRestaurants) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? count = null,
    Object? restaurants = null,
  }) {
    return _then(_$_ResponseRestaurants(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      restaurants: null == restaurants
          ? _value._restaurants
          : restaurants // ignore: cast_nullable_to_non_nullable
              as List<Restaurants>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseRestaurants
    with DiagnosticableTreeMixin
    implements _ResponseRestaurants {
  const _$_ResponseRestaurants(
      {required this.error,
      required this.message,
      required this.count,
      required final List<Restaurants> restaurants})
      : _restaurants = restaurants;

  factory _$_ResponseRestaurants.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseRestaurantsFromJson(json);

  @override
  final bool error;
  @override
  final String message;
  @override
  final int count;
  final List<Restaurants> _restaurants;
  @override
  List<Restaurants> get restaurants {
    if (_restaurants is EqualUnmodifiableListView) return _restaurants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_restaurants);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResponseRestaurants(error: $error, message: $message, count: $count, restaurants: $restaurants)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResponseRestaurants'))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('restaurants', restaurants));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseRestaurants &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality()
                .equals(other._restaurants, _restaurants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, message, count,
      const DeepCollectionEquality().hash(_restaurants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseRestaurantsCopyWith<_$_ResponseRestaurants> get copyWith =>
      __$$_ResponseRestaurantsCopyWithImpl<_$_ResponseRestaurants>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseRestaurantsToJson(
      this,
    );
  }
}

abstract class _ResponseRestaurants implements ResponseRestaurants {
  const factory _ResponseRestaurants(
      {required final bool error,
      required final String message,
      required final int count,
      required final List<Restaurants> restaurants}) = _$_ResponseRestaurants;

  factory _ResponseRestaurants.fromJson(Map<String, dynamic> json) =
      _$_ResponseRestaurants.fromJson;

  @override
  bool get error;
  @override
  String get message;
  @override
  int get count;
  @override
  List<Restaurants> get restaurants;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseRestaurantsCopyWith<_$_ResponseRestaurants> get copyWith =>
      throw _privateConstructorUsedError;
}
