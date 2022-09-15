import 'package:computop_demo/controllers/login_controller.dart';
import 'package:get/get.dart';

import '../auth_controller.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
  }
}
