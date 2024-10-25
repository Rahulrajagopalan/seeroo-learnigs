import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rahul_test_getx/controllers/post_controller.dart';
import 'package:rahul_test_getx/views/second_page.dart';

class FirstPage extends StatelessWidget {
  FirstPage({super.key});

  // final postController = Get.put(PostController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: GetBuilder<PostController>(
          init: PostController(),
          builder: (controller) {
            return ListView.builder(
                itemCount: controller.postsList.length,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading:
                            Text(controller.postsList[index].id.toString()),
                        title:
                            Text(controller.postsList[index].title.toString()),
                        subtitle:
                            Text(controller.postsList[index].body.toString()),
                      ));
                });
          }),
      // body: Center(child: Obx(() => Text(postController.postsList[2].title!)),),
      floatingActionButton: ElevatedButton(
          onPressed: () {
            Get.toNamed("/second_page", arguments: ["Name"]);
            // Get.to(()=> SecondPage(name: "Rahul",));
          },
          child: Text("Second >>>")),
    );
  }
}
