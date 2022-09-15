import 'package:computop_demo/controllers/auth_controller.dart';
import 'package:computop_demo/controllers/login_controller.dart';
import 'package:get/get.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
  }
}
