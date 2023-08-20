// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../demo_ui_data/demo_ui_data.dart';
import '../controllers/home_screen_controller.dart';

class HomeScreenView extends GetView<HomeScreenController> {
  const HomeScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenController());
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ////top bar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  style: TextStyle(fontSize: 20),
                  TextSpan(
                    children: [
                      TextSpan(text: "Welcome to "),
                      TextSpan(
                          text: "Fresh Basket",
                          style: TextStyle(color: Colors.green)),
                    ],
                  ),
                ),
                InkWell(onTap: () {}, child: Icon(Icons.notifications))
              ],
            ),
            10.verticalSpace,

            ///// search bar
            ///strat

            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 15.w, top: 2.w),
              height: 40.h,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: TextField(
                readOnly: true,
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'Search...'),
              ),
            ),

            ///// search bar
            ///end
            /// space
            20.verticalSpace,

            ////// slider
            ///start
            SizedBox(
              height: 150,
              child: PageView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-1080x675.jpg"),
                      ),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Enjoy your Day",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text.rich(
                            TextSpan(
                                text: "Get upto ",
                                style: TextStyle(color: Colors.white),
                                children: [
                                  TextSpan(
                                      text: " 50% ",
                                      style: TextStyle(color: Colors.red)),
                                  TextSpan(text: " Off you"),
                                ]),
                          ),
                          Text(
                            "Enjoy your Day",
                            style: TextStyle(color: Colors.white),
                          ),
                        ]),
                  );
                },
              ),
            ),
            ////// slider
            ///end
            ///

            ////// space
            20.verticalSpace,

            ////categoris
            ///start
            ///categoris text
            const Text(
              "Categoris",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            10.verticalSpace, //// space

            SizedBox(
              height: 70.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 20.w),
                    child: Column(
                      children: [
                        Container(
                          width: 50.h,
                          height: 50.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.h),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8NXx8fGVufDB8fHx8fA%3D%3D&w=1000&q=80"))),
                        ),
                        5.verticalSpace,
                        SizedBox(
                            width: 50.h,
                            child: Text(
                              "Fruites ",
                              overflow: TextOverflow.ellipsis,
                            )),
                      ],
                    ),
                  );
                },
              ),
            ),

            ////categoris
            ///end

            ////product
            ///start
            10.verticalSpace, //// space
            ///Product text

            const Text(
              "Product",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            10.verticalSpace, //// space
            Obx(
              () => controller.isLoading.value
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : SizedBox(
                      height: 150 * controller.productList.length.toDouble(),
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 20,
                                childAspectRatio: 0.8,
                                mainAxisSpacing: 20),
                        itemCount: controller.productList.length,
                        itemBuilder: (context, index) {
                          DemoUiData data = controller.productList[index];
                          return HomePageProductCart(
                            data: data,
                          );
                        },
                      ),
                    ),
            )
            ////product
            ///end
          ],
        ),
      ),
    );
  }
}

class HomePageProductCart extends GetView<HomeScreenController> {
  HomePageProductCart({
    super.key,
    required this.data,
  });

  late DemoUiData data;

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenController());
    return Container(
      height: 300.h,
      width: 120.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 120.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.h),
                      topRight: Radius.circular(10.h)),
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: NetworkImage(data.imgUrl),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                child: Obx(
                  () => IconButton(
                    onPressed: () {
                      controller.addOrRemoveFavorit(data.productId);
                      print(controller.favorite);
                    },
                    icon: controller.favorite.contains(data.productId)
                        ? Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              2.horizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: 70.w,
                      child: Text(
                        "${data.productName} ",
                        overflow: TextOverflow.ellipsis,
                      )),
                  Text.rich(
                    TextSpan(
                        text: "\$${data.price}",
                        children: const [TextSpan(text: " kg")]),
                  ),
                ],
              ),
              IconButton(
                  onPressed: () {
                    controller.addCart(data);
                  },
                  icon: Icon(
                    Icons.add_circle_outline_rounded,
                    color: Colors.red,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
