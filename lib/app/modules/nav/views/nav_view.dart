import 'package:e_commerce/const/k_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/nav_controller.dart';

class NavView extends GetView<NavController> {
  const NavView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(NavController());
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: KColors.scaffold,
          body: TabBarView(controller: controller.tabController, children: [
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
          ]),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: KColors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: TabBar(
                padding: EdgeInsets.all(10),
                indicatorColor: Colors.transparent,
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.home,
                      color: KColors.black,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.home,
                      color: KColors.black,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.home,
                      color: KColors.black,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.home,
                      color: KColors.black,
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
