import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rahul_test_file/domain/models/post_model.dart';
import 'package:rahul_test_file/repository/post_repository.dart';

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
      List<PostModel> posts = await postRepository.fetchPosts();
      emit(NavigateSuccess(posts));
    } catch (e) {
      emit(NavigateFailure(e.toString()));
    }
  }
}
