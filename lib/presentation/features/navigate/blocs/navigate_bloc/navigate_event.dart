part of 'navigate_bloc.dart';

@freezed
class NavigateEvent with _$NavigateEvent {

  const factory NavigateEvent.fetchPosts() = FetchPosts;
}