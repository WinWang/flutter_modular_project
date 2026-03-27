import 'package:get/get.dart';
import 'package:models/user_model.dart';
import 'package:services/api_service.dart';

class HomeController extends GetxController {
  final ApiService apiService;
  final users = <UserModel>[].obs;
  final isLoading = false.obs;
  final error = ''.obs;

  HomeController({required this.apiService});

  @override
  void onInit() {
    super.onInit();
    fetchUsers();
  }

  Future<void> fetchUsers() async {
    isLoading.value = true;
    error.value = '';
    try {
      final result = await apiService.getUsers();
      users.value = result;
    } catch (e) {
      error.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }

  void navigateToDetails(UserModel user) {
    Get.toNamed('/details', arguments: user);
  }
}