import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  var storage = const FlutterSecureStorage();

  var name = "".obs;
  var token = "";

  authData() async {
    token = (await storage.read(key: 'token'))!;
    name.value = (await storage.read(key: 'name'))!;
  }

  bool isAuth() {
    return token.isNotEmpty;
  }

  @override
  void onInit() {
    authData();
    super.onInit();
  }
}
