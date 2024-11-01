import 'package:fpdart/fpdart.dart';
import 'package:rahul_test_file/domain/entities/post_model.dart';

abstract class PostRepository {
  Future<Either<String, List<PostModel>>> fetchPosts();
  // Future<Either<PostModel, String>> fetchPostByFPDart(String id);
}