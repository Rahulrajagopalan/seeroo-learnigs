// abstract class NavigateEvent {}

// class PerformNavigateCall extends NavigateEvent {}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigate_event.freezed.dart';

@freezed
class NavigateEvent with _$NavigateEvent {

  const factory NavigateEvent.fetchPosts() = FetchPosts;

  // factory NavigateEvent.fromJson(Map<String, dynamic> json) => _$NavigateEventFromJson(json);
  // Map<String, dynamic> toJson() => _$NavigateEventToJson(this);
}