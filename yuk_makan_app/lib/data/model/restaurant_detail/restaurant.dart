import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:yuk_makan_app/data/model/categories/categories.dart';
import 'package:yuk_makan_app/data/model/customer_review/customer_reviews.dart';
import 'package:yuk_makan_app/data/model/menus/menus.dart';

part 'restaurant.freezed.dart';
part 'restaurant.g.dart';

@freezed
class Restaurant with _$Restaurant {
  const factory Restaurant({
    required String id,
    required String name,
    required String description,
    required String city,
    required String address,
    required String pictureId,
    required List<Categories> categories,
    required Menus menus,
    required double rating,
    required List<CustomerReviews> customerReviews,
  }) = _Restaurant;

  factory Restaurant.fromJson(Map<String, Object?> json) =>
      _$RestaurantFromJson(json);
}
