import 'package:computop_demo/controllers/Registration_controller.dart';
import 'package:get/get.dart';

import '../auth_controller.dart';

class RegistrationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationController());
    Get.put(AuthController());
  }
}
