import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rahul_test_file/domain/models/post_model.dart';

part 'navigate_state.freezed.dart';
// sealed class NavigateState {}

// class NavigateInitial extends NavigateState {}

// class NavigateLoading extends NavigateState {}

// class NavigateSuccess extends NavigateState {
//   final List<PostModel> posts;
//   NavigateSuccess(this.posts);
// }

// class NavigateFailure extends NavigateState {
//   final String error;

//   NavigateFailure(this.error);
// }

@freezed
class NavigateState with _$NavigateState {


  const factory NavigateState.initial() = NavigateInitial;
  const factory NavigateState.loading() = NavigateLoading;
  const factory NavigateState.success(List<PostModel> posts) = NavigateSuccess;
  const factory NavigateState.failure(String message) = NavigateFailure;
}