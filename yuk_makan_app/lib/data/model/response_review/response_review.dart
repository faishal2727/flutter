import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:yuk_makan_app/data/model/customer_review/customer_reviews.dart';

part 'response_review.freezed.dart';
part 'response_review.g.dart';

@freezed
class ResponseReview with _$ResponseReview {
  const factory ResponseReview({
    bool? error,
    String? message,
    List<CustomerReviews>? customerReviews,
  }) = _ResponseReview;

  factory ResponseReview.fromJson(Map<String, Object?> json) =>
      _$ResponseReviewFromJson(json);
}
