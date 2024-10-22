import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rahul_test_file/counter_and_navigate/bloc/navigate_bloc.dart';
import 'package:rahul_test_file/counter_and_navigate/bloc/navigate_event.dart';
import 'package:rahul_test_file/counter_and_navigate/cubit/navigate_cubit.dart';
import 'package:rahul_test_file/counter_and_navigate/cubit/navigate_state.dart';
import 'package:rahul_test_file/counter_and_navigate/view/routed_screen.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('HTTP Call with BLoC')),
        body: BlocListener<NavigateBloc, NavigateState>(
          listener: (context, state) {
            if (state is NavigateSuccess) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RoutedScreen()));
            } else if (state is NavigateFailure) {
              // Show error message if HTTP call fails.
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Error: ${state.error}')),
              );
            }
          },
          child: BlocBuilder<NavigateBloc, NavigateState>(
              builder: (context, state) {
            if (state is NavigateLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Center(
              child: ElevatedButton(
                onPressed: () {
                  context
                      .read<NavigateBloc>()
                      .add(NavigateEvent.fetchPosts());
                },
                child: Text('Make HTTP Call'),
              ),
            );
          }),
        ),
      );
  }
}
