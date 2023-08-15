import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/log_out_screen_controller.dart';

class LogOutScreenView extends GetView<LogOutScreenController> {
  const LogOutScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LogOutScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LogOutScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
