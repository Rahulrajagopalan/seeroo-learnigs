import 'package:get_it/get_it.dart';
import 'package:rahul_test_getx/controllers/post_controller.dart';
import 'package:rahul_test_getx/models/post_model.dart';

final locator = GetIt.instance;

void setUp(){
  locator.registerSingleton<PostModel>(const PostModel());
  locator.registerSingleton<PostController>(PostController());
}