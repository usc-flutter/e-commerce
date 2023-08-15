import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/result_screen_controller.dart';

class ResultScreenView extends GetView<ResultScreenController> {
  const ResultScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ResultScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ResultScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
