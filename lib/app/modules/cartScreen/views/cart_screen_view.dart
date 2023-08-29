import 'package:e_commerce/app/modules/checkOut/views/check_out_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import '../controllers/cart_screen_controller.dart';

class CartScreenView extends GetView<CartScreenController> {
  const CartScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          SizedBox(
            height: Get.height - 270.h,
            child: ListView(
              children: [
                Obx(
                  () => SizedBox(
                    height: 180.h * controller.cartList.length,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.cartList.length,
                      itemBuilder: (context, index) {
                        final data = controller.cartList[index];
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: Stack(
                            children: [
                              Container(
                                height: 140.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5.w)),
                                child: Row(children: [
                                  10.horizontalSpace,
                                  Image.network(
                                    data.imgUrl,
                                    height: 90.h,
                                    width: 90.h,
                                    fit: BoxFit.fill,
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
                                          data.brandName,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.sp,
                                              color: Colors.grey),
                                        ),
                                        10.verticalSpace,
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            InkWell(
                                                onTap: () {
                                                  controller
                                                      .decrementQuntity(index);
                                                },
                                                child: const Icon(
                                                    Icons.arrow_drop_down)),
                                            10.horizontalSpace,
                                            Text(data.quantity.toString()),
                                            10.horizontalSpace,
                                            InkWell(
                                                onTap: () {
                                                  controller
                                                      .incrementQuntity(index);
                                                },
                                                child: const Icon(
                                                    Icons.arrow_drop_up)),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text.rich(TextSpan(
                                          text: "\$${data.price}/",
                                          style: TextStyle(color: Colors.amber),
                                          children: [
                                            TextSpan(
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
                                  top: 10.h,
                                  right: 10.h,
                                  child: InkWell(
                                      onTap: () {
                                        controller.removeCart(data);
                                      },
                                      child: Icon(Icons.remove_circle)))
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
          cardTextButton(title: "Subtotal", amount: "50"),
          cardTextButton(title: "Delevery", amount: "50"),
          cardTextButton(title: "Grandtotal", amount: "50"),
          SizedBox(
            width: double.infinity,
            height: 50.h,
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => const CheckOutView());
              },
              child: Text(
                "Check Out",
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

  Padding cardTextButton({required String title, required String amount}) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0.h, bottom: 5.0.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("$title :"),
          Text("\$$amount"),
        ],
      ),
    );
  }
}
