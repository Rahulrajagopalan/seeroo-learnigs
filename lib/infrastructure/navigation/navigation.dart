import 'package:get/get.dart';
import 'package:rahul_test_getx/infrastructure/navigation/routes.dart';
import 'package:rahul_test_getx/views/first_page.dart';
import 'package:rahul_test_getx/views/home_page.dart';
import 'package:rahul_test_getx/views/second_page.dart';

class Nav {
  static List<GetPage> routes = [
    GetPage(name: Routes.home, page: () => const HomePage()),
    GetPage(name: Routes.firstPage, page: () => FirstPage()),
    GetPage(name: Routes.secondPage, page: () => SecondPage()),
  ];
}
