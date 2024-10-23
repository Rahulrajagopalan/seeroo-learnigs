import 'dart:convert';
import 'dart:developer';

import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:rahul_test_getx/models/post_model.dart';
import 'package:http/http.dart' as http;

class PostController extends GetxController {
  var postsList = <PostModel>[].obs;

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
      postsList.value = posts;
    } else {
      log("Error has occured");
    }
  }
}
