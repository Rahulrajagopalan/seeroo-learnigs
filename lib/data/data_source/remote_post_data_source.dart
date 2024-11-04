import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/post_model.dart';
import 'post_data_source.dart';

@Injectable(as: PostDataSource)
class RemotePostDataSource extends PostDataSource {
  final Dio dio;

  RemotePostDataSource(this.dio) {
    dio.options.baseUrl = 'https://jsonplaceholder.typicode.com';
  }

  @override
  Future<Either<String, List<PostModel>>> fetchPosts() async {
    try {
      final response = await dio.get('/posts');
      if (response.statusCode == 200 && response.data != null) {
        List<PostModel> posts = (response.data as List)
            .map((json) => PostModel.fromJson(json as Map<String, dynamic>))
            .toList();
        return Right(posts);
      } else {
        return const Left("Failed to load posts");
      }
    } catch (e) {
      return Left("Exception occurred: $e");
    }
  }

  @override
  Future<Either<String, PostModel>> fetchPostByFPDart(String id) async {
    try {
      final response = await dio.get('/posts/$id');
      if (response.statusCode == 200 && response.data != null) {
        return Right(PostModel.fromJson(response.data));
      } else {
        return const Left("Failed to load post");
      }
    } catch (e) {
      return Left("Exception occurred: $e");
    }
  }
}
