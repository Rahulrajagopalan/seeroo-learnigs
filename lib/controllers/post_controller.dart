import 'dart:convert';
import 'dart:developer';

import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:rahul_test_getx/models/post_model.dart';
import 'package:http/http.dart' as http;

class PostController extends GetxController {
  var postsList = <PostModel>[];

  @override
  void onInit() {
    fetchPosts();
    super.onInit();
  }

  void fetchPosts() async {
    var response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

    if (response.statusCode == 200) {
      var postData = response.body;
      List<dynamic> jsonData = jsonDecode(postData);
      List<PostModel> posts =
          jsonData.map((json) => PostModel.fromJson(json)).toList();
      postsList = posts;
      update();
    } else {
      log("Error has occured");
    }
  }

  Future<List<PostModel>> getThePosts() async {
    var response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

    if (response.statusCode == 200) {
      var postData = response.body;
      List<dynamic> jsonData = jsonDecode(postData);
      return jsonData.map((json) => PostModel.fromJson(json)).toList();
    } else {
      log("Error has occured");
      return postsList;
    }
  }
}
