import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:rahul_test_file/domain/entities/post_model.dart';
import 'package:rahul_test_file/domain/repository/post_repository.dart';

@injectable
class GetPostUseCase {
  final PostRepository postRepository;

  GetPostUseCase(this.postRepository);

  Future<Either<String, List<PostModel>>> execute() {
    return postRepository.fetchPosts();
  }
}