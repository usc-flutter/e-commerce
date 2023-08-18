import 'dart:async';

import 'package:e_commerce/app/modules/cartScreen/controllers/cart_screen_controller.dart';
import 'package:e_commerce/demo_ui_data/demo_ui_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<DemoUiData> productList = <DemoUiData>[].obs;
  RxSet favorite = RxSet();
  final cartScreenController = Get.put(CartScreenController());
  @override
  void onInit() {
    loadData();
    super.onInit();
  }

  loadData() async {
    isLoading.value = false;
    for (var element in demoUiData) {
      productList.add(element);
    }
    Timer(const Duration(seconds: 5), () {
      isLoading.value = false;
    });
  }

  addOrRemoveFavorit(String fav) {
    if (favorite.contains(fav)) {
      favorite.remove(fav);
    } else {
      favorite.add(fav);
    }
  }

  addCart(DemoUiData item) {
    if (!cartScreenController.cartList.contains(item)) {
      cartScreenController.cartList.add(item);
      ScaffoldMessenger.of(Get.context!).showSnackBar(
        SnackBar(
          content: Column(
            children: [Text("Add to card")],
          ),
        ),
      );
    } else {
      ScaffoldMessenger.of(Get.context!).showSnackBar(
        SnackBar(
          content: Column(
            children: [Text("Alredy add")],
          ),
        ),
      );
    }
  }
}
