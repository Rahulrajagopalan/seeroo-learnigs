import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rahul_test_file/counter_and_navigate/cubit/navigate_state.dart';
import 'package:http/http.dart' as http;

class NavigateCubit extends Cubit<NavigateState> {
  NavigateCubit() : super(NavigateInitial());

  Future<void> performHttpCall() async {
    emit(NavigateLoading());
    try {
      final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));

      if (response.statusCode == 200) {
        emit(NavigateSuccess());  // On success, emit the HttpSuccess state.
      } else {
        emit(NavigateFailure('Failed to load data'));
      }
    } catch (e) {
      emit(NavigateFailure(e.toString()));
    }
  }
}