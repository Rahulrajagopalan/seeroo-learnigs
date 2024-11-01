import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rahul_test_file/counter_and_navigate/view/auto_nav_page.dart';
import 'package:rahul_test_file/counter_and_navigate/view/home_page.dart';

part 'route.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, initial: true),
    AutoRoute(page: AutoNavRoute.page)
  ];
}