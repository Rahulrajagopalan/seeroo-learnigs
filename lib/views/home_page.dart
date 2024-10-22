import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rahul_test_getx/views/first_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get App"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Card(
              child: ListTile(
            leading: Icon(Icons.person),
            title: Text("Alert"),
            subtitle: Text("Click for subtitle"),
            onTap: () {
              Get.defaultDialog(
                titlePadding: EdgeInsets.all(10),
                title: "Alert Get",
                content: const Text("Data is here"),
                // actions: [
                //   Text("actions here")
                // ],
                textConfirm: "OK",
                textCancel: "Cancel",
                onConfirm: () {
                  log("The confirm recieved");
                  // Get.to(() => const FirstPage());
                  Get.toNamed("/first_page");
                },
                onCancel: () {
                  // Navigator.pop(context);
                  Get.back();
                },
              );
            },
          )),
          Card(
            child: ListTile(
              leading: Icon(Icons.cabin),
              title: Text("Show bottom sheet"),
              subtitle: Text("click to view bottom sheet"),
              onTap: () {
                Get.bottomSheet(Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.lightBlueAccent),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.light_mode),
                        title: Text("Light Theme"),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.dark_mode),
                        title: Text("Dart Theme"),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      ),
                    ],
                  ),
                ));
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            "title",
            "message",
            snackPosition: SnackPosition.BOTTOM,
            colorText: Colors.white,
            backgroundColor: Colors.black,
            onTap: (snack) {
              snack.animationDuration.printInfo();
            },
          );
        },
        child: Icon(Icons.info_outline_rounded),
      ),
    );
  }
}
