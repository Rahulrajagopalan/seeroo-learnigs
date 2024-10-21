sealed class NavigateState {}

class NavigateInitial extends NavigateState {}

class NavigateLoading extends NavigateState {}

class NavigateSuccess extends NavigateState {}

class NavigateFailure extends NavigateState {
  final String error;

  NavigateFailure(this.error);
}
