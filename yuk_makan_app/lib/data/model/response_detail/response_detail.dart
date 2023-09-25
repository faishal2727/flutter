import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:yuk_makan_app/data/model/restaurant_detail/restaurant.dart';

part 'response_detail.freezed.dart';
part 'response_detail.g.dart';

@freezed
class ResponseDetail with _$ResponseDetail {
  const factory ResponseDetail({
    required bool error,
    required String message,
    required Restaurant restaurant,
  }) = _ResponseDetail;

  factory ResponseDetail.fromJson(Map<String, Object?> json) =>
      _$ResponseDetailFromJson(json);
}
