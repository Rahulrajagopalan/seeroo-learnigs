import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rahul_test_file/counter_and_navigate/bloc/navigate_bloc.dart';
import 'package:rahul_test_file/counter_and_navigate/view/counter_page.dart';
import 'package:rahul_test_file/counter_and_navigate/view/navigation_page.dart';
import 'package:rahul_test_file/counter_observer.dart';
import 'package:rahul_test_file/learnigs/learn_list_fun.dart';
import 'package:rahul_test_file/learnigs/home.dart';
import 'package:rahul_test_file/repository/post_repository.dart';
import 'package:rahul_test_file/route.dart';

void main() {
  // To Impliment counter observer if neeeded
  // Bloc.observer = const CounterObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    final _appRouter = AppRouter();
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavigateBloc>(
            create: (context) => NavigateBloc(PostRepository(Dio())))
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Rahul Demo',
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
