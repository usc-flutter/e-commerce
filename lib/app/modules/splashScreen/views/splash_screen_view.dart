import 'package:e_commerce/const/k_image_path.dart';
import 'package:e_commerce/const/k_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(SplashScreenController());
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            KImagePath.basket,
            width: Get.width - 60.w,
            height: (Get.height / 3) * 1.8,
          ),
          Text(
            KStrings.splash,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.sp),
          )
        ],
      ),
    ));
  }
}
