import 'package:e_commerce/const/k_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/check_out_controller.dart';

class CheckOutView extends GetView<CheckOutController> {
  const CheckOutView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(CheckOutController());
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: KColors.scaffold,
        appBar: AppBar(
          title: const Text('Check Out'),
          centerTitle: true,
          bottom: TabBar(
              indicatorWeight: 5,
              indicatorSize: TabBarIndicatorSize.label,
              physics: const NeverScrollableScrollPhysics(),
              onTap: (value) {
                controller.checkOnTab();
              },
              controller: controller.tabController,
              tabs: [
                Tab(
                  child: Text("Payment"),
                ),
                Tab(
                  child: Text("Location"),
                ),
                Tab(
                  child: Text("Review"),
                ),
              ]),
        ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: controller.tabController,
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20.0.w),
                child: Column(
                  children: [
                    40.verticalSpace,
                    Container(
                      width: Get.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.h)),
                      child: Column(children: [
                        Padding(
                          padding: EdgeInsets.all(20.h),
                          child: Row(
                            children: [
                              Icon(Icons.payment),
                              20.horizontalSpace,
                              Text("Cash On Delivery")
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          physics: const NeverScrollableScrollPhysics(),
                          child: ExpansionTile(
                            title: Row(
                              children: [
                                10.horizontalSpace,
                                Icon(Icons.credit_card),
                                20.horizontalSpace,
                                Text("Visa"),
                              ],
                            ),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Full name"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Card Number"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Expir date"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Cvc"),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          physics: const NeverScrollableScrollPhysics(),
                          child: ExpansionTile(
                            title: Row(
                              children: [
                                10.horizontalSpace,
                                Icon(Icons.credit_card),
                                20.horizontalSpace,
                                Text("Master"),
                              ],
                            ),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Full name"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Card Number"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Expir date"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Cvc"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                    100.verticalSpace,
                    SizedBox(
                      width: (Get.width / 10) * 8,
                      child: ElevatedButton(
                          onPressed: () {
                            controller.tabController.index++;
                          },
                          child: Text("Next")),
                    )
                  ],
                ),
              ),
            ),
            Text("Tab 2"),
            Text("Tab 2"),
          ],
        ),
      ),
    );
  }
}
