import 'package:get/get.dart';

import '../controllers/log_out_screen_controller.dart';

class LogOutScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LogOutScreenController>(
      () => LogOutScreenController(),
    );
  }
}
