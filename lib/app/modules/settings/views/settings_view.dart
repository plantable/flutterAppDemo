import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              _profileItem(),
              _programItem(),
              _preferancesandNotificationItem(),
              _helpFeedbackAndAbout(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _profileItem() {
    return Column(
      children: [],
    );
  }

  _programItem() {}

  _preferancesandNotificationItem() {}

  _helpFeedbackAndAbout() {}
}
