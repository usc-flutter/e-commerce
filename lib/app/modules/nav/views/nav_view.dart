import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/nav_controller.dart';

class NavView extends GetView<NavController> {
  const NavView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NavView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'NavView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
