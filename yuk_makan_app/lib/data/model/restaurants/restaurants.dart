import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'restaurants.freezed.dart';
part 'restaurants.g.dart';

@freezed
class Restaurants with _$Restaurants {
  const factory Restaurants({
    required String id,
    required String name,
    required String description,
    required String pictureId,
    required String city,
    required double rating,
  }) = _Restaurants;

  factory Restaurants.fromJson(Map<String, Object?> json) =>
      _$RestaurantsFromJson(json);
}
