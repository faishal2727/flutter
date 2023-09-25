import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:yuk_makan_app/data/model/drinks/drinks.dart';
import 'package:yuk_makan_app/data/model/foods/foods.dart';
part 'menus.freezed.dart';
part 'menus.g.dart';

@freezed
class Menus with _$Menus {
  const factory Menus({
    required List<Foods> foods,
    required List<Drinks> drinks,
  }) = _Menus;

  factory Menus.fromJson(Map<String, Object?> json) => _$MenusFromJson(json);
}
