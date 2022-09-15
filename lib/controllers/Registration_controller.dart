import 'package:computop_demo/view/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../services/signup_service.dart';

class RegistrationController extends GetxController {
  bool checkedValue = false;
  bool checkboxValue = false;

  refreshWiget() {
    update();
  }

  final storage = const FlutterSecureStorage();
  RxBool isLoading = false.obs;
  final registerationformKey = GlobalKey<FormState>();

  late TextEditingController nameController,
      emailController,
      phoneController,
      passwordcontroller;
  String name = "", email = "", phone = "", password = "";

  @override
  void onInit() {
    nameController = TextEditingController();
    emailController = TextEditingController();
    phoneController = TextEditingController();
    passwordcontroller = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  String? validationName(String value) {
    if (!GetUtils.isUsername(value)) {
      return "wrong name";
    } else {
      return null;
    }
  }

  String? validationEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "wrong email";
    } else {
      return null;
    }
  }

  String? validationPhone(String value) {
    if (value.length <= 7) {
      return "wrong phone";
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

  doRegisteration() async {
    bool isValidate = registerationformKey.currentState!.validate();
    if (isValidate) {
      isLoading.value = true;
      try {
        var data = Signup.register(
            name: nameController.text,
            email: emailController.text,
            phone: phoneController.text,
            password: passwordcontroller.text,
            type: "1");

        if (data != null) {
          //storage.write(key: "name", value: data.user.name);
          //storage.write(key: "name", value: data.user.name);
          registerationformKey.currentState!.save();
          Get.to(() => LoginPage());
        }
      } finally {
        isLoading.value = false;
      }
    }
    {}
  }
}
