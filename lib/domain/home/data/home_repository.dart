import 'package:get/get.dart';
import 'package:rahul_test_getx/domain/home/data/home_service.dart';
import 'package:rahul_test_getx/infrastructure/dal/services/api_service.dart';

class HomeRepository implements HomeService {
  ApiService apiService = Get.find();
  @override
  Future<dynamic> getData() async {
    try {
      final result = await apiService.reqst();

      if (result != null) {
        if (result is Response) {
          return Future.value(result);
        }
      } else {
        return;
      }
    } on Exception catch (e) {
      Get.snackbar("Error:", "$e");
    }
    return;
  }
  
}