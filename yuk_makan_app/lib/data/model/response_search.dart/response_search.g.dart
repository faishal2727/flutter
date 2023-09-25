// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseSearch _$$_ResponseSearchFromJson(Map<String, dynamic> json) =>
    _$_ResponseSearch(
      error: json['error'] as bool,
      founded: json['founded'] as int,
      restaurants: (json['restaurants'] as List<dynamic>)
          .map((e) => Restaurants.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResponseSearchToJson(_$_ResponseSearch instance) =>
    <String, dynamic>{
      'error': instance.error,
      'founded': instance.founded,
      'restaurants': instance.restaurants,
    };
