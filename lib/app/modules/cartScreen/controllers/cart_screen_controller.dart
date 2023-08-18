import 'package:get/get.dart';

import '../../../../demo_ui_data/demo_ui_data.dart';

class CartScreenController extends GetxController {
  RxList<DemoUiData> cartList = <DemoUiData>[].obs;
  removeCart(DemoUiData data) {
    cartList.removeWhere((element) => element.productId == data.productId);
  }

  incrementQuntity(int index) {
    cartList[index].quantity++;
    cartList.refresh();
  }

  decrementQuntity(int index) {
    if (cartList[index].quantity != 1) {
      cartList[index].quantity--;
      cartList.refresh();
    }
  }
}
