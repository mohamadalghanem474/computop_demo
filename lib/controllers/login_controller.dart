import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../services/signin_service.dart';
import '../view/profile_page.dart';

class LoginPageController extends GetxController {
  final storage = const FlutterSecureStorage();

  var isLoading = false.obs;

  final loginformKey = GlobalKey<FormState>();

  late TextEditingController emailController, passwordcontroller;
  String email = "", password = "";

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordcontroller = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  String? validationEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "wrong email";
    } else {
      return null;
    }
  }

  String? validationPassword(String value) {
    if (value.length <= 5) {
      return "wrong password";
    } else {
      return null;
    }
  }

  doLogin() async {
    bool isValidate = loginformKey.currentState!.validate();
    if (isValidate) {
      isLoading.value = true;
      try {
        var data = await Signin.signin(
            email: emailController.text, password: passwordcontroller.text);
        if (data != null) {
          await storage.write(key: "name", value: data.user[0].name);
          await storage.write(key: "token", value: data.token);
          print("message : ${data.message}");
          print("token : ${data.token}");
          print(data.user[0].name);
          var token = await storage.read(key: 'token');
          print("is storage : $token");

          loginformKey.currentState!.save();
          Get.off(() => ProfilePage());
        } else {
          Get.snackbar("signin", "Erorr Sign In",
              duration: const Duration(minutes: 1));
        }
      } finally {
        isLoading(false);
      }
    }
  }
}
