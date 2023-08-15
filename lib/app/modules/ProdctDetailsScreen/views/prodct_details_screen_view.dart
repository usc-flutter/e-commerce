import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/prodct_details_screen_controller.dart';

class ProdctDetailsScreenView extends GetView<ProdctDetailsScreenController> {
  const ProdctDetailsScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProdctDetailsScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ProdctDetailsScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
