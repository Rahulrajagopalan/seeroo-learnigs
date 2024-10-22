import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rahul_test_getx/views/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {
                Get.toNamed("/second_page", arguments: [
                  "Rahul"
                ]);
                // Get.to(()=> SecondPage(name: "Rahul",));
              },
              child: Text("To Second"))
        ],
      )),
    );
  }
}
