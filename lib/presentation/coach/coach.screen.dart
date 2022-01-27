import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:plantable/base/constatnts/color_constants.dart';

import 'controllers/coach.controller.dart';

class CoachScreen extends GetView<CoachController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAppBackgroundColor,
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: kLockBg,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(width: 2, color: Colors.white)),
              child: Icon(
                Icons.lock,
                color: Colors.white,
              ),
            ),
            Text(
              'Intrested in 1:1 coaching guidance',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Learn more about our Reboot Program\non our website: plantable.com',
              style: TextStyle(color: Colors.black, fontSize: 14.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
