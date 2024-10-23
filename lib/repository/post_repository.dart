import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:rahul_test_file/domain/models/post_model.dart';

class PostRepository {
  final Dio _dio;

  PostRepository(this._dio) {
    _dio.options.baseUrl = 'https://jsonplaceholder.typicode.com';
  }

  Future<List<PostModel>> fetchPosts() async {
    try {
      final response = await _dio.get('/posts');

      if (response.statusCode == 200) {
        List<dynamic> postData = response.data;

        // Map the JSON data to List<PostModel>
        return postData.map((json) {
          // Use as Map<String, dynamic> for safe parsing
          return PostModel.fromJson(json as Map<String, dynamic>);
        }).toList();
      } else {
        throw Exception("Failed to load posts, status code: ${response.statusCode}");
      }
    } catch (e) {
      log("Error occurred: $e", name: 'API Error'); // More detailed error logging
      throw Exception("Error occurred: $e");
    }
  }
}
