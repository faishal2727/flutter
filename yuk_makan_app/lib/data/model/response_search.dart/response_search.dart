import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:yuk_makan_app/data/model/restaurants/restaurants.dart';

part 'response_search.freezed.dart';
part 'response_search.g.dart';

@freezed
class ResponseSearch with _$ResponseSearch {
  const factory ResponseSearch({
    required bool error,
    required int founded,
    required List<Restaurants> restaurants,
  }) = _ResponseSearch;

  factory ResponseSearch.fromJson(Map<String, Object?> json) =>
      _$ResponseSearchFromJson(json);
}
