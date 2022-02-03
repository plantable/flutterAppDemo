import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/unit_preferances_controller.dart';

class UnitPreferancesView extends GetView<UnitPreferancesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UnitPreferancesView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'UnitPreferancesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
