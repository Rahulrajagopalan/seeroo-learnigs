import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rahul_test_file/route.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          context.pushRoute(AutoNavRoute(name: "Rahul"));
        }, child: Text("Auto route to next")),
      ),
    );
  }
}