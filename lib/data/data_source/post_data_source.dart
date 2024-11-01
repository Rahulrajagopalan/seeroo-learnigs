import 'package:fpdart/fpdart.dart';
import '../../domain/entities/post_model.dart';

abstract class PostDataSource {
  Future<Either<String, List<PostModel>>> fetchPosts();
  Future<Either<String, PostModel>> fetchPostByFPDart(String id);
}
