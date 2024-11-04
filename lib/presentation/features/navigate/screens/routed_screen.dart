import 'package:flutter/material.dart';
import 'package:rahul_test_file/domain/entities/post_model.dart';

class RoutedScreen extends StatelessWidget {
  List<PostModel> posts;
  RoutedScreen({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.blue[posts[index].userId! * 50],
              child: ListTile(
                leading: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      posts[index].id.toString(),
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ],
                ),
                title: Text(posts[index].title!),
                subtitle: Text(posts[index].body!),
              ),
            );
          }),
    );
  }
}
