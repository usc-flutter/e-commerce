import 'package:e_commerce/const/k_colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../demo_ui_data/demo_ui_data.dart';
import '../../homeScreen/controllers/home_screen_controller.dart';
import '../controllers/favourit_screen_controller.dart';

class FavouritScreenView extends GetView<FavouritScreenController> {
  const FavouritScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var homeScreenController = Get.put(HomeScreenController());
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          SizedBox(
            height: Get.height - 300,
            child: ListView(
              children: [
                Obx(
                  () => SizedBox(
                    height: 180.h * homeScreenController.favorite.length,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: homeScreenController.productList.length,
                      itemBuilder: (context, index) {
                        DemoUiData data =
                            homeScreenController.productList[index];
                        if (!homeScreenController.favorite
                            .contains(data.productId)) {
                          return const SizedBox.shrink();
                        }
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
                                  Image.network(
                                    fit: BoxFit.fill,
                                    data.imgUrl,
                                    height: 100.h,
                                    width: 100.h,
                                  ),
                                  15.horizontalSpace,
                                  SizedBox(
                                    width: Get.width / 3,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "${data.productName} ",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.sp),
                                        ),
                                        Text(
                                          "${data.brandName} ",
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
                                          text: "\$${data.price}",
                                          style: const TextStyle(
                                              color: Colors.amber),
                                          children: [
                                            const TextSpan(
                                                text: " kg",
                                                style: TextStyle(
                                                    color: Colors.black))
                                          ])),
                                    ],
                                  ),
                                  10.horizontalSpace
                                ]),
                              ),
                              Positioned(
                                  top: 10,
                                  right: 10,
                                  child: InkWell(
                                      onTap: () {
                                        homeScreenController
                                            .addOrRemoveFavorit(data.productId);
                                      },
                                      child: const Icon(Icons.cancel)))
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          8.verticalSpace,
          SizedBox(
            width: double.infinity,
            height: 50.h,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Continue Shoping",
                style: TextStyle(fontSize: 20.sp, color: KColors.black),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(KColors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
          ),
          8.verticalSpace,
          SizedBox(
            width: double.infinity,
            height: 50.h,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Add to Cart",
                style: TextStyle(fontSize: 20.sp),
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
