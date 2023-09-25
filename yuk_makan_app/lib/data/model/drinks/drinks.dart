import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'drinks.freezed.dart';
part 'drinks.g.dart';

@freezed
class Drinks with _$Drinks {
  const factory Drinks({
   required String name,
  }) = _Drinks;

  factory Drinks.fromJson(Map<String, Object?> json) => _$DrinksFromJson(json);
}
