import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/post_model.dart';
import '../../domain/repository/post_repository.dart';

@Injectable(as: PostRepository)
class PostRepositoryImpl extends PostRepository {
  final Dio _dio;

  PostRepositoryImpl(this._dio) {
    _dio.options.baseUrl = 'https://jsonplaceholder.typicode.com';
    _dio.interceptors.add(LogInterceptor());
  }

  @override
  Future<List<PostModel>> fetchPosts() async {
    try {
      final response = await _dio.get('/posts');

      if (response.statusCode == 200) {
        List<dynamic> postData = response.data;

        return postData.map((json) {
          return PostModel.fromJson(json as Map<String, dynamic>);
        }).toList();
      } else {
        throw Exception("Failed to load posts, status code: ${response.statusCode}");
      }
    } catch (e) {
      log("Error occurred: $e", name: 'API Error');
      throw Exception("Error occurred: $e");
    }
  }

  @override
  Future<Either<PostModel, String>> fetchPostByFPDart(String id) async {
    try {
      final response = await _dio.get('/posts/$id');
      if (response.statusCode == 200) {
        return left(PostModel.fromJson(response.data));
      } else {
        throw "Error has occurred";
      }
    } catch (e) {
      return right(e.toString());
    }
  }
}
