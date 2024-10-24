part of 'navigate_bloc.dart';

@freezed
class NavigateState with _$NavigateState {

const factory NavigateState.initial() = NavigateInitial;
  const factory NavigateState.loading() = NavigateLoading;
  const factory NavigateState.success(List<PostModel> posts) = NavigateSuccess;
  const factory NavigateState.failure(String message) = NavigateFailure;
}