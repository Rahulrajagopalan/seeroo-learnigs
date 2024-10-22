import 'package:rahul_test_file/domain/models/post_model.dart';

sealed class NavigateState {}

class NavigateInitial extends NavigateState {}

class NavigateLoading extends NavigateState {}

class NavigateSuccess extends NavigateState {
  final List<PostModel> posts;
  NavigateSuccess(this.posts);
}

class NavigateFailure extends NavigateState {
  final String error;

  NavigateFailure(this.error);
}
