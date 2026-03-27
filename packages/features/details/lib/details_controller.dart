import 'package:get/get.dart';
import 'package:models/user_model.dart';

class DetailsController extends GetxController {
  final user = Rxn<UserModel>();

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments as UserModel;
    user.value = arguments;
  }
}