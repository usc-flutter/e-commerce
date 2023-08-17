import 'package:e_commerce/const/k_colors.dart';
import 'package:e_commerce/const/k_image_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/profile_screen_controller.dart';

class ProfileScreenView extends GetView<ProfileScreenController> {
  const ProfileScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 250.h,
          width: Get.width,
          decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.elliptical(50, 50),
                  bottomLeft: Radius.elliptical(50, 50))),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage(KImagePath.basket),
            ),
            10.verticalSpace,
            Text(
              "Tuhin Ikbal Eyamin",
              style: TextStyle(
                  color: KColors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            10.verticalSpace,
            Text(
              "+8801517822052",
              style: TextStyle(
                  color: KColors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ]),
        ),
        10.verticalSpace,
        profileButton(
            onTap: () {}, iconData: Icons.layers, title: 'Your Orders'),
        10.verticalSpace,
        profileButton(onTap: () {}, iconData: Icons.help, title: 'Home'),
        10.verticalSpace,
        profileButton(onTap: () {}, iconData: Icons.info, title: 'About'),
        10.verticalSpace,
        profileButton(onTap: () {}, iconData: Icons.logout, title: 'LogOut'),
      ],
    );
  }

  InkWell profileButton(
      {required Function() onTap,
      required IconData iconData,
      required String title}) {
    return InkWell(
      onTap: onTap,
      splashColor: KColors.green,
      child: Padding(
        padding: EdgeInsets.all(15.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData),
            10.horizontalSpace,
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                5.verticalSpace,
                Container(
                  height: 3.h,
                  color: Colors.black.withOpacity(0.4),
                  width: (Get.width / 10) * 7,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
