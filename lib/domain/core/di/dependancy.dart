import 'package:get/get.dart';
import 'package:rahul_test_getx/config.dart';
import 'package:rahul_test_getx/domain/home/data/home_repository.dart';
import 'package:rahul_test_getx/infrastructure/dal/services/api_service.dart';

class DependancyCreator {
  static init() {
    Get.lazyPut<ApiService>(() =>
        ApiService(baseUrl: ConfigEnvironments.getEnvironments()['url'] ?? ""));
    Get.lazyPut<HomeRepository>(() => HomeRepository());
  }
}
