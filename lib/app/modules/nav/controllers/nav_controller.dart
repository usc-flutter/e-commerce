import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void onInit() {
    tabController = TabController(
        length: 4, vsync: this, animationDuration: const Duration(seconds: 2));
    super.onInit();
  }

  change(int index) {
    tabController.index = index;
  }
}
