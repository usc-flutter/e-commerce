import 'package:get/get.dart';

import '../controllers/prodct_details_screen_controller.dart';

class ProdctDetailsScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProdctDetailsScreenController>(
      () => ProdctDetailsScreenController(),
    );
  }
}
