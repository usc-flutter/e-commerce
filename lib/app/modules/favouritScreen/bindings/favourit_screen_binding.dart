import 'package:get/get.dart';

import '../controllers/favourit_screen_controller.dart';

class FavouritScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FavouritScreenController>(
      () => FavouritScreenController(),
    );
  }
}
