import 'package:get/get.dart';

class ProgileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => null);
  }
}
