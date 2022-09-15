import 'package:computop_demo/controllers/routers/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'view/login_page.dart';

Future main() async {
  initalization;
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

Future initalization(BuildContext context) async {
  //load resources
  await Future.delayed(const Duration(milliseconds: 0));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CompuTop',
      theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: const Color.fromARGB(255, 166, 38, 38)),
      //home: LoginPage(),
      initialRoute: AppRout.splash,
      getPages: AppRout.routes,
    );
  }
}
