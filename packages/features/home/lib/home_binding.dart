import 'package:get/get.dart';
import 'package:services/api_service.dart';
import 'home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(apiService: Get.find<ApiService>()),
    );
  }
}