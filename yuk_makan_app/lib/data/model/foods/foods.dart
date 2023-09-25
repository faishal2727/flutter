import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'foods.freezed.dart';
part 'foods.g.dart';

@freezed
class Foods with _$Foods {
  const factory Foods({
    required String name,
  }) = _Foods;

  factory Foods.fromJson(Map<String, Object?> json) => _$FoodsFromJson(json);
}
