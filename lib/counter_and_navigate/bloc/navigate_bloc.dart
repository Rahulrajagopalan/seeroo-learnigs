import 'package:bloc/bloc.dart';
import 'package:rahul_test_file/counter_and_navigate/bloc/navigate_event.dart';
import 'package:rahul_test_file/counter_and_navigate/cubit/navigate_state.dart';
import 'package:http/http.dart' as http;

class NavigateBloc extends Bloc<NavigateEvent, NavigateState> {
  NavigateBloc() : super(NavigateInitial()) {
    @override
    Stream<NavigateState> mapEventToState(NavigateEvent event) async* {
      if (event is PerformNavigateCall) {
        yield NavigateLoading();

        try {
          final response = await http
              .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));

          if (response.statusCode == 200) {
            yield NavigateSuccess();
          } else {
            yield NavigateFailure('Failed to load data');
          }
        } catch (e) {
          yield NavigateFailure(e.toString());
        }
      }
    }
  }
}
