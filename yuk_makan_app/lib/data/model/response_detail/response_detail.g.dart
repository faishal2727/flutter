// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseDetail _$$_ResponseDetailFromJson(Map<String, dynamic> json) =>
    _$_ResponseDetail(
      error: json['error'] as bool,
      message: json['message'] as String,
      restaurant:
          Restaurant.fromJson(json['restaurant'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResponseDetailToJson(_$_ResponseDetail instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'restaurant': instance.restaurant,
    };
