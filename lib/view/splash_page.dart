import 'package:computop_demo/controllers/auth_controller.dart';
import 'package:computop_demo/controllers/login_controller.dart';
import 'package:computop_demo/controllers/routers/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    AuthController controller = Get.find();

    Future.delayed(
        const Duration(seconds: 5), () => Get.toNamed(AppRout.login));
    if (controller.isAuth()) {
      Get.toNamed(AppRout.profile);
    } else {
      Get.to(const LoginPage());
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(child: Image.asset("assets/images/icons/splash.png")),
    ));
  }
}
