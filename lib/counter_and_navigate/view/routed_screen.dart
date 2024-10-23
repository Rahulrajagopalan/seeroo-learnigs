import 'package:flutter/material.dart';
import 'package:rahul_test_file/domain/models/post_model.dart';

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
              child: ListTile(
                leading: Text(posts[index].id.toString()),
                title: Text(posts[index].title),
                subtitle: Text(posts[index].body),
              ),
            );
          }),
    );
  }
}
