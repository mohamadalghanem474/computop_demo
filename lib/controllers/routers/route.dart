import 'package:computop_demo/controllers/binding/auth_binding.dart';
import 'package:computop_demo/controllers/binding/forgot_password_verification_binding.dart';
import 'package:computop_demo/controllers/binding/login_binding.dart';
import 'package:computop_demo/controllers/binding/registration_binding.dart';
import 'package:computop_demo/controllers/binding/splash_binding.dart';
import 'package:computop_demo/view/forgot_password_page.dart';
import 'package:computop_demo/view/home_page.dart';
import 'package:computop_demo/view/login_page.dart';
import 'package:computop_demo/view/profile_page.dart';
import 'package:computop_demo/view/registration_page.dart';
import 'package:computop_demo/view/splash_page.dart';
import 'package:get/get.dart';

import '../../view/forgot_password_verification_page.dart';
import '../binding/profile_binding.dart';

class AppRout {
  static const splash = Route.splash;
  static const login = Route.login;
  static const registration = Route.registeration;
  static const forgotPassword = Route.forgetPassword;
  static const forgetPasswordVerification = Route.forgetPasswordVerification;
  static const home = Route.home;
  static const profile = Route.profile;

  static final routes = [
    GetPage(
        name: Route.splash,
        page: () => const SplashPage(),
        binding: SplashBinding()),
    GetPage(
        name: Route.login,
        page: () => const LoginPage(),
        binding: LoginBinding()),
    GetPage(
        name: Route.registeration,
        page: () => RegistrationPage(),
        binding: RegistrationBinding()),
    GetPage(
        name: Route.forgetPassword,
        page: () => ForgotPasswordPage(),
        binding: ForgotPasswordVerificationBinding()),
    GetPage(
        name: Route.forgetPasswordVerification,
        page: () => ForgotPasswordVerificationPage(),
        binding: ForgotPasswordVerificationBinding()),
    GetPage(name: Route.home, page: () => const HomeScreen(), binding: null),
    GetPage(
        name: Route.profile,
        page: () => ProfilePage(),
        binding: ProgileBinding()),
  ];
}

class Route {
  static const splash = '/splash';
  static const login = '/login';
  static const registeration = '/registeration';
  static const forgetPassword = '/forgetPassword';
  static const forgetPasswordVerification = '/forgetPasswordVerification';
  static const home = '/home';
  static const profile = '/profile';
}
