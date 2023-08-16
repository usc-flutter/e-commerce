import 'dart:async';

import 'package:e_commerce/app/modules/loginScreen/views/login_screen_view.dart';

import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    Timer(const Duration(seconds: 2), () {
      Get.offAll(() => const LoginScreenView());
    });
    super.onInit();
  }
}
