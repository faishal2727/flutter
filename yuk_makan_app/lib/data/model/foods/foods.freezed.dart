// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'foods.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Foods _$FoodsFromJson(Map<String, dynamic> json) {
  return _Foods.fromJson(json);
}

/// @nodoc
mixin _$Foods {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodsCopyWith<Foods> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodsCopyWith<$Res> {
  factory $FoodsCopyWith(Foods value, $Res Function(Foods) then) =
      _$FoodsCopyWithImpl<$Res, Foods>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$FoodsCopyWithImpl<$Res, $Val extends Foods>
    implements $FoodsCopyWith<$Res> {
  _$FoodsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FoodsCopyWith<$Res> implements $FoodsCopyWith<$Res> {
  factory _$$_FoodsCopyWith(_$_Foods value, $Res Function(_$_Foods) then) =
      __$$_FoodsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_FoodsCopyWithImpl<$Res> extends _$FoodsCopyWithImpl<$Res, _$_Foods>
    implements _$$_FoodsCopyWith<$Res> {
  __$$_FoodsCopyWithImpl(_$_Foods _value, $Res Function(_$_Foods) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_Foods(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Foods with DiagnosticableTreeMixin implements _Foods {
  const _$_Foods({required this.name});

  factory _$_Foods.fromJson(Map<String, dynamic> json) =>
      _$$_FoodsFromJson(json);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Foods(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Foods'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Foods &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FoodsCopyWith<_$_Foods> get copyWith =>
      __$$_FoodsCopyWithImpl<_$_Foods>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FoodsToJson(
      this,
    );
  }
}

abstract class _Foods implements Foods {
  const factory _Foods({required final String name}) = _$_Foods;

  factory _Foods.fromJson(Map<String, dynamic> json) = _$_Foods.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_FoodsCopyWith<_$_Foods> get copyWith =>
      throw _privateConstructorUsedError;
}
