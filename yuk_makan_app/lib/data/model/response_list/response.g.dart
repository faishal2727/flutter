// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseRestaurants _$$_ResponseRestaurantsFromJson(
        Map<String, dynamic> json) =>
    _$_ResponseRestaurants(
      error: json['error'] as bool,
      message: json['message'] as String,
      count: json['count'] as int,
      restaurants: (json['restaurants'] as List<dynamic>)
          .map((e) => Restaurants.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResponseRestaurantsToJson(
        _$_ResponseRestaurants instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'count': instance.count,
      'restaurants': instance.restaurants,
    };
