import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:yuk_makan_app/data/model/restaurants/restaurants.dart';

part 'response.freezed.dart';
part 'response.g.dart';

@freezed
class ResponseRestaurants with _$ResponseRestaurants {
  const factory ResponseRestaurants({
    required bool error,
    required String message,
    required int count,
    required List<Restaurants> restaurants,
  }) = _ResponseRestaurants;

  factory ResponseRestaurants.fromJson(Map<String, Object?> json) =>
      _$ResponseRestaurantsFromJson(json);
}
