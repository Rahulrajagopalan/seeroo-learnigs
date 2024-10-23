import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rahul_test_file/counter_and_navigate/bloc/navigate_bloc.dart';
import 'package:rahul_test_file/counter_and_navigate/bloc/navigate_event.dart';
import 'package:rahul_test_file/counter_and_navigate/bloc/navigate_state.dart';
import 'package:rahul_test_file/counter_and_navigate/view/routed_screen.dart';
import 'package:rahul_test_file/domain/models/post_model.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('API Call with BLoC')),
      body: BlocBuilder<NavigateBloc, NavigateState>(builder: (context, state) {
        return state.when(
            initial: () => const Center(
                  child: Text("Press the button"),
                ),
            loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
            success: (List<PostModel> posts) => RoutedScreen(posts: posts,),
            failure: (String message) => Center(
                  child: Text(
                    message,
                    style: TextStyle(color: Colors.red),
                  ),
                ));
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            context.read<NavigateBloc>().add(const NavigateEvent.fetchPosts()),
        child: const Icon(Icons.podcasts),
      ),
    );
  }
}
