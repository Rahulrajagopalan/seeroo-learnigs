import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/post_model.dart';
import '../../domain/repository/post_repository.dart';
import '../data_source/post_data_source.dart';

@Injectable(as: PostRepository)
class PostRepositoryImpl extends PostRepository {
  final PostDataSource postDataSource;

  PostRepositoryImpl(this.postDataSource);

  @override
  Future<Either<String, List<PostModel>>> fetchPosts() async {
    return await postDataSource.fetchPosts();
  }

  // @override
  // Future<Either<String, PostModel>> fetchPostByFPDart(String id) async {
  //   return await postDataSource.fetchPostByFPDart(id);
  // }
}
