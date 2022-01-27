import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/reboot_how_to_item_detail_view_controller.dart';

class RebootHowToItemDetailView
    extends GetView<RebootHowToItemDetailViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RebootHowToItemDetailView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'RebootHowToItemDetailView under construction',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
