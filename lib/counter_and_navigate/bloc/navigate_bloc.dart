import 'package:bloc/bloc.dart';
import 'package:rahul_test_file/counter_and_navigate/bloc/navigate_event.dart';
import 'package:rahul_test_file/counter_and_navigate/cubit/navigate_state.dart';
import 'package:rahul_test_file/repository/post_repository.dart';

class NavigateBloc extends Bloc<NavigateEvent, NavigateState> {
  final PostRepository postRepository;

  NavigateBloc(this.postRepository) : super(NavigateInitial()) {
    on<NavigateEvent>((event, emit) async {
      await event.when(fetchPosts: () async {
        await _onFetchPosts(emit);
      });
    });
  }

  Future<void> _onFetchPosts(Emitter<NavigateState> emit) async {
    emit(NavigateLoading());
    try {
      final posts = await postRepository.fetchPosts();
      emit(NavigateSuccess(posts));
    } catch (e) {
      emit(NavigateFailure(e.toString()));
    }
  }
}
