import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/shopping_list_controller.dart';

class ShoppingListView extends GetView<ShoppingListController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Shopping List',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
