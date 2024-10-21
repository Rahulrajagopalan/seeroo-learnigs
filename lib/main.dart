import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:rahul_test_file/counter_and_navigate/view/counter_page.dart';
import 'package:rahul_test_file/counter_and_navigate/view/navigation_page.dart';
import 'package:rahul_test_file/counter_observer.dart';
import 'package:rahul_test_file/posts_getX/views/post_page.dart';
import 'package:rahul_test_file/learnigs/learn_list_fun.dart';
import 'package:rahul_test_file/learnigs/home.dart';

void main() {
  // To Impliment counter observer if neeeded
  // Bloc.observer = const CounterObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rahul Demo',
      home: NavigationPage(),
    );
  }
}