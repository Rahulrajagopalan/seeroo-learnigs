import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rahul_test_file/domain/entities/post_model.dart';
import 'package:rahul_test_file/data/repository/post_repository_impl.dart';
import 'package:rahul_test_file/domain/repository/post_repository.dart';

part 'navigate_bloc.freezed.dart';
part 'navigate_event.dart';
part 'navigate_state.dart';

@injectable
class NavigateBloc extends Bloc<NavigateEvent, NavigateState> {
  final PostRepository postRepository;

  NavigateBloc(this.postRepository) : super(NavigateInitial()) {
    on<NavigateEvent>((event, emit) async {
      await _onFetchPosts(emit);
    });
  }

  Future<void> _onFetchPosts(Emitter<NavigateState> emit) async {
    emit(NavigateLoading());
    try {
      Either<String, List<PostModel>> posts = await postRepository.fetchPosts();
      emit(NavigateSuccess(posts));
    } catch (e) {
      emit(NavigateFailure(e.toString()));
    }
    // var disPosts = await postRepository.fetchPostByFPDart("15");
    // disPosts.fold((l) => emit(NavigateState.failure(l.body)),
    //     (r) => emit(NavigateFailure(r)));
  }
}
