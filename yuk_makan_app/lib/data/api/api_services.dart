import 'package:dio/dio.dart';
import 'package:yuk_makan_app/data/model/response_detail/response_detail.dart';
import 'package:yuk_makan_app/data/model/response_list/response.dart';
import 'package:yuk_makan_app/data/model/response_review/response_review.dart';
import 'package:yuk_makan_app/data/model/response_search.dart/response_search.dart';

class ApiServices {
  static const String _baseUrl = 'https://restaurant-api.dicoding.dev/';
  static const String _endPointList = 'list';
  static const String _endPointDetail = 'detail/';
  static const String _endPointPost = 'review';

  final Dio _dio = Dio();

  Future<ResponseRestaurants> getRestaurants() async {
    try {
      final response = await _dio.get("$_baseUrl$_endPointList");
      print("coba ${response.data}");
      if (response.statusCode == 200) {
        return ResponseRestaurants.fromJson(response.data);
      } else {
        throw Exception('Failed to load resto');
      }
    } catch (e) {
      print("Errorrr");
      throw Exception('Failed to load resto: $e');
    }
  }

  Future<ResponseDetail> getDetailRestaurant(String id) async {
    try {
      final response = await _dio.get("$_baseUrl$_endPointDetail$id");
      if (response.statusCode == 200) {
        return ResponseDetail.fromJson(response.data);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<ResponseSearch> searchResto(String query) async {
    try {
      final response = await _dio.get(_baseUrl + "search?q=$query");
      print("coba search ${response.data}");
      if (response.statusCode == 200) {
        if (response.data != null) {
          print('Data Ada');
          return ResponseSearch.fromJson(response.data);
        } else {
          throw Exception('Response data is null');
        }
      } else {
        throw Exception('UYE: ${response.statusCode}');
      }
    } catch (e) {
      print("Errorrr $e");
      throw Exception('Failed to load resto: ${e}');
    }
  }

  Future<ResponseReview> postReview(
      String id, String name, String review) async {
    try {
      final response = await _dio.post(
        "$_baseUrl$_endPointPost",
        data: {
          "id" :id,
          "name":name,
          "review":review
        },
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
      );

      final responseData = ResponseReview.fromJson(
        response.data,
      );
      print("TATATA $responseData");

      return responseData;
    } catch (error) {
      throw Exception('Failed to post review: $error');
    }
  }
}
