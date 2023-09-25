import 'package:dio/dio.dart';
import 'package:dio_freezed/data/models/detail_comic/detail_comic.dart';
import 'package:dio_freezed/domain/services/end_points.dart';
import 'package:dio_freezed/utils/url.dart';

import '../../data/models/comic/comic.dart';

class ApiServices {
  final Dio _dio = Dio();

  Future<List<Comic>> getListComic() async {
    try {
      final response = await _dio.get("$baseUrl${EndPoints.getComics}");
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data['data']['ongoing'];
        final List<Comic> comics =
            data.map((comicJson) => Comic.fromJson(comicJson)).toList();

        return comics;
      } else {
        throw Exception('Gagal memuat data');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<DetailComic> getDetailComic(String id) async {
    try {
      final response = await _dio.get("$baseUrl${EndPoints.getDetailComic}/$id");
      if (response.statusCode == 200) {
        final dynamic data = response.data['data'];
        return DetailComic.fromJson(data);
      } else {
        throw Exception('gagal');
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
