import 'package:e_commerce/const/k_image_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/favourit_screen_controller.dart';

class FavouritScreenView extends GetView<FavouritScreenController> {
  const FavouritScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          SizedBox(
            height: Get.height - 300,
            child: ListView(
              children: [
                SizedBox(
                  height: 180.h * 2,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: Stack(
                          children: [
                            Container(
                              height: 150.h,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5.w)),
                              child: Row(children: [
                                10.horizontalSpace,
                                Image.asset(
                                  KImagePath.basket,
                                  height: 100.h,
                                  width: 100.h,
                                ),
                                15.horizontalSpace,
                                SizedBox(
                                  width: Get.width / 3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Apple ",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.sp),
                                      ),
                                      Text(
                                        "Apple Name",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.sp,
                                            color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text.rich(TextSpan(
                                        text: "\$50",
                                        style: TextStyle(color: Colors.amber),
                                        children: [
                                          TextSpan(
                                              text: " kg",
                                              style: TextStyle(
                                                  color: Colors.black))
                                        ])),
                                  ],
                                ),
                                20.horizontalSpace
                              ]),
                            ),
                            Positioned(
                                top: 10, right: 10, child: Icon(Icons.cancel))
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
