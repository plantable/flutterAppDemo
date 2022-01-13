import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:plantable/base/constatnts/color_constants.dart';
import 'package:plantable/base/languages/text_keys.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.obx((state)=> Container(
        color: kPrimaryColor,
        child: Center(
          
            child: Text(
              kTxtPlantable.tr,
              style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
            ),
          
        ),
      ))
      
    );
  }
}
