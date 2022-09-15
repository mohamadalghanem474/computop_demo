import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  bool pinSuccess = false;
  onComplet() {
    pinSuccess = true;
    update();
  }
}
