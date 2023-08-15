import 'dart:async';

import 'package:e_commerce/app/modules/nav/views/nav_view.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    Timer(const Duration(seconds: 2), () {
      Get.offAll(() => const NavView());
    });
    super.onInit();
  }
}
