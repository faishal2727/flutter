// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseSearch _$ResponseSearchFromJson(Map<String, dynamic> json) {
  return _ResponseSearch.fromJson(json);
}

/// @nodoc
mixin _$ResponseSearch {
  bool get error => throw _privateConstructorUsedError;
  int get founded => throw _privateConstructorUsedError;
  List<Restaurants> get restaurants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseSearchCopyWith<ResponseSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseSearchCopyWith<$Res> {
  factory $ResponseSearchCopyWith(
          ResponseSearch value, $Res Function(ResponseSearch) then) =
      _$ResponseSearchCopyWithImpl<$Res, ResponseSearch>;
  @useResult
  $Res call({bool error, int founded, List<Restaurants> restaurants});
}

/// @nodoc
class _$ResponseSearchCopyWithImpl<$Res, $Val extends ResponseSearch>
    implements $ResponseSearchCopyWith<$Res> {
  _$ResponseSearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? founded = null,
    Object? restaurants = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      founded: null == founded
          ? _value.founded
          : founded // ignore: cast_nullable_to_non_nullable
              as int,
      restaurants: null == restaurants
          ? _value.restaurants
          : restaurants // ignore: cast_nullable_to_non_nullable
              as List<Restaurants>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseSearchCopyWith<$Res>
    implements $ResponseSearchCopyWith<$Res> {
  factory _$$_ResponseSearchCopyWith(
          _$_ResponseSearch value, $Res Function(_$_ResponseSearch) then) =
      __$$_ResponseSearchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool error, int founded, List<Restaurants> restaurants});
}

/// @nodoc
class __$$_ResponseSearchCopyWithImpl<$Res>
    extends _$ResponseSearchCopyWithImpl<$Res, _$_ResponseSearch>
    implements _$$_ResponseSearchCopyWith<$Res> {
  __$$_ResponseSearchCopyWithImpl(
      _$_ResponseSearch _value, $Res Function(_$_ResponseSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? founded = null,
    Object? restaurants = null,
  }) {
    return _then(_$_ResponseSearch(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      founded: null == founded
          ? _value.founded
          : founded // ignore: cast_nullable_to_non_nullable
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
class _$_ResponseSearch
    with DiagnosticableTreeMixin
    implements _ResponseSearch {
  const _$_ResponseSearch(
      {required this.error,
      required this.founded,
      required final List<Restaurants> restaurants})
      : _restaurants = restaurants;

  factory _$_ResponseSearch.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseSearchFromJson(json);

  @override
  final bool error;
  @override
  final int founded;
  final List<Restaurants> _restaurants;
  @override
  List<Restaurants> get restaurants {
    if (_restaurants is EqualUnmodifiableListView) return _restaurants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_restaurants);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResponseSearch(error: $error, founded: $founded, restaurants: $restaurants)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResponseSearch'))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('founded', founded))
      ..add(DiagnosticsProperty('restaurants', restaurants));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseSearch &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.founded, founded) || other.founded == founded) &&
            const DeepCollectionEquality()
                .equals(other._restaurants, _restaurants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, founded,
      const DeepCollectionEquality().hash(_restaurants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseSearchCopyWith<_$_ResponseSearch> get copyWith =>
      __$$_ResponseSearchCopyWithImpl<_$_ResponseSearch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseSearchToJson(
      this,
    );
  }
}

abstract class _ResponseSearch implements ResponseSearch {
  const factory _ResponseSearch(
      {required final bool error,
      required final int founded,
      required final List<Restaurants> restaurants}) = _$_ResponseSearch;

  factory _ResponseSearch.fromJson(Map<String, dynamic> json) =
      _$_ResponseSearch.fromJson;

  @override
  bool get error;
  @override
  int get founded;
  @override
  List<Restaurants> get restaurants;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseSearchCopyWith<_$_ResponseSearch> get copyWith =>
      throw _privateConstructorUsedError;
}
