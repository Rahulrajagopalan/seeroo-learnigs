import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rahul_test_getx/controllers/post_controller.dart';
import 'package:rahul_test_getx/locator.dart';
import 'package:rahul_test_getx/models/post_model.dart';

class SecondPage extends StatefulWidget {
  String? name;
  SecondPage({super.key, this.name});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

List<PostModel> postsList = [];

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page of : ${Get.arguments[0]}"),
      ),
      body: postsList.isEmpty
          ? Center(
              child: Text("Click on the button to load"),
            )
          : ListView.builder(
              itemCount: postsList.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(postsList[index].title!),
                  ),
                );
              }),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var postLoaded = await locator.get<PostController>().getThePosts();
          log(postLoaded.length.toString());
          setState(() {
            postsList = postLoaded;
          });
        },
        child: Icon(Icons.info),
      ),
    );
  }
}
