// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_comic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailComic _$$_DetailComicFromJson(Map<String, dynamic> json) =>
    _$_DetailComic(
      id: json['id'] as String,
      title: json['title'] as String,
      thumbnail: json['thumbnail'] as String,
      japaneseTitle: json['japanese_title'] as String,
      score: json['score'] as String,
      producer: json['producer'] as String,
      type: json['type'] as String,
      status: json['status'] as String,
      duration: json['duration'] as String,
      releaseDate: json['release_date'] as String,
      studio: json['studio'] as String,
      genre: json['genre'] as String,
      synopsis: json['synopsis'] as String,
    );

Map<String, dynamic> _$$_DetailComicToJson(_$_DetailComic instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'japanese_title': instance.japaneseTitle,
      'score': instance.score,
      'producer': instance.producer,
      'type': instance.type,
      'status': instance.status,
      'duration': instance.duration,
      'release_date': instance.releaseDate,
      'studio': instance.studio,
      'genre': instance.genre,
      'synopsis': instance.synopsis,
    };
