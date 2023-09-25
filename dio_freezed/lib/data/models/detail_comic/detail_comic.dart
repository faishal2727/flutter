
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_comic.freezed.dart';
part 'detail_comic.g.dart';


@freezed
class DetailComic with _$DetailComic {
  factory DetailComic(
      {required String id,
      required String title,
      required String thumbnail,
        @JsonKey(name: 'japanese_title') required String japaneseTitle,
      required String score,
      required String producer,
      required String type,
      required String status,
      required String duration,
      @JsonKey(name: 'release_date') required String releaseDate,
      required String studio,
      required String genre,
      required String synopsis}) = _DetailComic;

      factory DetailComic.fromJson(Map<String, dynamic> json) => _$DetailComicFromJson(json);
}
