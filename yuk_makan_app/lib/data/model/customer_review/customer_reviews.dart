import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'customer_reviews.freezed.dart';
part 'customer_reviews.g.dart';

@freezed
class CustomerReviews with _$CustomerReviews {
  const factory CustomerReviews({
    required String name,
    required String review,
    required String date,
  }) = _CustomerReviews;

  factory CustomerReviews.fromJson(Map<String, Object?> json) =>
      _$CustomerReviewsFromJson(json);
}
