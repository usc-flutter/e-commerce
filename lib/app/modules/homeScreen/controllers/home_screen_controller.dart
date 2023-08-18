import 'dart:async';

import 'package:e_commerce/demo_ui_data/demo_ui_data.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<DemoUiData> productList = <DemoUiData>[].obs;
  RxSet favorite = RxSet();

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
}
