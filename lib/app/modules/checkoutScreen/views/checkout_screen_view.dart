import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/checkout_screen_controller.dart';

class CheckoutScreenView extends GetView<CheckoutScreenController> {
  const CheckoutScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CheckoutScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CheckoutScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
