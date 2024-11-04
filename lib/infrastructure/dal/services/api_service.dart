import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:rahul_test_getx/models/post_model.dart';

class ApiService extends GetConnect implements GetxService {
  final String baseUrl;

  ApiService({required this.baseUrl});
  Future<dynamic> reqst() async {
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    try {
      final response = await dio.get('/posts');
      if (response.statusCode == 200 && response.data != null) {
        List<PostModel> posts = (response.data as List)
            .map((json) => PostModel.fromJson(json as Map<String, dynamic>))
            .toList();
        return posts;
      } else {
        return "Failed to load posts";
      }
    } catch (e) {
      return "Exception occurred: $e";
    }
  }
}
