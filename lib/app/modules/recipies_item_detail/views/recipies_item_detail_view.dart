import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/recipies_item_detail_controller.dart';

class RecipiesItemDetailView extends GetView<RecipiesItemDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RecipiesItemDetailView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'RecipiesItemDetailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
