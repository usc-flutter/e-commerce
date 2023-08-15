import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/favourit_screen_controller.dart';

class FavouritScreenView extends GetView<FavouritScreenController> {
  const FavouritScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FavouritScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FavouritScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
