import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckOutController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 3, vsync: this);
  }

  checkOnTab() {
    if (tabController.indexIsChanging) {
      tabController.index = tabController.previousIndex;
    }
  }
}
