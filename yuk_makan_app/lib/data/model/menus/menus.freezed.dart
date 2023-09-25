// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menus.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Menus _$MenusFromJson(Map<String, dynamic> json) {
  return _Menus.fromJson(json);
}

/// @nodoc
mixin _$Menus {
  List<Foods> get foods => throw _privateConstructorUsedError;
  List<Drinks> get drinks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenusCopyWith<Menus> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenusCopyWith<$Res> {
  factory $MenusCopyWith(Menus value, $Res Function(Menus) then) =
      _$MenusCopyWithImpl<$Res, Menus>;
  @useResult
  $Res call({List<Foods> foods, List<Drinks> drinks});
}

/// @nodoc
class _$MenusCopyWithImpl<$Res, $Val extends Menus>
    implements $MenusCopyWith<$Res> {
  _$MenusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foods = null,
    Object? drinks = null,
  }) {
    return _then(_value.copyWith(
      foods: null == foods
          ? _value.foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<Foods>,
      drinks: null == drinks
          ? _value.drinks
          : drinks // ignore: cast_nullable_to_non_nullable
              as List<Drinks>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MenusCopyWith<$Res> implements $MenusCopyWith<$Res> {
  factory _$$_MenusCopyWith(_$_Menus value, $Res Function(_$_Menus) then) =
      __$$_MenusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Foods> foods, List<Drinks> drinks});
}

/// @nodoc
class __$$_MenusCopyWithImpl<$Res> extends _$MenusCopyWithImpl<$Res, _$_Menus>
    implements _$$_MenusCopyWith<$Res> {
  __$$_MenusCopyWithImpl(_$_Menus _value, $Res Function(_$_Menus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foods = null,
    Object? drinks = null,
  }) {
    return _then(_$_Menus(
      foods: null == foods
          ? _value._foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<Foods>,
      drinks: null == drinks
          ? _value._drinks
          : drinks // ignore: cast_nullable_to_non_nullable
              as List<Drinks>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Menus with DiagnosticableTreeMixin implements _Menus {
  const _$_Menus(
      {required final List<Foods> foods, required final List<Drinks> drinks})
      : _foods = foods,
        _drinks = drinks;

  factory _$_Menus.fromJson(Map<String, dynamic> json) =>
      _$$_MenusFromJson(json);

  final List<Foods> _foods;
  @override
  List<Foods> get foods {
    if (_foods is EqualUnmodifiableListView) return _foods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foods);
  }

  final List<Drinks> _drinks;
  @override
  List<Drinks> get drinks {
    if (_drinks is EqualUnmodifiableListView) return _drinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_drinks);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Menus(foods: $foods, drinks: $drinks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Menus'))
      ..add(DiagnosticsProperty('foods', foods))
      ..add(DiagnosticsProperty('drinks', drinks));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Menus &&
            const DeepCollectionEquality().equals(other._foods, _foods) &&
            const DeepCollectionEquality().equals(other._drinks, _drinks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_foods),
      const DeepCollectionEquality().hash(_drinks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MenusCopyWith<_$_Menus> get copyWith =>
      __$$_MenusCopyWithImpl<_$_Menus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MenusToJson(
      this,
    );
  }
}

abstract class _Menus implements Menus {
  const factory _Menus(
      {required final List<Foods> foods,
      required final List<Drinks> drinks}) = _$_Menus;

  factory _Menus.fromJson(Map<String, dynamic> json) = _$_Menus.fromJson;

  @override
  List<Foods> get foods;
  @override
  List<Drinks> get drinks;
  @override
  @JsonKey(ignore: true)
  _$$_MenusCopyWith<_$_Menus> get copyWith =>
      throw _privateConstructorUsedError;
}
