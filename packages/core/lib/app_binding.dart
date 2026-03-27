import 'package:get/get.dart';
import 'package:services/api_service.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApiService>(() => ApiService());
  }
}