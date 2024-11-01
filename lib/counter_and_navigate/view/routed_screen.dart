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
              color: Colors.red[posts[index].userId! * 100],
              child: ListTile(
                leading: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(posts[index].id.toString()),
                    Text(posts[index].userId.toString()),
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
