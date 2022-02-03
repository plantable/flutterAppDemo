import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/reboot_journey_item_detail_view_controller.dart';

class RebootJourneyItemDetailView
    extends GetView<RebootJourneyItemDetailViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reboot Journey'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PDF Reader',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
