import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/program_controller.dart';

class ProgramView extends GetView<ProgramController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProgramView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ProgramView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
