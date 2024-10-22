import 'dart:convert';

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
        final postData = response.data;
        return postData.map((json) => PostModel.fromMap(json)).toList();
      } else {
        throw Exception("Failed to Laod");
      }
    } catch (e) {
      throw Exception("Error occured: $e");
    }
  }
}
