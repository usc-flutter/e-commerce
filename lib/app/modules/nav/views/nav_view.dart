import 'package:e_commerce/app/modules/cartScreen/views/cart_screen_view.dart';
import 'package:e_commerce/app/modules/favouritScreen/views/favourit_screen_view.dart';
import 'package:e_commerce/app/modules/homeScreen/views/home_screen_view.dart';
import 'package:e_commerce/app/modules/profileScreen/views/profile_screen_view.dart';
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
            HomeScreenView(),
            CartScreenView(),
            FavouritScreenView(),
            ProfileScreenView(),
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
                onTap: (value) {
                  controller.change(value);
                },
                padding: EdgeInsets.all(10),
                indicatorColor: Colors.transparent,
                unselectedLabelColor: KColors.black,
                labelColor: KColors.blue,
                tabs: [
                  Tab(
                    text: "Home",
                    icon: Icon(
                      Icons.home,
                    ),
                  ),
                  Tab(
                    text: "Cart",
                    icon: Icon(
                      Icons.shopping_cart_sharp,
                    ),
                  ),
                  Tab(
                    text: "Fovorite",
                    icon: Icon(
                      Icons.favorite,
                    ),
                  ),
                  Tab(
                    text: "Profile",
                    icon: Icon(
                      Icons.person,
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
