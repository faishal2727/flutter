// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseReview _$$_ResponseReviewFromJson(Map<String, dynamic> json) =>
    _$_ResponseReview(
      error: json['error'] as bool?,
      message: json['message'] as String?,
      customerReviews: (json['customerReviews'] as List<dynamic>?)
          ?.map((e) => CustomerReviews.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResponseReviewToJson(_$_ResponseReview instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'customerReviews': instance.customerReviews,
    };
