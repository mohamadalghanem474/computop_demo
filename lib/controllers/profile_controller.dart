import 'package:computop_demo/services/localStorage_service.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  var token = "".obs;
  getToken() async {
    token(await LocalStorage.storage.read(key: 'name'));
  }

  @override
  void onInit() {
    getToken();
    super.onInit();
  }
}
