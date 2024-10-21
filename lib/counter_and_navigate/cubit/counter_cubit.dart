import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {

  CounterCubit(super.initialState);

  /// Add 1 to the current state.
  void increment() => emit(state + 1);

  /// Subtract 1 from the current state.
  void decrement() => emit(state - 1);

  /// Reset to Zero.
  void resetCount() => emit(0);

  /// Navigate to next page.
  int navigateBloc() {
    return 0;
  }
}

