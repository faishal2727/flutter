// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drinks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Drinks _$DrinksFromJson(Map<String, dynamic> json) {
  return _Drinks.fromJson(json);
}

/// @nodoc
mixin _$Drinks {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DrinksCopyWith<Drinks> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrinksCopyWith<$Res> {
  factory $DrinksCopyWith(Drinks value, $Res Function(Drinks) then) =
      _$DrinksCopyWithImpl<$Res, Drinks>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$DrinksCopyWithImpl<$Res, $Val extends Drinks>
    implements $DrinksCopyWith<$Res> {
  _$DrinksCopyWithImpl(this._value, this._then);

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
abstract class _$$_DrinksCopyWith<$Res> implements $DrinksCopyWith<$Res> {
  factory _$$_DrinksCopyWith(_$_Drinks value, $Res Function(_$_Drinks) then) =
      __$$_DrinksCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_DrinksCopyWithImpl<$Res>
    extends _$DrinksCopyWithImpl<$Res, _$_Drinks>
    implements _$$_DrinksCopyWith<$Res> {
  __$$_DrinksCopyWithImpl(_$_Drinks _value, $Res Function(_$_Drinks) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_Drinks(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Drinks with DiagnosticableTreeMixin implements _Drinks {
  const _$_Drinks({required this.name});

  factory _$_Drinks.fromJson(Map<String, dynamic> json) =>
      _$$_DrinksFromJson(json);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Drinks(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Drinks'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Drinks &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DrinksCopyWith<_$_Drinks> get copyWith =>
      __$$_DrinksCopyWithImpl<_$_Drinks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DrinksToJson(
      this,
    );
  }
}

abstract class _Drinks implements Drinks {
  const factory _Drinks({required final String name}) = _$_Drinks;

  factory _Drinks.fromJson(Map<String, dynamic> json) = _$_Drinks.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_DrinksCopyWith<_$_Drinks> get copyWith =>
      throw _privateConstructorUsedError;
}
